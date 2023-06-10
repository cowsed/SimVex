#include "sim/urdf_loader.h"
#include "assimp/contrib/pugixml/src/pugixml.hpp"
#include "sim/3d_model.h"
#include "sim/physics.h"
#include <iostream>
#include <vector>
#include <functional>

namespace sim
{
    namespace loader
    {

        RobotModel::model_id RobotModel::add_model(std::string path)
        {
            // has already been loaded
            if (model_paths.contains(path))
            {
                return model_paths[path];
            }
            // hasn't been loaded
            model_id id = models.size();
            model_paths.emplace(path, id);
            construction::Model *model = new construction::Model(path);
            models.emplace_back(model);
            coll_shapes.emplace_back(model->make_convex_hull());

            return id;
        }

        RobotModel::link_id RobotModel::add_link(std::string name, Link l)
        {
            if (link_names.contains(name))
            {
                throw "Error Adding link. A link already exists with the name " + name;
            }
            RobotModel::link_id id = links.size();

            links.emplace_back(l);
            link_names.emplace(name, id);

            link_tree_root.children.emplace_back(LinkTreeNode{.joint_to_parent = RobotModel::unknown_joint_id, .link = id, .children = {}});

            return id;
        }
        std::string RobotModel::link_name(RobotModel::link_id id)
        {
            for (auto const &pair : link_names)
            {
                if (id == pair.second)
                {
                    return pair.first;
                }
            }
            return "NO NAME FOUND";
        }

        RobotModel::joint_id RobotModel::add_joint(std::string name, Joint j)
        {
            if (joint_names.contains(name))
            {
                throw "Error Adding joint. A joint already exists with the name " + name;
            }
            RobotModel::joint_id id = joints.size();
            joints.emplace_back(j);
            joint_names.emplace(name, id);

            std::function<bool(LinkTreeNode *, link_id, LinkTreeNode)> find_parent_and_add_node;
            find_parent_and_add_node = [&find_parent_and_add_node](LinkTreeNode *current, link_id parent_lid, LinkTreeNode child)
            {
                for (std::size_t i = 0; i < current->children.size(); i++)
                {
                    // check children
                    if (current->children[i].link == parent_lid)
                    {
                        current->children[i].children.emplace_back(child);
                        return true;
                    }
                    // check grandchildren
                    bool added = find_parent_and_add_node(&(current->children[i]), parent_lid, child);
                    if (added)
                    {
                        return true;
                    }
                }
                return false;
            };

            LinkTreeNode child = link_tree_root;

            // find child if it is unparented
            for (std::size_t i = 0; i < link_tree_root.children.size(); i++)
            {
                if (link_tree_root.children[i].link == j.child)
                {
                    child = link_tree_root.children[i];
                    link_tree_root.children.erase(link_tree_root.children.begin() + i);
                }
            }
            if (child.link == link_tree_root.link)
            {
                std::cout << "Failed to find child node. Does it already have a parent? closed loops are not allowed in urdf\n";
                exit(EXIT_FAILURE);
                return id;
            }
            child.joint_to_parent = id;

            find_parent_and_add_node(&link_tree_root, j.parent, child);
            return id;
        }
        struct URDF_Load_Error
        {
        };

