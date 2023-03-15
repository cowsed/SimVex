
#include "vex_color.h"

namespace vex
{
    // special constructor only used to create a transparent color
    color::color(int value, bool transparent) : _argb(value), _transparent(transparent) {}
    // default color constructor
    color::color() : _argb(0xFF000000), _transparent(false) {}

    static uint32_t rgb8Torgb32(uint8_t r, uint8_t g, uint8_t b)
    {
        uint32_t val = 0xFF << 8;
        val = (val + r) << 8;
        val = (val + g) << 8;
        val = (val + b);
        return val;
    }

    /**
     * @brief Creates a color.
     * @param value The value of the color.
     */
    // UNKNOWN: what this actually does
    color::color(int value) : _transparent(false)
    {
        _argb = value;
    }

    /**
     * @brief Creates a color using red, green, and blue values.
     * @param r the color of red on a scale of 0 to 255.
     * @param g the color of green on a scale of 0 to 255.
     * @param b the color of blue on a scale of 0 to 255.
     */
    color::color(uint8_t r, uint8_t g, uint8_t b) : _transparent(false)
    {
        _argb = rgb8Torgb32(r, g, b);
    }

    color::~color() {}

    // Assignment
    uint32_t color::rgb(uint32_t value)
    {

        _argb = value;
        _transparent = false;
        return _argb;
    }
    uint32_t color::rgb(uint8_t r, uint8_t g, uint8_t b)
    {
        _argb = rgb8Torgb32(r, g, b);
        return _argb;
    }
    void color::operator=(uint32_t value)
    {
        rgb(value);
        _transparent = false;
    }

    // Get value
    uint32_t color::rgb() const
    {
        return _argb;
    }
    color::operator uint32_t() const
    {
        return _argb;
    }
    /**
     * @brief Gets the state of the color's transparency.
     * @return Returns true if the color is transparent.
     */
    bool color::isTransparent() const
    {
        return _transparent;
    }

    static double clamp(double val, double low, double high)
    {
        if (val < low)
        {
            return low;
        }
        else if (val > high)
        {
            return high;
        }
        return val;
    }

    /**
     * @brief Creates a color using hue, saturation, and brightness values.
     * @return Returns a reference to a color.
     * @param hue An integer from 0 to 360 that represents the hue of the color.
     * @param sat A double from 0.0 to 1.0 that represents the saturation of the color.
     * @param value A double from 0.0 to 1.0 that represents the brightness of the color.
     */
    color &color::hsv(uint32_t hue, double sat, double value)
    {
        double H = (double)(hue % 360);
        sat = clamp(sat, 0.0, 1.0);
        value = clamp(value, 0.0, 1.0);

        double r, g, b;

        if (sat == 0)
        {
            r = value;
            g = value;
            b = value;
        }
        else
        {
            int i;
            double f, p, q, t;

            if (H == 360)
            {
                H = 0;
            }
            else
            {
                H = H / 60;
            }

            i = (int)trunc(H);
            f = H - i;

            p = value * (1.0 - sat);
            q = value * (1.0 - (sat * f));
            t = value * (1.0 - (sat * (1.0 - f)));

            switch (i)
            {
            case 0:
                r = value;
                g = t;
                b = p;
                break;

            case 1:
                r = q;
                g = value;
                b = p;
                break;

            case 2:
                r = p;
                g = value;
                b = t;
                break;

            case 3:
                r = p;
                g = q;
                b = value;
                break;

            case 4:
                r = t;
                g = p;
                b = value;
                break;

            default:
                r = value;
                g = p;
                b = q;
                break;
            }
        }

        uint8_t ir, ig, ib;
        ir = (uint8_t)(r * 255);
        ig = (uint8_t)(g * 255);
        ib = (uint8_t)(b * 255);
        _argb = rgb8Torgb32(ir, ig, ib);
        return *this;
    }

    static uint32_t charToHexValue(const char c)
    {
        if (c <= '9' && c >= '0')
        {
            return c - '0';
        }
        if (c >= 'a' && c <= 'f')
        {
            return c - 'a';
        }
        if (c >= 'A' && c <= 'F')
        {
            return c - 'A';
        }

        // error
        return -1;
    }

    /**
     * @brief Creates a color using a hexadecimal value.
     * @return Returns a reference to a color.
     * @param color A hexadecimal or web color value that defines a specific color.
     */
    color &color::web(const char *color)
    {
        uint32_t out = 0xFF;
        if (strlen(color) != 6)
        {
            goto invalid_color;
        }

        for (int i = 0; i < 6; i++)
        {
            uint32_t digit_value = charToHexValue(color[i]);
            if (digit_value < 0 || digit_value > 15)
            {
                goto invalid_color;
            }
            out += digit_value;
            out = out << 4;
        }
        return *this;

    invalid_color:
        printf("INVALID WEB COLOR\n");
        this->_argb = 0x00000000;
        return *this;
    }

    const color color::black = 0xFF000000;
    /**
     *@brief Represents the color white.
     */
    const color color::white = 0xFFFFFFFF;
    /**
     *@brief Represents the color red.
     */
    const color color::red = 0xFFFF0000;
    /**
     *@brief Represents the color green.
     */
    const color color::green = 0xFF00FF00;
    /**
     *@brief Represents the color blue.
     */
    const color color::blue = 0xFF0000FF;
    /**
     *@brief Represents the color yellow.
     */
    const color color::yellow = 0xFFFFFF00;
    /**
     *@brief Represents the color orange.
     */
    const color color::orange = 0xFFFF7F00;
    /**
     *@brief Represents the color purple.
     */
    const color color::purple = 0xFFFF00FF;
    /**
     *@brief Represents the color cyan.
     */
    const color color::cyan = 0xFF00FFFF;
    /**
     *@brief Represents the color transparent.
     */
    const color color::transparent = color(0x00000000, true);

}