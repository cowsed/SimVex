#include "events.h"
#include "imgui.h"
#include <map>
#include "v5_apitypes.h"
#include <GLFW/glfw3.h>

namespace sim
{
    namespace controller
    {
        bool get_button_pressing(_V5_ControllerIndex index);
        double get_axis_position(_V5_ControllerIndex index);

        void setup();
        void poll_joysticks();
        void build_controller_ui();
    }
}