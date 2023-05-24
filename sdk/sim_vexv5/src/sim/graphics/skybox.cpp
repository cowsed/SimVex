#include <array>

#include <GL/glew.h>
#include <GL/glcorearb.h>

#include "sim/graphics/skybox.h"
#include "sim/graphics/render_common.h"

const char skybox_vert[] =
    "#version 330 core\n"
    "layout (location = 0) in vec3 aPos;\n"
    "out vec3 TexCoords;\n"
    "uniform mat4 projection;\n"
    "uniform mat4 view;\n"
    "void main()\n"
    "{\n"
    "    TexCoords = aPos;\n"
    "    gl_Position = projection * view * vec4(aPos, 1.0);\n"
    "}  ";

const char skybox_frag[] =
    "#version 330 core\n"
    "out vec4 FragColor;\n"
    "\n"
    "in vec3 TexCoords;\n"
    "\n"
    "uniform samplerCube skybox;\n"
    "\n"
    "void main()\n"
    "{    \n"
    "    FragColor = texture(skybox, TexCoords);\n"
    "}\n";

namespace sim
{
    namespace renderer
    {

        const float skybox_points[] = {

            // positions
            -1.0f, 1.0f, -1.0f,
            -1.0f, -1.0f, -1.0f,
            1.0f, -1.0f, -1.0f,
            1.0f, -1.0f, -1.0f,
            1.0f, 1.0f, -1.0f,
            -1.0f, 1.0f, -1.0f,

            -1.0f, -1.0f, 1.0f,
            -1.0f, -1.0f, -1.0f,
            -1.0f, 1.0f, -1.0f,
            -1.0f, 1.0f, -1.0f,
            -1.0f, 1.0f, 1.0f,
            -1.0f, -1.0f, 1.0f,

            1.0f, -1.0f, -1.0f,
            1.0f, -1.0f, 1.0f,
            1.0f, 1.0f, 1.0f,
            1.0f, 1.0f, 1.0f,
            1.0f, 1.0f, -1.0f,
            1.0f, -1.0f, -1.0f,

            -1.0f, -1.0f, 1.0f,
            -1.0f, 1.0f, 1.0f,
            1.0f, 1.0f, 1.0f,
            1.0f, 1.0f, 1.0f,
            1.0f, -1.0f, 1.0f,
            -1.0f, -1.0f, 1.0f,

            -1.0f, 1.0f, -1.0f,
            1.0f, 1.0f, -1.0f,
            1.0f, 1.0f, 1.0f,
            1.0f, 1.0f, 1.0f,
            -1.0f, 1.0f, 1.0f,
            -1.0f, 1.0f, -1.0f,

            -1.0f, -1.0f, -1.0f,
            -1.0f, -1.0f, 1.0f,
            1.0f, -1.0f, -1.0f,
            1.0f, -1.0f, -1.0f,
            -1.0f, -1.0f, 1.0f,
            1.0f, -1.0f, 1.0f};

        void Skybox::init()
        {
            // Initialize texture
            glGenTextures(1, &this->cubemap_handle);
            glBindTexture(GL_TEXTURE_CUBE_MAP, this->cubemap_handle);
            std::array faces = {px, nx, py, ny, pz, nz};
            unsigned int i = 0;
            for (auto &face : faces)
            {
                glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X + i,
                             0, GL_RGBA, face.width, face.height, 0, GL_RGBA, GL_UNSIGNED_BYTE, face.image_data);
                i++;
            }
            glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
            glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
            glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
            glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
            glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);

            // Initialize shader program
            skybox_prog = ShaderProgram(skybox_vert, skybox_frag);

            // Initialize mesh
            glGenBuffers(1, &vbo);
            glBindBuffer(GL_ARRAY_BUFFER, vbo);
            glBufferData(GL_ARRAY_BUFFER, sizeof(skybox_points), skybox_points, GL_STATIC_DRAW);

            glGenVertexArrays(1, &vao);
            glBindVertexArray(vao);
            glBindBuffer(GL_ARRAY_BUFFER, vbo);
            glEnableVertexAttribArray(0); // vert pos
            glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), NULL);
        }

        void Skybox::render(Camera &cam, RenderTarget &rt)
        {
            skybox_prog.activate();
            glDisable(GL_CULL_FACE);
            glDepthMask(GL_FALSE);

            skybox_prog.activate();

            glm::mat4 perspective = cam.persp_matrix(rt);
            glm::mat4 no_translation = glm::mat4(glm::mat3(cam.view_matrix()));

            glUniformMatrix4fv(0, 1, false, (float *)(&perspective));
            glUniformMatrix4fv(1, 1, false, (float *)(&no_translation));

            glBindVertexArray(vao);
            glBindTexture(GL_TEXTURE_CUBE_MAP, cubemap_handle);
            glDrawArrays(GL_TRIANGLES, 0, 36);

            glEnable(GL_CULL_FACE);
            glDepthMask(GL_TRUE);
        }
    } // namespace renderer

} // namespace renderer