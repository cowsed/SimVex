#pragma once
#include <stdint.h>

#include <iostream>
#include <vector>

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <GL/glcorearb.h>

#include <glm/vec3.hpp>
#include <glm/mat4x4.hpp> // glm::mat4
#include <glm/gtc/quaternion.hpp>

#include "sim/graphics/brain_screen.h"

namespace sim
{
    struct Location
    {
        glm::dvec3 p;
        glm::quat o;
    };

    namespace renderer
    {
        /// @brief initalize static and global stuff
        void setup_common();

        struct ShaderProgram
        {
            unsigned int program;
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
            glm::mat4 persp_matrix(RenderTarget &rt);
        };


    } // renderer

    class Shape
    {
    public:
        Shape() {}
        virtual ~Shape();
        virtual void render(glm::mat4 persp, glm::mat4 view, glm::mat4 model) = 0;
    };

    class DummyShape : public Shape
    {
    public:
        DummyShape();
        ~DummyShape() override;
        void render(glm::mat4 persp, glm::mat4 view, glm::mat4 model) override;
    };

    /// @brief shape from cube definition
    class brain_screen_shape : public Shape
    {
    private:
        std::vector<glm::vec3> points;
        unsigned int num_indices;

        unsigned int points_vbo;
        unsigned int vao;
        unsigned int ibo;
        renderer::ShaderProgram brain_shader;

    public:
        brain_screen_shape();
        ~brain_screen_shape() override;
        void render(glm::mat4 persp, glm::mat4 view, glm::mat4 model) override; // override;
    };

} // sim
