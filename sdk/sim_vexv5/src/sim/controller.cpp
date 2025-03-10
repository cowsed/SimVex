#include "sim/controller.h"

#include "sim/events.h"
#include "imgui.h"
#include <map>
#include <GLFW/glfw3.h>

namespace sim
{
    namespace controller
    {
        namespace controller_state
        {
            const int primary_controller_index = 30;
            const int partner_controller_index = 29;
            float max_amt = 1.0;
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

        int _axisIndexToChangedEvent(_V5_ControllerIndex index)
        {
            switch (index)
            {
            case _V5_ControllerIndex::Axis3: // A
                return 24;
            case _V5_ControllerIndex::Axis4: // B
                return 25;
            case _V5_ControllerIndex::Axis1: // C
                return 26;
            case _V5_ControllerIndex::Axis2: // D
                return 27;
            default:
                return -1;
            }
        }
        int _buttonIndexToPressedEvent(_V5_ControllerIndex index)
        {

            // adapted from vex_controller.cpp
            switch (index)
            {
                // XYZA - right D pad
            case _V5_ControllerIndex::ButtonA:
                return 22;
            case _V5_ControllerIndex::ButtonB:
                return 18;
            case _V5_ControllerIndex::ButtonY:
                return 20;
            case _V5_ControllerIndex::ButtonX:
                return 16;

                // UPLR - left D Pad

            case _V5_ControllerIndex::ButtonRight:
                return 14;
            case _V5_ControllerIndex::ButtonLeft:
                return 12;
            case _V5_ControllerIndex::ButtonUp:
                return 8;
            case _V5_ControllerIndex::ButtonDown:
                return 10;

                // Left Shoulder
            case _V5_ControllerIndex::ButtonL1:
                return 0;
            case _V5_ControllerIndex::ButtonL2:
                return 2;

                // Right Shoulder
            case _V5_ControllerIndex::ButtonR1:
                return 4;
            case _V5_ControllerIndex::ButtonR2:
                return 6;

            default:
                return 0;
            }
        }
        int _buttonIndexToReleasedEvent(_V5_ControllerIndex index)
        {
            // epic code reuse
            return 1 + _buttonIndexToPressedEvent(index);
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
                    double last_val = controller_state::axes[index];
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
                    if (controller_state::axes[index] != last_val)
                    {
                        sim::event_handler::send_mevent(controller_state::primary_controller_index, _axisIndexToChangedEvent(index));
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
                    if (ImGui::IsKeyPressed(key))
                    {
                        sim::event_handler::send_mevent(controller_state::primary_controller_index, _buttonIndexToPressedEvent(index));
                    }
                    if (ImGui::IsKeyReleased(key))
                    {
                        sim::event_handler::send_mevent(controller_state::primary_controller_index, _buttonIndexToReleasedEvent(index));
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

        void poll_joysticks()
        {
            auto map_index_to_vex = [](int i)
            {
                switch (i)
                {
                case 0:
                    return _V5_ControllerIndex::Axis2;
                case 1:
                    return _V5_ControllerIndex::Axis1;
                case 2:
                    return _V5_ControllerIndex::Axis3;

                case 3:
                    return _V5_ControllerIndex::Axis4;
                }
                return _V5_ControllerIndex::Axis1;
            };
            auto map_index_to_sign = [](int i)
            {
                switch (i)
                {
                case 0:
                    return -1;
                case 1:
                    return 1;
                case 2:
                    return -1;
                case 3:
                    return -1;
                }
                return 1;
            };
            auto map_button_to_vex = [](int index)
            {
                switch (index)
                {
                case 0:
                    return _V5_ControllerIndex::ButtonB;
                case 1:
                    return _V5_ControllerIndex::ButtonA;
                case 2:
                    return _V5_ControllerIndex::ButtonY;
                case 3:
                    return _V5_ControllerIndex::ButtonX;
                case 4:
                    return _V5_ControllerIndex::ButtonL1;
                case 5:
                    return _V5_ControllerIndex::ButtonR1;
                case 10:
                    return _V5_ControllerIndex::ButtonR2;
                case 11:
                    return _V5_ControllerIndex::ButtonL2;
                case 12:
                    return _V5_ControllerIndex::ButtonUp;
                case 13:
                    return _V5_ControllerIndex::ButtonDown;
                case 14:
                    return _V5_ControllerIndex::ButtonLeft;
                case 15:
                    return _V5_ControllerIndex::ButtonRight;
                }
                return (_V5_ControllerIndex)-1;
            };
            float joy_deadzone = .1;

            auto deadzone = [joy_deadzone](float val){
                if (val < joy_deadzone && val > -joy_deadzone){
                    val = 0;
                }
                return val;
            };
            bool controller_present = glfwJoystickPresent(GLFW_JOYSTICK_1);
            if (controller_present)
            {
                // Axes
                int axis_count;
                const float *axes = glfwGetJoystickAxes(GLFW_JOYSTICK_1, &axis_count);
                static float last_axes[4] = {0, 0, 0, 0};
                for (int i = 0; i < axis_count; i++)
                {
                    V5_ControllerIndex index = map_index_to_vex(i);
                    float val = axes[i] * map_index_to_sign(i);
                    val = deadzone(val);
                    if (val != last_axes[i])
                    {
                        sim::event_handler::send_mevent(controller_state::primary_controller_index, _axisIndexToChangedEvent(index));
                    }
                    controller_state::axes[index] = val;
                    last_axes[i] = val;
                }

                // Buttons
                static unsigned char last_buttons[16] = {GLFW_RELEASE, GLFW_RELEASE, GLFW_RELEASE, GLFW_RELEASE, GLFW_RELEASE, GLFW_RELEASE, GLFW_RELEASE, GLFW_RELEASE, GLFW_RELEASE, GLFW_RELEASE, GLFW_RELEASE, GLFW_RELEASE, GLFW_RELEASE, GLFW_RELEASE, GLFW_RELEASE, GLFW_RELEASE};
                int button_count;
                const unsigned char *buttons = glfwGetJoystickButtons(GLFW_JOYSTICK_1, &button_count);
                for (int i = 0; i < button_count; i++)
                {
                    _V5_ControllerIndex index = map_button_to_vex(i);
                    if (index == (_V5_ControllerIndex)-1)
                    {
                        continue;
                    }
                    if (buttons[i] != last_buttons[i])
                    {
                        if (buttons[i] == GLFW_PRESS)
                        {
                            sim::event_handler::send_mevent(controller_state::primary_controller_index, _buttonIndexToPressedEvent(index));
                        }
                        else
                        {
                            sim::event_handler::send_mevent(controller_state::primary_controller_index, _buttonIndexToReleasedEvent(index));
                        }
                    }
                    controller_state::buttons[index] = buttons[i] == GLFW_PRESS;
                }
            }
        }

        /// @brief ImGui window for showing status of virtual controllers
        void build_ui()
        {
            bool controller_present = glfwJoystickPresent(GLFW_JOYSTICK_1);

            auto ImVec2Add = [](ImVec2 a, ImVec2 b)
            {
                return ImVec2{a.x + b.x, a.y + b.y};
            };
            ImGui::Begin("Controller");
            if (controller_present)
            {
                ImGui::TextColored(ImVec4(0.1, 1.0, 0.1, 1.0), "Controller Connected");
            }
            else
            {
                ImGui::TextColored(ImVec4(1.0, 0.1, 0.1, 1.0), "Controller Disconnected");
            }

            bool accepting = accept_controller_input();

            if (accepting)
            {
                ImGui::TextColored(ImVec4(0.1, 1.0, 0.1, 1.0), "Accepting keyboard input");
            }
            else
            {
                ImGui::TextColored(ImVec4(1.0, 0.1, 0.1, 1.0), "Not accepting keyboard input");
            }

            ImGui::DragFloat("Max Amount", &controller_state::max_amt, 0.01, 0.f, 1.f);

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