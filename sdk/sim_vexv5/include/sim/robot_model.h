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

#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>

namespace sim
{
    namespace construction
    {

        unsigned int load_texture(std::string filename);

        class MeshShape : Shape
        {
        public:
            struct Vertex
            {
                glm::vec3 position;
                glm::vec3 normal;
                glm::vec3 texture_coords;
            };
            MeshShape(std::vector<Vertex> vertices, std::vector<unsigned int> indices, unsigned int tex_handle_tbd);
            void render(glm::mat4 persp, glm::mat4 view, renderer::RenderTarget rt) override;

        private:
            unsigned int vao, vbo, ibo;
            void initGL();
        };

        class Model : Shape
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