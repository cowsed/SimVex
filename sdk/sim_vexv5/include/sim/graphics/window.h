#pragma once

#include <stdio.h>
#include <thread>

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <GL/glcorearb.h>

#include "../util.h" //TODO figure out why this include is funky
#include "../time.h"
namespace sim{
    bool initWindow();
}