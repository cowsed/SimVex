#include "sim/physics.h"
#include "imgui.h"
#include <iostream>
#include <map>

#include "sim/graphics/render_common.h"
#include <GL/glew.h>
#include <GL/glcorearb.h>

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

sim::physics::phys_id sim::physics::add_static_mesh(std::unique_ptr<btCollisionShape> shape, btTransform startTransform, btScalar friction)
{
    sim::physics::phys_id my_id = get_phys_id();

    btScalar mass(0.f);
    btVector3 localInertia(0, 0, 0);

    // using motionstate is recommended, it provides interpolation capabilities, and only synchronizes 'active' objects
    std::unique_ptr myMotionState = std::make_unique<btDefaultMotionState>(startTransform);

    btRigidBody::btRigidBodyConstructionInfo rbInfo(mass, myMotionState.get(), shape.get(), localInertia);
    btRigidBody *body = new btRigidBody(rbInfo);
    body->setFriction(friction);

    dynamicsWorld->addRigidBody(body);

    // save info for later
    phys_object obj = phys_object{std::move(shape), mass, localInertia, std::move(myMotionState)};

    physics_objects[my_id] = std::move(obj);
    return my_id;
}

sim::physics::phys_id sim::physics::add_dynamic_mesh(btScalar mass, std::unique_ptr<btCollisionShape> shape, btTransform startTransform, btScalar friction, btScalar rolling_friction)
{
    // create a dynamic rigidbody
    sim::physics::phys_id my_id = get_phys_id();

    // rigidbody is dynamic if and only if mass is non zero, otherwise static
    bool isDynamic = (mass != 0.f);

    btVector3 localInertia(0, 0, 0);
    if (isDynamic)
        shape->calculateLocalInertia(mass, localInertia);

    std::cout << "localInertia: " << localInertia.x() << ", " << localInertia.y() << ", " << localInertia.z() << '\n';

    // using motionstate is recommended, it provides interpolation capabilities, and only synchronizes 'active' objects
    std::unique_ptr<btDefaultMotionState> myMotionState = std::make_unique<btDefaultMotionState>(startTransform);
    btRigidBody::btRigidBodyConstructionInfo rbInfo(mass, myMotionState.get(), shape.get(), localInertia);
    btRigidBody *body = new btRigidBody(rbInfo);
    body->setFriction(friction);
    body->setRollingFriction(rolling_friction);
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

void sim::physics::add_rigid_body(btRigidBody *body)
{
    get_phys_id();
    dynamicsWorld->addRigidBody(body);
}

void sim::physics::add_constraint(btTypedConstraint *constraint){
    dynamicsWorld->addConstraint(constraint);
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

// Helper class; draws the world as seen by Bullet.
// This is very handy to see it Bullet's world matches yours
// How to use this class :
// Declare an instance of the class :
//
// dynamicsWorld->setDebugDrawer(&mydebugdrawer);
// Each frame, call it :
// mydebugdrawer.SetMatrices(ViewMatrix, ProjectionMatrix);
// dynamicsWorld->debugDrawWorld();
GLuint VBO, VAO;
sim::renderer::ShaderProgram line_shader;
class BulletDebugDrawer_OpenGL : public btIDebugDraw
{
public:
    void SetMatrices(glm::mat4 pViewMatrix, glm::mat4 pProjectionMatrix)
    {
        line_shader.activate();
        glUniformMatrix4fv(glGetUniformLocation(line_shader.program, "projection"), 1, GL_FALSE, &(pProjectionMatrix[0][0]));
        glUniformMatrix4fv(glGetUniformLocation(line_shader.program, "view"), 1, GL_FALSE, &(pViewMatrix[0][0]));
    }

    virtual void drawLine(const btVector3 &from, const btVector3 &to, const btVector3 &color)
    {
        // Vertex data
        GLfloat points[12];

        points[0] = from.x();
        points[1] = from.y();
        points[2] = from.z();
        points[3] = color.x();
        points[4] = color.y();
        points[5] = color.z();

        points[6] = to.x();
        points[7] = to.y();
        points[8] = to.z();
        points[9] = color.x();
        points[10] = color.y();
        points[11] = color.z();

        glDeleteBuffers(1, &VBO);
        glDeleteVertexArrays(1, &VAO);
        glGenBuffers(1, &VBO);
        glGenVertexArrays(1, &VAO);
        glBindVertexArray(VAO);
        glBindBuffer(GL_ARRAY_BUFFER, VBO);
        glBufferData(GL_ARRAY_BUFFER, sizeof(points), &points, GL_STATIC_DRAW);
        glEnableVertexAttribArray(0);
        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(GLfloat), 0);
        glEnableVertexAttribArray(1);
        glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(GLfloat), (GLvoid *)(3 * sizeof(GLfloat)));
        glBindVertexArray(0);

        glBindVertexArray(VAO);
        glDrawArrays(GL_LINES, 0, 2);
        glBindVertexArray(0);
    }
    virtual void drawContactPoint(const btVector3 &, const btVector3 &, btScalar, int, const btVector3 &) {}
    virtual void reportErrorWarning(const char *) {}
    virtual void draw3dText(const btVector3 &, const char *) {}
    virtual void setDebugMode(int p)
    {
        m = p;
    }
    int getDebugMode(void) const { return 3; }
    int m;
};
static BulletDebugDrawer_OpenGL *my_drawer;

static char *line_frag_shader = "#version 330 core\n"
                                "in vec3 fColor;\n"
                                "out vec4 color;\n"
                                "\n"
                                "void main()\n"
                                "{\n"
                                "    color = vec4(fColor.x, fColor.y, fColor.z, 1.0);\n"
                                "}\n"
                                "";
static char *line_vert_shader = "#version 330 core\n"
                                "layout (location = 0) in vec3 position;\n"
                                "layout (location = 1) in vec3 color;\n"
                                "out vec3 fColor;\n"
                                "\n"
                                "uniform mat4 projection;\n"
                                "uniform mat4 view;\n"
                                "\n"
                                "void main()\n"
                                "{\n"
                                "   gl_Position = projection * view * vec4(position, 1.0f);\n"
                                "   fColor = color;\n"
                                "\n"
                                "}";

void sim::physics::setup()
{
    collisionConfiguration = new btDefaultCollisionConfiguration();
    dispatcher = new btCollisionDispatcher(collisionConfiguration);
    overlappingPairCache = new btDbvtBroadphase();
    solver = new btSequentialImpulseConstraintSolver;
    dynamicsWorld = new btDiscreteDynamicsWorld(dispatcher, overlappingPairCache, solver, collisionConfiguration);
    dynamicsWorld->setGravity(btVector3(0, g, 0));

    // Debug Drawer
    line_shader = sim::renderer::ShaderProgram(line_vert_shader, line_frag_shader);
    my_drawer = new BulletDebugDrawer_OpenGL();
    dynamicsWorld->setDebugDrawer(my_drawer);
    std::cout << "starint physics\n";
}

void sim::physics::draw_db_world(glm::mat4 persp, glm::mat4 view)
{
    line_shader.activate();
    my_drawer->SetMatrices(view, persp);
    dynamicsWorld->debugDrawWorld();
}
