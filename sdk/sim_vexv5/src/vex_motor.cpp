#include "include/vex_motor.h"

namespace vex
{
    motor::motor(int32_t index) { print_unimplimented(); }
    motor::~motor() { print_unimplimented(); }
    bool motor::installed() {print_unimplimented(); return false;}
    int32_t motor::value() {print_unimplimented(); return -1;}

    /**
     * @brief Creates a new motor object on the port specified and sets the reversed flag.
     * @param index The port index for this motor. The index is zero-based.
     * @param reverse Sets the reverse flag for the new motor object.
     */
    motor::motor(int32_t index, bool reverse) {print_unimplimented();}

    /**
     * @brief Creates a new motor object on the port specified and sets the gear setting
     * @param index The port index for this motor. The index is zero-based.
     * @param gears Sets the gear's setting for the new motor object.
     */
    motor::motor(int32_t index, gearSetting gears) {print_unimplimented();}

    /**
     * @brief Creates a new motor object on the port specified Sets the reversed flag and the gear setting for the new motor object.
     * @param index The port index for this motor. The index is zero-based.
     * @param gears Sets the gear's setting for the new motor object.
     * @param reverse Sets the reverse flag for the new motor object.
     */
    motor::motor(int32_t index, gearSetting gears, bool reverse) {print_unimplimented();}

    /**
     * @brief Sets the motor mode to "reverse", which will make motor commands spin the motor in the opposite direction.
     * @param value If set to true, motor commands spin the motor in the opposite direction.
     */
    void motor::setReversed(bool value) {print_unimplimented();}

    /**
     * @brief Sets the velocity of the motor based on the parameters set in the command. This command will not run the motor.  Any subsequent call that does not contain a specified motor velocity will use this value.
     * @param velocity Sets the amount of velocity.
     * @param units The measurement unit for the velocity value.
     */
    void motor::setVelocity(double velocity, velocityUnits units) {print_unimplimented();}

    // Legacy
    void motor::setBrake(brakeType mode) {print_unimplimented();}

    /**
     * @brief Sets the stopping mode of the motor by passing a brake mode as a parameter.
     * @param mode The stopping mode can be set to coast, brake, or hold.
     */
    void motor::setStopping(brakeType mode) {print_unimplimented();}

    /**
     * @brief Resets the motor's encoder to the value of zero.
     */
    void motor::resetPosition(void) {print_unimplimented();}

    /**
     * @brief Sets the value of the motor's encoder to the value specified in the parameter.
     * @param value Sets the current position of the motor.
     * @param units The measurement unit for the position value.
     */
    void motor::setPosition(double value, rotationUnits units) {print_unimplimented();}

    /**
     * @brief Sets the timeout for the motor. If the motor does not reach its' commanded position prior to the completion of the timeout, the motor will stop.
     * @param time Sets the amount of time.
     * @param units The measurement unit for the time value.
     */
    void motor::setTimeout(int32_t time, timeUnits units) {print_unimplimented();}

    // Actions

    /**
     * @brief Turns the motor on, and spins it in the specified direction.
     * @param dir The direction to spin the motor.
     */
    void motor::spin(directionType dir) {print_unimplimented();}

    /**
     * @brief Turns on the motor and spins it in a specified direction and a specified velocity.
     * @param dir The direction to spin the motor.
     * @param velocity Sets the amount of velocity.
     * @param units The measurement unit for the velocity value.
     */
    void motor::spin(directionType dir, double velocity, velocityUnits units) {print_unimplimented();}

    /**
     * @brief Turns on the motor and spins it in a specified direction and a specified voltage.
     * @param dir The direction to spin the motor.
     * @param voltage Sets the amount of volts.
     * @param units The measurement unit for the voltage value.
     */
    void motor::spin(directionType dir, double voltage, voltageUnits units) {print_unimplimented();}

