cmake_minimum_required(VERSION 3.5)

project(BuilderProject LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)




set(COMPILE_FLAGS -O2 -Wall -Werror=return-type -Wextra -ggdb)
set(C_FLAGS ${COMPILE_FLAGS})
set(CXX_FLAGS ${COMPILE_FLAGS})

set(project_headers
    include/part_definition.hpp
    include/ui.hpp
    include/gfx_util.hpp
    include/part_instance.hpp
    include/model.hpp
    include/image_load.hpp


)

set(project_sources
    src/main.cpp

    src/ui.cpp
    src/gfx_util.cpp
    src/model.cpp
    src/part_definition.cpp
    src/part_instance.cpp
    src/image_load.cpp



    vendor/imgui/imgui.cpp
    vendor/imgui/imgui_widgets.cpp
    vendor/imgui/imgui_demo.cpp
    vendor/imgui/imgui_draw.cpp
    vendor/imgui/imgui_tables.cpp

    vendor/imgui/backends/imgui_impl_glfw.cpp
    vendor/imgui/backends/imgui_impl_opengl3.cpp

)

add_executable(Builder ${project_sources}
    ${project_headers}
    src/part_instance.cpp
    include/part_catalog.h
    src/part_catalog.cpp
    src/shaders/obj.frag
    src/shaders/obj.vert
)

include(GNUInstallDirs)
install(TARGETS Builder
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)


target_include_directories(Builder PUBLIC include vendor/imgui vendor/stb vendor/OBJ-Loader/Source)

find_package(nlohmann_json 3.11.2 REQUIRED)
target_link_libraries(Builder PRIVATE nlohmann_json::nlohmann_json glfw GL GLEW)
