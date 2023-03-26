#include "sim/controller.h"

namespace sim
{
    namespace controller
    {
        namespace controller_state
        {
            /// @brief button states
            /// true is pressed, false is not
            static std::map<_V5_ControllerIndex, bool> buttons = {
                {_V5_ControllerIndex::ButtonUp, false},
                {_V5_ControllerIndex::ButtonDown, false},
                {_V5_ControllerIndex::ButtonLeft, false},
                {_V5_ControllerIndex::ButtonRight, false},

                {_V5_ControllerIndex::ButtonA, false},
                {_V5_ControllerIndex::ButtonB, false},
                {_V5_ControllerIndex::ButtonY, false},
                {_V5_ControllerIndex::ButtonX, false},

                {_V5_ControllerIndex::ButtonL1, false},
                {_V5_ControllerIndex::ButtonL2, false},
                {_V5_ControllerIndex::ButtonR1, false},
                {_V5_ControllerIndex::ButtonR2, false},

            };
            static std::map<_V5_ControllerIndex, double> axes = {
                {_V5_ControllerIndex::Axis1, 0},
                {_V5_ControllerIndex::Axis2, 0},
                {_V5_ControllerIndex::Axis3, 0},
                {_V5_ControllerIndex::Axis4, 0},
            };
        }
        bool get_button_pressing(_V5_ControllerIndex index)
        {
            if (controller_state::buttons.contains(index))
            {
                return controller_state::buttons[index];
            }
            return false;
        }

        double get_axis_position(_V5_ControllerIndex index)
        {
            if (controller_state::axes.contains(index))
            {
                return controller_state::axes[index];
            }
            return 0.0;
        }
        void setup() {}

        bool accept_controller_input()
        {
            if (ImGui::IsWindowFocused())
            {
                const auto check_axis = [](ImGuiKey key_pos, ImGuiKey key_neg, _V5_ControllerIndex index)
                {
                    if (ImGui::IsKeyDown(key_pos))
                    {
                        controller_state::axes[index] = +1.0;
                    }
                    else if (ImGui::IsKeyDown(key_neg))
                    {
                        controller_state::axes[index] = -1.0;
                    }
                    else
                    {
                        controller_state::axes[index] = 0.0;
                    }
                };
                const auto check_button = [](ImGuiKey key, _V5_ControllerIndex index)
                {
                    if (ImGui::IsKeyDown(key))
                    {
                        controller_state::buttons[index] = true;
                    }
                    else
                    {
                        controller_state::buttons[index] = false;
                    }
                };

                // Left Joy
                check_axis(ImGuiKey::ImGuiKey_W, ImGuiKey::ImGuiKey_S, _V5_ControllerIndex::Axis4);
                check_axis(ImGuiKey::ImGuiKey_D, ImGuiKey::ImGuiKey_A, _V5_ControllerIndex::Axis3);

                // Right Joy
                check_axis(ImGuiKey::ImGuiKey_I, ImGuiKey::ImGuiKey_K, _V5_ControllerIndex::Axis2);
                check_axis(ImGuiKey::ImGuiKey_L, ImGuiKey::ImGuiKey_J, _V5_ControllerIndex::Axis1);

                // Left DPad
                check_button(ImGuiKey::ImGuiKey_1, _V5_ControllerIndex::ButtonUp);
                check_button(ImGuiKey::ImGuiKey_2, _V5_ControllerIndex::ButtonLeft);
                check_button(ImGuiKey::ImGuiKey_3, _V5_ControllerIndex::ButtonDown);
                check_button(ImGuiKey::ImGuiKey_4, _V5_ControllerIndex::ButtonRight);

                // Right DPad
                check_button(ImGuiKey::ImGuiKey_7, _V5_ControllerIndex::ButtonX);
                check_button(ImGuiKey::ImGuiKey_8, _V5_ControllerIndex::ButtonA);
                check_button(ImGuiKey::ImGuiKey_9, _V5_ControllerIndex::ButtonB);
                check_button(ImGuiKey::ImGuiKey_0, _V5_ControllerIndex::ButtonY);

                // Shoulders
                // Left
                check_button(ImGuiKey::ImGuiKey_Q, _V5_ControllerIndex::ButtonL2);
                check_button(ImGuiKey::ImGuiKey_E, _V5_ControllerIndex::ButtonL1);
                // Right
                check_button(ImGuiKey::ImGuiKey_O, _V5_ControllerIndex::ButtonR2);
                check_button(ImGuiKey::ImGuiKey_U, _V5_ControllerIndex::ButtonR1);
            }

            return ImGui::IsWindowFocused();
        }

