#include "sim/graphics/window.h"
#include <stdio.h>
#include <thread>

#include <GL/glew.h>
#include <GLFW/glfw3.h>
// #include <GL/glcorearb.h>

#include "sim/util.h" 
#include "sim/time.h"
#include "sim/events.h"
#include "sim/physics.h"
#include "sim/3d_model.h"
#include "sim/controller.h"


#include "sim/graphics/ui.h"
#include "sim/graphics/embedded_font.h"
#include "sim/graphics/renderer.h"
#include "sim/graphics/sim_brain.h"

#include "imgui.h"
#include "backends/imgui_impl_glfw.h"
#include "backends/imgui_impl_opengl3.h"

namespace sim
{

    bool show_gl_notis = false; // opengl *notifications* arent really needed and often clog up output
    std::thread render_thread;
    GLFWwindow *window;
    ImFont *main_font;
    const float font_size = 18;

    static void glfwError(int id, const char *description)
    {
        std::cout << "GLFW CALLBACK:\t" << description << std::endl;
    }

    void glError(GLenum source, GLenum type, GLuint id,
                 GLenum severity, GLsizei length,
                 const GLchar *msg, const void *data)
    {
        std::string _source;
        std::string _type;
        std::string _severity;

        switch (source)
        {
        case GL_DEBUG_SOURCE_API:
            _source = "API";
            break;

        case GL_DEBUG_SOURCE_WINDOW_SYSTEM:
            _source = "WINDOW SYSTEM";
            break;

        case GL_DEBUG_SOURCE_SHADER_COMPILER:
            _source = "SHADER COMPILER";
            break;

        case GL_DEBUG_SOURCE_THIRD_PARTY:
            _source = "THIRD PARTY";
            break;

        case GL_DEBUG_SOURCE_APPLICATION:
            _source = "APPLICATION";
            break;

        case GL_DEBUG_SOURCE_OTHER:
            _source = "UNKNOWN";
            break;

        default:
            _source = "UNKNOWN";
            break;
        }

        switch (type)
        {
        case GL_DEBUG_TYPE_ERROR:
            _type = "\033[1;31mERROR\033[0m";
            break;

        case GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR:
            _type = "DEPRECATED BEHAVIOR";
            break;

        case GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR:
            _type = "UDEFINED BEHAVIOR";
            break;

        case GL_DEBUG_TYPE_PORTABILITY:
            _type = "PORTABILITY";
            break;

        case GL_DEBUG_TYPE_PERFORMANCE:
            _type = "PERFORMANCE";
            break;

        case GL_DEBUG_TYPE_OTHER:
            _type = "OTHER";
            break;

        case GL_DEBUG_TYPE_MARKER:
            _type = "MARKER";
            break;

        default:
            _type = "UNKNOWN";
            break;
        }

        switch (severity)
        {
        case GL_DEBUG_SEVERITY_HIGH:
            _severity = "HIGH";
            break;

        case GL_DEBUG_SEVERITY_MEDIUM:
            _severity = "MEDIUM";
            break;

        case GL_DEBUG_SEVERITY_LOW:
            _severity = "LOW";
            break;

        case GL_DEBUG_SEVERITY_NOTIFICATION:
            _severity = "NOTIFICATION";
            if (!show_gl_notis)
            {
                return;
            }
            break;

        default:
            _severity = "UNKNOWN";
            break;
        }
        std::cerr << "\033[1;32mOPENGL:\033[0m\t";
        std::cerr << id << ": " << _type << " of " << _severity << " severity, raised from " << _source << ": " << msg << std::endl;
    }

    static void resize_callback(GLFWwindow *window, int width, int height)
    {
        printf("Window resized to %dx%d\n", width, height);

        // Resize imgui window to os window
    }

    void imguiNewFrame()
    {
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();

        ImGui::PushFont(main_font);
    }

