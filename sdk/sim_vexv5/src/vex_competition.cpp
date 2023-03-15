#include "vex_competition.h"
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
    void (*competition::_initialize_callback)(void);
    void (*competition::_autonomous_callback)(void);
    void (*competition::_drivercontrol_callback)(void);


    void competition::_disable(void *arg) {}
    void competition::_autonomous(void)
    {
        if (_autonomous_callback != NULL)
        {
            _autonomous_callback();
        }
    }
    void competition::_drivercontrol(void)
    {
        if (_drivercontrol_callback != NULL)
        {
            _drivercontrol_callback();
        }
    }

    /**
     * @brief Use this class to set up your program for competitions.
     */
    /**
     * @brief Creates a competition object that has access to competition methods.
     */
    competition::competition()
    {
        bool succeeded = sim::initWindow();
        if (!succeeded)
        {
            exit(1);
        }
        sim::event_handler::set_event_callback(brain::_getIndex(), (uint32_t)tEventType::EVENT_DRIVER_CTL, _drivercontrol);
        sim::event_handler::set_event_callback(brain::_getIndex(), (uint32_t)tEventType::EVENT_AUTONOMOUS, _autonomous);
    }
    competition::~competition()
    {
        print_unimplimented();
    }

    // callbacks for C++ code
    // pre-auton makes no sense here

    /**
     * @brief Calls back a function when the autonomous period starts.
     * @param callback A reference to a function.
     */
    void competition::autonomous(void (*callback)(void))
    {
        _autonomous_callback = callback;
    }

    /**
     * @brief Calls back a function when the driver control period starts.
     * @param callback A reference to a function.
     */
    void competition::drivercontrol(void (*callback)(void))
    {
        _drivercontrol_callback = callback;
    }

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

        return sim::is_driver_control();
    }

    /**
     * @brief Gets the status of the Autonomous period.
     * @return Returns a Boolean based on if the Autonomous Period is active. If the Autonomous Period is active, the Boolean will return true.
     */
    bool competition::isAutonomous()
    {
        return sim::is_auto_control();
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
