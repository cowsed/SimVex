#include "sim/physics.h"
#include <iostream>
#include "btBulletDynamicsCommon.h"

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
