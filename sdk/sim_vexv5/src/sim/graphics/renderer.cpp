#include "sim/graphics/renderer.h"

namespace sim
{
    namespace renderer
    {
        static RenderTarget field_viewport;
        static Camera field_camera(glm::vec3(0, 0, 10.0), glm::vec3(0, 0, 0.0), field_viewport);

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
        void setup()
        {
            printf("renderer initting\n");
            setup_common();
        
            field_viewport.init(800, 600);

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

        }

        void render()
        {
            field_viewport.activate();
            glClearColor(1.f, 1.f, 1.f, 1.0f);
            glEnable(GL_DEPTH_TEST);
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); // we're not using the stencil buffer now
            // glDisable(GL_CULL_FACE);
            ShaderProgram::activate_default();
            glm::mat4 view = field_camera.view_matrix();
            glm::mat4 persp = field_camera.persp_matrix();

            glUniformMatrix4fv(0, 1, false, (float *)(&view));
            glUniformMatrix4fv(1, 1, false, (float *)(&persp));
            glBindVertexArray(vao);
            glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);

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