#pragma once
#include <iostream>
#include "sim/events.h"

namespace sim
{
    enum SimState
    {
        NotReady,
        Paused,
        Playing
    };

    enum VexState
    {
        Waiting,
        Driver,
        Autonomous,
    };

    /// @brief starts or unpauses the simulation
    void start_sim();

    /// @brief pauses the simulation (physics stops, vex code will continue running with no effect until any time delay is hit, then it will hold until simulation is unpaused)
    void pause_sim();

    bool is_paused();
    bool is_running();

    const char *sim_state_text();

    /// @brief Start autonomous control (the function registered in `competition.autonomous())
    /// If autonomous or driver control is already running, this function does nothing
    void start_auto_control();
    /// @brief Start Driver Control (the function registered in `competition.opcontrol())
    /// If autonomous or driver control is already running, this function does nothing
    void start_driver_control();

    /// @brief Disable the robot
    void disable_robot();

    bool is_driver_control();
    bool is_auto_control();
    const char *vex_state_text();

}