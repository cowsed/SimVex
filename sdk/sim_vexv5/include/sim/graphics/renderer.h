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
        void build_ui();

    }
}