#pragma once
#include <string>
#include <map>

#include "3d_model.h"
namespace sim
{
    namespace loader
    {
        struct RobotModel{
            // model id local to this RobotModel identifies mesh models
            typedef std::size_t model_id;
            static constexpr model_id no_visual = -1;

            typedef std::size_t link_id;
            typedef std::size_t joint_id;
            
            struct Link{
                model_id visual;
            };
            struct Joint{
                enum Type{
                    Fixed,
                    Rotational
                };

                Type my_type;
                link_id parent;
                link_id child;
            };

            std::string name;
            
            std::map<std::string, model_id> model_paths;
            std::vector<sim::construction::Model*> models;

            std::map<std::string, link_id> link_names;
            std::vector<Link> links; // indexed by link_id
            std::map<std::string, joint_id> joint_names;
            std::vector<Joint> joints; // indexed by joint_id

            model_id add_model(std::string);
            link_id add_link(std::string name, Link j);
            joint_id add_joint(std::string name, Joint j);

        void render(glm::mat4 persp, glm::mat4 view, glm::mat4 model, glm::vec3 light_pos);
        };

        RobotModel load_urdf(std::string path);
    } // namespace loader    
} // namespace sim
