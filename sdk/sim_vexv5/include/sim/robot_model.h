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

        typedef int Joint;
        typedef int Effector;

        typedef int compiled_obj;

        typedef unsigned long structure_id;
        typedef unsigned long joint_id;
        typedef unsigned long effector_id;
        typedef unsigned long shape_id;

        /// @brief pure geometry and texture data
        /// mounted at the origin
        /// will be moved around by robot model
        class Shape
        {
        public:
            // Shape(){}
            // virtual Shape(sim::construction::Shape const&) = defualt;

            // virtual ~Shape(){}
            // virtual void render(glm::mat4 mat, renderer::RenderTarget rt);
        };

        // /// @brief shape from obj file
        // class obj_shape : public Shape
        // {
        // public:
        //     obj_shape(compiled_obj *file);
        //     obj_shape(std::string path);
        //     ~obj_shape();
        //     void render(glm::mat4 mat, renderer::RenderTarget rt) override;
        // };

        /// @brief shape from obj file
        class cylinder_shape : public Shape
        {

        private:
            std::vector<glm::vec3> points;
            std::vector<glm::vec3> normals;

            unsigned int points_vbo;
            unsigned int vao;
            unsigned int ibo;

        public:
            cylinder_shape(double radius, double height, int segments);
            ~cylinder_shape();
            void render(glm::mat4 mat, renderer::RenderTarget rt); // override;
        };

        struct Structure
        {
            int id;
            std::string name;
            Location origin_loc;
            shape_id shape;
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

            unsigned long num_structures;
            unsigned long num_joints;
            unsigned long num_effectors;
            unsigned long num_shapes;

            // Actual Robot
            std::map<structure_id, Structure> structures;
            std::map<joint_id, Joint> joints;
            std::map<effector_id, Effector> effectors;

            std::map<shape_id, Shape> shapes;
        };
        bool setup();
        void cleanup();
        void drawUI();
    }
}