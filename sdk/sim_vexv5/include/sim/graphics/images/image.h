#pragma once
#include <string>
#include <stdint.h>

namespace sim{
    struct Image{
        unsigned int width;
        unsigned int height;
        unsigned char *image_data; // RGBA
    };
}