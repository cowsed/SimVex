#include "sim/urdf_loader.h"
#include "assimp/contrib/pugixml/src/pugixml.hpp"
#include "sim/3d_model.h"
#include <iostream>

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
            return id;
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
            return id;
        }

        RobotModel load_urdf(std::string path)
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
                model.add_link(link_name, this_link);
            }

            std::cout << "Joints: \n";
            for (pugi::xml_node joint = robot.child("joint"); joint; joint = joint.next_sibling("joint"))
            {
                std::cout << "Joint Name: " << joint.attribute("name").as_string() << '\n';
            }
            return model;
        }
        void RobotModel::render(glm::mat4 persp, glm::mat4 view, glm::mat4 model, glm::vec3 light_pos){
            for (auto m : this->models){
                m->render(persp, view, model, light_pos);
            }
        }
    } // namespace loader
} // namespace sim
