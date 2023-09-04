#include <iostream>
#include <nlohmann/json.hpp>

#include "model.hpp"
#include "part_catalog.h"
#include "ui.hpp"

int main() {
    ui::setup_window();
    parts::init(modeller::parts_directory);

    while (ui::is_open()) {
        ui::pre_render();

        glClearColor(0.4, 0.0, 0.0, 1.0);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        //        glFrontFace(GL_CW);
        //        glDisable(GL_CULL_FACE);
        parts::build_ui();

        ui::post_render();
    }
    return 0;
}
