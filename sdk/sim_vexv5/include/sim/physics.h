#pragma once
#include <memory>
#include <glm/vec3.hpp>
#include <glm/mat4x4.hpp>
#include "btBulletDynamicsCommon.h"


namespace sim
{
    namespace physics
    {
        typedef int phys_id;
        void setup();
        phys_id add_static_mesh(std::unique_ptr<btCollisionShape> shape);
        phys_id add_dynamic_mesh(float mass);

        glm::mat4 get_transform_matrix(phys_id object);

    } // namespace physics
} // namespace sim
