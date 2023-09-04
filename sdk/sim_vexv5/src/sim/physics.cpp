#include "sim/physics.h"
#include "imgui.h"
#include <iostream>
#include <map>

#include <GL/glew.h>
// #include <GL/glcorearb.h>

static char *line_frag_shader = (char *) "#version 330 core\n"
                                         "in vec3 fColor;\n"
                                         "out vec4 color;\n"
                                         "\n"
                                         "void main()\n"
                                         "{\n"
                                         "    color = vec4(fColor.x, fColor.y, fColor.z, 1.0);\n"
                                         "}\n"
                                         "";
static char *line_vert_shader
    = (char
           *) "#version 330 core\n"
              "layout (location = 0) in vec3 position_physics;\n"
              "layout (location = 1) in vec3 color;\n"
              "out vec3 fColor;\n"
              "\n"
              "uniform mat4 projection;\n"
              "uniform mat4 view;\n"
              "\n"
              "void main()\n"
              "{\n"
              "   vec3 position = vec3(position_physics.x, position_physics.y, position_physics.z);"
              "   gl_Position = projection * view * vec4(position, 1.0f);\n"
              "   fColor = color;\n"
              "\n"
              "}";

void sim::physics::setup()
{
    std::cout << "starint physics\n";
}


void sim::physics::build_ui()
{
    ImGui::Begin("Physics");
    if (ImGui::Button("Step Physics"))
    {
    }
    if (ImGui::IsItemHovered())
    {
        // step_physics();
    }
    ImGui::End();
}
