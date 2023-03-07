#include "sim/graphics/brain_screen.h"

namespace sim
{
    const int brain_screen_width = 480;
    const int brain_screen_height = 240;

    uint32_t screen_buffer1[brain_screen_height][brain_screen_width];
    GLuint brain_screen_texture_handle1;

    bool brain_screen_texture_dirty = true;

    // Display State
    namespace brain_display
    {
        uint32_t bg_col = 0xFF000000;
        uint32_t fg_col = 0xFFFFFFFF;
        int line_width = 1;

        int clip_rect_x = 0;
        int clip_rect_y = 0;
        int clip_rect_width = 480;
        int clip_rect_height = 240;
    }
    void mark_dirty()
    {
        brain_screen_texture_dirty = true;
    }
    void testBrainTexPattern(uint32_t buf[brain_screen_height][brain_screen_width])
    {
        for (int y = 0; y < brain_screen_height; y++)
        {
            for (int x = 0; x < brain_screen_width; x++)
            {
                int tiley = y / 24;
                int tilex = x / 24;
                int fill = (tiley + tilex) % 2;
                if (fill)
                {
                    buf[y][x] = 0xFFFF00FF; // 1, 1, 0, 1
                }
                else
                {
                    buf[y][x] = 0xFF000000; // 1, 0, 1, 1
                }
            }
        }                                //                   AARRGGBB

    }

    void renderBrainScreenToFrameBuffer()
    {
        if (brain_screen_texture_dirty)
        {
            glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, brain_screen_width, brain_screen_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, screen_buffer1);
        }

        brain_screen_texture_dirty = false;
    }

    /// @brief Initialize all opengl and buffers for rendering the brain screen
    /// @return true if successful
    bool setupBrainScreen()
    {
        // defualt screen image
        testBrainTexPattern(screen_buffer1);
        // make gl texture
        glGenTextures(1, &brain_screen_texture_handle1);
        glBindTexture(GL_TEXTURE_2D, brain_screen_texture_handle1);

        // argb
        GLint swizzleMask[] = {GL_BLUE, GL_GREEN, GL_RED, GL_ONE}; // endianness of uint32_t means in memory order is bgra. switch b and r and set alpha to be one (brain doesnt recognize alpha)
        glTexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_SWIZZLE_RGBA, swizzleMask);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

        renderBrainScreenToFrameBuffer();
        return true;
    }

    GLuint get_brain_screen_tex_handle()
    {
        return brain_screen_texture_handle1;
    }

    int max(int a, int b)
    {
        if (a > b)
        {
            return a;
        }
        return b;
    }
    int min(int a, int b)
    {
        if (a < b)
        {
            return a;
        }
        return b;
    }

    void draw_rect_internal(int x, int y, int width, int height)
    {
        for (int iy = max(brain_display::clip_rect_y, y); iy < min(brain_display::clip_rect_y + brain_display::clip_rect_height, y + height); iy++)
        {
            for (int ix = max(brain_display::clip_rect_x, x); ix < min(brain_display::clip_rect_x + brain_display::clip_rect_width, x + width); ix++)
            {
                screen_buffer1[iy][ix] = brain_display::bg_col;
            }
        }
        mark_dirty();
    }
    void set_bg_col_internal(uint32_t col)
    {
        brain_display::bg_col = col; // | alpha_mask;
    }
    void set_fg_col_internal(uint32_t col)
    {
        brain_display::fg_col = col; // | alpha_mask;
    }
}