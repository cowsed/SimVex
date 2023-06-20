cmake_minimum_required(VERSION 3.5)


project(libsimv5rt LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(COMPILE_FLAGS -O2 -Wall -Werror=return-type -Wextra -ggdb
-DMODEL_PATH="\"$(VEX_SIM_MODEL_PATH)\""
)


set(C_FLAGS ${COMPILE_FLAGS})
set(CXX_FLAGS ${COMPILE_FLAGS} --std=gnu++20)






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
    src/sim/physics.cpp
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


    vendor/imgui/imgui.cpp
    vendor/imgui/imgui_widgets.cpp
    vendor/imgui/imgui_demo.cpp
    vendor/imgui/imgui_draw.cpp
    vendor/imgui/imgui_tables.cpp

    vendor/imgui/backends/imgui_impl_glfw.cpp
    vendor/imgui/backends/imgui_impl_opengl3.cpp

    )


#include vendor/imgui/ vendor/ vendor/assimp/include vendor/bullet3/src
set(project_headers 
    include/sim/graphics/brain_fonts/noto_sans_mono_15.h
    include/sim/graphics/brain_fonts/noto_sans_mono_12.h
    include/sim/graphics/brain_fonts/noto_sans_mono_20.h
    include/sim/graphics/brain_fonts/noto_sans_mono_30.h
    include/sim/graphics/brain_fonts/noto_sans_mono_40.h
    include/sim/graphics/brain_fonts/noto_sans_mono_50.h
    include/sim/graphics/brain_fonts/noto_sans_mono_60.h
    include/sim/graphics/brain_fonts/font_common.h

    include/sim/graphics/brain_screen.h
    include/sim/graphics/render_common.h
    include/sim/graphics/renderer.h
    include/sim/graphics/skybox.h
    include/sim/graphics/ui.h
    include/sim/graphics/window.h

    include/sim/3d_model.h
    include/sim/controller.h
    include/sim/events.h
    include/sim/physics.h
    include/sim/sim.h
    include/sim/terminal.h
    include/sim/time.h
    include/sim/urdf_loader.h
    include/sim/util.h

    include/v5_api.h
    include/v5_apitypes.h
    include/v5_apiuser.h
    include/vex_brain.h
    include/vex_color.h
    include/vex_competition.h
    include/vex_controller.h
    include/vex_device.h
    include/vex_global.h
    include/vex_imu.h
    include/vex_mevent.h
    include/vex_motor.h
    include/vex_motorgroup.h
    include/vex_optical.h
    include/vex_rotation.h
    include/vex_task.h
    include/vex_thread.h
    include/vex_timer.h
    include/vex_triport.h
    include/vex_units.h
    include/vex_vision.h

)

add_library(simv5rt STATIC ${project_sources} )

#39s
# include_directories(include vendor/imgui/ vendor/ vendor/assimp/include vendor/bullet3/src)

#29s pch

target_include_directories(simv5rt PUBLIC include vendor/imgui/ vendor/assimp/include vendor/)


# target_precompile_headers(simv5rt PUBLIC ${project_headers})

