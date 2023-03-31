#include "sim/sim.h"

namespace sim
{
    static SimState sim_state = SimState::Playing;
    static VexState vex_state = VexState::Disabled;

    /// @brief starts or unpauses the simulation
    void start_sim()
    {
        if (sim_state == SimState::Paused)
        {
            sim_state = SimState::Playing;
            sim::event_handler::resume_all_mevents();
            sim::time_start();
        }
    }

    /// @brief pauses the simulation (physics stops, vex code will continue running with no effect until any time delay is hit, then it will hold until simulation is unpaused)
    void pause_sim()
    {
        if (sim_state == SimState::Playing)
        {
            sim_state = SimState::Paused;
            sim::event_handler::pause_all_mevents();
            sim::time_pause();
        }
    }

    bool is_paused() { return sim_state == Paused; }
    bool is_running() { return sim_state == Playing; }

    /// @brief gets a string describing the sim state
    /// @return a string containing a tex description of the sim state
    const char *sim_state_text()
    {
        return (char *[]){(char *)"Not Ready", (char *)"Paused", (char *)"Running"}[sim_state];
    }

    /// @brief begins the driver control part of the program
    /// if the robot is not disabled when this function is called, it does nothing
    void start_driver_control()
    {
        const int comp_index = 0;
        const int driver_ctl_eid = 10;
        if (vex_state != Disabled)
        {
            std::cerr << "Can not start auto controller from the current state" << std::endl;
            return;
        }
        vex_state = Driver;
        sim::event_handler::resume_all_mevents();
        sim::event_handler::send_mevent(comp_index, driver_ctl_eid);
    }

    /// @brief begins the auto control part of the program
    /// if the robot is not disabled when this function is called, it does nothing
    void start_auto_control()
    {
        const int comp_index = 0;
        const int auto_eid = 9;
        if (vex_state != Disabled)
        {
            std::cerr << "Can not start auto controller from the current state" << std::endl;
            return;
        }
        vex_state = Autonomous;
        sim::event_handler::resume_all_mevents();
        sim::event_handler::send_mevent(comp_index, auto_eid);
    }

    /// @brief disables the robot
    /// stops tasks and executes competition disable (TODO)
    void disable_robot()
    {
        sim::event_handler::end_all_mevents();
        vex_state = VexState::Disabled;
    }

    /// @brief check if the robot is in driver control
    /// @return true is in driver control
    bool is_driver_control() { return vex_state == VexState::Driver; }
    /// @brief check if the robot is in auto control
    /// @return true is in auto control
    bool is_auto_control() { return vex_state == VexState::Autonomous; }

    const char *vex_state_text()
    {
        return (char *[]){(char *)"Disabled", (char *)"Driver", (char *)"Autonomous"}[vex_state];
    }

}