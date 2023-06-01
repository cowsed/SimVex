#include "sim/graphics/renderer.h"
#include "sim/graphics/render_common.h"
#include "sim/graphics/images/default_skybox/skybox.h"

#include "sim/graphics/images/default_skybox/nx.h"
#include "sim/graphics/images/default_skybox/ny.h"
#include "sim/graphics/images/default_skybox/nz.h"
#include "sim/graphics/images/default_skybox/px.h"
#include "sim/graphics/images/default_skybox/py.h"
#include "sim/graphics/images/default_skybox/pz.h"

namespace sim
{
    namespace renderer
    {
        RenderTarget field_viewport;
        Camera field_camera(glm::vec3(0, 0, 0.2), glm::vec3(0, 0, 0.0), field_viewport);
        Skybox field_skybox = {.nx = nx, .ny = ny, .nz = nz, .px = px, .py = py, .pz = pz};

        brain_screen_shape *brain_screen;
        Shape *brain_shape;
        Shape *nut_shape;

        void setup()
        {
            puts("renderer initting\n");
            setup_common();

            field_viewport.init(800, 600);
            std::cout << "field skybox px = " << field_skybox.nx.width << '\n';
            field_skybox.init();
            brain_screen = new brain_screen_shape();
            brain_shape = new construction::Model("Construction/V5_Brain.dae");
            nut_shape = new construction::Model("Construction/nut.dae");
        }

        void render()
        {

            field_viewport.activate();
            glClearColor(1.f, 1.f, 1.f, 1.0f);
            glEnable(GL_DEPTH_TEST);
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
            glEnable(GL_CULL_FACE);

            field_skybox.render(field_camera, field_viewport);

            ShaderProgram::activate_default();
            glm::mat4 view = field_camera.view_matrix();
            glm::mat4 persp = field_camera.persp_matrix(field_viewport);
            glm::mat4 ident = glm::mat4{1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1};

            brain_screen->render(persp, view, ident);
            brain_shape->render(persp, view, ident);
            glm::mat4 rot = glm::rotate_slow(ident, glm::radians(-90.f), glm::vec3(1, 0, 0));
            nut_shape->render(persp, view, glm::translate(rot, glm::vec3(-.2, 0, 0)));
            nut_shape->render(persp, view, glm::translate(rot, glm::vec3(.2, 0, 0)));

            // construction::get_this_robot()->render(persp * view, field_viewport);

            field_viewport.deactivate();
        }

    }
}
