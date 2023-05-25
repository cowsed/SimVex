#pragma once

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <GL/glcorearb.h>

#include "imgui.h"
#include "../../../vendor/imgui/backends/imgui_impl_opengl3.h" 
#include "../../../vendor/imgui/backends/imgui_impl_glfw.h"


#include "../util.h"
#include "../time.h"
#include "../terminal.h"
#include "brain_screen.h"
#include "../controller.h"
#include "../sim.h"
#include "../events.h"
#include "../robot_model.h"
#include "renderer.h"

namespace sim
{
    void drawUI(GLFWwindow *window);

    void setRedStyle();
}