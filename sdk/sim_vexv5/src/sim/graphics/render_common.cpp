#include "sim/graphics/render_common.h"
#include <stdio.h>
#include <array>
#include <thread>
#include <chrono>

namespace sim
{
    namespace renderer
    {
        static const glm::vec3 up_vec = glm::vec3(0.0, 1.0, 0.0);

        static const char *def_fragment_shader =
            "#version 400\n"
            "in vec3 col;"
            "out vec4 frag_colour;"
            "void main() {"
            "  frag_colour = vec4(col.x, col.y, col.z, 1.0);"
            "}";
        static const char *def_vertex_shader =
            "#version 400\n"
            "uniform mat4 view;"
            "uniform mat4 perspective;"
            "in vec3 vp;"
            "in vec3 c;"
            "out vec3 col;"
            "void main() {"
            "  col = c;"
            "  gl_Position = perspective * view  * vec4(vp, 1.0);"
            "}";

        ShaderProgram default_prog;
        void setup_common()
        {
            default_prog = ShaderProgram(def_vertex_shader, def_fragment_shader);
        }

        /// @brief allocate and create all buffers and textures needed to draw to
        /// @param width width of output
        /// @param height height of output
        void RenderTarget::init(int width, int height)
        {

            this->width = width;
            this->height = height;

            glGenFramebuffers(1, &fbo);
            glBindFramebuffer(GL_FRAMEBUFFER, fbo);

            // Color attachment
            glGenTextures(1, &color_handle);
            glBindTexture(GL_TEXTURE_2D, color_handle);

            glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_FLOAT, NULL);

            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
            glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

            // Attach the color
            glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, color_handle, 0);

            // Depth Attachment
            glGenTextures(1, &depth_handle);
            glBindTexture(GL_TEXTURE_2D, depth_handle);

            glTexImage2D(
                GL_TEXTURE_2D, 0, GL_DEPTH24_STENCIL8, width, height, 0,
                GL_DEPTH_STENCIL, GL_UNSIGNED_INT_24_8, NULL);

            glFramebufferTexture2D(GL_FRAMEBUFFER, GL_DEPTH_STENCIL_ATTACHMENT, GL_TEXTURE_2D, depth_handle, 0);