    bool imguiSetup()
    {
        // ImGui::Text
        IMGUI_CHECKVERSION();
        ImGui::CreateContext();

        ImGuiIO &io = ImGui::GetIO();
        io.ConfigFlags |= ImGuiConfigFlags_DockingEnable;
        io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard; // Enable Keyboard Controls

        (void)io;
        ImGui_ImplGlfw_InitForOpenGL(window, true);
        ImGui_ImplOpenGL3_Init((char *)glGetString(GL_NUM_SHADING_LANGUAGE_VERSIONS));
        main_font = io.Fonts->AddFontFromMemoryCompressedTTF(embedded_font_compressed_data, embedded_font_compressed_size, font_size);


        return true;
    }

    /// @brief Render imgui to screen. Call this last after all simulation renderring happens
    void imguiRender()
    {
        ImGui::PopFont();
        ImGui::Render();
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
    }

    /// @brief Destruct Imgui
    void imguiCleanup()
    {
        ImGui_ImplOpenGL3_Shutdown();
        ImGui_ImplGlfw_Shutdown();
        ImGui::DestroyContext();
    }
    /// @brief  Destruct Main Window
    void cleanUpWindow()
    {

        printf("Destroying Window\n");
        imguiCleanup();
        glfwDestroyWindow(window);

        glfwTerminate();

        printf("exitting 0\n");
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

        //        glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
        //        glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
        window = glfwCreateWindow(1200, 800, "Vex Sim", NULL, NULL);

        if (!window)
        {
            // Window or OpenGL context creation failed
            printf("Failed to Create Window");
            return false;
        }
        glfwMakeContextCurrent(window);

        GLenum err = glewInit();

        if (GLEW_OK != err) {
            /* Problem: glewInit failed, something is seriously wrong. */
            fprintf(stderr, "Error: %s\n", glewGetErrorString(err));
            return false;
        }

        glEnable(GL_DEBUG_OUTPUT);
        glDebugMessageCallback(glError, 0);

        glfwSetWindowSizeCallback(window, resize_callback);

        if (!imguiSetup())
        {
            return false;
        }

        // print stats
        printf("GLFW Version: %d.%d\n", GLFW_VERSION_MAJOR, GLFW_VERSION_MINOR);
        GLint gl_major;
        GLint gl_minor;
        glGetIntegerv(GL_MAJOR_VERSION, &gl_major);
        glGetIntegerv(GL_MINOR_VERSION, &gl_minor);
        printf("OpenGL Version: %d.%d\n", gl_major, gl_minor);
        printf("Dear ImGui Version: %s\n", ImGui::GetVersion());
        printf("SimVex Version: %s, %s\n", __DATE__, __TIME__);
        // printf("GL Extension %s\n", glGetStringi(GL_EXTENSIONS, 0));

        return true;
    }
    void cleanupAll()
    {
        // stop any background threads
        // We're really done
        sim::event_handler::end_all_mevents();
        sim::time_end();
        // sim::construction::cleanup();

        cleanUpWindow();
    }
    bool mainLoop()
    {
        bool didSetup = setupWindow();
        if (!didSetup)
        {
            cleanUpWindow();
            return true;
        }
        glfwMakeContextCurrent(window);
        physics::setup();
        renderer::setup();
        construction::setup();
        brain_screen::setup();
        controller::setup();
        event_handler::setup();
        sim::time_start();

        while (!glfwWindowShouldClose(window))
        {
            sim::controller::poll_joysticks();
            imguiNewFrame();

            drawUI(window);

            brain_screen::render_to_tex();
            renderer::render();

            // Where ImGui data is drawn to the screen - actual creation of UI should happen before this
            imguiRender();
            glfwSwapBuffers(window);
            glfwPollEvents();
        }
        printf("out of main loop\n");
        cleanupAll();
        return true;
    }

    [[nodiscard]] bool initWindow()
    {

        // Begin window processing on other thread
        render_thread = std::thread(mainLoop);

        return true;
    }

}
