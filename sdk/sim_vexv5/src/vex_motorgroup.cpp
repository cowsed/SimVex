#include "vex_motorgroup.h"
#include <stdint.h>
namespace vex
{
    motor_group::motor_group_motors::motor_group_motors() {}
    motor_group::motor_group_motors::motor_group_motors(const motor_group_motors &) {}
    motor_group::motor_group_motors::~motor_group_motors() {}

    void motor_group::_addMotor() { print_unimplimented(); }
    void motor_group::_addMotor(vex::motor &m) { print_unimplimented(); }

    bool motor_group::waitForCompletionAll() { print_unimplimented(); return false;}

    motor_group::motor_group() { print_unimplimented(); }
    motor_group::~motor_group() { print_unimplimented(); }

    /**
     * @brief return the number of motors in the motor group
     * @return number of motors
     */
    int32_t motor_group::count(void)
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief Sets the velocity of the motor group based on the parameters set in the command. This command will not run the motor.  Any subsequent call that does not contain a specified motor velocity will use this value.
     * @param velocity Sets the amount of velocity.
     * @param units The measurement unit for the velocity value.
     */
    void motor_group::setVelocity(double velocity, velocityUnits units) { print_unimplimented(); }

    /**
     * @brief Sets the stopping mode of the motor group by passing a brake mode as a parameter.
     * @param mode The stopping mode can be set to coast, brake, or hold.
     */
    void motor_group::setStopping(brakeType mode) { print_unimplimented(); }

    /**
     * @brief Resets the motor's encoder to the value of zero.
     */
    void motor_group::resetPosition(void) { print_unimplimented(); }

    /**
     * @brief Sets the value of all motor encoders to the value specified in the parameter.
     * @param value Sets the current position of the motor.
     * @param units The measurement unit for the position value.
     */
    void motor_group::setPosition(double value, rotationUnits units) { print_unimplimented(); }

    /**
     * @brief Sets the timeout for the motor group. If the motor group does not reach its' commanded position prior to the completion of the timeout, the motors will stop.
     * @param time Sets the amount of time.
     * @param units The measurement unit for the time value.
     */
    void motor_group::setTimeout(int32_t time, timeUnits units) { print_unimplimented(); }

    /**
     * @brief Turns the motors on, and spins them in the specified direction.
     * @param dir The direction to spin the motors.
     */
    void motor_group::spin(directionType dir) { print_unimplimented(); }

    /**
     * @brief Turn on the motors and spins them in the specified direction and a specified velocity.
     * @param dir The direction to spin the motors.
     * @param velocity Sets the amount of velocity.
     * @param units The measurement unit for the velocity value.
     */
    void motor_group::spin(directionType dir, double velocity, velocityUnits units) { print_unimplimented(); }

    /**
     * @brief Turn on the motors and spins them in the specified direction and a specified voltage.
     * @param dir The direction to spin the motors.
     * @param voltage Sets the amount of volts.
     * @param units The measurement unit for the voltage value.
     */
    void motor_group::spin(directionType dir, double voltage, voltageUnits units) { print_unimplimented(); }

    /**
     * @brief Turns on the motors and spin them to an absolute target rotation value at a specified velocity.
     * @return Returns a Boolean that signifies when the motors have reached the target rotation value.
     * @param rotation Sets the amount of rotation.
     * @param units The measurement unit for the rotation value.
     * @param velocity Sets the amount of velocity.
     * @param units_v The measurement unit for the velocity value.
     * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
     */
    bool motor_group::spinTo(double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion = true)
    {
        print_unimplimented();
        return false;
    }
    bool motor_group::spinToPosition(double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion = true)
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Turn on the motors and spin them to an absolute target rotation value.
     * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
     * @param rotation Sets the amount of rotation.
     * @param units The measurement unit for the rotation value.
     * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
     */
    bool motor_group::spinTo(double rotation, rotationUnits units, bool waitForCompletion = true)
    {
        print_unimplimented();
        return false;
    }
    bool motor_group::spinToPosition(double rotation, rotationUnits units, bool waitForCompletion = true)
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Turn on the motors and spin them to a relative target rotation value at a specified velocity.
     * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
     * @param rotation Sets the amount of rotation.
     * @param units The measurement unit for the rotation value.
     * @param velocity Sets the amount of velocity.
     * @param units_v The measurement unit for the velocity value.
     * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
     */
    bool motor_group::spinFor(double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion)
    {
        print_unimplimented();
        return false;
    }

    bool motor_group::spinFor(directionType dir, double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion)
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Turn on the motors and spin them to a relative target rotation value.
     * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
     * @param rotation Sets the amount of rotation.
     * @param units The measurement unit for the rotation value.
     * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
     */
    bool motor_group::spinFor(double rotation, rotationUnits units, bool waitForCompletion = true)
    {
        print_unimplimented();
        return false;
    }

