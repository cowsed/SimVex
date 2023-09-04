#include "sim/graphics/render_common.h"

#include <array>
#include <chrono>
#include <cstdlib>
#include <iostream>
#include <map>
#include <stdio.h>
#include <thread>

#include <GL/glew.h>

// #include <GL/glcorearb.h>
#include <GLFW/glfw3.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb/stb_image.h"

#include "sim/graphics/sim_brain.h"

namespace sim
{
    namespace renderer
    {
        static const glm::vec3 up_vec = glm::vec3(0.0, 0.0, 1.0);

        static const char *brain_screen_vertex_shader = R"glsl(
#version 400
uniform mat4 view;
uniform mat4 perspective;
uniform sampler2D tex;

in vec3 vp;
in vec3 norm_v;
in vec2 UV_v;

out vec3 norm;
out vec2 UV;

void main() {
   UV = UV_v;
   norm = norm_v;
  gl_Position = perspective * view  * vec4(vp, 1.0);
}
)glsl";
        static const char *brain_screen_fragment_shader = R"glsl(
#version 400
uniform sampler2D tex;
in vec3 norm;
in vec2 UV;

const float saturation = .75;
const float brightness = .5;

out vec4 frag_colour;
void main() {
   vec3 tex_col = texture(tex, UV).xyz;
   vec3 col = mix(vec3(1), tex_col, saturation);
   col *= brightness;
   frag_colour = vec4(col.x, col.y, col.z, 1.0);
}
)glsl";

        static const char *model_vertex_shader = R"glsl(
#version 400
uniform mat4 view;
uniform mat4 perspective;
uniform sampler2D tex;

in vec3 vp;
in vec3 norm_v;
in vec2 UV_v;

out vec3 norm;
out vec2 UV;

void main() {
   UV = UV_v;
   norm = norm_v;
  gl_Position = perspective * view  * vec4(vp, 1.0);
}
)glsl";

        static const char *model_fragment_shader = R"glsl(
#version 400
uniform sampler2D tex;
in vec3 norm;
in vec2 UV;