    /**
     * @brief Turns on the motor and spins it to an absolute target rotation value at a specified velocity.
     * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
     * @param rotation Sets the amount of rotation.
     * @param units The measurement unit for the rotation value.
     * @param velocity Sets the amount of velocity.
     * @param units_v The measurement unit for the velocity value.
     * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
     */
    bool motor::spinTo(double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion) {print_unimplimented(); return false;}

    bool motor::spinToPosition(double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion) {print_unimplimented(); return false;}

    /**
     * @brief Turns on the motor and spins it to an absolute target rotation value.
     * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
     * @param rotation Sets the amount of rotation.
     * @param units The measurement unit for the rotation value.
     * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
     */
    bool motor::spinTo(double rotation, rotationUnits units, bool waitForCompletion) {print_unimplimented(); return false;}

    bool motor::spinToPosition(double rotation, rotationUnits units, bool waitForCompletion) {print_unimplimented(); return false;}

    /**
     * @brief Turns on the motor and spins it to a relative target rotation value at a specified velocity.
     * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
     * @param rotation Sets the amount of rotation.
     * @param units The measurement unit for the rotation value.
     * @param velocity Sets the amount of velocity.
     * @param units_v The measurement unit for the velocity value.
     * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
     */
    bool motor::spinFor(double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion) {print_unimplimented(); return false;}

    bool motor::spinFor(directionType dir, double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion) {print_unimplimented(); return false;}

    /**
     * @brief Turns on the motor and spins it to a relative target rotation value.
     * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
     * @param rotation Sets the amount of rotation.
     * @param units The measurement unit for the rotation value.
     * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
     */
    bool motor::spinFor(double rotation, rotationUnits units, bool waitForCompletion) {print_unimplimented(); return false;}

    bool motor::spinFor(directionType dir, double rotation, rotationUnits units, bool waitForCompletion) {print_unimplimented(); return false;}

    /**
     * @brief Turns on the motor and spins it to a relative target time value at a specified velocity.
     * @return true on success, false if parameter error
     * @param time Sets the amount of time.
     * @param units The measurement unit for the time value.
     * @param velocity Sets the amount of velocity.
     * @param units_v The measurement unit for the velocity value.
     */
    bool motor::spinFor(double time, timeUnits units, double velocity, velocityUnits units_v) {print_unimplimented(); return false;}

    bool motor::spinFor(directionType dir, double time, timeUnits units, double velocity, velocityUnits units_v) {print_unimplimented(); return false;}

    /**
     * @brief Turns on the motor and spins it to a relative target time value.
     * @return true on success, false if parameter error
     * @param time Sets the amount of time.
     * @param units The measurement unit for the time value.
     */
    bool motor::spinFor(double time, timeUnits units) {print_unimplimented(); return false;}

    bool motor::spinFor(directionType dir, double time, timeUnits units) {print_unimplimented(); return false;}

    /**
     * @brief Checks to see if the motor is rotating to a specific target.
     * @return Returns a true Boolean if the motor is on and is rotating to a target. Returns a false Boolean if the motor is done rotating to a target.
     */
    bool motor::isSpinning(void) {print_unimplimented(); return false;}

    /**
     * @brief Checks to see if the motor is done rotating to a specific target.
     * @return Returns a false Boolean if the motor is on and is rotating to a target. Returns a true Boolean if the motor is done rotating to a target.
     */
    bool motor::isDone(void) {print_unimplimented(); return false;}

    bool motor::isSpinningMode(void) {print_unimplimented(); return false;}

    /**
     * @brief Stops the motor using the default brake mode.
     */
    void motor::stop(void) {print_unimplimented();}

    /**
     * @brief Stops the motor using a specified brake mode.
     * @param mode The brake mode can be set to coast, brake, or hold.
     */
    void motor::stop(brakeType mode) {print_unimplimented();}

    /**
     * @brief Sets the max torque of the motor.
     * @param value Sets the amount of torque.
     * @param units The measurement unit for the torque value.
     */
    void motor::setMaxTorque(double value, percentUnits units) {print_unimplimented();}

