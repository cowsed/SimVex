#pragma once
#include <glm/vec3.hpp>
#include <glm/mat4x4.hpp>
#include "btBulletDynamicsCommon.h"

namespace sim
{
    namespace physics
    {
        typedef int phys_id;
        void setup();
        phys_id add_dynamic_mesh(btScalar mass, btCollisionShape * shape, btTransform startTransform, btScalar friction, btScalar rolling_friction);
        phys_id add_static_mesh(btCollisionShape *shape, btTransform startTransform, btScalar friction);

        glm::mat4 get_transform_matrix(phys_id object);


        void add_constraint(btTypedConstraint *constraint);

        void add_rigid_body(btRigidBody *body);

        void build_ui();

        void draw_db_world(glm::mat4 persp, glm::mat4 view);

    } // namespace physics
} // namespace sim
