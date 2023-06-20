#include "sim/physics.h"
#include "imgui.h"
#include <iostream>
#include <map>


#include "sim/graphics/render_common.h"
#include <GL/glew.h>
#include <GL/glcorearb.h>

// Helper class; draws the world as seen by Bullet.
// This is very handy to see it Bullet's world matches yours
// How to use this class :
// Declare an instance of the class :
//
// dynamicsWorld->setDebugDrawer(&mydebugdrawer);
// Each frame, call it :
// mydebugdrawer.SetMatrices(ViewMatrix, ProjectionMatrix);
// dynamicsWorld->debugDrawWorld();
GLuint VBO, VAO;
sim::renderer::ShaderProgram line_shader;
class BulletDebugDrawer_OpenGL 
{
public:
    void SetMatrices(glm::mat4 pViewMatrix, glm::mat4 pProjectionMatrix)
    {
        line_shader.activate();
        glUniformMatrix4fv(glGetUniformLocation(line_shader.program, "projection"), 1, GL_FALSE, &(pProjectionMatrix[0][0]));
        glUniformMatrix4fv(glGetUniformLocation(line_shader.program, "view"), 1, GL_FALSE, &(pViewMatrix[0][0]));
    }

    // virtual void drawLine(const btVector3 &from, const btVector3 &to, const btVector3 &color)
    // {
        // Vertex data
        // GLfloat points[12];
// 
        // points[0] = from.x();
        // points[1] = from.y();
        // points[2] = from.z();
        // points[3] = color.x();
        // points[4] = color.y();
        // points[5] = color.z();
// 
        // points[6] = to.x();
        // points[7] = to.y();
        // points[8] = to.z();
        // points[9] = color.x();
        // points[10] = color.y();
        // points[11] = color.z();
// 
        // glDeleteBuffers(1, &VBO);
        // glDeleteVertexArrays(1, &VAO);
        // glGenBuffers(1, &VBO);
        // glGenVertexArrays(1, &VAO);
        // glBindVertexArray(VAO);
        // glBindBuffer(GL_ARRAY_BUFFER, VBO);
        // glBufferData(GL_ARRAY_BUFFER, sizeof(points), &points, GL_STATIC_DRAW);
        // glEnableVertexAttribArray(0);
        // glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(GLfloat), 0);
        // glEnableVertexAttribArray(1);
        // glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(GLfloat), (GLvoid *)(3 * sizeof(GLfloat)));
        // glBindVertexArray(0);
// 
        // glBindVertexArray(VAO);
        // glDrawArrays(GL_LINES, 0, 2);
        // glBindVertexArray(0);
    // }
    // virtual void drawContactPoint(const btVector3 &, const btVector3 &, btScalar, int, const btVector3 &) {}
    // virtual void reportErrorWarning(const char *) {}
    // virtual void draw3dText(const btVector3 &, const char *) {}
    // virtual void setDebugMode(int p)
    // {
        // m = p;
    // }
    // int getDebugMode(void) const { return m; }
    // int m = 3;
};
static BulletDebugDrawer_OpenGL *my_drawer;

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