    bool motor_group::spinFor(directionType dir, double rotation, rotationUnits units, bool waitForCompletion = true)
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Turn on the motors and spin them to a relative target time value at a specified velocity.
     * @param time Sets the amount of time.
     * @param units The measurement unit for the time value.
     * @param velocity Sets the amount of velocity.
     * @param units_v The measurement unit for the velocity value.
     */
    void motor_group::spinFor(double time, timeUnits units, double velocity, velocityUnits units_v) { print_unimplimented(); }

    void motor_group::spinFor(directionType dir, double time, timeUnits units, double velocity, velocityUnits units_v) { print_unimplimented(); }

    /**
     * @brief Turn on the motors and spin them to a relative target time value.
     * @param time Sets the amount of time.
     * @param units The measurement unit for the time value.
     */
    void motor_group::spinFor(double time, timeUnits units) { print_unimplimented(); }

    void motor_group::spinFor(directionType dir, double time, timeUnits units) { print_unimplimented(); }

    /**
     * @brief Checks to see if any of the motors are rotating to a specific target.
     * @return Returns a true Boolean if the motor is on and is rotating to a target. Returns a false Boolean if the motor is done rotating to a target.
     */
    bool motor_group::isSpinning(void)
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Checks to see if all the motor are done rotating to a specific target.
     * @return Returns a false Boolean if the motor is on and is rotating to a target. Returns a true Boolean if the motor is done rotating to a target.
     */
    bool motor_group::isDone(void)
    {
        print_unimplimented();
        return false;
    }

    bool motor_group::isSpinningMode(void)
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Stops all motors using the default brake mode.
     */
    void motor_group::stop(void) { print_unimplimented(); }

    /**
     * @brief Stops all motors using a specified brake mode.
     * @param mode The brake mode can be set to coast, brake, or hold.
     */
    void motor_group::stop(brakeType mode) { print_unimplimented(); }

    /**
     * @brief Sets the max torque of the motors.
     * @param value Sets the amount of torque.
     * @param units The measurement unit for the torque value.
     */
    void motor_group::setMaxTorque(double value, percentUnits units) { print_unimplimented(); }

    /**
     * @brief Sets the max torque of the motors.
     * @param value Sets the amount of torque.
     * @param units The measurement unit for the torque value.
     */
    void motor_group::setMaxTorque(double value, torqueUnits units) { print_unimplimented(); }

    /**
     * @brief Sets the max torque of the motors.
     * @param value Sets the amount of torque.
     * @param units The measurement unit for the torque value.
     */
    void motor_group::setMaxTorque(double value, currentUnits units) { print_unimplimented(); }

    /**
     * @brief Gets which direction the first motor in the group is spinning.
     * @return Returns the direction that the motor is spinning.
     */
    directionType motor_group::direction(void)
    {
        print_unimplimented();
        return directionType::fwd;
    }

    /**
     * @brief Gets the current position of the first motor in the group's encoder.
     * @returns Returns a double that represents the current position of the motor in the units defined in the parameter.
     * @param units The measurement unit for the position.
     */
    double motor_group::position(rotationUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the current velocity of the first motor in the group.
     * @return Returns a double that represents the current velocity of the motor in the units defined in the parameter.
     * @param units The measurement unit for the velocity.
     */
    double motor_group::velocity(velocityUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the sum electrical current for all motors in the group.
     * @return Returns a double that represents the electrical current of the motors in the units defined in the parameter.
     * @param units The measurement unit for the current.
     */
    double motor_group::current(currentUnits units = currentUnits::amp)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the electrical current of the motors in percentage of maximum.
     * @return Returns a double that represents the electrical current of the motors as percentage of max current.
     * @param units The measurement unit for the current.
     */
    double motor_group::current(percentUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the voltage of the first motor in the group.
     * @return Returns a double that represents the voltage of the motor in the units defined in the parameter.
     * @param units The measurement unit for the voltage.
     */
    double motor_group::voltage(voltageUnits units = voltageUnits::volt)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the power of the first motor in the group.
     * @return Returns a double that represents the power of the motor in the units defined in the parameter.
     * @param units The measurement unit for the power.
     */
    double motor_group::power(powerUnits units = powerUnits::watt)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the torque of the first motor in the group.
     * @return Returns a double that represents the torque of the motor in the units defined in the parameter.
     * @param units The measurement unit for the torque.
     */
    double motor_group::torque(torqueUnits units = torqueUnits::Nm)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the efficiency of the first motor in the group.
     * @return Returns the efficiency of the motor in the units defined in the parameter.
     * @param units (Optional) The measurement unit for the efficiency. By default, this parameter is a percentage.
     */
    double motor_group::efficiency(percentUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the temperature  of the first motor in the group.
     * @return Returns the temperature of the motor in the units defined in the parameter.
     * @param units The measurement unit for the temperature.
     */
    double motor_group::temperature(percentUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the temperature  of the motor.
     * @return Returns the temperature of the motor in the units defined in the parameter.
     * @param units The measurement unit for the temperature.
     */
    double motor_group::temperature(temperatureUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

};
