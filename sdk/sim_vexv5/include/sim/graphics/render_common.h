#pragma once
#include <stdint.h>
#include <vector>
#include <string>

#include <glm/gtc/quaternion.hpp>
#include <glm/mat4x4.hpp>
#include <glm/vec3.hpp>

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

        // load a texture into opengl
        unsigned int load_texture(std::string filename);
        // get a texture path based on its gl handle        
        std::string get_texture_path(unsigned int tex_handle);


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
            float altitude;
            float azimuth;
            RenderTarget &rt;

            Camera(glm::vec3 eye, float azimuth, float altitude, RenderTarget &r);

            glm::mat4 view_matrix();
            glm::mat4 persp_matrix(RenderTarget &rt);
        };

    } // renderer

    /// @brief shape from cube definition
    class brain_screen_shape
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
        ~brain_screen_shape();
        void render(glm::mat4 persp, glm::mat4 view, glm::mat4 model);
    };

} // sim
