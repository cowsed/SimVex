#pragma once

#include <vector>
#include <memory>
#include <string>
#include <ostream>

#include <glm/vec2.hpp>
#include <glm/vec3.hpp>
#include <glm/mat4x4.hpp>

#include "btBulletDynamicsCommon.h"

namespace sim
{
    namespace construction
    {
        void setup();

        class MeshShape
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
            MeshShape(std::ifstream &file);
            ~MeshShape() {}
            void write_to_cache_file(std::ofstream &file);
            
            void render(glm::mat4 persp, glm::mat4 view, glm::mat4 model, glm::vec3 light_pos);

            const std::vector<Vertex> &get_verts();
            const std::vector<Tri> &get_tris();

        private:
            std::vector<Vertex> verts;
            std::vector<Tri> tris;
            unsigned int vao, vbo, ibo, diffuse_handle;
            bool has_texture;
            glm::vec3 diffuse_col;
        };

        class Model
        {
        public:
            /// @brief Load a mesh through assimp
            /// @param path path of mesh
            Model(std::string path);
            void load_from_cache(std::string cache_path);
            void load_from_model(std::string model_path);
            void write_to_cache(std::string cache_name);

            void render(glm::mat4 persp, glm::mat4 view, glm::mat4 model, glm::vec3 light_pos);
            std::unique_ptr<btCollisionShape> make_convex_hull();

        private:
            std::vector<MeshShape> meshes;
        };
    }
}