#pragma once
#include <stdio.h>

#include <GL/glew.h>
#include <GL/glcorearb.h>

#include "v5_apitypes.h"

namespace sim
{
    namespace brain_screen
    {
        GLuint get_gltex_handle();
        bool setup();
        void render_to_tex();

        void draw_rect_internal(int x, int y, int width, int height);

        void clear_clip_space_internal();
        void set_clip_space_internal(int x1, int y1, int x2, int y2);

        void set_bg_col_internal(uint32_t col);
        void set_fg_col_internal(uint32_t col);

        V5_TouchStatus* get_touch_status_internal();

    }
}