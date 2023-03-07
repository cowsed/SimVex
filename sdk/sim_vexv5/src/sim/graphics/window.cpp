#include "sim/graphics/window.h"


namespace sim
{

    bool show_gl_notis = false; // opengl notifications arent really needed and often clog up output
    std::thread render_thread;
    GLFWwindow *window;
    ImFont* main_font;
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
            if (!show_gl_notis){
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

    bool test_render()
    {
        int width, height;
        glfwGetFramebufferSize(window, &width, &height);
        glViewport(0, 0, width, height);
        glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT + GL_DEPTH_BUFFER_BIT);
        return true;
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
        io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;     // Enable Keyboard Controls
        
        (void)io;
        ImGui::StyleColorsDark();
        ImGui_ImplGlfw_InitForOpenGL(window, true);
        ImGui_ImplOpenGL3_Init((char *)glGetString(GL_NUM_SHADING_LANGUAGE_VERSIONS));

        main_font = io.Fonts->AddFontFromMemoryCompressedTTF(embedded_font_compressed_data, embedded_font_compressed_size, font_size);

        ImGui::StyleColorsDark();
        //setRedStyle();
        return true;
    }

    // Render imgui to screen. Call this last after all simulation renderring happens
    void imguiRender()
    {
        ImGui::PopFont();
        ImGui::Render();
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
    }
    
    // Destruct Imgui
    void imguiCleanup()
    {
        ImGui_ImplOpenGL3_Shutdown();
        ImGui_ImplGlfw_Shutdown();
        ImGui::DestroyContext();
    }
    // Destruct Main Window
    void cleanUpWindow()
    {
        printf("Destroying Window\n");
        imguiCleanup();
        glfwDestroyWindow(window);

        glfwTerminate();

        // stop any background threads
        // We're really done
        sim_time_end();
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
        window = glfwCreateWindow(800, 600, "Vex Sim", NULL, NULL);

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

        glEnable(GL_DEBUG_OUTPUT);
        glDebugMessageCallback(glError, 0);

        glfwSetWindowSizeCallback(window, resize_callback);

        if (!imguiSetup())
        {
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
        brain_screen::setup();
        // glfwSetKeyCallback(window, key_callback);

        sim_time_start();
        while (!glfwWindowShouldClose(window))
        {
            imguiNewFrame();

            drawUI(window);

            brain_screen::render_to_tex();

            test_render();

            // Where ImGui data is drawn to the screen - actual creation of UI should happen before this
            imguiRender();

            glfwSwapBuffers(window);
            glfwPollEvents();
        }
        printf("out of main loop\n");
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