#include "vex_rotation.h"
#include <stdint.h>
namespace vex
{
    /**
     * @brief Creates a new rotation object on the port specified.
     * @param index The port index for this rotation sensor. The index is zero-based.
     */
    rotation::rotation(int32_t index, bool revers) { print_unimplimented(); }
    rotation::~rotation() { print_unimplimented(); }

    bool rotation::installed() { print_unimplimented(); return false;}
    int32_t rotation::value() { print_unimplimented();  return -1;}

    /**
     * @brief Sets the encoder mode to "reverse", position and angle will change in the opposite direction.
     * @param value If set to true, the encoder counts in reverse
     */
    void rotation::setReversed(bool value) { print_unimplimented(); }

    /**
     * @brief Gets the angle of the absolute encoder.
     * @return Returns a double that represents the unit value specified by the parameter of the encoder sensor.
     * @param units The measurement unit for the encoder device.
     */
    double rotation::angle(rotationUnits units) { print_unimplimented();  return 0.0;}

    /**
     * @brief Resets the position of the absolute encoder to the value of zero.
     */
    void rotation::resetPosition(void) { print_unimplimented(); }

    /**
     * @brief Sets the value of the absolute encoder to the value specified in the parameter.
     * @param value Sets the current position of the absolute encoder.
     * @param units The measurement unit for the position value.
     */
    void rotation::setPosition(double value, rotationUnits units) { print_unimplimented(); }

    /**
     * @brief Gets the current position of the absolute encoder.
     * @returns Returns a double that represents the current position of the encoder in the units defined in the parameter.
     * @param units The measurement unit for the position.
     */
    double rotation::position(rotationUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the current velocity of the absolute encoder.
     * @return Returns a double that represents the current velocity of the encoder in the units defined in the parameter.
     * @param units The measurement unit for the velocity.
     */
    double rotation::velocity(velocityUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Calls a function when the encoder value changes.
     * @param callback A reference to a function.
     */
    void rotation::changed(void (*callback)(void)) { print_unimplimented(); }

    // mevent  CHANGED   = { (uint32_t)_index, ((uint32_t)tEventType::EVENT_ANGLE_CHANGED) }{print_unimplimented();}

    /**
     * @brief recover abs encoder raw status
     */
    int32_t rotation::status()
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief recover abs encoder temperature in deg C
     */
    double rotation::temperature()
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief change data rate to user specified value, will be rounded to multiple of 5mS
     */
    void rotation::datarate(uint32_t rate) { print_unimplimented(); }
};