    /**
     * @brief Sets the max torque of the motor.
     * @param value Sets the amount of torque.
     * @param units The measurement unit for the torque value.
     */
    void motor::setMaxTorque(double value, torqueUnits units) {print_unimplimented();}

    /**
     * @brief Sets the max torque of the motor.
     * @param value Sets the amount of torque.
     * @param units The measurement unit for the torque value.
     */
    void motor::setMaxTorque(double value, currentUnits units) {print_unimplimented();}

    // sensing

    /**
     * @brief Gets which direction the motor is spinning.
     * @return Returns the direction that the motor is spinning.
     */
    directionType motor::direction(void) {print_unimplimented(); return directionType::undefined;}

    /**
     * @brief Gets the current position of the motor's encoder.
     * @returns Returns a double that represents the current position of the motor in the units defined in the parameter.
     * @param units The measurement unit for the position.
     */
    double motor::position(rotationUnits units) {print_unimplimented(); return 0.0;} 

    /**
     * @brief Gets the current velocity of the motor.
     * @return Returns a double that represents the current velocity of the motor in the units defined in the parameter.
     * @param units The measurement unit for the velocity.
     */
    double motor::velocity(velocityUnits units) {print_unimplimented(); return 0.0;} 

    /**
     * @brief Gets the electrical current of the motor.
     * @return Returns a double that represents the electrical current of the motor in the units defined in the parameter.
     * @param units The measurement unit for the current.
     */
    double motor::current(currentUnits units) {print_unimplimented(); return 0.0;} 

    /**
     * @brief Gets the electrical current of the motor in percentage of maximum.
     * @return Returns a double that represents the electrical current of the motor as percentage of max current.
     * @param units The measurement unit for the current.
     */
    double motor::current(percentUnits units) {print_unimplimented(); return 0.0;} 

    /**
     * @brief Gets the electrical voltage of the motor.
     * @return Returns a double that represents the electrical voltage of the motor in the units defined in the parameter.
     * @param units The measurement unit for the voltage.
     */
    double motor::voltage(voltageUnits units) {print_unimplimented(); return 0.0;} 

    /**
     * @brief Gets the power of the motor.
     * @return Returns a double that represents the power of the motor in the units defined in the parameter.
     * @param units The measurement unit for the power.
     */
    double motor::power(powerUnits units) {print_unimplimented(); return 0.0;} 

    /**
     * @brief Gets the torque of the motor.
     * @return Returns a double that represents the torque of the motor in the units defined in the parameter.
     * @param units The measurement unit for the torque.
     */
    double motor::torque(torqueUnits units) {print_unimplimented(); return 0.0;} 

    /**
     * @brief Gets the efficiency of the motor.
     * @return Returns the efficiency of the motor in the units defined in the parameter.
     * @param units (Optional) The measurement unit for the efficiency. By default, this parameter is a percentage.
     */
    double motor::efficiency(percentUnits units) {print_unimplimented(); return 0.0;} 

    /**
     * @brief Gets the temperature  of the motor.
     * @return Returns the temperature of the motor in the units defined in the parameter.
     * @param units The measurement unit for the temperature.
     */
    double motor::temperature(percentUnits units) {print_unimplimented(); return 0.0;} 

    /**
     * @brief Gets the temperature  of the motor.
     * @return Returns the temperature of the motor in the units defined in the parameter.
     * @param units The measurement unit for the temperature.
     */
    double motor::temperature(temperatureUnits units) {print_unimplimented(); return 0.0;} 

    /**
     * @brief Get the type of the motor, 11W or 5.5W.
     * @return Returns the type of the motor, 0 is 11W, 1 is 5.5W.
     */
    int32_t motor::getMotorType() {print_unimplimented(); return -1;}

    int32_t motor::getTimeout() {print_unimplimented(); return -1;}
    double motor::getVelocity(velocityUnits units) {print_unimplimented(); return 0.0;} 
    double motor::command(velocityUnits units) {print_unimplimented(); return 0.0;} 

};