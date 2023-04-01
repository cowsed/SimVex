#pragma once

#include <vector>
#include <map>
#include <string>
#include <fstream>
#include <iostream>

#include <glm/vec3.hpp>
#include <glm/mat4x4.hpp> // glm::mat4
#include <glm/gtc/quaternion.hpp>

#include <nlohmann/json.hpp>

#include "imgui.h"

#include "sim/graphics/render_common.h"

namespace sim
{
    namespace construction
    {
        struct Structure
        {
            int id;
            std::string name;
            Location origin_loc;
        };
        
        
        typedef int Joint;
        typedef int Effector;

        typedef int compiled_obj;

        typedef uint32_t structure_id;
        typedef uint32_t joint_id;
        typedef uint32_t effector_id;

        /// @brief pure geometry and texture data
        /// mounted at the origin
        /// will be moved around by robot model
        class Shape
        {
        public:
            virtual void render(glm::mat4 mat, renderer::RenderTarget rt);
        };

        /// @brief shape from obj file
        class obj_shape : public Shape
        {
        public:
            obj_shape(compiled_obj *file);
            obj_shape(std::string path);
            ~obj_shape();
            void render(glm::mat4 mat, renderer::RenderTarget rt) override;
        };

        /// @brief shape from obj file
        class disk_shape : public Shape
        {
        public:
            disk_shape(double radius, double height);
            ~disk_shape();
            void render(glm::mat4 mat, renderer::RenderTarget rt) override;
        };

        /// @brief Info loaded from robot description file
        /// describes how the robot looks and works
        struct robot_model
        {
            robot_model(std::string filename, bool &had_error);

            // File info
            int version_major;
            int version_minor;

            std::string robot_name;
            std::string date_modified;

            int num_structures;
            int num_joints;
            int num_effectors;

            // Actual Robot
            std::map<structure_id, Structure> structures;
            std::map<joint_id, Joint> joints;
            std::map<effector_id, Effector> effectors;
        };
        bool setup();
        void cleanup();
        void drawUI();
    }
}