            glBindFramebuffer(GL_FRAMEBUFFER, 0);
            std::this_thread::sleep_for(std::chrono::milliseconds(1));
        }
        /// @brief resizes render target
        /// @param width new width of output
        /// @param height new height of output
        void RenderTarget::resize(int width, int height)
        {
            // Minimum sizes
            if (width <= 0)
            {
                width = 10;
            }
            if (height <= 0)
            {
                height = 10;
            }

            this->width = width;
            this->height = height;

            glBindTexture(GL_TEXTURE_2D, color_handle);
            glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, GL_RGBA, GL_FLOAT, NULL);


            glBindTexture(GL_TEXTURE_2D, depth_handle);
            glTexImage2D(GL_TEXTURE_2D, 0, GL_DEPTH24_STENCIL8, width, height, 0, GL_DEPTH_STENCIL, GL_UNSIGNED_INT_24_8, NULL);

        }

        /// @brief activate this target such that all render calls will go here
        void RenderTarget::activate()
        {
            glBindFramebuffer(GL_FRAMEBUFFER, fbo);
            glViewport(0, 0, width, height);
        }
        /// @brief deactivate this target such that all render calls go to their defualt source
        void RenderTarget::deactivate()
        {
            glBindFramebuffer(GL_FRAMEBUFFER, 0);
        }

        /// @brief delete all buffers and textures associated with this target
        void RenderTarget::cleanup()
        {
            glDeleteFramebuffers(1, &fbo);
            glDeleteTextures(1, &color_handle);
            glDeleteTextures(1, &depth_handle);
        }
        ShaderProgram::ShaderProgram(const char *vertex_shader, const char *fragment_shader)
        {
            GLuint vs = glCreateShader(GL_VERTEX_SHADER);
            glShaderSource(vs, 1, &vertex_shader, NULL);
            glCompileShader(vs);

            GLuint fs = glCreateShader(GL_FRAGMENT_SHADER);
            glShaderSource(fs, 1, &fragment_shader, NULL);
            glCompileShader(fs);

            program = glCreateProgram();
            glAttachShader(program, fs);
            glAttachShader(program, vs);
            glLinkProgram(program);

            glDeleteShader(vs);
            glDeleteShader(fs);
        }
        ShaderProgram::ShaderProgram() {}
        void ShaderProgram::activate()
        {
            glUseProgram(program);
        }
        void ShaderProgram::activate_default()
        {
            default_prog.activate();
        }
        Camera::Camera(glm::vec3 eye, glm::vec3 lookat, RenderTarget &r) : eye(eye), lookat(lookat), rt(r) {}

        glm::mat4 Camera::view_matrix()
        {
            return glm::lookAt(eye, lookat, up_vec);
        }
        glm::mat4 Camera::persp_matrix(RenderTarget &rt)
        {
            return glm::perspective(glm::radians(45.0f), (float)rt.width / (float)rt.height, 0.1f, 100.0f);
        }

    } // renderer

    Shape::~Shape() {}

    // Dummy for space filling
    DummyShape::DummyShape() {}
    DummyShape::~DummyShape() {}
    void DummyShape::render(glm::mat4 persp, glm::mat4 view, renderer::RenderTarget rt) {}

    square_shape::square_shape()
    {
        struct el
        {
            unsigned int a;
            unsigned int b;
            unsigned int c;
        };
        std::array<glm::vec3, 8> verts;
        verts[0 * 2] = {-1, -1, 0};
        verts[0 * 2 + 1] = {0, 0, 1};

        verts[1 * 2] = {1, -1, 0};
        verts[1 * 2 + 1] = {0, 0, 1};

        verts[2 * 2] = {1, 1, 0};
        verts[2 * 2 + 1] = {0, 0, 1};

        verts[3 * 2] = {-1, 1, 0};
        verts[3 * 2 + 1] = {0, 0, 1};
        std::array<el, 2> indices = {el{0, 1, 2}, el{0, 2, 3}};

        glGenBuffers(1, &points_vbo);
        glBindBuffer(GL_ARRAY_BUFFER, points_vbo);
        glBufferData(GL_ARRAY_BUFFER, verts.size() * 3 * sizeof(float), &(verts[0]), GL_STATIC_DRAW);

        glGenVertexArrays(1, &vao);
        glBindVertexArray(vao);
        glBindBuffer(GL_ARRAY_BUFFER, points_vbo);
        glEnableVertexAttribArray(0); // vert pos
        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 2 * 3 * sizeof(float), NULL);
        glEnableVertexAttribArray(1); // vert normal
        glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 2 * 3 * sizeof(float), (void *)(3 * sizeof(float)));

        glGenBuffers(1, &ibo);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ibo);
        num_indices = indices.size() * sizeof(el) / (sizeof(unsigned int));
        glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(el), (void *)&(indices[0]), GL_STATIC_DRAW);
    }
    square_shape::~square_shape() {}
    void square_shape::render(glm::mat4 persp, glm::mat4 view, renderer::RenderTarget rt)
    {
        rt.activate();
        renderer::ShaderProgram::activate_default();

        glUniformMatrix4fv(0, 1, false, (float *)(&view));
        glUniformMatrix4fv(1, 1, false, (float *)(&persp));

        // Index buffer
        glBindVertexArray(vao);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ibo);

        // Draw the triangles !
        glDrawElements(
            GL_TRIANGLES,    // mode
            num_indices,     // count
            GL_UNSIGNED_INT, // type
            (void *)0        // element array buffer offset
        );
    }

} // sim