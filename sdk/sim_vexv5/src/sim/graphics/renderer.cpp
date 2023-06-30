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

#include "mujoco/mujoco.h"

// MODEL_PATH is defined by the makefile. this guard is only here to make the IDE be quiet
#ifndef MODEL_PATH
#define MODEL_PATH "./"
#endif

char *option_names[] = {
    (char *)"Convex Hull",
    (char *)"Texture",
    (char *)"Joint",
    (char *)"Camera",
    (char *)"Actuator",
    (char *)"Activation",
    (char *)"Light",
    (char *)"Tendon",
    (char *)"Range finder",
    (char *)"Constraints",
    (char *)"Inertia",
    (char *)"SCLINERTIA",
    (char *)"Perturbation Force",
    (char *)"Perturbation Object",
    (char *)"Contact Point",
    (char *)"Contact Force",
    (char *)"Contact Split",
    (char *)"Transparent",
    (char *)"Autoconnect",
    (char *)"Center of Mass",
    (char *)"Select",
    (char *)"Static Objects",
    (char *)"Skin",
    (char *)"Midphase",
    (char *)"Mesh BVH",
};
const int num_options = mjtVisFlag::mjNVISFLAG;

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
        RenderTarget field_viewport;

        brain_screen_shape *brain_screen;

        mjModel *mj_model = NULL; // MuJoCo model
        mjData *mj_data = NULL;   // MuJoCo data
        mjvCamera cam;            // abstract camera
        mjvOption opt;            // visualization options
        mjvScene scn;             // abstract scene
        mjrContext con;           // custom GPU context

        bool draw_segment = false;

        void move_camera(float dx, float dy, float dz)
        {
          float width = field_viewport.width;
          float height = field_viewport.height;

          mjv_moveCamera(mj_model, mjMOUSE_ROTATE_H, dx / width, dy / height, &scn, &cam);
          mjv_moveCamera(mj_model, mjMOUSE_ZOOM, 0, dz / 100.0, &scn, &cam);
        }

        void setup()
        {

          setup_common();
          auto start = std::chrono::steady_clock::now();

          auto mj_path = std::string(MODEL_PATH) + std::string("mymodel.xml");
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
          scn.flags[mjtRndFlag::mjRND_SHADOW] = false;

          field_viewport.init(800, 600);
          brain_screen = new brain_screen_shape();

          auto end = std::chrono::steady_clock::now();

          std::cout << "Loaded models time in seconds: "
                    << std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count()
                    << " millisec\n";
        }

        void build_ui()
        {
          ImGui::Begin("Render Settings");
          if (ImGui::Button("restart")) {
            mj_resetData(mj_model, mj_data);
            mj_forward(mj_model, mj_data);
          }

          if (ImGui::CollapsingHeader("Render Options")) {
            for (int i = 0; i < num_options; i++) {
              ImGui::Checkbox(option_names[i], (bool *)(&opt.flags[i]));
            }
          }

          if (ImGui::CollapsingHeader("Render Flags")) {
            for (int i = 0; i < 10; i++) {
              ImGui::Checkbox(mjRNDSTRING[i][0], (bool *)(&scn.flags[i]));
            }
          }

          ImGui::End();
        }

        void render()
        {
          field_viewport.activate();
          glEnable(GL_FRAMEBUFFER_SRGB_EXT);
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
          glDisable(GL_FRAMEBUFFER_SRGB_EXT);
        }
    } // namespace renderer
}
