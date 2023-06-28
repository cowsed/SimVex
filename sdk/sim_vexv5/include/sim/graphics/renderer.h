#pragma once

#include "sim/graphics/render_common.h"

namespace sim
{
  namespace renderer
  {

    extern RenderTarget field_viewport;
    void move_camera(float dx, float dy, float dz);

    void setup();
    void render();
    void build_ui();

  } // namespace renderer
}
