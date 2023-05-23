#include "sim/graphics/renderer.h"

namespace sim
{
    namespace renderer
    {
        RenderTarget field_viewport;
        Camera field_camera(glm::vec3(0, 0, 10.0), glm::vec3(0, 0, 0.0), field_viewport);

        square_shape *cyl;

        void setup()
        {
            printf("renderer initting\n");
            setup_common();

            field_viewport.init(800, 600);

            cyl = new square_shape(1, 2, 12);

        }

        void render()
        {

            field_viewport.activate();
            glClearColor(1.f, 1.f, 1.f, 1.0f);
            glEnable(GL_DEPTH_TEST);
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); 
            glDisable(GL_CULL_FACE);
            ShaderProgram::activate_default();
            glm::mat4 view = field_camera.view_matrix();
            glm::mat4 persp = field_camera.persp_matrix(field_viewport);

            glUniformMatrix4fv(0, 1, false, (float *)(&view));
            glUniformMatrix4fv(1, 1, false, (float *)(&persp));

            std::cout << "render cyl\n";
            cyl->render(persp * view, field_viewport);

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
