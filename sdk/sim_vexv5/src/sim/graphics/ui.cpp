#include "sim/graphics/ui.h"

namespace sim
{
    bool show_imgui_demo = false;
    bool show_imgui_stats = false;
    bool show_event_sender = false;

    void setupDockspace()
    {
        ImGuiDockNodeFlags dockspace_flags = ImGuiDockNodeFlags_None;
        ImGuiWindowFlags window_flags = ImGuiWindowFlags_None;

        const ImGuiViewport *viewport = ImGui::GetMainViewport();
        ImGui::SetNextWindowPos(viewport->WorkPos);
        ImGui::SetNextWindowSize(viewport->WorkSize);
        ImGui::SetNextWindowViewport(viewport->ID);
        ImGui::PushStyleVar(ImGuiStyleVar_WindowRounding, 0.0f);
        ImGui::PushStyleVar(ImGuiStyleVar_WindowBorderSize, 0.0f);
        window_flags |= ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoCollapse | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove;
        window_flags |= ImGuiWindowFlags_NoBringToFrontOnFocus | ImGuiWindowFlags_NoNavFocus;

        ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, ImVec2(0.0f, 0.0f));
        ImGui::Begin("dockspace_win", NULL, window_flags);
        ImGuiID dockspace_id = ImGui::GetID("my_dockspace");
        ImGui::DockSpace(dockspace_id, ImVec2(0.0f, 0.0f), dockspace_flags);
        ImGui::End();

