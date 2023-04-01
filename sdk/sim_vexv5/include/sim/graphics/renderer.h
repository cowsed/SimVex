#pragma once
#include "sim/robot_model.h"

namespace sim{
    namespace renderer{
        void setup();
        void render();
        unsigned int get_rendered_tex();
        unsigned int get_rendered_tex_width();
        unsigned int get_rendered_tex_height();
        
    }
}