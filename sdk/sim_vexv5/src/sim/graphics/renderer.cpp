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

        brain_screen_shape *test_square;

        void setup()
        {
            puts("renderer initting\n");
            setup_common();

            field_viewport.init(800, 600);
            std::cout << "field skybox px = " << field_skybox.nx.width << '\n';
            field_skybox.init();
            test_square = new brain_screen_shape();

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


            test_square->render(persp,view, field_viewport);

            // construction::get_this_robot()->render(persp * view, field_viewport);

            field_viewport.deactivate();
        }


    }
}
