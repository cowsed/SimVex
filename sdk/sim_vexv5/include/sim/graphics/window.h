#pragma once

#include <stdio.h>
#include <thread>

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <GL/glcorearb.h>

#include "../util.h" //TODO figure out why this include is funky
#include "../time.h"
#include "ui.h"
#include "embedded_font.h"

#include "../../../vendor/imgui/imgui.h"
#include "../../../vendor/imgui/backends/imgui_impl_glfw.h"
#include "../../../vendor/imgui/backends/imgui_impl_opengl3.h" 

namespace sim{
    bool initWindow();
}