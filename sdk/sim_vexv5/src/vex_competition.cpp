#include "include/vex_competition.h"
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2017-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_competition.h                                           */
/*    Author:     James Pearman                                               */
/*    Created:    6 Nov 2017                                                  */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------*/
/** @file    vex_competition.h
 * @brief   V5 competition control class header
 */
/*---------------------------------------------------------------------------*/

namespace vex
{
    /**
     * @brief Use this class to set up your program for competitions.
     */
    /**
     * @brief Creates a competition object that has access to competition methods.
     */
    competition::competition() {}

    // callbacks for C++ code
    // pre-auton makes no sense here

    /**
     * @brief Calls back a function when the autonomous period starts.
     * @param callback A reference to a function.
     */
    void competition::autonomous(void (*callback)(void))
    {
        print_unimplimented();
    }

    /**
     * @brief Calls back a function when the driver control period starts.
     * @param callback A reference to a function.
     */
    void competition::drivercontrol(void (*callback)(void)) {}

    // check competition states
    /**
     * @brief Gets the status of your robot when under competition control.
     * @return Returns a Boolean based on if the autonomous or driver control periods is active. If either one is active, the Boolean will return true.
     */
    bool competition::isEnabled()
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Gets the status of the Driver Control period.
     * @return Returns a Boolean based on if the Driver Control Period is active. If the Driver Control period is active, the Boolean will return true.
     */
    bool competition::isDriverControl()
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Gets the status of the Autonomous period.
     * @return Returns a Boolean based on if the Autonomous Period is active. If the Autonomous Period is active, the Boolean will return true.
     */
    bool competition::isAutonomous()
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Gets the status of the Competition Control Switch being plugged into the robot.
     * @return Returns a Boolean based on if the V5 is connected to the Competition Control Switch. If the Brain is connected, the Boolean will return true.
     */
    bool competition::isCompetitionSwitch()
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Gets the status of the Field Control System being plugged into the robot.
     * @return Returns a Boolean based on if the V5 is connected to the Field Control System. If the Brain is connected, the Boolean will return true.
     */
    bool competition::isFieldControl()
    {
        print_unimplimented();
        return false;
    }

    // may be useful for testing without controller
    void competition::test_auton(void) {}
    void competition::test_driver(void) {}
    void competition::test_disable(void) {}

    /**
     * @brief Sets whether or not your program will stop the competition tasks between modes.
     */
    static bool bStopTasksBetweenModes;

    /**
     * @brief Sets whether or not your program will stop all tasks and events between modes.
     */
    static bool bStopAllTasksBetweenModes;
};
