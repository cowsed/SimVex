#pragma once
#include <stdint.h>

namespace sim{
    struct Image{
        unsigned int width;
        unsigned int height;
        uint32_t *image_data; // RGBA
    };
}