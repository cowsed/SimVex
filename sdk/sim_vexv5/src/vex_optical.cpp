#include "vex_optical.h"
#include "vex_color.h"
#include "vex_units.h"
#include "sim/util.h"

namespace vex
{
    /**
     * @brief Creates a new optical sensor object on the port specified.
     * @param index The port index for this sensor. The index is zero-based.
     * @param enableGesture enable gesture detection
     */
    optical::optical(int32_t index, bool enableGesture) { print_unimplimented(); }
    optical::~optical() { print_unimplimented(); }

    bool optical::installed()
    {
        print_unimplimented();
        return false;
    }
    int32_t optical::value()
    {
        print_unimplimented();
        return 0;
    }

    /**
     * @brief Gets the hue detected by the optical sensor.
     * @return Returns an integer that represents the hue the optical sensor has detected.
     */
    double optical::hue()
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the brightness value detected by the optical sensor.
     * @return Returns an integer that represents the brightness value the optical sensor has detected.
     */
    double optical::brightness(bool bRaw)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the detected color as a fully saturated vex::color
     * @return Returns a vex::color object that represents the hue of the closest color detected to twelve possible values.
     */
    vex::color optical::color()
    {
        print_unimplimented();
        return vex::color{};
    }

    /**
     * @brief Check to see if an object is detected by the optical sensor.
     * @return Returns a boolean that represents whether an object has been detected.
     */
    bool optical::isNearObject()
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Calls a function when the optical sensor proximity sensor detects an object.
     * @param callback A reference to a function.
     */
    void optical::objectDetected(void (*callback)(void)) { print_unimplimented(); }

    /**
     * @brief Calls a function when the optical sensor proximity sensor detects an object is missing.
     * @param callback A reference to a function.
     */
    void optical::objectLost(void (*callback)(void)) { print_unimplimented(); }

    /**
     * @brief sets the value of the detection threshold
     * @param value The new detection threshold in proximity units (1 to 255).  0 means no change.
     * @return the current value of the proximity threshold
     */
    int32_t optical::objectDetectThreshold(int32_t value)
    {
        print_unimplimented();
        return 0;
    }

    /**
     * @brief Calls a function when the optical sensor gesture engine detects a movement down to up.
     * @param callback A reference to a function.
     */
    void optical::gestureUp(void (*callback)(void)) { print_unimplimented(); }

    /**
     * @brief Calls a function when the optical sensor gesture engine detects a movement up to down.
     * @param callback A reference to a function.
     */
    void optical::gestureDown(void (*callback)(void)) { print_unimplimented(); }

    /**
     * @brief Calls a function when the optical sensor gesture engine detects a movement right to left.
     * @param callback A reference to a function.
     */
    void optical::gestureLeft(void (*callback)(void)) { print_unimplimented(); }

    /**
     * @brief Calls a function when the optical sensor gesture engine detects a movement left to right.
     * @param callback A reference to a function.
     */
    void optical::gestureRight(void (*callback)(void)) { print_unimplimented(); }

    /**
     * @brief Turns the led on the optical sensor on or off.
     */
    void optical::setLight(ledState state) { print_unimplimented(); }

    /**
     * @brief Set the intensity of the led on the optical sensor in percent.
     */
    void optical::setLightPower(int32_t intensity, percentUnits units) { print_unimplimented(); }

    /**
     * @brief A class to collect all gesture detection data.
     */
    /**
     * @brief Enable gesture detection on the optical sensor.
     */
    void optical::gestureEnable(void) { print_unimplimented(); }

    /**
     * @brief Disable gesture detection on the optical sensor.
     */
    void optical::gestureDisable(void) { print_unimplimented(); }

    /**
     * @brief get object with the most recent gesture detection data.
     */
    optical::gesture getGesture()
    {
        print_unimplimented();
        return optical::gesture();
    }

    optical::gesture::gesture() { print_unimplimented(); }
    optical::gesture::~gesture() { print_unimplimented(); }

}