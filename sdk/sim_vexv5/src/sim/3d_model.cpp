#include "sim/3d_model.h"

#include <map>
#include <fstream>
#include <iostream>
#include <functional>
#include <thread>
#include <chrono>
#include <filesystem>

#include <sys/stat.h>

#include <GL/glew.h>
#include <GL/glcorearb.h>

#include "imgui.h"

#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>

#include "sim/graphics/render_common.h"

namespace sim
{
    namespace construction
    {
        const float collision_margin = 0.00005;
        static const char *model_vertex_shader = R"glsl(
#version 400
uniform mat4 view;
uniform mat4 perspective;
uniform mat4 model;
uniform sampler2D tex;
uniform int has_texture;
uniform vec3 diff_col;
uniform vec3 view_pos;
            
in vec3 vp_physics;
in vec3 norm_v;
in vec2 UV_v;
            
out vec3 frag_pos;
out vec3 world_normal;
out vec2 UV;
            
void main() {
    vec3 vp = vec3(vp_physics.x, vp_physics.y, vp_physics.z);
    frag_pos = (model * vec4(vp, 1.0)).xyz;
    UV = UV_v;
    world_normal = (model * vec4(norm_v, 1.0)).xyz;
    gl_Position = perspective * view * model * vec4(vp, 1.0);
})glsl";

