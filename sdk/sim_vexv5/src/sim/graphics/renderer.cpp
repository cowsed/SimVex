#include "sim/graphics/renderer.h"

namespace sim
{
    namespace renderer
    {
        static RenderTarget field_viewport;
        void setup()
        {
            // printf("renderer initting\n");
            field_viewport.init(800, 600);
        }
        void render()
        {
            field_viewport.activate();
            glClearColor(1.f, 0.1f, 0.1f, 1.0f);
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); // we're not using the stencil buffer now
            field_viewport.deactivate();
        }

        unsigned int get_rendered_tex()
        {
            return field_viewport.color_handle;
        }
        unsigned int get_rendered_tex_width(){
            return field_viewport.width;
        }
        unsigned int get_rendered_tex_height(){
            return field_viewport.height;
        }

    }
}