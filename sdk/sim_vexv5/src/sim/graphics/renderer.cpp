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
            auto btVectorFromGlm3 = [](glm::vec3 v) -> btVector3{
                return {v.x,v.y,v.z};
            };
            auto btTransFromOrigin = [](btVector3 v){
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
            float brain_mass = .11;//kg
            brain_id = physics::add_dynamic_mesh(brain_mass, std::move(brain_collision), brain_transform);


            nut_shape = new construction::Model("Construction/nut.dae");

            btTransform nut_transform = btTransFromOrigin(btVectorFromGlm3(glm::vec3(-.2, .4, 0)));
            std::unique_ptr<btCollisionShape> nut_collision = nut_shape->make_convex_hull();
            float nut_mass = .11;//kg
            nut_id = physics::add_dynamic_mesh(nut_mass, std::move(nut_collision), nut_transform);


            field_shape = new construction::Model("Construction/field.dae");
            btTransform field_transform = btTransFromOrigin(btVector3{0,0,0});
            std::unique_ptr<btCollisionShape> field_collision = field_shape->make_convex_hull();
            field_id = physics::add_static_mesh(std::move(field_collision), field_transform);
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

            auto brain_trans = physics::get_transform_matrix(brain_id);
            brain_screen->render(persp, view, brain_trans);
            brain_shape->render(persp, view, brain_trans);

            glm::mat4 nut_trans = physics::get_transform_matrix(nut_id);
            nut_shape->render(persp, view, nut_trans);

            glm::mat4 field_trans = physics::get_transform_matrix(field_id);
            field_shape->render(persp, view, field_trans);

            // construction::get_this_robot()->render(persp * view, field_viewport);

            field_viewport.deactivate();
        }

    }
}
