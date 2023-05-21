#include "sim/graphics/render_common.h"
#include <stdio.h>
#include <array>
namespace sim
{
    namespace renderer
    {
        static const glm::vec3 up_vec = glm::vec3(0.0, 1.0, 0.0);

        //         static const char *def_fragment_shader =
        //             "#version 400\n"
        //             "in vec3 normal;"
        //             "out vec4 frag_colour;"
        //             "void main() {"
        //             "  frag_colour = vec4(normal.x, normal.y, normal.z, 1.0);"
        //             "}";

        //         static const char *def_vertex_shader = R"GLSL()
        //     #version 400\n
        //     uniform mat4 view;
        //     uniform mat4 perspective;
        //     in vec3 position;
        //     in vec3 normal_in;
        //     out vec3 normal;
        //     void main() {
        //         normal = normal_in;
        //         gl_Position = perspective * view  * vec4(position, 1.0);
        //     }
        // )GLSL";

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
            glBindTexture(GL_TEXTURE_2D, depth_handle);

            glTexImage2D(
                GL_TEXTURE_2D, 0, GL_DEPTH24_STENCIL8, width, height, 0,
                GL_DEPTH_STENCIL, GL_UNSIGNED_INT_24_8, NULL);

            glFramebufferTexture2D(GL_FRAMEBUFFER, GL_DEPTH_STENCIL_ATTACHMENT, GL_TEXTURE_2D, depth_handle, 0);
            glBindFramebuffer(GL_FRAMEBUFFER, 0);
        }
        /// @brief resizes output
        /// just destructs and restructs with no params
        /// @param width new width of output
        /// @param height new height of output
        void RenderTarget::resize(int width, int height)
        {
            cleanup();
            init(width, height);
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
        glm::mat4 Camera::persp_matrix()
        {
            return glm::perspective(glm::radians(45.0f), (float)800 / (float)600, 0.1f, 100.0f);
        }

    } // renderer

    Shape::~Shape() {}

    DummyShape::DummyShape() {}
    DummyShape::~DummyShape() {}
    void DummyShape::render(glm::mat4 mat, renderer::RenderTarget rt) {}

    square_shape::square_shape(double radius, double height, int segments)
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

        return;
        // point, normal - for top and bottom ring sides and caps
        const int vertex_size = 2; // units of vec3
        const int top_cap_num_verts = 1 + segments;
        const int bot_cap_num_verts = 1 + segments;
        const int side_num_verts = segments * 2;
        points = std::vector<glm::vec3>(top_cap_num_verts + bot_cap_num_verts + side_num_verts);

        points[0] = glm::vec3(0, 0, 0);
        points[1] = glm::vec3(0, -1, 0); // normal

        points[bot_cap_num_verts] = glm::vec3(0, height, 0);
        points[bot_cap_num_verts + 1] = glm::vec3(0, 1, 0); // normal

        const int num_cap_tris = segments;
        const int num_label_tris = 2 * segments;
        const int num_tris = num_cap_tris * 2 + num_label_tris;
        std::vector<unsigned int> elements = std::vector<unsigned int>(3 * num_tris);

        std::cout << "Making Top and Bottom caps\n";
        // Top and Bottom Caps
        for (int i = 0; i < segments; i++)
        {
            double ang = 2 * M_PI * (double)i / (double)segments;
            double x = radius * cos(ang);
            double z = radius * sin(ang);

            points[(1 + i) * vertex_size] = glm::vec3(x, 0, z);
            points[(1 + i) * vertex_size + 1] = glm::vec3(0, -1, 0);

            points[(1 + i + bot_cap_num_verts) * vertex_size] = glm::vec3(x, 0, z);
            points[(1 + i + bot_cap_num_verts) * vertex_size + 1] = glm::vec3(0, 1, 0);

            // bottom tri
            elements[i * 3] = 0;
            elements[i * 3] = 1 + i;
            elements[i * 3] = (i + 2) % segments;
            // top tri
            elements[num_cap_tris + i * 3] = bot_cap_num_verts;
            elements[num_cap_tris + i * 3] = (bot_cap_num_verts + 1) + i;
            elements[num_cap_tris + i * 3] = (bot_cap_num_verts + 1) + (i + 1) % segments;
        }

        for (auto &ind : elements)
        {
            std::cout << ind << " : " << elements.size() << '\n';
        }

        std::cout << "GL Stuff\n";
        std::cout << "GL vbo " << points[0].x << '\n';
        glGenBuffers(1, &points_vbo);
        std::cout << "GL vbo\n";
        glBindBuffer(GL_ARRAY_BUFFER, points_vbo);
        std::cout << "GL vbo\n";
        glBufferData(GL_ARRAY_BUFFER, points.size() * 3 * sizeof(float), &points[0], GL_STATIC_DRAW);

        std::cout << "GL vao\n";

        glGenVertexArrays(1, &vao);
        glBindVertexArray(vao);
        glBindBuffer(GL_ARRAY_BUFFER, points_vbo);
        glEnableVertexAttribArray(0); // vert pos
        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 2 * 3 * sizeof(float), NULL);
        glEnableVertexAttribArray(1); // vert normal
        glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 2 * 3 * sizeof(float), (void *)(3 * sizeof(float)));

        std::cout << "GL ibo\n";

        glGenBuffers(1, &ibo);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ibo);
        glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(elements), &elements[0], GL_STATIC_DRAW);
    }
    square_shape::~square_shape() {}
    void square_shape::render(glm::mat4 mat, renderer::RenderTarget rt)
    {
        printf("Rendering cylinder\n");
        renderer::ShaderProgram::activate_default();

        // Index buffer
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ibo);

        // Draw the triangles !
        glDrawElements(
            GL_TRIANGLES,    // mode
            num_indices,  // count
            GL_UNSIGNED_INT, // type
            (void *)0        // element array buffer offset
        );
    }

} // sim