        ImGui::PopStyleVar(3);
    }

    void drawMainMenuBar(GLFWwindow *window)
    {
        // Menu Bar
        ImGui::BeginMainMenuBar();
        if (ImGui::BeginMenu("File"))
        {
            if (ImGui::MenuItem("Quit", "Alt+F4"))
            {
                glfwSetWindowShouldClose(window, GLFW_TRUE);
            }

            ImGui::EndMenu();
        }

        if (ImGui::BeginMenu("View"))
        {
            if (ImGui::BeginMenu("Utilities"))
            {
                ImGui::Checkbox("Event Sender", &show_event_sender);
                ImGui::EndMenu();
            }

            ImGui::EndMenu();
        }

        if (ImGui::BeginMenu("About"))
        {
            ImGui::MenuItem("About SimVex");

            if (ImGui::BeginMenu("ImGui"))
            {
                ImGui::Checkbox("Show Demo Window", &show_imgui_demo);
                ImGui::Checkbox("Show Metrics Window", &show_imgui_stats);

                ImGui::EndMenu();
            }

            ImGui::Separator();

            ImGui::EndMenu();
        }
        ImGui::EndMainMenuBar();
    }

    void drawDemoAndMetrics()
    {
        // Demo
        if (show_imgui_demo)
        {
            ImGui::ShowDemoWindow(&show_imgui_demo);
        }

        // Stats
        if (show_imgui_stats)
        {
            ImGui::ShowMetricsWindow(&show_imgui_stats);
        }
    }

    void drawSimControl()
    {
        ImGui::Begin("Control");
        if (ImGui::CollapsingHeader("Simulation Control", ImGuiTreeNodeFlags_DefaultOpen))
        {
            if (ImGui::Button("Play"))
            {
                sim::start_sim();
            }
            ImGui::SameLine();
            if (ImGui::Button("Pause"))
            {
                sim::pause_sim();
            }
            ImGui::SameLine();
            ImGui::TextDisabled("%s", sim_state_text());

            double seconds = sim::time_sec();
            int minutes = (int)(seconds / 60);
            int remainder = (int)(seconds - (minutes * 60));
            ImGui::Text("Sim Time: %dm %ds", minutes, remainder);
            ImGui::Combo("Type", sim::get_time_type(), sim::time_labels_separated_by_zeroes());
            // ImGui::SetTooltip("Time Type\n Steady: description of steady time\n Accurate: description of accurate");
        }
        // Vex Control
        if (ImGui::CollapsingHeader("Vex Control", ImGuiTreeNodeFlags_DefaultOpen))
        {

            ImGui::BeginDisabled(sim::is_paused()); // don't allow vex control if we're paused

            ImGui::BeginDisabled(((is_driver_control() || is_auto_control()))); // disable if we've already selected
            if (ImGui::Button("driver"))
            {
                start_driver_control();
            }
            ImGui::SameLine();
            if (ImGui::Button("auto"))
            {
                start_auto_control();
            }
            ImGui::EndDisabled();

            ImGui::SameLine();
            ImGui::BeginDisabled((!(is_driver_control() || is_auto_control()))); // enable if we've already selected
            if (ImGui::Button("disable"))
            {
                sim::disable_robot();
            }
            ImGui::EndDisabled();

            ImGui::EndDisabled();
            ImGui::SameLine();
            ImGui::TextDisabled("%s", vex_state_text());
        }

        ImGui::TextColored(ImVec4(0.1, 1.0, 0.1, 1.0), "Controller Connected");
        ImGui::End();
    }

    void drawTerminal()
    {
        ImGui::Begin("Terminal", NULL, ImGuiWindowFlags_HorizontalScrollbar);
        static bool auto_scroll_terminal = true;

        ImGui::TextUnformatted(get_terminal_text());

        ImGui::Separator();
        ImGui::Checkbox("Auto Scroll", &auto_scroll_terminal);
        if (auto_scroll_terminal)
        {
            ImGui::SetScrollHereY(.99);
        }
        ImGui::End();
    }

    void drawEventSender(bool &should_show)
    {
        // Sends arbitrary mevent
        if (should_show)
        {
            ImGui::Begin("Event Sender", &should_show);
            ImGui::TextWrapped("Send arbitrary mevent 'interrupts' to the system. Consult docs for names and numbers of these");
            ImGui::TextColored(ImVec4(1, .1, .1, 1.0), "BE CAREFUL");
            ImGui::TextWrapped("if you use this wrong you can do weird things like start usercontrol and auto at the sametime; what scholars call 'not good'");
            static int event_index = 0;
            static int event_id = 0;
            if (ImGui::Button("Send Event"))
            {
                event_handler::send_mevent(event_index, event_id);
            }
            ImGui::InputInt("ind", &event_index);
            ImGui::InputInt("id", &event_id);

            ImGui::End();
        }
    }

    auto left_key = ImGuiKey_A;
    auto right_key = ImGuiKey_D;

    auto forward_key = ImGuiKey_W;
    auto back_key = ImGuiKey_S;

    auto up_key = ImGuiKey_Z;
    auto down_key = ImGuiKey_X;

    /// Move Viewport camera in a minecrafty style
    /// up down move global Y
    /// fore/back and left/right move relative to where youre looking
    /// @param cam the camera to move
    void moveViewportCamera(sim::renderer::Camera *cam)
    {

        float dx = 0;
        float dy = 0;
        static ImVec2 last_mouse_pos = ImVec2{0, 0};
        if (ImGui::IsMouseClicked(ImGuiMouseButton_Left))
        {
            last_mouse_pos = ImGui::GetMousePos();
        }
        if (ImGui::IsMouseDown(ImGuiMouseButton_Left) && ImGui::IsWindowFocused())
        {
            ImVec2 mouse_pos = ImGui::GetMousePos();

            dx = (mouse_pos.x - last_mouse_pos.x);
            dy = (mouse_pos.y - last_mouse_pos.y);
            last_mouse_pos = mouse_pos;
        }

        double move_speed = 0.02;
        double turn_speed = 0.004;

        glm::vec3 dir = glm::normalize(cam->lookat - cam->eye);
        auto toVec3 = [](auto v) -> glm::vec3
        {
            return {v.x, v.y, v.z};
        };

        glm::vec2 normed2d = {dir.x, dir.z};
        float heading = atan2(normed2d.y, normed2d.x);
        heading += dx * turn_speed;

        float altitude = asin(dir.y);
        altitude -= dy * turn_speed;

        auto rotate2D = [](glm::vec2 v, float ang) -> glm::vec2
        {
            float c = cos(ang);
            float s = sin(ang);
            float x = c * v.x - s * v.y;
            float y = s * v.x + c * v.y;
            return {x, y};
        };

        float elevation = sin(altitude);
        glm::vec2 dirxz = rotate2D(glm::vec2(1, 0), heading);
        glm::vec3 new_dir = glm::normalize(glm::vec3(dirxz.x, elevation, dirxz.y));

        cam->lookat = cam->eye + new_dir;

        dir = new_dir;

        glm::vec2 local_vel = {0, 0};
        float uppy_downy = 0.0;
        if (ImGui::IsWindowFocused())
        {
            //
            // X
            if (ImGui::IsKeyDown(left_key))
            {
                local_vel.y--;
            }
            else if (ImGui::IsKeyDown(right_key))
            {
                local_vel.y++;
            }
            // Y
            if (ImGui::IsKeyDown(forward_key))
            {
                local_vel.x++;
            }
            else if (ImGui::IsKeyDown(back_key))
            {
                local_vel.x--;
            }
            // Z
            if (ImGui::IsKeyDown(up_key))
            {
                uppy_downy++;
            }
            else if (ImGui::IsKeyDown(down_key))
            {
                uppy_downy--;
            }
        }
        //
        local_vel *= move_speed;
        uppy_downy *= move_speed;
        //
        glm::vec2 global_xy = rotate2D(local_vel, heading);
        glm::vec3 global_vel = {global_xy.x, uppy_downy, global_xy.y};

        cam->eye += global_vel;
        cam->lookat += global_vel;
    }

    void drawViewport()
    {
        static int width = 1;
        static int height = 1;
        static bool want_capture_mouse = false;

        ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, ImVec2{8, 8});
        ImGui::PushStyleVar(ImGuiStyleVar_FramePadding, ImVec2{0, 0});
        ImGui::Begin("Viewport");

        ImVec2 size = ImGui::GetWindowSize();
        size.y -= 35;
        size.x -= 20;
        if (width != size.x || height != size.y)
        {
            width = size.x;
            height = size.y;
            renderer::field_viewport.resize(width, height);
        }

        ImGui::Image((void *)(intptr_t)(renderer::field_viewport.color_handle), ImVec2((float)renderer::field_viewport.width, (float)renderer::field_viewport.height), ImVec2(0, 1), ImVec2(1, 0));

        moveViewportCamera(&sim::renderer::field_camera);

        ImGui::End();
        ImGui::PopStyleVar(2);
    }

    void drawUI(GLFWwindow *window)
    {
        // Setup
        setRedStyle();
        drawMainMenuBar(window);
        setupDockspace();

        // Draw all the uis
        // demo and metrics windo
        drawDemoAndMetrics();

        drawEventSender(show_event_sender);
        sim::event_handler::drawUI();

        // View of simulation
        drawViewport();

        //  Brain screen to tap on
        sim::brain_screen::build_brain_ui();

        // Vex Controller
        sim::controller::build_controller_ui();

        // Simulation Control
        drawSimControl();

        // ImGui::Begin("Devices");
        // if (ImGui::CollapsingHeader("Motor : Port1"))
        // {
        // static bool test_plugged_in_bool = false;
        // ImGui::Checkbox("Plugged in", &test_plugged_in_bool);
        // ImGui::Text("59 *C");
        // ImGui::SameLine();
        // ImGui::TextDisabled("(throttled)");
        // ImGui::Text("36:1 ratio");
        // ImGui::Text("current: 2.34 amps");
        // ImGui::Text("Effeciency");
        // }
        // ImGui::End();

        // serial terminal from robot
        drawTerminal();

        // sim::construction::drawUI();
    }

    void setRedStyle()
    {
        ImVec4 *colors = ImGui::GetStyle().Colors;
        colors[ImGuiCol_Text] = ImVec4(0.75f, 0.75f, 0.75f, 1.00f);
        colors[ImGuiCol_TextDisabled] = ImVec4(0.35f, 0.35f, 0.35f, 1.00f);
        colors[ImGuiCol_WindowBg] = ImVec4(0.00f, 0.00f, 0.00f, 0.94f);
        colors[ImGuiCol_ChildBg] = ImVec4(0.00f, 0.00f, 0.00f, 0.00f);
        colors[ImGuiCol_PopupBg] = ImVec4(0.08f, 0.08f, 0.08f, 0.94f);
        colors[ImGuiCol_Border] = ImVec4(0.00f, 0.00f, 0.00f, 0.50f);
        colors[ImGuiCol_BorderShadow] = ImVec4(0.00f, 0.00f, 0.00f, 0.00f);
        colors[ImGuiCol_FrameBg] = ImVec4(0.00f, 0.00f, 0.00f, 0.54f);
        colors[ImGuiCol_FrameBgHovered] = ImVec4(0.37f, 0.14f, 0.14f, 0.67f);
        colors[ImGuiCol_FrameBgActive] = ImVec4(0.39f, 0.20f, 0.20f, 0.67f);
        colors[ImGuiCol_TitleBg] = ImVec4(0.24f, 0.24f, 0.24f, 1.00f);
        colors[ImGuiCol_TitleBgActive] = ImVec4(0.48f, 0.16f, 0.16f, 1.00f);
        colors[ImGuiCol_TitleBgCollapsed] = ImVec4(0.48f, 0.16f, 0.16f, 1.00f);
        colors[ImGuiCol_MenuBarBg] = ImVec4(0.14f, 0.14f, 0.14f, 1.00f);
        colors[ImGuiCol_ScrollbarBg] = ImVec4(0.02f, 0.02f, 0.02f, 0.53f);
        colors[ImGuiCol_ScrollbarGrab] = ImVec4(0.31f, 0.31f, 0.31f, 1.00f);
        colors[ImGuiCol_ScrollbarGrabHovered] = ImVec4(0.41f, 0.41f, 0.41f, 1.00f);
        colors[ImGuiCol_ScrollbarGrabActive] = ImVec4(0.51f, 0.51f, 0.51f, 1.00f);
        colors[ImGuiCol_CheckMark] = ImVec4(0.56f, 0.10f, 0.10f, 1.00f);
        colors[ImGuiCol_SliderGrab] = ImVec4(1.00f, 0.19f, 0.19f, 0.40f);
        colors[ImGuiCol_SliderGrabActive] = ImVec4(0.89f, 0.00f, 0.19f, 1.00f);
        colors[ImGuiCol_Button] = ImVec4(1.00f, 0.19f, 0.19f, 0.40f);
        colors[ImGuiCol_ButtonHovered] = ImVec4(0.80f, 0.17f, 0.00f, 1.00f);
        colors[ImGuiCol_ButtonActive] = ImVec4(0.89f, 0.00f, 0.19f, 1.00f);
        colors[ImGuiCol_Header] = ImVec4(0.63f, 0.35f, 0.36f, 0.53f);
        colors[ImGuiCol_HeaderHovered] = ImVec4(0.76f, 0.28f, 0.44f, 0.67f);
        colors[ImGuiCol_HeaderActive] = ImVec4(0.47f, 0.47f, 0.47f, 0.67f);
        colors[ImGuiCol_Separator] = ImVec4(0.32f, 0.32f, 0.32f, 1.00f);
        colors[ImGuiCol_SeparatorHovered] = ImVec4(0.32f, 0.32f, 0.32f, 1.00f);
        colors[ImGuiCol_SeparatorActive] = ImVec4(0.32f, 0.32f, 0.32f, 1.00f);
        colors[ImGuiCol_ResizeGrip] = ImVec4(1.00f, 1.00f, 1.00f, 0.85f);
        colors[ImGuiCol_ResizeGripHovered] = ImVec4(1.00f, 1.00f, 1.00f, 0.60f);
        colors[ImGuiCol_ResizeGripActive] = ImVec4(1.00f, 1.00f, 1.00f, 0.90f);
        colors[ImGuiCol_Tab] = ImVec4(0.07f, 0.07f, 0.07f, 0.51f);
        colors[ImGuiCol_TabHovered] = ImVec4(0.86f, 0.23f, 0.43f, 0.67f);
        colors[ImGuiCol_TabActive] = ImVec4(0.19f, 0.19f, 0.19f, 0.57f);
        colors[ImGuiCol_TabUnfocused] = ImVec4(0.05f, 0.05f, 0.05f, 0.90f);
        colors[ImGuiCol_TabUnfocusedActive] = ImVec4(0.13f, 0.13f, 0.13f, 0.74f);
        colors[ImGuiCol_DockingPreview] = ImVec4(0.47f, 0.47f, 0.47f, 0.47f);
        colors[ImGuiCol_DockingEmptyBg] = ImVec4(0.20f, 0.20f, 0.20f, 1.00f);
        colors[ImGuiCol_PlotLines] = ImVec4(0.61f, 0.61f, 0.61f, 1.00f);
        colors[ImGuiCol_PlotLinesHovered] = ImVec4(1.00f, 0.43f, 0.35f, 1.00f);
        colors[ImGuiCol_PlotHistogram] = ImVec4(0.90f, 0.70f, 0.00f, 1.00f);
        colors[ImGuiCol_PlotHistogramHovered] = ImVec4(1.00f, 0.60f, 0.00f, 1.00f);
        colors[ImGuiCol_TableHeaderBg] = ImVec4(0.19f, 0.19f, 0.20f, 1.00f);
        colors[ImGuiCol_TableBorderStrong] = ImVec4(0.31f, 0.31f, 0.35f, 1.00f);
        colors[ImGuiCol_TableBorderLight] = ImVec4(0.23f, 0.23f, 0.25f, 1.00f);
        colors[ImGuiCol_TableRowBg] = ImVec4(0.00f, 0.00f, 0.00f, 0.00f);
        colors[ImGuiCol_TableRowBgAlt] = ImVec4(1.00f, 1.00f, 1.00f, 0.07f);
        colors[ImGuiCol_TextSelectedBg] = ImVec4(0.26f, 0.59f, 0.98f, 0.35f);
        colors[ImGuiCol_DragDropTarget] = ImVec4(1.00f, 1.00f, 0.00f, 0.90f);
        colors[ImGuiCol_NavHighlight] = ImVec4(0.26f, 0.59f, 0.98f, 1.00f);
        colors[ImGuiCol_NavWindowingHighlight] = ImVec4(1.00f, 1.00f, 1.00f, 0.70f);
        colors[ImGuiCol_NavWindowingDimBg] = ImVec4(0.80f, 0.80f, 0.80f, 0.20f);
        colors[ImGuiCol_ModalWindowDimBg] = ImVec4(0.80f, 0.80f, 0.80f, 0.35f);
    }

}
