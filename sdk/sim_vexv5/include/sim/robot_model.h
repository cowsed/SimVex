#pragma once

#include <vector>
#include <map>
#include <string>
#include <fstream>
#include <iostream>
#include <thread>
#include <chrono>

#include "imgui.h"

#include "sim/graphics/render_common.h"

namespace sim
{
    namespace construction
    {

        class MeshShape : Shape
        {
        public:
            struct Vertex
            {
                glm::vec3 position;
                glm::vec3 normal;
                glm::vec3 texture_coords;
            };
            MeshShape(std::vector<Vertex> vertices, std::vector<unsigned int> indices, unsigned int tex_handle_tbd);

            private:
            unsigned int vao, vbo, ibo;
            void initGL();
        };

    }
}