#pragma once
#include <GLFW/glfw3.h>
#include "imgui.h"
#include "../util.h"
#include "../time.h"
#include "../terminal.h"

namespace sim{
void drawUI(GLFWwindow *window);

void setRedStyle();
}