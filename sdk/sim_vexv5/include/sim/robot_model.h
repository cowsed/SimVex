#pragma once

#include <vector>
#include <map>
#include <string>
#include <fstream>
#include <iostream>
#include <thread>
#include <chrono>

#include "imgui.h"

#include "sim/graphics/render_common.h"


namespace sim
{
    namespace construction
    {
        void setup();

        unsigned int load_texture(std::string filename);

        class MeshShape : public Shape
        {
        public:
            struct Vertex
            {
                glm::vec3 position;
                glm::vec3 normal;
                glm::vec2 texture_coords;
            };
            struct Tri
            {
                unsigned int a;
                unsigned int b;
                unsigned int c;
            };
            MeshShape(std::vector<Vertex> vertices, std::vector<Tri> indices, unsigned int tex_handle_tbd, bool has_texture, glm::vec3 diffuse_col);
            ~MeshShape(){}
            void render(glm::mat4 persp, glm::mat4 view, renderer::RenderTarget rt) override;

            const std::vector<Vertex> &get_verts();
            const std::vector<Tri> &get_tris();

        private:
            std::vector<Vertex> verts;
            std::vector<Tri> tris;
            unsigned int vao, vbo, ibo, diffuse_handle;
            bool has_texture;
            glm::vec3 diffuse_col;
        };

        class Model : public Shape
        {
        public:
            /// @brief Load a mesh through assimp
            /// @param path path of mesh
            Model(std::string path);
            void render(glm::mat4 persp, glm::mat4 view, renderer::RenderTarget rt) override;

        private:
            std::vector<MeshShape> meshes;
        };
    }
}