out vec4 frag_colour;
void main() {
   vec4 col = texture(tex, UV);
   frag_colour = vec4(norm.x, norm.y, norm.z, 1.0);
}
)glsl";

        ShaderProgram default_prog;
        void setup_common()
        {
            default_prog = ShaderProgram(model_vertex_shader, model_fragment_shader);
        }

        // Cache structure for load_texture
        static std::map<std::string, unsigned int> texture_cache = {};
        static std::map<unsigned int, std::string> rev_texture_cache = {};

        unsigned int load_texture_internal(std::string path)
        {
            int width, height, nrChannels;
            unsigned char *data = stbi_load(path.c_str(), &width, &height, &nrChannels, 0);

            if (data == NULL)
            {
                std::cout << "Error loading texture found at " << path << '\n';
                exit(EXIT_FAILURE);
            }

            unsigned int tex_channels = GL_RGBA;
            if (nrChannels == 3)
            {
                tex_channels = GL_RGB;
            }
            unsigned int texture;
            glGenTextures(1, &texture);
            glBindTexture(GL_TEXTURE_2D, texture);
            glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, width, height, 0, tex_channels, GL_UNSIGNED_BYTE, data);
            glGenerateMipmap(GL_TEXTURE_2D);

            return texture;
        }

        ///@brief Load an image texture from the filesystem, upload it to openGL and return it's handle
        /// If the texture has been loaded already, return its existing handle (and promise not to modify it)
        /// @pre openGL has been initialized
        unsigned int load_texture(std::string filename)
        {

            if (texture_cache.contains(filename))
            {
                return texture_cache[filename];
            }

            unsigned int handle = load_texture_internal(filename);

            texture_cache.insert({filename, handle});
            rev_texture_cache.insert({handle, filename});

            return handle;
        }
        std::string get_texture_path(unsigned int tex_handle)
        {
            return rev_texture_cache[tex_handle];
        }

        /// @brief allocate and create all buffers and textures needed to draw to
        /// @pre OpenGL context is created
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
        /// @brief Create shader with vert and frag shaders
        /// @param vertex_shader   source strings
        /// @param fragment_shader source strings
        ShaderProgram::ShaderProgram(const char *vertex_shader, const char *fragment_shader)
        {
            GLuint vs = glCreateShader(GL_VERTEX_SHADER);
            glShaderSource(vs, 1, &vertex_shader, NULL);
            glCompileShader(vs);

            GLint isVertCompiled = 0;
            glGetShaderiv(vs, GL_COMPILE_STATUS, &isVertCompiled);
            if (isVertCompiled == GL_FALSE)
            {
                GLint maxLength = 0;
                glGetShaderiv(vs, GL_INFO_LOG_LENGTH, &maxLength);

                // The maxLength includes the NULL character
                char *str = (char *)std::malloc(sizeof(char) * maxLength);
                glGetShaderInfoLog(vs, maxLength, &maxLength, &str[0]);
                std::cout << "Shader Vertex Program Failed size: " << maxLength << " : " << str << '\n';
                std::cout << vertex_shader << '\n';
                exit(EXIT_FAILURE);
            }

            GLuint fs = glCreateShader(GL_FRAGMENT_SHADER);
            glShaderSource(fs, 1, &fragment_shader, NULL);
            glCompileShader(fs);
            GLint isFragCompiled = 0;
            glGetShaderiv(fs, GL_COMPILE_STATUS, &isFragCompiled);
            if (isFragCompiled == GL_FALSE)
            {
                GLint maxLength = 0;
                glGetShaderiv(vs, GL_INFO_LOG_LENGTH, &maxLength);

                // The maxLength includes the NULL character
                char *str = (char *)std::malloc(sizeof(char) * maxLength);
                glGetShaderInfoLog(vs, maxLength, &maxLength, &str[0]);
                std::cout << "Shader Fragment Program Failed size: " << maxLength << " : " << str << '\n';
                exit(EXIT_FAILURE);
            }

            program = glCreateProgram();
            glAttachShader(program, fs);
            glAttachShader(program, vs);
            glLinkProgram(program);

            GLint isLinked = 0;
            glGetProgramiv(program, GL_LINK_STATUS, &isLinked);
            if (isLinked == GL_FALSE)
            {
                GLint maxLength = 0;
                glGetProgramiv(program, GL_INFO_LOG_LENGTH, &maxLength);
                char *str = (char *)std::malloc(sizeof(char) * maxLength);
                glGetProgramInfoLog(program, maxLength, &maxLength, &str[0]);
                std::cout << "Shader Link Failed size: " << maxLength << " : " << str << '\n';
                exit(EXIT_FAILURE);
            }
            glDeleteShader(vs);
            glDeleteShader(fs);
        }
        /// @brief create bad shader program

        ShaderProgram::ShaderProgram() {}

        /// @brief Acrtivate shader such that this program is used for subsequent draw calls
        void ShaderProgram::activate()
        {
            glUseProgram(program);
        }
        void ShaderProgram::activate_default()
        {
            default_prog.activate();
        }
        Camera::Camera(glm::vec3 eye, float azimuth, float altitude, RenderTarget &r) : eye(eye), altitude(altitude), azimuth(azimuth), rt(r) {}

        glm::mat4 Camera::view_matrix()
        {
            auto rotate2D = [](glm::vec2 v, float ang) -> glm::vec2
            {
                float c = cos(ang);
                float s = sin(ang);
                float x = c * v.x - s * v.y;
                float y = s * v.x + c * v.y;
                return {x, y};
            };

            auto rotateZ = [&](glm::vec3 v, float angle)
            {
                glm::vec2 base = {v.x, v.y};
                base = rotate2D(base, angle);
                return glm::vec3(base.x, base.y, v.z);
            };
            glm::vec3 updir = {cos(altitude), 0, sin(altitude)};
            glm::vec3 dir = rotateZ(updir, azimuth);
            glm::vec3 lookat = eye + dir;
            return glm::lookAt(eye, lookat, up_vec);
        }

        glm::mat4 Camera::persp_matrix(RenderTarget &rt)
        {
            return glm::perspective(glm::radians(35.0f), (float)rt.width / (float)rt.height, 0.01f, 10000.0f);
        }

    } // renderer

    brain_screen_shape::brain_screen_shape()
    {
        struct el
        {
            unsigned int a;
            unsigned int b;
            unsigned int c;
        };
        struct vert
        {
            glm::vec3 pos;
            glm::vec3 normal;
            glm::vec2 UV;
        };
        const float screen_width_meters = 3.55 * (0.0254);
        const float screen_height_meters = screen_width_meters / 2.0;
        const float w = screen_width_meters / 2.0;  // half width
        const float h = screen_height_meters / 2.0; // half width
        const float z = 0.015;
        const float x = -0.0075;
        const float y = -0.0026;
        std::array<vert, 4> verts;
        verts[0] = {{-w + x, -h + y, z}, {0, 0, 1}, {0, 1}};
        verts[1] = {{w + x, -h + y, z}, {0, 0, 1}, {1, 1}};
        verts[2] = {{w + x, h + y, z}, {0, 0, 1}, {1, 0}};
        verts[3] = {{-w + x, h + y, z}, {0, 0, 1}, {0, 0}};

        std::array<el, 2> indices = {el{0, 1, 2}, el{0, 2, 3}};

        glGenBuffers(1, &points_vbo);
        glBindBuffer(GL_ARRAY_BUFFER, points_vbo);
        glBufferData(GL_ARRAY_BUFFER, verts.size() * sizeof(vert), &(verts[0]), GL_STATIC_DRAW);

        unsigned int vert_ind = 0;
        unsigned int norm_ind = 1;
        unsigned int uv_ind = 2;

        glGenVertexArrays(1, &vao);
        glBindVertexArray(vao);
        glBindBuffer(GL_ARRAY_BUFFER, points_vbo);
        glEnableVertexAttribArray(vert_ind); // vert pos
        glVertexAttribPointer(vert_ind, 3, GL_FLOAT, GL_FALSE, sizeof(vert), NULL);
        glEnableVertexAttribArray(norm_ind); // vert normal
        glVertexAttribPointer(norm_ind, 3, GL_FLOAT, GL_FALSE, sizeof(vert), (void *)(3 * sizeof(float)));
        glEnableVertexAttribArray(uv_ind); // vert UV
        glVertexAttribPointer(uv_ind, 2, GL_FLOAT, GL_FALSE, sizeof(vert), (void *)(6 * sizeof(float)));

        glGenBuffers(1, &ibo);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ibo);
        num_indices = indices.size() * sizeof(el) / (sizeof(unsigned int));
        glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(el), (void *)&(indices[0]), GL_STATIC_DRAW);

        // Create Shader
        brain_shader = renderer::ShaderProgram(renderer::brain_screen_vertex_shader, renderer::brain_screen_fragment_shader);
    }
    brain_screen_shape::~brain_screen_shape() {}
    void brain_screen_shape::render(glm::mat4 persp, glm::mat4 view, glm::mat4 model)
    {
        brain_shader.activate();

        auto mv = view * model;
        glUniformMatrix4fv(glGetUniformLocation(brain_shader.program, "view"), 1, false, (float *)(&mv));
        glUniformMatrix4fv(glGetUniformLocation(brain_shader.program, "perspective"), 1, false, (float *)(&persp));
        glBindTexture(GL_TEXTURE_2D, sim::brain_screen::get_gltex_handle());

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
