#include "sim/graphics/renderer.h"
#include <memory>
#include "sim/physics.h"
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
        bool phys_debug_draw = false;
        bool main_draw = true;
        bool draw_skybox = true;

        RenderTarget field_viewport;
        Camera field_camera(glm::vec3(0, 0, 0.2), 0, 0, field_viewport);
        Skybox field_skybox = {.nx = nx, .ny = ny, .nz = nz, .px = px, .py = py, .pz = pz};

        brain_screen_shape *brain_screen;
        construction::Model *brain_shape;
        sim::physics::phys_id brain_id;

        construction::Model *nut_shape;
        sim::physics::phys_id nut_id;

        construction::Model *field_shape;
        sim::physics::phys_id field_id;
        void setup()
        {
            auto btVectorFromGlm3 = [](glm::vec3 v) -> btVector3
            {
                return {v.x, v.y, v.z};
            };
            auto btTransFromOrigin = [](btVector3 v)
            {
                btTransform t;
                t.setIdentity();
                t.setOrigin(v);
                return t;
            };
            puts("renderer initting\n");
            setup_common();

            field_viewport.init(800, 600);
            std::cout << "field skybox px = " << field_skybox.nx.width << '\n';
            field_skybox.init();
            brain_screen = new brain_screen_shape();



            brain_shape = new construction::Model("Construction/V5_Brain.dae");
            btTransform brain_transform = btTransFromOrigin(btVectorFromGlm3(glm::vec3(0, .3, 0)));
            std::unique_ptr<btCollisionShape> brain_collision = brain_shape->make_convex_hull();
            float brain_mass = .11; // kg
            brain_id = physics::add_dynamic_mesh(brain_mass, std::move(brain_collision), brain_transform, 0.4);

            nut_shape = new construction::Model("Construction/nut.dae");
            btTransform nut_transform = btTransFromOrigin(btVectorFromGlm3(glm::vec3(-.1, .5, 0)));
            std::unique_ptr<btCollisionShape> nut_collision = nut_shape->make_convex_hull();
            float nut_mass = .12; // kg
            nut_id = physics::add_dynamic_mesh(nut_mass, std::move(nut_collision), nut_transform, 20000.0);

            field_shape = new construction::Model("Construction/field.dae");
            btTransform field_transform = btTransFromOrigin(btVector3{0, 0, 0});
            std::unique_ptr<btCollisionShape> field_collision = field_shape->make_convex_hull();
            field_id = physics::add_static_mesh(std::move(field_collision), field_transform, 10000.0);
        }

        void build_ui()
        {
            ImGui::Begin("Render Settings");
            ImGui::Checkbox("Physics Debug Draw", &phys_debug_draw);
            ImGui::Checkbox("Normal Drawing", &main_draw);
            ImGui::Checkbox("Draw Skybox", &draw_skybox);
            ImGui::End();
        }

        void render()
        {

            field_viewport.activate();
            glClearColor(0.f, 0.f, 0.f, 1.0f);
            glEnable(GL_DEPTH_TEST);
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
            glEnable(GL_CULL_FACE);

            if (draw_skybox)
            {
                field_skybox.render(field_camera, field_viewport);
            }

            ShaderProgram::activate_default();

            glm::mat4 view = field_camera.view_matrix();
            glm::mat4 persp = field_camera.persp_matrix(field_viewport);

            if (main_draw)
            {
                auto brain_trans = physics::get_transform_matrix(brain_id);
                brain_screen->render(persp, view, brain_trans);
                brain_shape->render(persp, view, brain_trans);

                glm::mat4 nut_trans = physics::get_transform_matrix(nut_id);
                nut_shape->render(persp, view, nut_trans);

                glm::mat4 field_trans = physics::get_transform_matrix(field_id);
                field_shape->render(persp, view, field_trans);
            }
            if (phys_debug_draw)
            {
                physics::draw_db_world(persp, view);
            }

            field_viewport.deactivate();
        }

    }
}
