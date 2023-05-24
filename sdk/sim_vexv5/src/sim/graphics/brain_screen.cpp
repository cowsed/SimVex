#include "sim/graphics/brain_screen.h"

namespace sim
{
    namespace brain_screen
    {
        const int brain_screen_width = 480;
        const int brain_screen_height = 240;

        typedef uint32_t brain_screen_buffer[brain_screen_height][brain_screen_width];

        static brain_screen_buffer screen_buffer1;
        static brain_screen_buffer screen_buffer2;

        brain_screen_buffer *working_screen_buffer = &screen_buffer1;
        brain_screen_buffer *drawing_screen_buffer = &screen_buffer2;

        static std::mutex buffer_switch_mutex;
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

            int origin_x = 0;
            int origin_y = 0;

            int clip_rect_x = 0;
            int clip_rect_y = 0;
            int clip_rect_width = 480;
            int clip_rect_height = 240;
            vex::fontType current_font = vex::mono20;

            bool doingVSYNC = false;
        }

        ///@brief marks the texture on the GPU as out of sync with the texture on the CPU. When we get there, we will have to sync them back up
        void mark_dirty()
        {
            texture_dirty = true;
        }

        typedef struct
        {
            font::font_info font_info;
            std::map<char, font::glyph_info> *font_glyph_info;
            int font_tex_size;
            int font_tex_width;
            int font_tex_height;
            const uint8_t *font_tex;

        } full_font_info;

        /// @brief queries our known fonts for data about them
        /// @param font_name vex name for the font
        /// @param font_info return ptr for font_info struct
        /// @param font_glyph_info return ptr for map of glphs
        /// @param font_tex_size return ptr for size in pixels of the font texture
        /// @param font_tex_width return ptr for width of the font texture
        /// @param font_tex_height return ptr for height of the font texture
        /// @param font_tex return ptr to the font texture
        full_font_info get_font_info(vex::fontType font_name)
        {
            font::font_info font_info;
            std::map<char, font::glyph_info> *font_glyph_info;
            int font_tex_size;
            int font_tex_width;
            int font_tex_height;
            const uint8_t *font_tex;
            switch (font_name)
            {
            case vex::fontType::cjk16:
            case vex::fontType::prop20:
            case vex::fontType::prop30:
            case vex::fontType::prop40:
            case vex::fontType::prop60:
                print_unimplimented();
                // passthrough to mono12 just so we don't null ptr shenanigans
            case vex::fontType::mono12:
                font_info = font::noto_sans_mono_12_info;
                font_glyph_info = &font::noto_sans_mono_12_glyph_info;
                font_tex_size = font::noto_sans_mono_12_tex_size;
                font_tex_width = font::noto_sans_mono_12_tex_width;
                font_tex_height = font::noto_sans_mono_12_tex_height;
                font_tex = font::noto_sans_mono_12_tex;
                break;
            case vex::fontType::mono15:
                font_info = font::noto_sans_mono_15_info;
                font_glyph_info = &font::noto_sans_mono_15_glyph_info;
                font_tex_size = font::noto_sans_mono_15_tex_size;
                font_tex_width = font::noto_sans_mono_15_tex_width;
                font_tex_height = font::noto_sans_mono_15_tex_height;
                font_tex = font::noto_sans_mono_15_tex;

                break;
            case vex::fontType::mono20:
                font_info = font::noto_sans_mono_20_info;
                font_glyph_info = &font::noto_sans_mono_20_glyph_info;
                font_tex_size = font::noto_sans_mono_20_tex_size;
                font_tex_width = font::noto_sans_mono_20_tex_width;
                font_tex_height = font::noto_sans_mono_20_tex_height;
                font_tex = font::noto_sans_mono_20_tex;
                break;
            case vex::fontType::mono30:
                font_info = font::noto_sans_mono_30_info;
                font_glyph_info = &font::noto_sans_mono_30_glyph_info;
                font_tex_size = font::noto_sans_mono_30_tex_size;
                font_tex_width = font::noto_sans_mono_30_tex_width;
                font_tex_height = font::noto_sans_mono_30_tex_height;
                font_tex = font::noto_sans_mono_30_tex;
                break;
            case vex::fontType::mono40:
                font_info = font::noto_sans_mono_40_info;
                font_glyph_info = &font::noto_sans_mono_40_glyph_info;
                font_tex_size = font::noto_sans_mono_40_tex_size;
                font_tex_width = font::noto_sans_mono_40_tex_width;
                font_tex_height = font::noto_sans_mono_40_tex_height;
                font_tex = font::noto_sans_mono_40_tex;
                break;
            case vex::fontType::mono60:
                font_info = font::noto_sans_mono_60_info;
                font_glyph_info = &font::noto_sans_mono_60_glyph_info;
                font_tex_size = font::noto_sans_mono_60_tex_size;
                font_tex_width = font::noto_sans_mono_60_tex_width;
                font_tex_height = font::noto_sans_mono_60_tex_height;
                font_tex = font::noto_sans_mono_60_tex;
                break;
            }
            return full_font_info{
                .font_info = font_info,
                .font_glyph_info = font_glyph_info,
                .font_tex_size = font_tex_size,
                .font_tex_width = font_tex_width,
                .font_tex_height = font_tex_height,
                .font_tex = font_tex,
            };
        }

