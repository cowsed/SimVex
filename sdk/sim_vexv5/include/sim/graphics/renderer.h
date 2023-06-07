#pragma once
#include "sim/3d_model.h"
#include "sim/graphics/render_common.h"

namespace sim
{
    namespace renderer 
    {

        extern RenderTarget field_viewport;
        extern Camera field_camera;

        void setup();
        void render();
        void build_ui();

    }
}