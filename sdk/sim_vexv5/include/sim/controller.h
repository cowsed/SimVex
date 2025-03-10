
#include "v5_apitypes.h"

namespace sim
{
    namespace controller
    {
        bool get_button_pressing(_V5_ControllerIndex index);
        double get_axis_position(_V5_ControllerIndex index);

        void setup();
        /// @brief take joystick readings each frame (if a joystick is connected)
        void poll_joysticks();

        /// @brief ImGui window for showing status of virtual controllers
        void build_ui();
    }
}