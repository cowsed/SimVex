#include "sim/physics.h"
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

sim::physics::phys_id add_static_mesh(std::unique_ptr<btCollisionShape> shape, btTransform startTransform)
{
    sim::physics::phys_id my_id = get_phys_id();

    btScalar mass(0.f);
    btVector3 localInertia(0, 0, 0);

    // using motionstate is recommended, it provides interpolation capabilities, and only synchronizes 'active' objects
    std::unique_ptr myMotionState = std::make_unique<btDefaultMotionState>(startTransform);

    btRigidBody::btRigidBodyConstructionInfo rbInfo(mass, myMotionState.get(), shape.get(), localInertia);
    btRigidBody *body = new btRigidBody(rbInfo);

    dynamicsWorld->addRigidBody(body);

    // save info for later
    phys_object obj = phys_object{std::move(shape), mass, localInertia, std::move(myMotionState)};

    physics_objects[my_id] = std::move(obj);
    return my_id;
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
