#pragma once
#include <stdint.h>

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <GL/glcorearb.h>

#include <glm/vec3.hpp>
#include <glm/mat4x4.hpp> // glm::mat4
#include <glm/gtc/quaternion.hpp>

namespace sim
{
    struct Location
    {
        glm::dvec3 p;
        glm::quat o;
    };
    
    namespace renderer
    {
        void setup_common();
        struct ShaderProgram
        {
            unsigned int program ;
            ShaderProgram();
            ShaderProgram(const char *vertex_shader, const char *fragment_shader);
            void activate();
            static void activate_default();
        };
        struct RenderTarget
        {
            /// @brief handles to opengl buffers
            unsigned int width;
            unsigned int height;
            unsigned int fbo;
            unsigned int depth_handle;
            unsigned int color_handle;
            unsigned int data_handle;

            void init(int width, int height);
            void resize(int width, int height);
            void activate();
            void deactivate();

            void cleanup();
        };
        struct Camera
        {
            glm::vec3 eye;
            glm::vec3 lookat;
            RenderTarget &rt;

            Camera(glm::vec3 eye, glm::vec3 lookat, RenderTarget &r);

            glm::mat4 view_matrix();
            glm::mat4 persp_matrix();
        };
    }
}
