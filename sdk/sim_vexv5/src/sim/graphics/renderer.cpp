#include "sim/graphics/renderer.h"

namespace sim
{
    namespace renderer
    {
        static RenderTarget field_viewport;
        static Camera field_camera;
        static const glm::vec3 up_vec = glm::vec3(0.0, 1.0, 0.0);

        float points[] = {
            0.0f, 0.5f, 0.0f,
            0.5f, -0.5f, 0.0f,
            -0.5f, -0.5f, 0.0f};

        // This will identify our vertex buffer
        GLuint vbo = 0;
        GLuint vao = 0;
        const char *fragment_shader =
            "#version 400\n"
            "out vec4 frag_colour;"
            "void main() {"
            "  frag_colour = vec4(0.5, 0.0, 0.5, 1.0);"
            "}";
        const char *vertex_shader =
            "#version 400\n"
            "in vec3 vp;"
            "void main() {"
            "  gl_Position = vec4(vp, 1.0);"
            "}";

        unsigned int makeProgram()
        {
            GLuint vs = glCreateShader(GL_VERTEX_SHADER);
            glShaderSource(vs, 1, &vertex_shader, NULL);
            glCompileShader(vs);
            GLuint fs = glCreateShader(GL_FRAGMENT_SHADER);
            glShaderSource(fs, 1, &fragment_shader, NULL);
            glCompileShader(fs);

            GLuint shader_programme = glCreateProgram();
            glAttachShader(shader_programme, fs);
            glAttachShader(shader_programme, vs);
            glLinkProgram(shader_programme);
            return shader_programme;
        }
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
            glBufferData(GL_ARRAY_BUFFER, 9 * sizeof(float), points, GL_STATIC_DRAW);

            glGenVertexArrays(1, &vao);
            glBindVertexArray(vao);
            glEnableVertexAttribArray(0);
            glBindBuffer(GL_ARRAY_BUFFER, vbo);
            glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, NULL);
        
            prog = makeProgram();
        }

        void render()
        {
            field_viewport.activate();
            glClearColor(1.f, 0.1f, 0.1f, 1.0f);
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); // we're not using the stencil buffer now

            glUseProgram(prog);
            glBindVertexArray(vao);
            // draw points 0-3 from the currently bound VAO with current in-use shader
            glDrawArrays(GL_TRIANGLES, 0, 3);

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