        /// @brief calculates the width in pixels of a string
        /// if the str contains an unknown character, the unknown character width is used
        /// @param str the string we are measuring
        /// @param font_name which font we are drawing with
        /// @return the width in pixels that the font would take up
        int calc_string_width(const char *str)
        {
            vex::fontType font_name = brain_stats::current_font;
            full_font_info this_font = get_font_info(font_name);

            int i = 0;
            int length_sum = 0;
            while (str[i] != 0x00)
            {
                if (this_font.font_glyph_info->count(str[i]))
                {
                    font::glyph_info gi = (*this_font.font_glyph_info)[str[i]];
                    length_sum += gi.width;
                }
                else
                {
                    // unknown character
                    length_sum += (*this_font.font_glyph_info)[0x0].width;
                }
                i++;
            }

            return length_sum;
        }

        /// @brief calculates the height in pixels of a string
        /// if the str contains an unknown character, the unknown character height is used
        /// @param str the string we are measuring
        /// @param font_name which font we are drawing with
        /// @return the height in pixels that the font would take up
        int calc_string_height(const char *str)
        {
            vex::fontType font_name = brain_stats::current_font;
            full_font_info this_font = get_font_info(font_name);

            return this_font.font_info.height;
        }

        /// @brief sets a pixel in the working buffer
        /// this function respects the origin and the clip rectangle
        /// UNKNOWN: if origin affects where the clip rect is placed
        ////
        /// @param buf the buffer to set in
        /// @param x the x position to set
        /// @param y the y position to set
        /// @param col the color to set
        void setPixelAccordingly(brain_screen_buffer buf, int x, int y, uint32_t col)
        {
            int screenX = x + brain_stats::origin_x; // x pos in screen
            int screenY = y + brain_stats::origin_y; // y pos in screen

            bool inX = (screenX > brain_stats::clip_rect_x) && (screenX < brain_stats::clip_rect_x + brain_stats::clip_rect_width);
            bool inY = (screenY > brain_stats::clip_rect_y) && (screenY < brain_stats::clip_rect_y + brain_stats::clip_rect_height);

            if (inX && inY)
            {
                buf[screenY][screenX] = col;
            }
        }
        /// @brief gets a pixel in the working buffer
        /// this function respects the origin and the clip rectangle
        /// UNKNOWN: if origin affects where the clip rect is placed
        //// getting from outside the bounds of the image is undefined
        /// @param buf the buffer to set in
        /// @param x the x position to set
        /// @param y the y position to set
        /// @param col the color to set
        uint32_t getPixelAccordingly(brain_screen_buffer buf, int x, int y)
        {
            int screenX = x + brain_stats::origin_x; // x pos in screen
            int screenY = y + brain_stats::origin_y; // y pos in screen

            bool inX = (screenX > brain_stats::clip_rect_x) && (screenX < brain_stats::clip_rect_x + brain_stats::clip_rect_width);
            bool inY = (screenY > brain_stats::clip_rect_y) && (screenY < brain_stats::clip_rect_y + brain_stats::clip_rect_height);

            if (inX && inY)
            {
                return buf[screenY][screenX];
            }
            return 0x00000000;
        }

