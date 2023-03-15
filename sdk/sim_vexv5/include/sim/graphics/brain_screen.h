#pragma once
#include <stdio.h>

#include <GL/glew.h>
#include <GL/glcorearb.h>

#include "imgui.h"

#include "v5_apitypes.h"
#include "sim/events.h"

namespace sim
{
    namespace brain_screen
    {
        /// @brief get the texture id of the active texture that shows the brain screen
        /// @return  the texture id of the active texture that shows the brain screen
        GLuint get_gltex_handle();

        /// @brief setup the brain screen and all of its dependencies
        /// @return true if successfull
        bool setup();

        /// @brief renders the cpu buffer to the gpu texture
        void render_to_tex();

        void draw_rect_internal(int x, int y, int width, int height, uint32_t argb);
        void draw_rect_border_internal(int x, int y, int width, int height, uint32_t fill_argb, uint32_t border_argb, int border_width);

        void clear_clip_space_internal();
        void clear_clip_space_internal(uint32_t col);

        void set_clip_space_internal(int x1, int y1, int x2, int y2);

        void set_bg_col_internal(uint32_t col);
        void set_fg_col_internal(uint32_t col);

        uint32_t get_bg_col_internal();
        uint32_t get_fg_col_internal();

        int get_pen_width();
        void set_pen_width(int size);

        void makeUI();

        V5_TouchStatus *get_touch_status_internal();

    }
}