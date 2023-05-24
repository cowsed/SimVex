#pragma once
#include "sim/robot_model.h"

namespace sim
{
    namespace renderer
    {

        extern RenderTarget field_viewport;
        extern Camera field_camera;

        void setup();
        void render();
        unsigned int get_rendered_tex();
        unsigned int get_rendered_tex_width();
        unsigned int get_rendered_tex_height();

    }
}