        // https://stackoverflow.com/questions/48073159/most-efficient-linear-interpolation-using-integer-fraction

        /// @brief linear interpolate between two integers
        /// @param A first integer (return = A if F = 0)
        /// @param B second integer (return = B if F = 255)
        /// @param F fraction to mix with
        /// @return  mixture of A and B according to F

        uint8_t uint8Mix(uint8_t A, uint8_t B, uint8_t F)
        {
            if (F == 255)
            {
                return B;
            }
            uint8_t I = A + (uint8_t)(((int16_t)(B - A) * F) >> 8);
            return I;
        }
        /// @brief mix two uint32 colors according to F
        /// used for anti aliasing of fonts
        /// @param A first integer (return = A if F = 0)
        /// @param B second integer (return = B if F = 255)
        /// @param F fraction to mix with
        /// @return  mixture of A and B according to F
        uint32_t uint32Mix(uint32_t A, uint32_t B, uint8_t F)
        {
            uint8_t Aa = (uint8_t)(0xFF & (A >> 24));
            uint8_t Ar = (uint8_t)(0xFF & (A >> 16));
            uint8_t Ag = (uint8_t)(0xFF & (A >> 8));
            uint8_t Ab = (uint8_t)(0xFF & (A >> 0));

            uint8_t Ba = (uint8_t)(0xFF & (B >> 24));
            uint8_t Br = (uint8_t)(0xFF & (B >> 16));
            uint8_t Bg = (uint8_t)(0xFF & (B >> 8));
            uint8_t Bb = (uint8_t)(0xFF & (B >> 0));

            uint8_t Ia = uint8Mix(Aa, Ba, F);
            uint8_t Ir = uint8Mix(Ar, Br, F);
            uint8_t Ig = uint8Mix(Ag, Bg, F);
            uint8_t Ib = uint8Mix(Ab, Bb, F);

            uint32_t val = (uint32_t)Ia << 8;
            val = ((uint32_t)val + Ir) << 8;
            val = ((uint32_t)val + Ig) << 8;
            val = ((uint32_t)val + Ib);
            return val;
        }

        /// @brief draw a single character to the screen
        /// UNKNOWN: whether using vex::transparent as a background actually draws text with no background or if its just black
        /// @param glyph the glyph to draw
        /// @param buf the buffer to draw to
        /// @param fg_color the color of the text
        /// @param bg_color the color of the brackground of the text
        /// @param glyph_width the width of the glyph we will draw
        /// @param glyph_height the height of the glyph we will draw
        /// @param glyph_x x position in texture of the glyph
        /// @param font_height height of the glyphs in the font texture
        /// @param font_tex_stride width of font tex image
        /// @param x x position on the screen
        /// @param y y position on the screen
        void blitGlyph(brain_screen_buffer buf, uint32_t fg_color, uint32_t bg_color, bool opaque, int glyph_width, int glyph_height, int glyph_x, int font_tex_stride, const uint8_t *font_tex, int x, int y)
        {
            for (int screenY = y; screenY < y + glyph_height; screenY++)
            {
                for (int screenX = x; screenX < x + glyph_width; screenX++)
                {
                    int texX = screenX - x + glyph_x;
                    int texY = screenY - y;
                    uint8_t pix_amt = font_tex[texY * font_tex_stride + texX];
                    uint32_t bg_col = bg_color;
                    if (!opaque)
                    {
                        bg_col = getPixelAccordingly(buf, screenX, screenY);
                    }
                    uint32_t screen_col = uint32Mix(bg_col, fg_color, pix_amt);

                    setPixelAccordingly(buf, screenX, screenY, screen_col);
                }
            }
        }

