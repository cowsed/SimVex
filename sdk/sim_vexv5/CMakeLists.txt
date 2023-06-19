cmake_minimum_required(VERSION 3.5)


project(libsimv5rt LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(COMPILE_FLAGS -O2 -Wall -Werror=return-type -Wextra -ggdb
-DMODEL_PATH="\"$(VEX_SIM_MODEL_PATH)\""
-DBT_USE_DOUBLE_PRECISION
-DASSIMP_BUILD_BOOST_WORKAROUND -DASSIMP_BUILD_NO_C4D_IMPORTER 
-DASSIMP_BUILD_NO_EXPORT -DASSIMP_BUILD_NO_IFC_IMPORTER -DASSIMP_BUILD_NO_OPENGEX_IMPORTER -DASSIMP_BUILD_NO_X3D_IMPORTER
-DASSIMP_BUILD_NO_M3D_IMPORTER
-DPUGIXML_HEADER_ONLY
)


set(C_FLAGS ${COMPILE_FLAGS})
set(CXX_FLAGS ${COMPILE_FLAGS} --std=gnu++20)


include_directories(include vendor/imgui/ vendor/ vendor/assimp/include vendor/bullet3/src)


set(project_sources 
    src/sim/graphics/brain_fonts/noto_sans_mono_12.cpp
    src/sim/graphics/brain_fonts/noto_sans_mono_15.cpp
    src/sim/graphics/brain_fonts/noto_sans_mono_20.cpp
    src/sim/graphics/brain_fonts/noto_sans_mono_30.cpp
    src/sim/graphics/brain_fonts/noto_sans_mono_40.cpp
    src/sim/graphics/brain_fonts/noto_sans_mono_50.cpp
    src/sim/graphics/brain_fonts/noto_sans_mono_60.cpp

    src/sim/graphics/brain_screen.cpp
    src/sim/graphics/render_common.cpp
    src/sim/graphics/renderer.cpp
    src/sim/graphics/skybox.cpp
    src/sim/graphics/ui.cpp
    src/sim/graphics/window.cpp
    
    src/sim/3d_model.cpp
    src/sim/controller.cpp
    src/sim/events.cpp
    src/sim/phyiscs.cpp
    src/sim/sim.cpp
    src/sim/terminal.cpp
    src/sim/time.cpp
    src/sim/urdf_loader.cpp
    src/sim/util.cpp
    
    src/v5_api.cpp
    src/v5_apitypes.cpp
    src/v5_apiuser.cpp
    src/vex_brain.cpp
    src/vex_color.cpp
    src/vex_competition.cpp
    src/vex_controller.cpp
    src/vex_device.cpp
    src/vex_global.cpp
    src/vex_imu.cpp
    src/vex_mevent.cpp
    src/vex_motor.cpp
    src/vex_motorgroup.cpp
    src/vex_optical.cpp
    src/vex_rotation.cpp
    src/vex_task.cpp
    src/vex_thread.cpp
    src/vex_timer.cpp
    src/vex_triport.cpp
    src/vex_units.cpp
    src/vex_vision.cpp

    )

set(project_headers include/my_vector.h)

add_library(simv5rt STATIC
             ${project_sources} )
