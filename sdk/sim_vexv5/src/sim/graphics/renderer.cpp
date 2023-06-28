#include "sim/graphics/renderer.h"

#include <chrono>
#include <functional>
#include <iostream>
#include <memory>

#include <GL/glew.h>

#include <GLFW/glfw3.h>

#include <glm/vec3.hpp>
#include <glm/mat4x4.hpp>

#include "imgui.h"

#include "sim/physics.h"
#include "sim/graphics/skybox.h"
#include "sim/urdf_loader.h"

#include "mujoco/mujoco.h"

// MODEL_PATH is defined by the makefile. this guard is only here to make the IDE be quiet
#ifndef MODEL_PATH
#define MODEL_PATH "./"
#endif

std::pair<mjModel *, mjData *> load_mj(std::string path)
{
  mjModel *m = nullptr; // MuJoCo model
  mjData *d = nullptr;  // MuJoCo data

  // load and compile model
  char error[1000] = "Could not load binary model";
  if (path.ends_with(".mjb")) {
    m = mj_loadModel(path.c_str(), 0);
  } else {
    m = mj_loadXML(path.c_str(), 0, error, 1000);
  }
  if (!m) {
    mju_error("Load model error: %s", error);
  }

  // make data
  d = mj_makeData(m);
  return {m, d};
}

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

        brain_screen_shape *brain_screen;

        loader::RobotModel robot_model;

        mjModel *mj_model = NULL; // MuJoCo model
        mjData *mj_data = NULL;   // MuJoCo data
        mjvCamera cam;            // abstract camera
        mjvOption opt;            // visualization options
        mjvScene scn;             // abstract scene
        mjrContext con;           // custom GPU context

        void setup()
        {
          setup_common();
          auto start = std::chrono::steady_clock::now();

          auto mj_path = std::string(MODEL_PATH) + std::string("mjmodel.xml");
          auto [m, d] = load_mj(mj_path);

          mj_model = m;
          mj_data = d;

          // initialize visualization data structures
          mjv_defaultCamera(&cam);
          //            mjv_defaultPerturb(&pert);
          mjv_defaultOption(&opt);
          mjr_defaultContext(&con);

          mjv_makeScene(mj_model, &scn, 1000);
          mjr_makeContext(mj_model, &con, mjFONTSCALE_100);

          field_viewport.init(800, 600);
          brain_screen = new brain_screen_shape();

          std::cout << "loaded urdf\n";

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
            mjtNum simstart = mj_data->time;
            while (mj_data->time - simstart < 1.0 / 60.0)
              mj_step(mj_model, mj_data);

            // get framebuffer viewport
            mjrRect viewport = {0, 0, static_cast<int>(field_viewport.width),
                                static_cast<int>(field_viewport.height)};

            // update scene and render
            mjv_updateScene(mj_model, mj_data, &opt, NULL, &cam, mjCAT_ALL, &scn);
            mjr_render(viewport, &scn, &con);

            field_viewport.deactivate();
        }
    } // namespace renderer
}