        /// @brief blit a string to the specified buffer
        /// does anti aliasing
        /// @param str string to write
        /// @param buf buffer to write to
        /// @param fg_color color of text
        /// @param bg_color color of background. if not opaque, this color is unused
        /// @param font_name vex name of font to use
        /// @param opaque true to use bg_color as background, false to draw only text to the screen
        /// @param x x position to start at
        /// @param y y position to start at
        void blitString(char *str, brain_screen_buffer buf, uint32_t fg_color, uint32_t bg_color, vex::fontType font_name, bool opaque, int x, int y)
        {
            full_font_info this_font = get_font_info(font_name);

            int curx = x;
            int i = 0;
            while (str[i] != 0x00)
            {
                font::glyph_info gi = (*this_font.font_glyph_info)[0x0]; // unknown character
                if (this_font.font_glyph_info->count(str[i]))
                {
                    gi = (*this_font.font_glyph_info)[str[i]];
                }
                int h = this_font.font_tex_height;
                blitGlyph(buf, fg_color, bg_color, opaque, gi.width, this_font.font_tex_height, gi.x, this_font.font_tex_width, this_font.font_tex, curx, y - h + 3);
                curx += gi.width;

                i++;
            }
        }

        /// @brief outside facing printAt
        /// @param x x position to start string at
        /// @param y y position to start the string at
        /// @param opaque true to use screen.background color to fill background, false to draw only text over background
        /// @param str string to print
        void print_at_internal(int x, int y, bool opaque, char *str)
        {
            blitString(str, *working_screen_buffer, get_fg_col_internal(), get_bg_col_internal(), brain_stats::current_font, opaque, x, y);
            mark_dirty();
        }

        /// @brief draws a test screen to test screen rendering
        /// @param buf the buffer on which to draw
        void draw_start_screen(brain_screen_buffer buf)
        {
            clear_clip_space_internal(0xFF202020);
            char *my_str = (char *)"Default Screen";
            blitString(my_str, buf, 0xFFFF0000, 0xFF000000, vex::mono20, true, 100, 100);
        }

