#pragma once
#include <string>
#include "sim/graphics/images/image.h"
#include "sim/graphics/render_common.h"
namespace sim
{
    namespace renderer
    {
        struct Skybox
        {
            Image nx;
            Image ny;
            Image nz;
            Image px;
            Image py;
            Image pz;

            unsigned int vao;
            unsigned int vbo;
            unsigned int cubemap_handle;
            ShaderProgram skybox_prog;

            Skybox(std::string folder_path);
            // setup once openGL context is active
            void init();
            void render(Camera &cam, RenderTarget &rt);
        };

    }
}