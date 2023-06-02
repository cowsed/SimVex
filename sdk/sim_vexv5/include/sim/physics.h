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
        phys_id add_dynamic_mesh(btScalar mass, std::unique_ptr<btCollisionShape> shape, btTransform startTransform);
        phys_id add_static_mesh(std::unique_ptr<btCollisionShape> shape, btTransform startTransform);

        glm::mat4 get_transform_matrix(phys_id object);

        void build_ui();
        void setup_gl();

        void draw_db_world(glm::mat4 persp, glm::mat4 view);

    } // namespace physics
} // namespace sim
