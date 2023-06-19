#pragma once
#include <string>
#include <map>

#include <glm/vec3.hpp>

#include "3d_model.h"
namespace sim
{
    namespace loader
    {
        struct RobotModel
        {
            // model id local to this RobotModel identifies mesh models
            typedef std::size_t model_id;
            static constexpr model_id no_visual = -1;

            typedef std::size_t link_id;
            static constexpr link_id link_tree_root_id = -1;

            typedef std::size_t joint_id;
            static constexpr joint_id unknown_joint_id = -1;

            struct Link
            {
                model_id visual = no_visual;
            };
            struct LinkTreeNode
            {
                joint_id joint_to_parent;
                link_id link;
                std::vector<LinkTreeNode> children;
            };

            struct Joint
            {
                struct Origin
                {
                    glm::vec3 xyz;
                    glm::vec3 rpy;
                };
                enum Type
                {
                    Fixed,
                    Rotational
                };

                Type my_type;
                link_id parent;
                link_id child;
                Origin origin;
                glm::vec3 axis;
            };

            std::string name;

            std::map<std::string, model_id> model_paths;
            std::vector<sim::construction::Model *> models;

            std::map<std::string, link_id> link_names;
            std::vector<Link> links; // indexed by link_id
            LinkTreeNode link_tree_root = LinkTreeNode{unknown_joint_id, link_tree_root_id, {}};

            std::map<std::string, joint_id> joint_names;
            std::vector<Joint> joints; // indexed by joint_id

            model_id add_model(std::string);
            link_id add_link(std::string name, Link j);
            joint_id add_joint(std::string name, Joint j);

            std::string link_name(link_id id);

            void render(glm::mat4 persp, glm::mat4 view, glm::mat4 model, glm::vec3 light_pos);
        };

        RobotModel load_urdf(std::string path);
    } // namespace loader
} // namespace sim
