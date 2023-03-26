#include "vex_controller.h"

namespace vex
{
    int32_t controller::value(V5_ControllerIndex channel)
    {
        print_unimplimented();
        return -1;
    }

    int32_t controller::_getIndex()
    {
        print_unimplimented();
        return -1;
    }

    controller::controller() { print_unimplimented(); }

    controller::controller(controllerType id) { print_unimplimented(); }

    controller::~controller() { print_unimplimented(); }

    bool controller::installed()
    {
        print_unimplimented();
        return false;
    }

    void controller::rumble(const char *str) { print_unimplimented(); }

    controller::tEventType controller::button::_buttonToPressedEvent() const
    {
        using namespace vex;

        print_unimplimented();
        // return tEventType::EVENT_5_DN_PRESSED;
        switch (this->_id)
        {
            // XYZA - right D pad
        case controller::tButtonType::kButtonA:
            return tEventType::EVENT_8_R_PRESSED;
        case controller::tButtonType::kButtonB:
            return tEventType::EVENT_8_DN_PRESSED;
        case controller::tButtonType::kButtonY:
            return tEventType::EVENT_8_L_PRESSED;
        case controller::tButtonType::kButtonX:
            return tEventType::EVENT_8_UP_PRESSED;

            // UPLR - left D Pad

        case controller::tButtonType::kButtonRight:
            return tEventType::EVENT_7_R_PRESSED;
        case controller::tButtonType::kButtonLeft:
            return tEventType::EVENT_7_L_PRESSED;
        case controller::tButtonType::kButtonUp:
            return tEventType::EVENT_7_UP_PRESSED;
        case controller::tButtonType::kButtonDown:
            return tEventType::EVENT_7_DN_PRESSED;

            // Left Shoulder
        case controller::tButtonType::kButtonL1:
            return tEventType::EVENT_5_UP_PRESSED;
        case controller::tButtonType::kButtonL2:
            return tEventType::EVENT_5_DN_PRESSED;

            // Right Shoulder
        case controller::tButtonType::kButtonR1:
            return tEventType::EVENT_6_UP_PRESSED;
        case controller::tButtonType::kButtonR2:
            return tEventType::EVENT_6_DN_PRESSED;

        default:
            return tEventType::EVENT_5_DN_PRESSED;
        }

        return tEventType::EVENT_5_DN_PRESSED;
    }

    controller::tEventType controller::button::_buttonToReleasedEvent() const
    {
        switch (this->_id)
        {
            // XYZA - right D pad
        case controller::tButtonType::kButtonA:
            return tEventType::EVENT_8_R_RELEASED;
        case controller::tButtonType::kButtonB:
            return tEventType::EVENT_8_DN_RELEASED;
        case controller::tButtonType::kButtonY:
            return tEventType::EVENT_8_L_RELEASED;
        case controller::tButtonType::kButtonX:
            return tEventType::EVENT_8_UP_RELEASED;

            // UPLR - left D Pad

        case controller::tButtonType::kButtonRight:
            return tEventType::EVENT_7_R_RELEASED;
        case controller::tButtonType::kButtonLeft:
            return tEventType::EVENT_7_L_RELEASED;
        case controller::tButtonType::kButtonUp:
            return tEventType::EVENT_7_UP_RELEASED;
        case controller::tButtonType::kButtonDown:
            return tEventType::EVENT_7_DN_RELEASED;

            // Left Shoulder
        case controller::tButtonType::kButtonL1:
            return tEventType::EVENT_5_UP_RELEASED;
        case controller::tButtonType::kButtonL2:
            return tEventType::EVENT_5_DN_RELEASED;

            // Right Shoulder
        case controller::tButtonType::kButtonR1:
            return tEventType::EVENT_6_UP_RELEASED;
        case controller::tButtonType::kButtonR2:
            return tEventType::EVENT_6_DN_RELEASED;

        default:
            return tEventType::EVENT_5_DN_RELEASED;
        }

        return tEventType::EVENT_5_DN_RELEASED;
    }

    /**
     * @brief Sets the function to be called when the button is pressed.
     * @param callback A reference to a function.
     */
    void controller::button::pressed(void (*callback)(void)) const { print_unimplimented(); }

    /**
     * @brief Sets the function to be called when the button is released.
     * @param callback A reference to a function.
     */
    void controller::button::released(void (*callback)(void)) const { print_unimplimented(); }

    /**
     * @brief Gets the status of a button.
     * @return Returns a Boolean value based on the pressed states of the button. If the button is pressed it will return true.
     */
    bool controller::button::pressing(void) const
    {

        switch (this->_id)
        {
        case tButtonType::kButtonA:
            return sim::controller::get_button_pressing(_V5_ControllerIndex::ButtonA);
        case tButtonType::kButtonB:
            return sim::controller::get_button_pressing(_V5_ControllerIndex::ButtonB);
        case tButtonType::kButtonX:
            return sim::controller::get_button_pressing(_V5_ControllerIndex::ButtonX);
        case tButtonType::kButtonY:
            return sim::controller::get_button_pressing(_V5_ControllerIndex::ButtonY);

        case tButtonType::kButtonLeft:
            return sim::controller::get_button_pressing(_V5_ControllerIndex::ButtonLeft);
        case tButtonType::kButtonRight:
            return sim::controller::get_button_pressing(_V5_ControllerIndex::ButtonRight);
        case tButtonType::kButtonUp:
            return sim::controller::get_button_pressing(_V5_ControllerIndex::ButtonUp);
        case tButtonType::kButtonDown:
            return sim::controller::get_button_pressing(_V5_ControllerIndex::ButtonDown);

        case tButtonType::kButtonL1:
            return sim::controller::get_button_pressing(_V5_ControllerIndex::ButtonL1);
        case tButtonType::kButtonL2:
            return sim::controller::get_button_pressing(_V5_ControllerIndex::ButtonL2);
        case tButtonType::kButtonR1:
            return sim::controller::get_button_pressing(_V5_ControllerIndex::ButtonR1);
        case tButtonType::kButtonR2:
            return sim::controller::get_button_pressing(_V5_ControllerIndex::ButtonR2);

        default:
            return false;
        }
    }

