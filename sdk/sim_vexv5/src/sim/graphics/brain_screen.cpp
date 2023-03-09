#include "sim/graphics/brain_screen.h"

namespace sim
{
    namespace brain_screen
    {
        const int brain_screen_width = 480;
        const int brain_screen_height = 240;

        static uint32_t screen_buffer1[brain_screen_height][brain_screen_width];
        static GLuint brain_screen_texture_handle1;

        static bool texture_dirty = true;

        static V5_TouchStatus last_touch_status = {
            .lastEvent = V5_TouchEvent::kTouchEventRelease,
            .lastXpos = 0,
            .lastYpos = 0,
            .pressCount = 0,
            .releaseCount = 0,
        };

        // Display State
        // TODO: make each thread have its own drawing parameters
        // map of thread_id to struct of brain stats
        namespace brain_stats
        {
            uint32_t bg_col = 0xFF000000;
            uint32_t fg_col = 0xFFFFFFFF;
            int line_width = 1;

            int clip_rect_x = 0;
            int clip_rect_y = 0;
            int clip_rect_width = 480;
            int clip_rect_height = 240;
        }

        ///@brief marks the texture on the GPU as out of sync with the texture on the CPU. When we get there, we will have to sync them back up
        void mark_dirty()
        {
            texture_dirty = true;
        }
        /// @brief draws a test screen to test screen rendering
        /// @param buf the buffer on which to draw
        void draw_start_screen(uint32_t buf[brain_screen_height][brain_screen_width])
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
            }
        }

        // Take the buffer currently on the CPU with updates and upload it to the GPU
        // if the buffer is the same as it used to be, dont bother
        void render_to_tex()
        {
            if (texture_dirty)
            {
                glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, brain_screen_width, brain_screen_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, screen_buffer1);
                texture_dirty = false;
            }
        }

        /// @brief Initialize all opengl and buffers for rendering the brain screen
        /// @return true if successful
        bool setup()
        {
            // defualt screen image
            draw_start_screen(screen_buffer1);
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

            render_to_tex();
            return true;
        }

        /// @brief returns the texture handle of the OpenGL texture that holds the brain screen
        /// @return the OpenGL texture handle
        GLuint get_gltex_handle()
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
        int abs(int a)
        {
            if (a < 0)
            {
                return -a;
            }
            return a;
        }

        // Implementations of vex functions
        void draw_rect_internal(int x, int y, int width, int height)
        {
            for (int iy = max(brain_stats::clip_rect_y, y); iy < min(brain_stats::clip_rect_y + brain_stats::clip_rect_height, y + height); iy++)
            {
                for (int ix = max(brain_stats::clip_rect_x, x); ix < min(brain_stats::clip_rect_x + brain_stats::clip_rect_width, x + width); ix++)
                {
                    screen_buffer1[iy][ix] = brain_stats::bg_col;
                }
            }
            mark_dirty();
        }

        ///@brief clears the current clip space with defualt color
        /// This function only affects the current thread TODO: make this only affect the current thread
        void clear_clip_space_internal()
        {
            for (int y = 0; y < brain_screen_height; y++)
            {
                for (int x = 0; x < brain_screen_width; x++)
                {
                    screen_buffer1[y][x] = 0x00000000;
                }
            }
        }
        /// @brief clears the current clip space with specified color
        /// This function only affects the current thread TODO: make this only affect the current thread
        /// @param col specified color
        void clear_clip_space_internal(uint32_t col)
        {
            for (int y = 0; y < brain_screen_height; y++)
            {
                for (int x = 0; x < brain_screen_width; x++)
                {
                    screen_buffer1[y][x] = col;
                }
            }
        }

        /// @brief sets the bounds of the clip space. drawing functions will not affect anywhere outside the rectangle defined by the arguments to this function
        /// This function only affects the current thread TODO: make this only affect the current thread
        /// @param x1
        /// @param y1
        /// @param x2
        /// @param y2
        void set_clip_space_internal(int x1, int y1, int x2, int y2)
        {
            brain_stats::clip_rect_x = min(x1, x2);
            brain_stats::clip_rect_y = min(y1, y2);
            brain_stats::clip_rect_width = abs(x1 - x2);
            brain_stats::clip_rect_height = abs(y1 - y2);
        }
        /// @brief  sets the background (fill) color of this threads rendering parameters
        /// @param col the color to set it to
        void set_bg_col_internal(uint32_t col)
        {
            brain_stats::bg_col = col; // | alpha_mask;
        }
        /// @brief sets the foreground (pen) color of this threads rendering parameters
        /// @param col the color to set it to
        void set_fg_col_internal(uint32_t col)
        {
            brain_stats::fg_col = col; // | alpha_mask;
        }

        V5_TouchStatus *get_touch_status_internal()
        {
            return &last_touch_status;
        }

    }

}