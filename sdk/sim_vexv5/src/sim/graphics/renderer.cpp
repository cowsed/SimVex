#include "sim/graphics/renderer.h"
#include "sim/graphics/render_common.h"
#include "sim/graphics/images/default_skybox/skybox.h"


namespace sim
{
    namespace renderer
    {
        RenderTarget field_viewport;
        Camera field_camera(glm::vec3(0, 0, 10.0), glm::vec3(0, 0, 0.0), field_viewport);
        Skybox field_skybox = default_skybox;

        square_shape *test_square;

        void setup()
        {
            puts("renderer initting\n");
            setup_common();

            field_viewport.init(800, 600);
            field_skybox.init();
            test_square = new square_shape();

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

            glUniformMatrix4fv(0, 1, false, (float *)(&view));
            glUniformMatrix4fv(1, 1, false, (float *)(&persp));

            test_square->render(persp * view, field_viewport);

            // construction::get_this_robot()->render(persp * view, field_viewport);

            field_viewport.deactivate();
        }

        unsigned int get_rendered_tex()
        {
            return field_viewport.color_handle;
        }
        unsigned int get_rendered_tex_width()
        {
            return field_viewport.width;
        }
        unsigned int get_rendered_tex_height()
        {
            return field_viewport.height;
        }

    }
}
