#include "ui.hpp"

#include <GL/glew.h>

#include <GLFW/glfw3.h>

#include "gfx_util.hpp"

void setupDockspace();
void setRedStyle();
struct GLFWSetupError {};
struct GLEWSetupError {};
struct GLSetupError {};
struct IMGUISetupError {};

namespace ui {

GLFWwindow *window;

bool is_open() {
    return !glfwWindowShouldClose(window);
}

void setup_window() {
    glfwSetErrorCallback(&glfwError);
    if (!glfwInit()) {
        throw GLFWSetupError{};
    }
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    window = glfwCreateWindow(1200, 800, "Vex Sim", NULL, NULL);

    if (!window) {
        throw GLFWSetupError{};
    }
    glfwMakeContextCurrent(window);

    GLenum err = glewInit();

    if (GLEW_OK != err) {
        throw GLEWSetupError{};
    }

    glEnable(GL_DEBUG_OUTPUT);
    glDebugMessageCallback(glError, 0);

    if (!imgui_setup(window)) {
        throw IMGUISetupError{};
    }
    printf("OpenGL Version: %s\n", glGetString(GL_VERSION));
}

void pre_render() {
    set_red_style();
    imgui_new_frame();
    setup_dockspace();
}
void post_render() {
    imgui_render();
    glfwSwapBuffers(window);
    glfwPollEvents();
}
} // namespace ui
