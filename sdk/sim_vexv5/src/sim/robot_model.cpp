#include "sim/robot_model.h"
namespace sim
{
    namespace construction
    {
        static const char *model_vertex_shader =
            "#version 400\n"
            "uniform mat4 view;"
            "uniform mat4 perspective;"
            "uniform sampler2D tex;"
            ""
            "in vec3 vp;"
            "in vec3 norm_v;"
            "in vec2 UV_v;"
            ""
            "out vec3 norm;"
            "out vec2 UV;"
            ""
            "void main() {"
            "   UV = UV_v;"
            "   norm = norm_v;"
            "  gl_Position = perspective * view  * vec4(vp, 1.0);"
            "}";

        static const char *model_fragment_shader =
            "#version 400\n"
            "uniform sampler2D tex;"
            "in vec3 norm;"
            "in vec2 UV;"
            ""
            "out vec4 frag_colour;"
            ""
            "float ambient = .5;"
            "vec3 light_dir = normalize(vec3(1, 1, 1));"
            "void main() {"
            "   vec3 norm2 = abs(norm);"
            "   float amt = ambient + clamp(dot(light_dir, norm), 0, 1)* (1-ambient);"
            "   vec3 col = vec3(.4,.4,.4) * amt;"
            "   frag_colour = vec4(col.x, col.y, col.z, 1.0);"
            "}";

        renderer::ShaderProgram model_prog;

        MeshShape::MeshShape(std::vector<MeshShape::Vertex> vertices, std::vector<MeshShape::Tri> tris, unsigned int tex_handle_tbd)
        {
            this->verts = vertices;
            this->tris = tris;

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
        void MeshShape::render(glm::mat4 persp, glm::mat4 view, renderer::RenderTarget rt)
        {
            model_prog.activate();
            glUniformMatrix4fv(0, 1, false, (float *)(&view));
            glUniformMatrix4fv(1, 1, false, (float *)(&persp));

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
        static std::map<std::string, unsigned int> texture_cache;
        ///@brief Load an image texture from the filesystem, upload it to openGL and return it's handle
        /// If the texture has been loaded already, return its existing handle (and promise not to modify it)
        /// @pre openGL has been initialized
        unsigned int load_texture(std::string filepath)
        {
            return -1;
        }

        /// @brief procceses an Assimp mesh into a MeshShape
        /// @param mesh the mesh to convert
        /// @param scene the scene that the mesh is part
        /// @return Constructed Mesh Shape
        /// @pre openGL has been initialized
        static MeshShape processAiMesh(aiMesh *mesh, const aiScene *scene)
        {
            auto dims = mesh->mAABB.mMax - mesh->mAABB.mMin;
            
            std::cout << "dims: " << dims.x << ", " << dims.y << ", " << dims.z << '\n';
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

            // Textures??//

            return MeshShape(verts, indices, -1);
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
            else
            {
                std::cout << "Success ASSIMP\n";
            }

            std::string directory = path.substr(0, path.find_last_of('/'));

            std::vector<MeshShape> shapes;
            processAiNode(scene->mRootNode, scene, shapes);
            std::cout << shapes.size() << " shapes, faces = " << shapes[0].get_tris().size() << '\n';
            this->meshes = shapes;
        }

        /// @brief render Model to the active Render Target
        /// @param persp persp matrix
        /// @param view view matrix
        /// @param rt active Render Target
        void Model::render(glm::mat4 persp, glm::mat4 view, renderer::RenderTarget rt)
        {
            rt.activate();
            for (auto &mesh : meshes)
            {
                mesh.render(persp, view, rt);
            }
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