#pragma once
#include <stdio.h>

#include <GL/glew.h>
#include <GL/glcorearb.h>

namespace sim{
    GLuint get_brain_screen_tex_handle();
    bool setupBrainScreen();

    void draw_rect_internal(int x, int y, int width, int height);

    void set_bg_col_internal(uint32_t col);
    void set_fg_col_internal(uint32_t col);

}