    // Axis

    controller::tEventType controller::axis::_joystickToChangedEvent() const
    {
        switch (_id)
        {
        case tAxisType::kAxisA:
            return tEventType::EVENT_A_CHANGED;
        case tAxisType::kAxisB:
            return tEventType::EVENT_B_CHANGED;
        case tAxisType::kAxisC:
            return tEventType::EVENT_C_CHANGED;
        case tAxisType::kAxisD:
            return tEventType::EVENT_D_CHANGED;
        default:
            return tEventType::EVENT_D_CHANGED;
        }
    }

    /**
     * @brief Sets the function to be called when the joystick axis value changes.
     * @param callback A reference to a function.
     */
    void controller::axis::changed(void (*callback)(void)) const { print_unimplimented(); }

    /**
     * @brief Gets the value of the joystick axis on a scale from -127 to 127.
     * @return Returns an integer that represents the value of the joystick axis.
     */
    int32_t controller::axis::value(void) const
    {
        switch (this->_id)
        {
        case tAxisType::kAxisA:
            return (int32_t)(127 * sim::controller::get_axis_position(_V5_ControllerIndex::Axis3));
        case tAxisType::kAxisB:
            return (int32_t)(127 * sim::controller::get_axis_position(_V5_ControllerIndex::Axis4));
        case tAxisType::kAxisC:
            return (int32_t)(127 * sim::controller::get_axis_position(_V5_ControllerIndex::Axis1));
        case tAxisType::kAxisD:
            return (int32_t)(127 * sim::controller::get_axis_position(_V5_ControllerIndex::Axis2));
        default:
            return 0;
        }
    }

    /**
     * @brief Gets the position of the joystick axis on a scale from -100 to 100.
     * @return Returns an integer that represents the position of the joystick axis as defined by the unit in the parameter.
     * @param units (Optional) The type of unit that will be returned. By default, this parameter is a percentage.
     */
    int32_t controller::axis::position(percentUnits units) const
    {
        switch (this->_id)
        {
        case tAxisType::kAxisA:
            return (int32_t)(100 * sim::controller::get_axis_position(_V5_ControllerIndex::Axis3));
        case tAxisType::kAxisB:
            return (int32_t)(100 * sim::controller::get_axis_position(_V5_ControllerIndex::Axis4));
        case tAxisType::kAxisC:
            return (int32_t)(100 * sim::controller::get_axis_position(_V5_ControllerIndex::Axis1));
        case tAxisType::kAxisD:
            return (int32_t)(100 * sim::controller::get_axis_position(_V5_ControllerIndex::Axis2));
        default:
            return 0;
        }
    }

    controllerType getControllerId()
    {
        print_unimplimented();
        return controllerType::primary;
    }

    controller::lcd::lcd() { print_unimplimented(); }

    controller::lcd::lcd(controller *parent) { print_unimplimented(); }

    /**
     * @brief Sets the cursor to the row and column number set in the parameters.
     * @param row Sets the row number for where the cursor is placed.
     * @param col Sets the column number for where the cursor is placed.
     */
    void controller::lcd::setCursor(int32_t row, int32_t col) { print_unimplimented(); }

    /**
     * @brief An integer that tracks the current cursor position's column, starting at 1.
     * @return Returns an integer that tracks the current cursor position's column, starting at 1.
     */
    int32_t controller::lcd::column()
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief An integer that tracks the current cursor position's row, starting at 1.
     * @return Returns an integer that tracks the current cursor position's row, starting at 1.
     */
    int32_t controller::lcd::row()
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief Prints a number, string, or Boolean.
     * @param format This is a reference to a char format that prints the value of variables.
     * @param ... A variable list of parameters to insert into format string.
     */
    void controller::lcd::print(const char *format, ...) { print_unimplimented(); }
    void controller::lcd::print(char *format, ...) { print_unimplimented(); }

    /**
     * @brief Clears the controller's LCD screen.
     */
    void controller::lcd::clearScreen(void) { print_unimplimented(); }

    /**
     * @brief Clears the line specified by the parameter.
     * @param number The line number to be cleared.
     */
    void controller::lcd::clearLine(int number) { print_unimplimented(); }

    /**
     * @brief Clears the current line.
     */
    void controller::lcd::clearLine(void) { print_unimplimented(); }

    /**
     * @brief Moves the cursor to the next line.
     */
    void controller::lcd::newLine(void) { print_unimplimented(); }
}