        RobotModel load_urdf(std::string path, btTransform initial_transform)
        {
            RobotModel model;

            pugi::xml_document doc;
            pugi::xml_parse_result result = doc.load_file(path.c_str());
            if (!(bool)result)
            {
                std::cout << result.description() << '\n';
                throw "Could not open urdf file" + path;
            }

            pugi::xml_node robot = doc.child("robot");
            std::string name = robot.attribute("name").as_string();
            std::cout << "Robot: " << name << '\n';
            std::cout << "Links: \n";

            // Load links

            for (pugi::xml_node link = robot.child("link"); link; link = link.next_sibling("link"))
            {
                std::string link_name = link.attribute("name").as_string();
                RobotModel::Link this_link;
                this_link.mass = 0.0000001;

                // Visual
                pugi::xml_node visual = link.child("visual");
                if (!visual)
                {
                    this_link.visual = RobotModel::no_visual;
                    model.add_link(link_name, this_link);
                    continue;
                }

                pugi::xml_node geometry = visual.child("geometry");
                if (!geometry)
                {
                    std::cout << "link geometry of " + link_name + " visual Does not exist. We need it to exist :/\n";
                    throw URDF_Load_Error{};
                }

                pugi::xml_node mesh = geometry.child("mesh");
                if (!mesh)
                {
                    std::cout << "link visual of " + link_name + " is not a mesh. We only support meshes :/\n";
                    throw URDF_Load_Error{};
                }
                std::string mesh_path = mesh.attribute("filename").as_string();
                RobotModel::model_id my_model = model.add_model(mesh_path);
                this_link.visual = my_model;

                // inertia
                pugi::xml_node inertia = link.child("inertial");
                if (!inertia)
                {
                    std::cout << "link inertial of " + link_name + " Does not exist. We need an inertial tag for simulation\n";
                    throw URDF_Load_Error{};
                }

                pugi::xml_node mass_node = inertia.child("mass");
                if (!mass_node)
                {
                    std::cout << "link inertia/mass of " + link_name + " Does not exist. We need at least a mass\n";
                    throw URDF_Load_Error{};
                }

                this_link.mass = mass_node.attribute("value").as_float();

                RobotModel::link_id id = model.add_link(link_name, this_link);
                std::cout << "Link Name: " << link_name << " - " << id << '\n';
            }

            std::cout << "Joints: \n";

            auto parse_origin_xyz = [](std::string src) -> glm::vec3
            {
                int first_space = src.find_first_of(' ');
                int second_space = src.find_first_of(' ', first_space + 1);
                std::string x_part = src.substr(0, first_space);
                std::string y_part = src.substr(first_space + 1, second_space - first_space);
                std::string z_part = src.substr(second_space + 1, src.size() - second_space);

                float x = std::stof(x_part);
                float y = std::stof(y_part);
                float z = std::stof(z_part);

                // std::cout << "xyz: " << src << " : " << x_part << " : " << y_part << " : " << z_part << " --  " << x << ", " << y << ", " << z << '\n';

                return {x, y, z};
            };

            // Load Joints

            for (pugi::xml_node joint = robot.child("joint"); joint; joint = joint.next_sibling("joint"))
            {
                std::cout << "Joint Name: " << joint.attribute("name").as_string() << '\n';
                std::string joint_name = joint.attribute("name").as_string();
                std::string joint_type_name = joint.attribute("type").as_string();
                RobotModel::Joint this_joint;

                std::string parent_name = joint.child("parent").attribute("link").as_string();
                std::string child_name = joint.child("child").attribute("link").as_string();

                pugi::xml_node origin = joint.child("origin");
                glm::vec3 xyz = parse_origin_xyz(origin.attribute("xyz").as_string());
                std::cout << "xyz "
                          << "{" << xyz.x << ", " << xyz.y << ", " << xyz.z << "}\n";
                glm::vec3 rpy = parse_origin_xyz(origin.attribute("rpy").as_string());

                if (!model.link_names.contains(parent_name))
                {
                    std::cout << "Joint wants a parent link of '" << parent_name << "' but that link does not exist :/\n";
                }
                this_joint.parent = model.link_names[parent_name];
                if (!model.link_names.contains(child_name))
                {
                    std::cout << "Joint wants a child link of '" << child_name << "' but that link does not exist :/\n";
                }
                this_joint.child = model.link_names[child_name];
                this_joint.origin = RobotModel::Joint::Origin{xyz, rpy};

                if (joint_type_name == "fixed")
                {
                    this_joint.my_type = RobotModel::Joint::Type::Fixed;
                }
                else if (joint_type_name == "revolute")
                {
                    this_joint.my_type = RobotModel::Joint::Type::Rotational;
                }
                else
                {
                    std::cout << "Unsupported joint type: " + joint_type_name << '\n';
                }
                model.add_joint(joint_name, this_joint);
            }

            // Assemble Based on tree

            std::function<void(RobotModel::LinkTreeNode *, std::string)> print_link_tree;
            print_link_tree = [&print_link_tree, &model](RobotModel::LinkTreeNode *current, std::string prefix)
            {
                std::cout << prefix << " " << current->link << ": " << model.link_name(current->link) << " : " << model.links[current->link].mass << "kg  \tvisual: " << model.links[current->link].visual << "\n";
                for (auto &child : current->children)
                {
                    print_link_tree(&child, "  " + prefix);
                }
            };

            std::cout << "Link Tree:\n";
            print_link_tree(&model.link_tree_root, "+-");

            if (model.link_tree_root.children.size() > 1)
            {
                std::cout << "You have multiple trees inside your urdf file. That is not allowed. Inspect print above to see what happened.";
                exit(EXIT_FAILURE);
            }

            std::function<void(RobotModel::LinkTreeNode *, btTransform)> create_physics_from_tree;
            create_physics_from_tree = [&model, &create_physics_from_tree](RobotModel::LinkTreeNode *node, btTransform current_transform)
            {
                auto to_btVector3 = [](auto v) -> btVector3
                { return {v.x, v.y, v.z}; };
                auto &link = model.links[node->link];

                std::cout << "Setting up Link: " << model.link_name(node->link) << "\n";

                RobotModel::Joint::Origin joint_origin = model.joints[node->joint_to_parent].origin;
                btTransform to_child;
                to_child.setIdentity();
                to_child.setOrigin(to_btVector3(joint_origin.xyz));
                // to_child.setRotation(btQuaternion({0.0,0,1.0}, joint_origin.rpy.x));
                std::cout << "to child: " << joint_origin.xyz.x << ", " << joint_origin.xyz.y << ", " << joint_origin.xyz.z << '\n';

                btTransform world_transform = current_transform;
                world_transform.mult(to_child, world_transform);

                btCollisionShape *coll_shape = nullptr;
                if (link.visual != RobotModel::no_visual)
                {
                    coll_shape = model.coll_shapes[link.visual];
                }
                else
                {
                    coll_shape = new btSphereShape(0.0);
                }

                btVector3 local_inertia(0.0, 0.0, 0.0);
                if (link.visual != RobotModel::no_visual)
                {
                    coll_shape->calculateLocalInertia(link.mass, local_inertia);
                }

                btDefaultMotionState *motion_state = new btDefaultMotionState(world_transform);

                btRigidBody *body = new btRigidBody(link.mass, motion_state, coll_shape, local_inertia);
                // body->setWorldTransform(world_transform);

                auto origin = body->getCenterOfMassPosition();
                std::cout << "Creating " + model.link_name(node->link) + " at   " << origin.x() << ", " << origin.y() << ", " << origin.z();
                // body->getWorldTransform().get
                std::cout << " has mass: " << link.mass << '\n';

                link.body = body;
                link.motion_state = motion_state;

                physics::add_rigid_body(body);

                for (std::size_t i = 0; i < node->children.size(); i++)
                {
                    create_physics_from_tree(&(node->children[i]), world_transform);
                }
            };

            btTransform initial_transform_and_rotate = btTransform(initial_transform);
            // initial_transform_and_rotate.setRotation(initial_transform_and_rotate.getRotation() * btQuaternion({0, 1, 0}, M_PI / 2.0));
            // initial_transform_and_rotate.setRotation(initial_transform_and_rotate.getRotation() * btQuaternion({1, 0, 0}, -M_PI / 2.0));

            create_physics_from_tree(&(model.link_tree_root.children[0]), initial_transform_and_rotate);

            // start with initial transform. walk tree and generate rigid bodies and motionstates based on accumulating transforms
            // initial_transform.

            // Walk Tree and assemble into model with joints
            // find a base link

            /*
                float mass = .1;
        float friction = .9;
        float rolling_friction = .4;

        bool isDynamic = (mass != 0.f);

        // Replace with loaded inertia from urdf
        btVector3 localInertia(0, 0, 0);
        if (isDynamic)
            coll_shapes[l.visual]->calculateLocalInertia(mass, localInertia);

        btTransform trans;
        trans.setIdentity();
        trans.setOrigin({0, .4, 0});
        btDefaultMotionState *myMotionState = new btDefaultMotionState(trans);
        btRigidBody::btRigidBodyConstructionInfo rbInfo(mass, myMotionState, coll_shapes[l.visual].get(), localInertia);
        btRigidBody *body = new btRigidBody(rbInfo);
        body->setFriction(friction);
        body->setRollingFriction(rolling_friction);

        physics::add_rigid_body(body);

        l.body = body;
        l.motion_state = myMotionState;
*/

            /*
        btTransform parent_transform;
        parent_transform.setIdentity();

        btTransform child_transform;
        child_transform.setIdentity();
        child_transform.setOrigin({xyz.x, xyz.y+1, xyz.z});

        // model.link_bodies[this_joint.child]->setWorldTransform({xyz.x, xyz.y, xyz.z});
        model.link_bodies[this_joint.child]->setWorldTransform(child_transform);
        model.link_motion_states[this_joint.child]->setWorldTransform(child_transform);

        std::cout << "constraining " << (void *)(model.link_bodies[this_joint.parent]) << " to " << model.link_bodies[this_joint.child] << '\n';
        btTypedConstraint *constraint = new btFixedConstraint(*model.link_bodies[this_joint.parent], *model.link_bodies[this_joint.child], parent_transform, child_transform);
        physics::add_constraint(constraint);

            */

            return model;
        }
        void RobotModel::render(glm::mat4 persp, glm::mat4 view, glm::mat4 model, glm::vec3 light_pos)
        {
            int id = 0;
            for (auto &link : this->links)
            {
                if (link.visual != no_visual)
                {
                    glm::mat4 model_mat;
                    // model_mat[0][0] = 1;
                    // model_mat[0][1] = 0;
                    // model_mat[0][2] = 0;
                    // model_mat[0][3] = 0;

                    // model_mat[1][0] = 0;
                    // model_mat[1][1] = 1;
                    // model_mat[1][2] = 0;
                    // model_mat[1][3] = 0;

                    // model_mat[2][0] = 0;
                    // model_mat[2][1] = 0;
                    // model_mat[2][2] = 1;
                    // model_mat[2][3] = 0;

                    // model_mat[3][0] = 0;
                    // model_mat[3][1] = 0;
                    // model_mat[3][2] = 0;
                    // model_mat[3][3] = 1;

                    btTransform trans;
                    links[id].motion_state->getWorldTransform(trans);

                    // model_mat[3][0] = trans.getOrigin().x();
                    // model_mat[3][1] = trans.getOrigin().z();
                    // model_mat[3][2] = -trans.getOrigin().y();

                    // model_mat[0][0] = trans.getBasis()[0][0];
                    // model_mat[1][0] = trans.getBasis()[1][0];
                    // model_mat[2][0] = trans.getBasis()[2][0];

                    // model_mat[0][1] = trans.getBasis()[0][1];
                    // model_mat[1][1] = trans.getBasis()[1][1];
                    // model_mat[2][1] = trans.getBasis()[2][1];

                    // model_mat[0][2] = trans.getBasis()[0][2];
                    // model_mat[1][2] = trans.getBasis()[1][2];
                    // model_mat[2][2] = trans.getBasis()[2][2];
                    // trans.getBasis().extractRotation()

                    // btTransform trans2 = links[id].body->getWorldTransform();
                    // std::cout << "pos2: " << trans2.getOrigin().x() << ", " << trans2.getOrigin().y() << ", " << trans2.getOrigin().z() << '\n';
                    std::cout << link_name(id) << " with visual " << link.visual << '\n';
                    trans.getOpenGLMatrix(&(model_mat[0][0]));

                    models[link.visual]->render(persp, view, model_mat, light_pos);

                    std::cout << model_mat[0][0] << "\t" << model_mat[1][0] << "\t" << model_mat[2][0] << "\t" << model_mat[3][0] << "\n";
                    std::cout << model_mat[0][1] << "\t" << model_mat[1][1] << "\t" << model_mat[2][1] << "\t" << model_mat[3][1] << "\n";
                    std::cout << model_mat[0][2] << "\t" << model_mat[1][2] << "\t" << model_mat[2][2] << "\t" << model_mat[3][2] << "\n";
                    std::cout << model_mat[0][3] << "\t" << model_mat[1][3] << "\t" << model_mat[2][3] << "\t" << model_mat[3][3] << "\n";
                }

                id++;
            }
        }
    } // namespace loader
} // namespace sim
