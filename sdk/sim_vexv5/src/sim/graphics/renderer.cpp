#include "sim/graphics/renderer.h"

#include <iostream>
#include <memory>
#include <chrono>

#include <GL/glew.h>
#include <GL/glcorearb.h>

#include <glm/vec3.hpp>
#include <glm/mat4x4.hpp>

#include "imgui.h"

#include "sim/physics.h"
#include "sim/graphics/skybox.h"

namespace sim
{
    namespace renderer
    {
        bool phys_debug_draw = false;
        bool main_draw = true;
        bool draw_skybox = true;

        glm::vec3 light_pos = {5, 10, 5};

        RenderTarget field_viewport;
        Camera field_camera(glm::vec3(0, 0, 0.2), 0, 0, field_viewport);
        Skybox *field_skybox;

        brain_screen_shape *brain_screen;
        construction::Model *brain_shape;
        sim::physics::phys_id brain_id;

        construction::Model *nut_shape;
        sim::physics::phys_id nut_id;

        construction::Model *field_shape;
        sim::physics::phys_id field_id;

        construction::Model *bars_shape;
        construction::Model *motor_shape;

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
            setup_common();

            field_viewport.init(800, 600);
            field_skybox = new Skybox("/home/richie/VEX/Sim/sdk/sim_vexv5/media/Environments/hangar/");
            field_skybox->init();
            brain_screen = new brain_screen_shape();

// MODEL_PATH is defined by the makefile. this guard is only here to make the IDE be quiet
#ifndef MODEL_PATH
#define MODEL_PATH "./"
#endif

            // BEFORE CACHING 4364

            auto start = std::chrono::steady_clock::now();

            auto brain_path = std::string(MODEL_PATH) + std::string("Devices/Brain/V5_Brain.dae");
            auto nut_path = std::string(MODEL_PATH) + std::string("Fields/OverUnder/nut.dae");
            auto field_path = std::string(MODEL_PATH) + std::string("Fields/OverUnder/field.dae");
            auto bars_path = std::string(MODEL_PATH) + std::string("Fields/OverUnder/bars.dae");
            auto motor_path = std::string(MODEL_PATH) + std::string("Devices/Motor/Motor.dae");

            brain_shape = new construction::Model(brain_path);
            btTransform brain_transform = btTransFromOrigin(btVectorFromGlm3(glm::vec3(0.1, .3, .4)));

            brain_transform.setRotation(btQuaternion(btVector3{1, 0, 0}, -.55));

            std::unique_ptr<btCollisionShape> brain_collision = brain_shape->make_convex_hull();
            float brain_mass = .11; // kg
            brain_id = physics::add_dynamic_mesh(brain_mass, std::move(brain_collision), brain_transform, 0.4, 0);

            nut_shape = new construction::Model(nut_path);
            btTransform nut_transform = btTransFromOrigin(btVectorFromGlm3(glm::vec3(-.1, .5, .4)));
            std::unique_ptr<btCollisionShape> nut_collision = nut_shape->make_convex_hull();
            float nut_mass = .12; // kg
            nut_id = physics::add_dynamic_mesh(nut_mass, std::move(nut_collision), nut_transform, .4, 0.005);

            field_shape = new construction::Model(field_path);
            btTransform field_transform = btTransFromOrigin(btVector3{0, 0, 0});
            std::unique_ptr<btCollisionShape> field_collision = field_shape->make_convex_hull();
            field_id = physics::add_static_mesh(std::move(field_collision), field_transform, 1.0);

            bars_shape = new construction::Model(bars_path);
            motor_shape = new construction::Model(motor_path);

            auto end = std::chrono::steady_clock::now();

            std::cout << "Loaded models time in seconds: "
                 << std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count()
                 << " millisec\n";
        }

        void build_ui()
        {
            ImGui::Begin("Render Settings");
            ImGui::Checkbox("Physics Debug Draw", &phys_debug_draw);
            ImGui::Checkbox("Normal Drawing", &main_draw);
            ImGui::Checkbox("Draw Skybox", &draw_skybox);
            ImGui::DragFloat3("Light Pos", &(light_pos[0]));
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
                field_skybox->render(field_camera, field_viewport);
            }

            ShaderProgram::activate_default();

            glm::mat4 view = field_camera.view_matrix();
            glm::mat4 persp = field_camera.persp_matrix(field_viewport);
            glm::mat4 ident = {1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1};
            if (main_draw)
            {
                auto brain_trans = physics::get_transform_matrix(brain_id);
                brain_screen->render(persp, view, brain_trans);
                brain_shape->render(persp, view, brain_trans, light_pos);

                glm::mat4 nut_trans = physics::get_transform_matrix(nut_id);
                nut_shape->render(persp, view, nut_trans, light_pos);

                glm::mat4 field_trans = physics::get_transform_matrix(field_id);
                field_shape->render(persp, view, field_trans, light_pos);

                bars_shape->render(persp, view, ident, light_pos);
                motor_shape->render(persp, view, glm::translate(ident, {0.1, 0.4, 0.3}), light_pos);
            }

            if (phys_debug_draw)
            {
                physics::draw_db_world(persp, view);
            }

            field_viewport.deactivate();
        }

    }
}
