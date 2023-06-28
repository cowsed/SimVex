#include "sim/graphics/renderer.h"

#include <chrono>
#include <functional>
#include <iostream>
#include <memory>

#include <GL/glew.h>
#include <GL/glcorearb.h>

#include <glm/vec3.hpp>
#include <glm/mat4x4.hpp>

#include "imgui.h"

#include "sim/physics.h"
#include "sim/graphics/skybox.h"
#include "sim/urdf_loader.h"

#include "mujoco/mujoco.h"

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

        // construction::Model *bars_shape;

        loader::RobotModel robot_model;

        mjModel *m = NULL; // MuJoCo model
        mjData *d = NULL;  // MuJoCo data
        mjvCamera cam;     // abstract camera
        mjvOption opt;     // visualization options
        mjvScene scn;      // abstract scene
        mjrContext con;    // custom GPU context

        void setup()
        {
          setup_common();

          // initialize visualization data structures
          std::cout << "mj camera" << std::endl;
          mjv_defaultCamera(&cam);
          //            mjv_defaultPerturb(&pert);
          std::cout << "mj option" << std::endl;
          mjv_defaultOption(&opt);
          std::cout << "mj context" << std::endl;
          mjr_defaultContext(&con);

          std::cout << "mj scene" << std::endl;
          mjv_makeScene(m, &scn, 1000);
          std::cout << "mj make coneext" << std::endl;
          mjr_makeContext(m, &con, mjFONTSCALE_100);

          field_viewport.init(800, 600);
          field_skybox
              = new Skybox("/home/richie/VEX/Sim/sdk/sim_vexv5/media/Environments/hangar/");
          field_skybox->init();
          brain_screen = new brain_screen_shape();

          robot_model = sim::loader::load_urdf("Construction/simple.urdf");
          std::cout << "loaded urdf\n";

// MODEL_PATH is defined by the makefile. this guard is only here to make the IDE be quiet
#ifndef MODEL_PATH
#define MODEL_PATH "./"
#endif

            auto start = std::chrono::steady_clock::now();

            auto nut_path = std::string(MODEL_PATH) + std::string("Fields/OverUnder/nut.dae");
            auto field_path = std::string(MODEL_PATH) + std::string("Fields/OverUnder/field.dae");
            auto bars_path = std::string(MODEL_PATH) + std::string("Fields/OverUnder/bars.dae");

            nut_shape = new construction::Model(nut_path);

            field_shape = new construction::Model(field_path);

            // bars_shape = new construction::Model(bars_path);

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
            mjtNum simstart = d->time;
            while (d->time - simstart < 1.0 / 60.0)
              mj_step(m, d);

            // get framebuffer viewport
            mjrRect viewport = {0, 0, static_cast<int>(field_viewport.width),
                                static_cast<int>(field_viewport.height)};

            // update scene and render
            std::cout << "mj updating" << std::endl;
            //            mjv_updateScene(m, d, &opt, NULL, &cam, mjCAT_ALL, &scn);
            std::cout << "mj renderering" << std::endl;
            //            mjr_render(viewport, &scn, &con);

            /*

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

                nut_shape->render(persp, view, ident, light_pos);
                // robot_model.render(persp, view, ident, light_pos);
            }


*/
            field_viewport.deactivate();
        }
    } // namespace renderer
}
