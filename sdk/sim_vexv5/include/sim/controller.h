#include "events.h"
#include "imgui.h"
#include <map>
#include "v5_apitypes.h"
namespace sim
{
    namespace controller
{
        bool get_button_pressing(_V5_ControllerIndex index);
        double get_axis_position(_V5_ControllerIndex index);

        void setup();

        void build_controller_ui();
    }
}