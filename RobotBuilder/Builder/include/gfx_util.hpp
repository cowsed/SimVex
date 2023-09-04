#pragma once
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <optional>
#include <string>

void glfwError(int id, const char *description);

void glError(GLenum source,
             GLenum type,
             GLuint id,
             GLenum severity,
             GLsizei length,
             const GLchar *msg,
             const void *data);

bool imgui_setup(GLFWwindow *window);
void imgui_new_frame();
void imgui_render();
void imgui_cleanup();

void set_red_style();
void setup_dockspace();

std::optional<GLuint> build_program(const std::string &vert_path, const std::string &frag_path);
