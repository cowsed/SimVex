#include "image_load.hpp"
#include <filesystem>

#include <iostream>

#define STB_IMAGE_IMPLEMENTATION
#include "stb/stb_image.h"

std::optional<GLuint> load_image_to_opengl(const std::string &image_path) {
    if (!std::filesystem::exists(image_path)) {
        return {};
    }
    int width = 0;
    int height = 0;

    int actual_channels = 0;

    unsigned char *image_data = stbi_load(image_path.c_str(), &width, &height, &actual_channels, 0);

    if (image_data == nullptr) {
        return {};
    }

    unsigned int internal_rep = GL_RGBA;
    if (actual_channels == 3) {
        internal_rep = GL_RGB;
    } else if (actual_channels == 4) {
        internal_rep = GL_RGBA;
    } else {
        free(image_data);
        return {};
    }

    unsigned int tex = 0;
    glGenTextures(1, &tex);
    if (tex == 0) {
        free(image_data);
        return {};
    }
    glBindTexture(GL_TEXTURE_2D, tex);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_MIRRORED_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_MIRRORED_REPEAT);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

    glTexImage2D(GL_TEXTURE_2D,
                 0,
                 internal_rep,
                 width,
                 height,
                 0,
                 internal_rep,
                 GL_UNSIGNED_BYTE,
                 image_data);
    glGenerateTextureMipmap(tex);

    free(image_data);

    return tex;
}