        void build_controller_ui()
        {
            auto ImVec2Add = [](ImVec2 a, ImVec2 b)
            {
                return ImVec2{a.x + b.x, a.y + b.y};
            };
            ImGui::Begin("Controller");

            bool accepting = accept_controller_input();

            if (accepting)
            {
                ImGui::Text("accepting");
            }
            else
            {
                ImGui::Text("not accepting");
            }

            ImDrawList *DrawList = ImGui::GetWindowDrawList();
            ImVec2 pos = ImGui::GetWindowPos();
            ImVec2 size = ImGui::GetWindowSize();
            ImVec2 center = ImVec2(pos.x + size.x * 0.5f, pos.y + size.y * 0.5f);

            float joy_outer_radius = size.x / 14.0;
            float joy_inner_radius = size.x / 16.0;

            ImVec2 ljoy_center = {center.x - size.x * .3f, center.y - size.y * .1f};
            ImVec2 rjoy_center = {center.x + size.x * .3f, center.y - size.y * .1f};

            ImVec2 lpad_center = {center.x - size.x * .2f, center.y + size.y * .1f};
            ImVec2 rpad_center = {center.x + size.x * .2f, center.y + size.y * .1f};

            float pad_dist = joy_inner_radius / 2;
            float pad_button_radius = pad_dist / 2;

            // controller background

            // Left Joy
            DrawList->AddCircleFilled(ljoy_center, joy_outer_radius, IM_COL32(100, 100, 100, 255));
            DrawList->AddCircleFilled(ljoy_center, joy_inner_radius, IM_COL32(0, 0, 0, 255));
            // Right Joy
            DrawList->AddCircleFilled(rjoy_center, joy_outer_radius, IM_COL32(100, 100, 100, 255));
            DrawList->AddCircleFilled(rjoy_center, joy_inner_radius, IM_COL32(0, 0, 0, 255));

            // Left Pad
            DrawList->AddCircleFilled(lpad_center, joy_outer_radius, IM_COL32(100, 100, 100, 255));
            DrawList->AddCircleFilled(ImVec2Add(lpad_center, {pad_dist, 0}), pad_button_radius, IM_COL32(0, 0, 0, 255));
            DrawList->AddCircleFilled(ImVec2Add(lpad_center, {-pad_dist, 0}), pad_button_radius, IM_COL32(0, 0, 0, 255));
            DrawList->AddCircleFilled(ImVec2Add(lpad_center, {0, pad_dist}), pad_button_radius, IM_COL32(0, 0, 0, 255));
            DrawList->AddCircleFilled(ImVec2Add(lpad_center, {0, -pad_dist}), pad_button_radius, IM_COL32(0, 0, 0, 255));

            ImGui::SetCursorPos(ImVec2Add(ImGui::GetCursorPos(), {0, size.y / 30.f}));

            ImGui::Text("1: %.1f", controller_state::axes[_V5_ControllerIndex::Axis1]);
            ImGui::Text("2: %.1f", controller_state::axes[_V5_ControllerIndex::Axis2]);
            ImGui::Text("3: %.1f", controller_state::axes[_V5_ControllerIndex::Axis3]);
            ImGui::Text("4: %.1f", controller_state::axes[_V5_ControllerIndex::Axis4]);

            ImGui::Text("Up: %d", controller_state::buttons[_V5_ControllerIndex::ButtonUp]);
            ImGui::Text("Down: %d", controller_state::buttons[_V5_ControllerIndex::ButtonDown]);
            ImGui::Text("Left: %d", controller_state::buttons[_V5_ControllerIndex::ButtonLeft]);
            ImGui::Text("Right: %d", controller_state::buttons[_V5_ControllerIndex::ButtonRight]);

            ImGui::Text("A: %d", controller_state::buttons[_V5_ControllerIndex::ButtonA]);
            ImGui::Text("B: %d", controller_state::buttons[_V5_ControllerIndex::ButtonB]);
            ImGui::Text("X: %d", controller_state::buttons[_V5_ControllerIndex::ButtonX]);
            ImGui::Text("Y: %d", controller_state::buttons[_V5_ControllerIndex::ButtonY]);

            ImGui::Text("L1: %d", controller_state::buttons[_V5_ControllerIndex::ButtonL1]);
            ImGui::Text("L2: %d", controller_state::buttons[_V5_ControllerIndex::ButtonL2]);
            ImGui::Text("R1: %d", controller_state::buttons[_V5_ControllerIndex::ButtonR1]);
            ImGui::Text("R2: %d", controller_state::buttons[_V5_ControllerIndex::ButtonR2]);
            ImGui::End();
        }

    }
}