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

            link_tree_root.children.emplace_back(LinkTreeNode{id, {}});

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

            find_parent_and_add_node(&link_tree_root, j.parent, child);
            return id;
        }

        RobotModel load_urdf(std::string path, btTransform initial_transform)
        {
            struct URDF_Load_Error
            {
            };
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

            // load links
            for (pugi::xml_node link = robot.child("link"); link; link = link.next_sibling("link"))
            {
                std::string link_name = link.attribute("name").as_string();
                RobotModel::Link this_link;

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
                return {x, y, z};
            };

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
                } else if (joint_type_name == "revolute"){
                    this_joint.my_type = RobotModel::Joint::Type::Rotational;
                }
                else
                {
                    std::cout << "Unsupported joint type: " + joint_type_name << '\n';
                }
                model.add_joint(joint_name, this_joint);
            }

            std::function<void(RobotModel::LinkTreeNode *, std::string)> print_link_tree;
            print_link_tree = [&print_link_tree, &model](RobotModel::LinkTreeNode *current, std::string prefix)
            {
                std::cout << prefix << " " << current->link << ": " << model.link_name(current->link) << '\n';
                for (auto &child : current->children)
                {
                    // std::cout << prefix << child.link << '\n';
                    print_link_tree(&child, "  " + prefix);
                }
            };

            std::cout << "Link Tree:\n";
            print_link_tree(&model.link_tree_root, "+-");

            // start with initial transform. walk tree and generate rigid bodies and motionstates based on accumulating transforms
            // initial_transform.

            // Walk Tree and assemble into model with joints
            // find a base link

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
            for (auto link : this->links)
            {
                glm::mat4 model_mat;
                btTransform trans;
                links[id].motion_state->getWorldTransform(trans);
                trans.getOpenGLMatrix(&(model_mat[0][0]));
                models[link.visual]->render(persp, view, model_mat, light_pos);
                id++;
            }
        }
    } // namespace loader
} // namespace sim
