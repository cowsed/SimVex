#include "sim/physics.h"
#include "imgui.h"
#include <iostream>
#include <map>

/// collision configuration contains default setup for memory, collision setup. Advanced users can create their own configuration.
static btDefaultCollisionConfiguration *collisionConfiguration;

/// use the default collision dispatcher. For parallel processing you can use a diffent dispatcher (see Extras/BulletMultiThreaded)
static btCollisionDispatcher *dispatcher;

/// btDbvtBroadphase is a good general purpose broadphase. You can also try out btAxis3Sweep.
static btBroadphaseInterface *overlappingPairCache;

/// the default constraint solver. For parallel processing you can use a different solver (see Extras/BulletMultiThreaded)
static btSequentialImpulseConstraintSolver *solver;

static btDiscreteDynamicsWorld *dynamicsWorld;

// keep track of the shapes, we release memory at exit.
// make sure to re-use collision shapes among rigid bodies whenever possible!
static btAlignedObjectArray<btCollisionShape *> collisionShapes;

const float g = -9.8;

struct phys_object
{
    std::unique_ptr<btCollisionShape> shape;
    btScalar mass;
    btVector3 local_inertia;
    std::unique_ptr<btDefaultMotionState> motion_state;
};

std::map<sim::physics::phys_id, phys_object> physics_objects;

sim::physics::phys_id phys_id_count = 0;
sim::physics::phys_id get_phys_id()
{
    phys_id_count++;
    return phys_id_count;
}

sim::physics::phys_id sim::physics::add_static_mesh(std::unique_ptr<btCollisionShape> shape, btTransform startTransform)
{
    sim::physics::phys_id my_id = get_phys_id();

    btScalar mass(0.f);
    btVector3 localInertia(0, 0, 0);

    // using motionstate is recommended, it provides interpolation capabilities, and only synchronizes 'active' objects
    std::unique_ptr myMotionState = std::make_unique<btDefaultMotionState>(startTransform);

    btRigidBody::btRigidBodyConstructionInfo rbInfo(mass, myMotionState.get(), shape.get(), localInertia);
    btRigidBody *body = new btRigidBody(rbInfo);
    body->setFriction(.5);

    dynamicsWorld->addRigidBody(body);

    // save info for later
    phys_object obj = phys_object{std::move(shape), mass, localInertia, std::move(myMotionState)};

    physics_objects[my_id] = std::move(obj);
    return my_id;
}

sim::physics::phys_id sim::physics::add_dynamic_mesh(btScalar mass, std::unique_ptr<btCollisionShape> shape, btTransform startTransform)
{
    // create a dynamic rigidbody
    sim::physics::phys_id my_id = get_phys_id();

    // rigidbody is dynamic if and only if mass is non zero, otherwise static
    bool isDynamic = (mass != 0.f);

    btVector3 localInertia(0, 0, 0);
    if (isDynamic)
        shape->calculateLocalInertia(mass, localInertia);

    // using motionstate is recommended, it provides interpolation capabilities, and only synchronizes 'active' objects
    std::unique_ptr<btDefaultMotionState> myMotionState = std::make_unique<btDefaultMotionState>(startTransform);
    btRigidBody::btRigidBodyConstructionInfo rbInfo(mass, myMotionState.get(), shape.get(), localInertia);
    btRigidBody *body = new btRigidBody(rbInfo);
    body->setFriction(2.5);

    dynamicsWorld->addRigidBody(body);

    // save info for later
    phys_object obj = phys_object{std::move(shape), mass, localInertia, std::move(myMotionState)};

    physics_objects[my_id] = std::move(obj);
    return my_id;
}

glm::mat4 sim::physics::get_transform_matrix(sim::physics::phys_id id)
{
    auto motion_state = physics_objects[id].motion_state.get();
    btTransform trans;

    if (motion_state == NULL)
    {
        std::cout << "No Motion state for id: " << id << '\n';
        glm::mat4 ident = glm::mat4{1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1};
        return ident;
    }

    motion_state->getWorldTransform(trans);
    glm::mat4 ret;
    trans.getOpenGLMatrix(&(ret[0][0]));
    return ret;
}

void step_physics()
{
    dynamicsWorld->stepSimulation(1.f / 60.f, 10);
}

void sim::physics::build_ui()
{
    ImGui::Begin("Physics");
    if (ImGui::Button("Step Physics"))
    {
    }
    if (ImGui::IsItemHovered())
    {
        step_physics();
    }
    ImGui::End();
}

void sim::physics::setup()
{
    collisionConfiguration = new btDefaultCollisionConfiguration();
    dispatcher = new btCollisionDispatcher(collisionConfiguration);
    overlappingPairCache = new btDbvtBroadphase();
    solver = new btSequentialImpulseConstraintSolver;
    dynamicsWorld = new btDiscreteDynamicsWorld(dispatcher, overlappingPairCache, solver, collisionConfiguration);
    dynamicsWorld->setGravity(btVector3(0, g, 0));
    std::cout << "starint physics\n";
}