        // Take the buffer currently on the CPU with updates and upload it to the GPU
        // if the buffer is the same as it used to be, dont bother
        void render_to_tex()
        {
            if (texture_dirty)
            {
                buffer_switch_mutex.lock();
                brain_screen_buffer *to_draw = drawing_screen_buffer;
                if (!brain_stats::doingVSYNC)
                {
                    to_draw = working_screen_buffer;
                }

                glBindTexture(GL_TEXTURE_2D, brain_screen_texture_handle1);
                glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, brain_screen_width, brain_screen_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, *to_draw);
                // std::cout << "finished" << '\n';
                texture_dirty = false;
                buffer_switch_mutex.unlock();
            }
        }

        /// @brief Initialize all opengl and buffers for rendering the brain screen
        /// @return true if successful
        bool setup()
        {
            // defualt screen image
            draw_start_screen(*working_screen_buffer);
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
        void draw_rect_internal(int x, int y, int width, int height, uint32_t fill_argb)
        {
            for (int iy = max(brain_stats::clip_rect_y, y); iy < min(brain_stats::clip_rect_y + brain_stats::clip_rect_height, y + height); iy++)
            {
                for (int ix = max(brain_stats::clip_rect_x, x); ix < min(brain_stats::clip_rect_x + brain_stats::clip_rect_width, x + width); ix++)
                {
                    (*working_screen_buffer)[iy][ix] = fill_argb;
                }
            }
            mark_dirty();
        }
        /// @brief draws a rectangle with
        /// @param x x position of the rectangle in screen coordinates
        /// @param y y position of the rectanlge in screen coordinates
        /// @param width width of the rectangle
        /// @param height height of the rectangle
        /// @param fill_argb fill color in argb format
        /// @param border_argb border color in argb format
        void draw_rect_border_internal(int x, int y, int width, int height, uint32_t fill_argb, uint32_t border_argb, int border_width)
        {
            for (int iy = max(brain_stats::clip_rect_y, y - border_width); iy < min(brain_stats::clip_rect_y + brain_stats::clip_rect_height, y + height + border_width); iy++)
            {
                for (int ix = max(brain_stats::clip_rect_x, x - border_width); ix < min(brain_stats::clip_rect_x + brain_stats::clip_rect_width, x + width + border_width); ix++)
                {
                    bool isBorder = (ix < x) || (ix >= x + width) || (iy < y) || (iy >= y + height);
                    if (!isBorder)
                    {
                        (*working_screen_buffer)[iy][ix] = fill_argb;
                    }
                    else
                    {
                        (*working_screen_buffer)[iy][ix] = border_argb;
                    }
                }
            }
            mark_dirty();
        }

        inline void draw_line_octant1(int x1, int y1, int x2, int y2)
        {
            int dx = x2 - x1;
            int dy = y2 - y1;
            int D = 2 * dy - dx;
            int y = y1;

            for (int x = x1; x < x2; x++)
            {
                setPixelAccordingly(*working_screen_buffer, x, y, brain_stats::fg_col);
                // plot(x, y)
                if (D > 0)
                {
                    y = y + 1;
                    D = D - 2 * dx;
                }
                D = D + 2 * dy;
            }
        }
        inline void draw_all_octants(int x0, int y0, int x1, int y1)
        {
            int dx = abs(x1 - x0);
            int sx = x0 < x1 ? 1 : -1;
            int dy = -abs(y1 - y0);
            int sy = y0 < y1 ? 1 : -1;
            int error = dx + dy;

            uint32_t col = brain_stats::fg_col;
            while (true)
            {
                setPixelAccordingly(*working_screen_buffer, x0, y0, col);

                if (x0 == x1 && y0 == y1)
                {
                    break;
                }
                int e2 = 2 * error;

                if (e2 >= dy)
                {
                    if (x0 == x1)
                    {
                        break;
                    }
                    error = error + dy;
                    x0 = x0 + sx;
                }

                if (e2 <= dx)
                {
                    if (y0 == y1)
                    {
                        break;
                    }
                    error = error + dx;
                    y0 = y0 + sy;
                }
            }
        }

        void draw_line_internal(int x1, int y1, int x2, int y2)
        {
            if (y1 > y2)
            {
                // flip so we can Bresenham with confidence
                int tmp = y1;
                y1 = y2;
                y2 = tmp;
                tmp = x1;
                x1 = x2;
                x2 = tmp;
            }

            draw_all_octants(x1, y1, x2, y2);
            mark_dirty();
        }
        void draw_circle_internal(int x, int y, int radius)
        {
            for (int yi = y - radius; yi < y + radius; yi++)
            {
                // x^2 + y^2  = radius
                //  radius - y^2 = x^2
                int xmin = x - sqrt((int)(radius * radius - (yi - y) * (yi - y)));
                int xmax = x + sqrt((int)(radius * radius - (yi - y) * (yi - y)));
                for (int xi = xmin; xi < xmax; xi++)
                {
                    setPixelAccordingly(&working_screen_buffer[0][0], xi, yi, get_bg_col_internal());
                }
            }
            mark_dirty();
        }

        ///@brief clears the current clip space with defualt color
        /// This function only affects the current thread
        void clear_clip_space_internal()
        {
            for (int y = 0; y < brain_screen_height; y++)
            {
                for (int x = 0; x < brain_screen_width; x++)
                {
                    (*working_screen_buffer)[y][x] = 0x00000000;
                }
            }
            mark_dirty();
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
                    (*working_screen_buffer)[y][x] = col;
                }
            }
            mark_dirty();
        }

        /// @brief draws an image from uint32_ts in memory
        /// @param buf pointer to start of buffer
        /// @param img_width width of the image
        /// @param img_height height of the image
        /// @param x x position of top left of image
        /// @param y y position of top left of image
        void draw_image_from_buffer_internal(uint32_t *buf, int img_width, int img_height, int x, int y)
        {
            for (int iy = y; iy < y + img_height; iy++)
            {
                for (int ix = x; ix < x + img_width; ix++)
                {
                    int img_x = ix - x;
                    int img_y = iy - y;
                    uint32_t col = buf[img_y * img_width + img_x];
                    setPixelAccordingly(*working_screen_buffer, ix, iy, col);
                }
            }
            mark_dirty();
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
        /// @brief sets this threads font
        /// @param font the font to set to
        void set_font_internal(vex::fontType font)
        {
            brain_stats::current_font = font;
        }

        /// @brief  sets the background (fill) color of this threads rendering parameters
        /// @param col the color to set it to
        /// TODO: make this only affect the current thread
        void set_bg_col_internal(uint32_t col)
        {
            brain_stats::bg_col = col;
        }
        /// @brief sets the foreground (pen) color of this threads rendering parameters
        /// @param col the color to set it to
        /// TODO: make this only affect the current thread
        void set_fg_col_internal(uint32_t col)
        {
            brain_stats::fg_col = col;
        }

        /// @brief  gets the background (fill) color of this threads rendering parameters
        /// @return the color to set it to
        uint32_t get_bg_col_internal()
        {
            return brain_stats::bg_col;
        }
        /// @brief sets the foreground (pen) color of this threads rendering parameters
        /// @param col the color to set it to
        uint32_t get_fg_col_internal()
        {
            return brain_stats::fg_col;
        }
        /// @brief gets the size of the pen aka width of lines or borders
        /// @return the size of the pen
        int get_pen_width() { return brain_stats::line_width; }

        /// @brief sets the size of the pen aka width of lines or borders
        /// @param width the new size to set to
        void set_pen_width(int width)
        {
            brain_stats::line_width = width;
        }

        V5_TouchStatus *get_touch_status_internal()
        {
            return &last_touch_status;
        }

        void setVSYNC(bool doit)
        {
            brain_stats::doingVSYNC = doit;
        }

        void render_internal()
        {
            buffer_switch_mutex.lock();
            auto tmp = drawing_screen_buffer;
            drawing_screen_buffer = working_screen_buffer;
            working_screen_buffer = tmp;
            buffer_switch_mutex.unlock();
        }

        /// @brief ImGui build function. also responsible for touch and release events
        void build_brain_ui()
        {
            ImGui::Begin("Brain Screen");

            ImGui::Text("pointer = %u", brain_screen::get_gltex_handle());
            ImGui::Text("size = %d x %d", 480, 240);
            static bool was_pressed = false;

            ImVec2 size = ImGui::GetContentRegionAvail();

            float img_width = sim::brain_screen::brain_screen_width;
            float img_height = sim::brain_screen::brain_screen_height;

            // scale image to fit window
            float scale_factor = size.x / img_width;
            img_width *= scale_factor;
            img_height *= scale_factor;

            ImVec2 mousepos = {ImGui::GetMousePos().x - ImGui::GetCursorScreenPos().x, ImGui::GetMousePos().y - ImGui::GetCursorScreenPos().y};

            ImGui::Image((void *)(intptr_t)(brain_screen::get_gltex_handle()), ImVec2(img_width, img_height));

            bool over_image = (mousepos.x) < img_width && (mousepos.x) >= 0;
            over_image &= (mousepos.y) < img_height && (mousepos.y) >= 0;

            bool pressed = ImGui::IsMouseDown(ImGuiMouseButton_Left) && over_image && ImGui::IsWindowFocused();
            bool just_pressed = pressed && !was_pressed;
            bool just_released = !pressed && was_pressed;

            if (pressed)
            {
                // calculate x and y
                last_touch_status.lastEvent = V5_TouchEvent::kTouchEventPress;
                int16_t x = (int16_t)(mousepos.x / scale_factor);
                int16_t y = (int16_t)(mousepos.y / scale_factor);
                last_touch_status.lastXpos = x;
                last_touch_status.lastYpos = y;
                last_touch_status.pressCount++;
            }
            else
            {
                last_touch_status.lastEvent = V5_TouchEvent::kTouchEventRelease;
                last_touch_status.releaseCount++;
            }

            const int brain_index = 31;
            const int pressed_eid = 0;
            const int released_eid = 1;
            if (just_pressed)
            {
                last_touch_status.lastEvent = V5_TouchEvent::kTouchEventPress;
                last_touch_status.pressCount = 1;

                sim::event_handler::send_mevent(brain_index, pressed_eid, true);
            }
            if (just_released)
            {
                last_touch_status.lastEvent = V5_TouchEvent::kTouchEventPress;
                last_touch_status.releaseCount = 1;

                sim::event_handler::send_mevent(brain_index, released_eid, true);
            }

            was_pressed = pressed;
            ImGui::End();
        }
    }
}