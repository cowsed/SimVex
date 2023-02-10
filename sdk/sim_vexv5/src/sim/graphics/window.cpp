#include "include/sim/graphics/window.h"

namespace sim
{
    std::thread render_thread;
    GLFWwindow *window;

    static void glfwError(int id, const char *description)
    {
        std::cout << "GLFW CALLBACK:\t" << description << std::endl;
    }

    static void key_callback(GLFWwindow *window, int key, int scancode, int action, int mods)
    {
        if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
        {
            sim::printf("ESC Pressed\n");
            glfwSetWindowShouldClose(window, GLFW_TRUE);
        }
    }

    bool test_render()
    {
        int width, height;
        glfwGetFramebufferSize(window, &width, &height);
        glViewport(0, 0, width, height);
        glClearColor(1.0f, 0.0f, 1.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT + GL_DEPTH_BUFFER_BIT);
        return true;
    }

    void cleanUpWindow()
    {
        sim::printf("Destroying Window\n");
        glfwDestroyWindow(window);

        glfwTerminate();
        // We're really done
        exit(0);
    }

    bool setupWindow()
    {
        glfwSetErrorCallback(&glfwError);
        if (!glfwInit())
        {
            printf("Failed to init GLFW");
            return false;
        }

        glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
        glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
        window = glfwCreateWindow(640, 480, "My Title", NULL, NULL);

        if (!window)
        {
            // Window or OpenGL context creation failed
            printf("Failed to Create Window");
            return false;
        }
        glfwMakeContextCurrent(window);

        GLenum err = glewInit();
        if (GLEW_OK != err)
        {
            /* Problem: glewInit failed, something is seriously wrong. */
            fprintf(stderr, "Error: %s\n", glewGetErrorString(err));
            return false;
        }

        return true;
    }
    bool mainLoop()
    {
        bool didSetup = setupWindow();
        if (!didSetup)
        {
            cleanUpWindow();
        }
        glfwMakeContextCurrent(window);
        glfwSetKeyCallback(window, key_callback);

        while (!glfwWindowShouldClose(window))
        {
            sim::printf("in main loop\n");

            test_render();

            glfwSwapBuffers(window);
            glfwPollEvents();
        }
        sim::printf("out of main loop\n");
        cleanUpWindow();
        return true;
    }

    [[nodiscard]] bool initWindow()
    {

        // Begin window processing on other thread
        render_thread = std::thread(mainLoop);

        return true;
    }

}