#pragma once
#include "sim/graphics/images/image.h"
#include "sim/graphics/render_common.h"
namespace sim
{
    namespace renderer
    {
        struct Skybox
        {
            const Image &nx;
            const Image &ny;
            const Image &nz;
            const Image &px;
            const Image &py;
            const Image &pz;

            unsigned int vao;
            unsigned int vbo;
            unsigned int cubemap_handle;
            ShaderProgram skybox_prog;

            // setup once openGL context is active
            void init();
            void render(Camera &cam, RenderTarget &rt);
        };

    }
}