        static const char *model_fragment_shader = R"glsl(
#version 400
uniform sampler2D tex;
in vec3 frag_pos;
in vec3 world_normal;
in vec2 UV;
uniform int has_texture;
uniform vec3 diff_col;
uniform vec3 view_pos;

out vec4 frag_colour;

uniform vec3 light_pos = normalize(vec3(5, 10, 5));
float shininess = 0.05;
vec3 light_color = vec3(1,1,1);

float ambient_strength = .3;
void main() {
   vec3 ambient = ambient_strength * light_color;
   vec3 light_dir = normalize(light_pos - frag_pos);
   float diff = max(dot(world_normal, light_dir), 0.0);
   vec3 diffuse = diff * light_color;
   vec3 col = texture(tex, UV).xyz;
   if (has_texture==0){
       col = diff_col;
   }

   vec3 out_col = (ambient + diffuse)  * col;
   frag_colour = vec4(out_col.x, out_col.y, out_col.z, 1.0);
})glsl";

        renderer::ShaderProgram model_prog;

        /// @brief create a MeshShape from assimp data structures
        /// @param vertices vertex spec
        /// @param tris element buffer
        /// @param diffuse_tex_handle texture handle
        /// @param has_texture whether or not to use texture or just the diffuse color
        /// @param diffuse_col base color if no texture
        MeshShape::MeshShape(std::vector<MeshShape::Vertex> vertices, std::vector<MeshShape::Tri> tris, unsigned int diffuse_tex_handle, bool has_texture, glm::vec3 diffuse_col)
        {
            this->verts = vertices;
            this->tris = tris;
            this->has_texture = has_texture;
            this->diffuse_handle = diffuse_tex_handle;
            this->diffuse_col = diffuse_col;

            glGenBuffers(1, &vbo);
            glBindBuffer(GL_ARRAY_BUFFER, vbo);
            glBufferData(GL_ARRAY_BUFFER, verts.size() * sizeof(Vertex), &(verts[0]), GL_STATIC_DRAW);

            unsigned int vert_ind = 0;
            unsigned int norm_ind = 1;
            unsigned int uv_ind = 2;

            glGenVertexArrays(1, &vao);
            glBindVertexArray(vao);
            glBindBuffer(GL_ARRAY_BUFFER, vbo);
            glEnableVertexAttribArray(vert_ind); // vert pos
            glVertexAttribPointer(vert_ind, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), NULL);
            glEnableVertexAttribArray(norm_ind); // vert normal
            glVertexAttribPointer(norm_ind, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void *)(3 * sizeof(float)));
            glEnableVertexAttribArray(uv_ind); // vert UV
            glVertexAttribPointer(uv_ind, 2, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void *)(6 * sizeof(float)));

            glGenBuffers(1, &ibo);
            glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ibo);
            glBufferData(GL_ELEMENT_ARRAY_BUFFER, tris.size() * sizeof(Tri), (void *)&(tris[0]), GL_STATIC_DRAW);
        }

        /// @brief construct a MeshShape from a cache file
        /// @param file file containing streamlined version
        MeshShape::MeshShape(std::ifstream &file)
        {
            std::uint64_t num_verts = 0;
            std::uint64_t num_faces = 0;
            file.read((char *)&num_verts, sizeof(num_verts));
            file.read((char *)&num_faces, sizeof(num_faces));

            file.read((char *)&has_texture, sizeof(has_texture));
            file.read((char *)&diffuse_col, sizeof(diffuse_col));

            if (has_texture)
            {
                std::uint32_t path_len = 0;
                file.read((char *)&path_len, sizeof(path_len));
                char *path_ptr = (char *)std::malloc((path_len + 1) * sizeof(char));
                file.read((char *)path_ptr, (path_len + 1) * sizeof(char));
                std::string path = std::string(path_ptr);

                diffuse_handle = renderer::load_texture(path);

                free(path_ptr);
            }

            // Big Data
            verts = std::vector<Vertex>(num_verts);
            file.read((char *)(&(verts[0])), sizeof(verts[0]) * num_verts);

            tris = std::vector<Tri>(num_faces);
            file.read((char *)(&(tris[0])), sizeof(tris[0]) * num_faces);

            glGenBuffers(1, &vbo);
            glBindBuffer(GL_ARRAY_BUFFER, vbo);
            glBufferData(GL_ARRAY_BUFFER, verts.size() * sizeof(Vertex), &(verts[0]), GL_STATIC_DRAW);

            unsigned int vert_ind = 0;
            unsigned int norm_ind = 1;
            unsigned int uv_ind = 2;

            glGenVertexArrays(1, &vao);
            glBindVertexArray(vao);
            glBindBuffer(GL_ARRAY_BUFFER, vbo);
            glEnableVertexAttribArray(vert_ind); // vert pos
            glVertexAttribPointer(vert_ind, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), NULL);
            glEnableVertexAttribArray(norm_ind); // vert normal
            glVertexAttribPointer(norm_ind, 3, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void *)(3 * sizeof(float)));
            glEnableVertexAttribArray(uv_ind); // vert UV
            glVertexAttribPointer(uv_ind, 2, GL_FLOAT, GL_FALSE, sizeof(Vertex), (void *)(6 * sizeof(float)));

            glGenBuffers(1, &ibo);
            glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ibo);
            glBufferData(GL_ELEMENT_ARRAY_BUFFER, tris.size() * sizeof(Tri), (void *)&(tris[0]), GL_STATIC_DRAW);
        }

        /// @brief write the model to the streamlined cache version
        /// @param file the file to write to
        void MeshShape::write_to_cache_file(std::ofstream &file)
        {
            std::uint64_t num_verts = verts.size();
            std::uint64_t num_faces = tris.size();

            std::string tex_path = renderer::get_texture_path(diffuse_handle);
            std::uint32_t path_len = tex_path.size();

            file.write((char *)(&num_verts), sizeof(std::uint64_t));
            file.write((char *)(&num_faces), sizeof(std::uint64_t));

            file.write((char *)(&has_texture), sizeof(has_texture));
            file.write((char *)(&diffuse_col), sizeof(diffuse_col));

            if (has_texture)
            {
                file.write((char *)(&path_len), sizeof(path_len));
                file.write((char *)(tex_path.c_str()), (path_len + 1) * sizeof(char));
            }

            // Big Data
            file.write((char *)(&(verts[0])), sizeof(verts[0]) * num_verts);
            file.write((char *)(&(tris[0])), sizeof(tris[0]) * num_faces);
        }

        /// @brief access MeshShape's vertices
        const std::vector<MeshShape::Vertex> &MeshShape::get_verts()
        {
            return verts;
        }

        /// @brief access MeshShape's triangles
        const std::vector<MeshShape::Tri> &MeshShape::get_tris()
        {
            return tris;
        }
        /// @brief render MeshShape to the active Render Target
        /// @param persp persp matrix
        /// @param view view matrix
        /// @param rt active Render Target
        void MeshShape::render(glm::mat4 persp, glm::mat4 view, glm::mat4 model, glm::vec3 light_pos)
        {
            glm::vec4 view_pos = view[3];
            model_prog.activate();
            glUniformMatrix4fv(glGetUniformLocation(model_prog.program, "view"), 1, false, (float *)(&view));
            glUniformMatrix4fv(glGetUniformLocation(model_prog.program, "perspective"), 1, false, (float *)(&persp));
            glUniformMatrix4fv(glGetUniformLocation(model_prog.program, "model"), 1, false, (float *)(&model));
            if (has_texture)
            {
                glBindTexture(GL_TEXTURE_2D, this->diffuse_handle);
            }
            glUniform1i(glGetUniformLocation(model_prog.program, "has_texture"), has_texture);
            glUniform3f(glGetUniformLocation(model_prog.program, "diff_col"), diffuse_col.x, diffuse_col.y, diffuse_col.z);
            glUniform3f(glGetUniformLocation(model_prog.program, "view_pos"), view_pos.x, view_pos.y, view_pos.z);
            glUniform3f(glGetUniformLocation(model_prog.program, "light_pos"), light_pos.x, light_pos.y, light_pos.z);
            glBindVertexArray(vao);
            glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ibo);

            // Draw the triangles !
            glDrawElements(
                GL_TRIANGLES,    // mode
                tris.size() * 3, // count
                GL_UNSIGNED_INT, // type
                (void *)0        // element array buffer offset
            );
        }

        /// @brief procceses an Assimp mesh into a MeshShape
        /// @param mesh the mesh to convert
        /// @param scene the scene that the mesh is part
        /// @return Constructed Mesh Shape
        /// @pre openGL has been initialized
        static MeshShape processAiMesh(aiMesh *mesh, const aiScene *scene, std::string base_path)
        {
            // Local Helpers
            auto toGlm3 = [](aiVector3D v)
            { return glm::vec3{v.x, v.y, v.z}; };
            auto toGlm2 = [](auto v)
            { return glm::vec2{v.x, v.y}; };

            // Snag Vertices
            std::vector<MeshShape::Vertex> verts(mesh->mNumVertices);
            for (unsigned int i = 0; i < mesh->mNumVertices; i++)
            {
                MeshShape::Vertex v;
                v.position = toGlm3(mesh->mVertices[i]);
                v.normal = toGlm3(mesh->mNormals[i]);
                if (mesh->mTextureCoords[0]) // does the mesh contain texture coordinates?
                {
                    v.texture_coords = toGlm2(mesh->mTextureCoords[0][i]);
                }
                else
                {
                    v.texture_coords = glm::vec2(0.0f, 0.0f);
                }
                verts[i] = v;
            }

            // Grab Indices
            std::vector<MeshShape::Tri> indices(mesh->mNumFaces);

            for (unsigned int i = 0; i < mesh->mNumFaces; i++)
            {
                std::vector<MeshShape::Vertex> verts(mesh->mNumVertices);

                aiFace face = mesh->mFaces[i];
                MeshShape::Tri tri = {face.mIndices[0], face.mIndices[1], face.mIndices[2]};
                indices[i] = tri;
            }

            // Textures
            unsigned int diffuse_tex_handle = -1;
            bool has_texture = false;
            glm::vec3 diff_col = glm::vec3(0, 0, 0);
            if (mesh->mMaterialIndex >= 0)
            {
                aiMaterial *material = scene->mMaterials[mesh->mMaterialIndex];

                if (material->GetTextureCount(aiTextureType_DIFFUSE) > 0)
                {
                    // have at least one diffues texture
                    aiString path;
                    material->GetTexture(aiTextureType_DIFFUSE, 0, &path);
                    unsigned int handle = renderer::load_texture(base_path + "/" + std::string(path.C_Str()));
                    diffuse_tex_handle = handle;
                    has_texture = true;
                }
                else
                {
                    has_texture = false;
                    aiColor4D col;
                    aiGetMaterialColor(material, AI_MATKEY_COLOR_DIFFUSE, &col);
                    // material->mProperties[AI_MATKEY_COLOR_DIFFUSE];
                    diff_col.x = col.r;
                    diff_col.y = col.g;
                    diff_col.z = col.b;
                }
            }

            return MeshShape(verts, indices, diffuse_tex_handle, has_texture, diff_col);
        }

        /// @pre openGL has been initialized
        static void processAiNode(aiNode *node, const aiScene *scene, std::vector<MeshShape> &meshes, std::string base_path)
        {
            for (unsigned int i = 0; i < node->mNumMeshes; i++)
            {
                aiMesh *mesh = scene->mMeshes[node->mMeshes[i]];
                meshes.push_back(processAiMesh(mesh, scene, base_path));
            }
            // add child nodes
            for (unsigned int i = 0; i < node->mNumChildren; i++)
            {
                processAiNode(node->mChildren[i], scene, meshes, base_path);
            }
        }

        const std::string model_file_cache_path = ".model_cache";
        static bool is_cache_loaded = false;
        static std::map<std::string, std::filesystem::file_time_type> cached_names;
        /// @brief initializes the model cache
        /// reads the model_cache directory for models we have cached
        void load_model_cache()
        {

            // Structure which would store the metadata
            struct stat sb;

            // Calls the function with path as argument
            // If the file/directory exists at the path returns 0
            // If block executes if path exists
            if (!(stat(model_file_cache_path.c_str(), &sb) == 0))
            {
                // no cache, make a cache folder
                std::filesystem::create_directory(model_file_cache_path);
                return;
            }
            // cache exists
            for (const auto &entry : std::filesystem::directory_iterator(model_file_cache_path))
            {
                std::string name_only = entry.path().filename().string();
                cached_names.emplace(name_only, entry.last_write_time());
            }
        }

        /// @brief helper function to figure out if our cache file is up to date with model
        /// @param me time of write for model
        /// @param other time of write for cache file
        /// @return true if model is more recent
        bool is_more_recent(std::filesystem::file_time_type me, std::filesystem::file_time_type other)
        {
            if (me.time_since_epoch() > other.time_since_epoch())
            {
                return true;
            }
            return false;
        }

        /// @brief loads a model from a cache file
        /// @param cache_path file path to cached model
        void Model::load_from_file_cache(std::string cache_path)
        {
            std::ifstream input_file(cache_path);

            std::uint64_t num_meshes;
            input_file.read((char *)(&num_meshes), sizeof(num_meshes));
            for (std::uint64_t i = 0; i < num_meshes; i++)
            {
                meshes.emplace_back(MeshShape(input_file));
            }
        }

        /// @brief Write a model cache
        /// @param cache_path file path of where to write the cached model
        void Model::write_to_file_cache(std::string cache_path)
        {
            std::uint64_t num_meshes = meshes.size();

            /*
            Cache File Format
            Model Level:
                8 bytes: number of meshes

                Mesh Level:
                    see Model::write_to_cache_file
                again for next mesh
            */

            std::ofstream output_file(cache_path);
            output_file.write((char *)(&num_meshes), sizeof(std::uint64_t));

            for (auto &mesh : meshes)
            {
                mesh.write_to_cache_file(output_file);
            }

            output_file.close();
        }

        /// @brief load a 3d model from a model file (preferably .dae) with assimp
        /// @param model_path filesystem path to load from
        void Model::load_from_model(std::string model_path)
        {
            Assimp::Importer import;
            
            const aiScene *scene = import.ReadFile(model_path, aiProcess_Triangulate | aiProcess_FlipUVs | aiProcess_GenBoundingBoxes);
            if (!scene || scene->mFlags & AI_SCENE_FLAGS_INCOMPLETE || !scene->mRootNode)
            {
                std::cout << "ERROR::ASSIMP::" << import.GetErrorString() << std::endl;
                exit(EXIT_FAILURE);
                return;
            }

            std::string directory = model_path.substr(0, model_path.find_last_of('/'));

            std::vector<MeshShape> shapes;
            processAiNode(scene->mRootNode, scene, shapes, directory);
            this->meshes = shapes;
        }

        /// @brief performs a check if a model is available to load from the cache
        /// checks if we have a cache of the model and if the cache is not out of date
        /// @param path the path from which to load the model
        /// @return true if we can use the cache, false otherwise
        bool should_load_from_file_cache(std::string path)
        {
            std::string path_hash = std::to_string(std::hash<std::string>{}(path));

            // get time written of model file
            std::filesystem::file_time_type last_model_write = std::filesystem::last_write_time(path);

            // not in cache
            if (!cached_names.contains(path_hash))
            {
                return false;
            }
            std::filesystem::file_time_type last_cache_write = std::filesystem::last_write_time(model_file_cache_path + "/" + path_hash);
            // cache is out of date
            if (is_more_recent(last_model_write, last_cache_write))
            {
                return false;
            }
            return true;
        }

        /// @brief Constructs a model from a path to a 3d model
        /// will use a cached model if available
        /// @param path the path to the model file
        Model::Model(std::string path)
        {
            // make sure we have the cache
            if (!is_cache_loaded)
            {
                load_model_cache();
                is_cache_loaded = true;
            }

            bool was_loaded_from_file_cache = true;
            std::string cache_name = std::to_string(std::hash<std::string>{}(path));

            if (should_load_from_file_cache(path))
            {
                load_from_file_cache(model_file_cache_path + "/" + cache_name);
                was_loaded_from_file_cache = true;
            }
            else
            {
                load_from_model(path);
                was_loaded_from_file_cache = false;
            }

            if (!was_loaded_from_file_cache)
            {
                write_to_file_cache(model_file_cache_path + "/" + cache_name);
                // update cache with new writing
                std::filesystem::file_time_type write_time = std::filesystem::last_write_time(model_file_cache_path + "/" + cache_name);
                cached_names.emplace(path, write_time);
            }
        }

        /// @brief render Model to the active Render Target
        /// @param persp persp matrix
        /// @param view view matrix
        /// @param rt active Render Target
        void Model::render(glm::mat4 persp, glm::mat4 view, glm::mat4 model, glm::vec3 light_pos)
        {
            for (auto &mesh : meshes)
            {
                mesh.render(persp, view, model, light_pos);
            }
        }

        /// make_convex_hull from a mesh
        /// @pre sim::physics::setup() has been called
        /// @return a collision shape that should be passed right into sim::physics::add_*_object()
        btCollisionShape  *Model::make_convex_hull()
        {
            auto vec3TobtVec3 = [](glm::vec3 v)
            {
                return btVector3(v.x, v.y, v.z);
            };

            auto mesh = meshes[0];
            std::vector<btVector3> verts(mesh.get_verts().size());

            for (std::size_t i = 0; i < verts.size(); i++)
            {
                verts[i] = vec3TobtVec3(mesh.get_verts()[i].position);
            }
            btConvexHullShape *collision_mesh = new btConvexHullShape(verts[0], verts.size());
            collision_mesh->setMargin(collision_margin);
            collision_mesh->optimizeConvexHull();
            btCompoundShape * shape = new btCompoundShape(true, 1);
            btTransform shape_transform;
            shape_transform.setIdentity();
            // shape_transform.setOrigin({0,0,-0.15});
            shape->addChildShape(shape_transform, collision_mesh);
            return shape;
        }

        /// @brief setup robot construction
        /// load and assemble robots stored in a file
        /// @pre openGL has been initialized
        void setup()
        {
            model_prog = renderer::ShaderProgram(model_vertex_shader, model_fragment_shader);
        }
    } // construction
} // sim