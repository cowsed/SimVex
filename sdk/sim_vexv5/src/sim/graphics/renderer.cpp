#include "sim/graphics/renderer.h"

namespace sim
{
    namespace renderer
    {
        static RenderTarget field_viewport;
        static Camera field_camera;
        static const glm::vec3 up_vec = glm::vec3(0.0, 1.0, 0.0);

        float points[] = {
            -0.5f,
            -0.5f,
            0.0f,
            1.f,
            0.f,
            0.f,
            
            -0.5f,
            0.5f,
            0.0f,
            0.f,
            1.f,
            0.f,
            
            0.5f,
            0.5f,
            0.0f,
            1.f,
            1.f,
            0.f,
            
            0.5f,
            -0.5f,
            0.0f,
            0.f,
            0.f,
            1.0f,
        };

        unsigned int indices[] = {
            0, 1, 2,
            0, 2, 3};

        // This will identify our vertex buffer
        GLuint vbo = 0;
        GLuint vao = 0;
        GLuint ibo = 0;
        const char *fragment_shader =
            "#version 400\n"
            "in vec3 col;"
            "out vec4 frag_colour;"
            "void main() {"
            "  frag_colour = vec4(col.x, col.y, col.z, 1.0);"
            "}";
        const char *vertex_shader =
            "#version 400\n"
            "in vec3 vp;"
            "in vec3 c;"
            "out vec3 col;"
            "void main() {"
            "  col = c;"
            "  gl_Position = vec4(vp, 1.0);"
            "}";

        unsigned int prog;
        void setup()
        {
            // printf("renderer initting\n");
            field_viewport.init(800, 600);
            field_camera = Camera{};
            field_camera.eye = glm::vec3(0, 0, -10.0);
            field_camera.lookat = glm::vec3(0, 0, 0.0);

            vbo = 0;
            glGenBuffers(1, &vbo);
            glBindBuffer(GL_ARRAY_BUFFER, vbo);
            glBufferData(GL_ARRAY_BUFFER, 4 * 6 * sizeof(float), points, GL_STATIC_DRAW);

            glGenVertexArrays(1, &vao);
            glBindVertexArray(vao);
            glBindBuffer(GL_ARRAY_BUFFER, vbo);
            glEnableVertexAttribArray(0);
            glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 2 * 3 * sizeof(float), NULL);
            glEnableVertexAttribArray(1);
            glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 2 * 3 * sizeof(float), (void *)(3 * sizeof(float)));

            glGenBuffers(1, &ibo);
            glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ibo);
            glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

            prog = make_program(vertex_shader, fragment_shader);
        }

        void render()
        {
            field_viewport.activate();
            glClearColor(1.f, 1.f, 1.f, 1.0f);
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); // we're not using the stencil buffer now

            glUseProgram(prog);
            glBindVertexArray(vao);
            glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
            // draw points 0-3 from the currently bound VAO with current in-use shader
            // glDrawArrays(GL_TRIANGLES, 0, 3);

            field_viewport.deactivate();
        }

        unsigned int get_rendered_tex()
        {
            return field_viewport.color_handle;
        }
        unsigned int get_rendered_tex_width()
        {
            return field_viewport.width;
        }
        unsigned int get_rendered_tex_height()
        {
            return field_viewport.height;
        }

    }
}