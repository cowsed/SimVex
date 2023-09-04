#pragma once
#include <GL/glew.h>
#include <GL/glut.h>

#include <optional>
#include <string>

std::optional<GLuint> load_image_to_opengl(const std::string &image_path);
