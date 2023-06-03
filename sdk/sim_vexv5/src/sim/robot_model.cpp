#include "sim/robot_model.h"

#include <assimp/Importer.hpp>
#include <assimp/scene.h>
#include <assimp/postprocess.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb/stb_image.h"

namespace sim
{
    namespace construction
    {
        const float collision_margin = 0.0005;
        static const char *model_vertex_shader =
            "#version 400\n"
            "uniform mat4 view;"
            "uniform mat4 perspective;"
            "uniform mat4 model;"
            "uniform sampler2D tex;"
            "uniform int has_texture;"
            "uniform vec3 diff_col;"
            "uniform vec3 view_pos;"
            ""
            "in vec3 vp;"
            "in vec3 norm_v;"
            "in vec2 UV_v;"
            ""
            "out vec3 frag_pos;"
            "out vec3 world_normal;"
            "out vec2 UV;"
            ""
            "void main() {"
            "   frag_pos = (model * vec4(vp, 1.0)).xyz;"
            "   UV = UV_v;"
            "   world_normal = (model * vec4(norm_v, 1.0)).xyz;"
            "  gl_Position = perspective * view * model * vec4(vp, 1.0);"
            "}";

        static const char *model_fragment_shader =
            "#version 400\n"
            "uniform sampler2D tex;"
            "in vec3 frag_pos;"
            "in vec3 world_normal;"
            "in vec2 UV;"
            "uniform int has_texture;"
            "uniform vec3 diff_col;"
            "uniform vec3 view_pos;"
            ""
            "out vec4 frag_colour;"
            ""
            "uniform vec3 light_pos = normalize(vec3(5, 10, 5));"
            "float shininess = 0.05;"
            "vec3 light_color = vec3(1,1,1);"
            ""
            "float ambient_strength = .3;"
            "void main() {"
            "   vec3 ambient = ambient_strength * light_color;"
            "   vec3 light_dir = normalize(light_pos - frag_pos);"
            "   float diff = max(dot(world_normal, light_dir), 0.0);"
            "   vec3 diffuse = diff * light_color;"
            "   vec3 col = texture(tex, UV).xyz;"
            "   if (has_texture==0){"
            "       col = diff_col;"
            "   }"
            ""
            "   vec3 out_col = (ambient + diffuse)  * col;"
            "   frag_colour = vec4(out_col.x, out_col.y, out_col.z, 1.0);"
            "}";

        renderer::ShaderProgram model_prog;

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

        // Cache structure for load_texture
        static std::map<std::string, unsigned int> texture_cache = {};

        unsigned int load_texture_internal(std::string path)
        {
            int width, height, nrChannels;
            unsigned char *data = stbi_load(path.c_str(), &width, &height, &nrChannels, 0);

            unsigned int texture;
            glGenTextures(1, &texture);
            glBindTexture(GL_TEXTURE_2D, texture);
            glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_UNSIGNED_BYTE, data);
            glGenerateMipmap(GL_TEXTURE_2D);

            return texture;
        }

        ///@brief Load an image texture from the filesystem, upload it to openGL and return it's handle
        /// If the texture has been loaded already, return its existing handle (and promise not to modify it)
        /// @pre openGL has been initialized
        unsigned int load_texture(std::string filename)
        {
            std::string path = "Construction/";

            std::string tex_path = path.append(filename);

            if (texture_cache.contains(tex_path))
            {
                return texture_cache[tex_path];
            }

            unsigned int handle = load_texture_internal(tex_path);

            texture_cache.insert({tex_path, handle});

            return handle;
        }

        /// @brief procceses an Assimp mesh into a MeshShape
        /// @param mesh the mesh to convert
        /// @param scene the scene that the mesh is part
        /// @return Constructed Mesh Shape
        /// @pre openGL has been initialized
        static MeshShape processAiMesh(aiMesh *mesh, const aiScene *scene)
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
                    unsigned int handle = load_texture(std::string(path.C_Str()));
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
        static void processAiNode(aiNode *node, const aiScene *scene, std::vector<MeshShape> &meshes)
        {
            for (unsigned int i = 0; i < node->mNumMeshes; i++)
            {
                aiMesh *mesh = scene->mMeshes[node->mMeshes[i]];
                meshes.push_back(processAiMesh(mesh, scene));
            }
            // add child nodes
            for (unsigned int i = 0; i < node->mNumChildren; i++)
            {
                processAiNode(node->mChildren[i], scene, meshes);
            }
        }

        Model::Model(std::string path)
        {
            Assimp::Importer import;
            const aiScene *scene = import.ReadFile(path, aiProcess_Triangulate | aiProcess_FlipUVs | aiProcess_GenBoundingBoxes);
            if (!scene || scene->mFlags & AI_SCENE_FLAGS_INCOMPLETE || !scene->mRootNode)
            {
                std::cout << "ERROR::ASSIMP::" << import.GetErrorString() << std::endl;
                exit(EXIT_FAILURE);
                return;
            }

            std::string directory = path.substr(0, path.find_last_of('/'));

            std::vector<MeshShape> shapes;
            processAiNode(scene->mRootNode, scene, shapes);
            this->meshes = shapes;
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
        std::unique_ptr<btCollisionShape> Model::make_convex_hull()
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
            std::unique_ptr<btConvexHullShape> collision_mesh = std::make_unique<btConvexHullShape>(verts[0], verts.size());
            collision_mesh->setMargin(collision_margin);

            collision_mesh->optimizeConvexHull();
            return std::move(collision_mesh);
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