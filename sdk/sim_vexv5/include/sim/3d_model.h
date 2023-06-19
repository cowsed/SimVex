#pragma once

#include <vector>
#include <memory>
#include <string>
#include <ostream>

#include <glm/vec2.hpp>
#include <glm/vec3.hpp>
#include <glm/mat4x4.hpp>


namespace sim
{
    namespace construction
    {
        void setup();

        class MeshShape
        {
        public:
            /// @brief description of a vertex for the GPU. 
            /// Because it is all that is needed for drawing, only this will be cached and other ASSIMP attributes will be discarded 
            struct Vertex
            {
                glm::vec3 position;
                glm::vec3 normal;
                glm::vec2 texture_coords;
            };

            /// @brief Element (triangle) for opengl
            struct Tri
            {
                unsigned int a;
                unsigned int b;
                unsigned int c;
            };
            /// @brief Create a mesh from data taken from ASSIMP
            MeshShape(std::vector<Vertex> vertices, std::vector<Tri> indices, unsigned int tex_handle_tbd, bool has_texture, glm::vec3 diffuse_col);
            /// @brief Create a mesh from a cache file
            /// @param file input file
            MeshShape(std::ifstream &file);
            ~MeshShape() {}
            /// @brief Writes this mesh to a cache file
            /// @param file output file to write to
            void write_to_cache_file(std::ofstream &file);
            
            /// @brief renders the mesh to the screen 
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
            void load_from_file_cache(std::string cache_path);
            void load_from_model(std::string model_path);
            void write_to_file_cache(std::string cache_name);

            void render(glm::mat4 persp, glm::mat4 view, glm::mat4 model, glm::vec3 light_pos);

        private:
            std::vector<MeshShape> meshes;
        };
    }
}