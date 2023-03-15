#include "sim/sim.h"

namespace sim
{
    static SimState sim_state = SimState::NotReady;
    static VexState vex_state = VexState::Waiting;

    bool is_paused() { return sim_state == Paused; }
    bool is_running() { return sim_state == Playing; }

    const char *sim_state_text()
    {
        return (char *[]){(char *)"Not Ready", (char *)"Paused", (char *)"Running"}[sim_state];
    }

    void start_driver_control()
    {
        const int comp_index = 0;
        const int driver_ctl_eid = 10;
        if (vex_state != Waiting)
        {
            std::cerr << "Can not start auto controller from the current state" << std::endl;
            return;
        }
        vex_state = Driver;
        sim::event_handler::send_mevent(comp_index, driver_ctl_eid);
    }

    void start_auto_control()
    {
        const int comp_index = 0;
        const int auto_eid = 9;
        if (vex_state != Waiting)
        {
            std::cerr << "Can not start auto controller from the current state" << std::endl;
            return;
        }
        vex_state = Autonomous;
        sim::event_handler::send_mevent(comp_index, auto_eid);
    }

    bool is_driver_control() { return vex_state == VexState::Driver; }
    bool is_auto_control() { return vex_state == VexState::Autonomous; }

    const char *vex_state_text()
    {
        return (char *[]){(char *)"Waiting", (char *)"Driver", (char *)"Autonomous"}[vex_state];
    }

}