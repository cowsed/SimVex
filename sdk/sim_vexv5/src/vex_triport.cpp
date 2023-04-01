#include "vex_triport.h"

namespace vex
{
    triport::triport(int32_t index) { print_unimplimented(); }
    triport::~triport(){print_unimplimented()};

    void triport::_configPort(uint32_t id, triportType type) { print_unimplimented(); }

    int32_t triport::_getIndex()
    {
        print_unimplimented();
        return -1;
    }

    V5_AdiPortConfiguration triport::_internalType(triportType type)
    {
        print_unimplimented();
        return V5_AdiPortConfiguration::kAdiPortTypeUndefined;
    }

    triportType triport::_externalType(V5_AdiPortConfiguration type)
    {
        print_unimplimented();
        return triportType::button;
    }

    /**
     * @brief Gets the status of what is installed on the port.
     * @return Returns true if a 3-Wire Port device is installed in the port, otherwise false.
     */
    bool triport::installed()
    {
        print_unimplimented();
        return false;
    }

    // PORT STUFF
    int32_t triport::port::_convertAnalog(analogUnits units)
    {
        print_unimplimented();
        return -1;
    }
    int32_t triport::port::_virtual_value(int32_t virtual_port)
    {
        print_unimplimented();
        return -1;
    }

    triport::port::port(const int32_t id, triport *parent) : _id(id), _parent(parent) { print_unimplimented(); }
    triport::port::port(const int32_t id, const triportType type, triport *parent) : _id(id), _parent(parent) { print_unimplimented(); }

    /**
     * @brief Sets the port to a specific port type.
     * @param type A type of port that you want to set it to.
     */
    void triport::port::type(const triportType type) { print_unimplimented(); }

    /**
     * @brief Gets the current port type.
     * @return Returns the Port Type.
     */
    triportType triport::port::type()
    {
        print_unimplimented();
        return triportType::button;
    }

    /**
     * @brief Gets the index of the parent smart port
     */
    int32_t triport::port::index()
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief Gets the id of the port
     * @return Returns an integer in the range 0 to 7, -1 for error
     */
    int32_t triport::port::id()
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief Sets the port's value to the specified integer in the parameter.
     * @param value An integer number that will be set to the port's value.
     */
    void triport::port::value(int32_t value) { print_unimplimented(); }

    /**
     * @brief Gets the value of a port.
     * @return Returns an integer that represents the port's value.
     */
    int32_t triport::port::value()
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief Sets the value of the port to a Boolean value.
     * @param value A true or false Boolean value that the port will be set to.
     */
    void triport::port::set(bool value) { print_unimplimented(); }

    /**
     * @brief Calls back a function when the port is pressed.
     * @param callback A reference to a function.
     */
    void triport::port::pressed(void (*callback)(void)) { print_unimplimented(); }

    /**
     * @brief Calls back a function when the port is released.
     * @param callback A reference to a function.
     */
    void triport::port::released(void (*callback)(void)) { print_unimplimented(); }

    /**
     * @brief Calls back a function when the port has changed value.
     * @param callback A reference to a function.
     */
    void triport::port::changed(void (*callback)(void)) { print_unimplimented(); }

    // tridevice
    __tridevice::__tridevice(triport::port &port, triportType type): _port(port){print_unimplimented();}
    __tridevice::~__tridevice(){print_unimplimented();}

    //==================================================================================================
    //     Digital Out
    //==================================================================================================

    digital_out::digital_out(triport::port &port) : __tridevice(port, triportType::digitalOutput)
    {
        print_unimplimented();
    }
    digital_out::~digital_out() {}

    /**
     * @brief Gets the value of the digital_out device.
     * @return Returns an integer that represents the value of the digital-out device.
     */
    int32_t digital_out::value()
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief Sets the digital_out device to a Boolean value.
     * @param value A true or false Boolean value.
     */
    void digital_out::set(bool value)
    {
        print_unimplimented();
    }
    digital_out::operator int()
    {
        print_unimplimented();
        return 0;
    }
    digital_out::operator bool()
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Sets the output value of the digital_out device.
     * @param value The value to set the digital_out device. Typically 1 or 0.
     */
    void digital_out::operator=(const int32_t value)
    {
        print_unimplimented();
    }

    /**
     * @brief Creates a new encoder object on the port specified in the parameter.
     * @param port A reference to a three wire port.
     */
    encoder::encoder(triport::port &port) : __tridevice(port, triportType::quadEncoder) {}
    encoder::~encoder() {}

    /**
     * @brief Gets the value of the encoder.
     * @return Returns an integer that represents the value of the encoder device.
     */
    int32_t encoder::value()
    {
        print_unimplimented();
        return -1;
    }
    encoder::operator int()
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief Resets the rotation of the encoder to zero.
     */
    void encoder::resetRotation(void) {}

    /**
     * @brief Sets the rotation of the encoder to a specific value.
     * @param val Sets the amount of rotation.
     * @param units The measurement unit for the rotation value.
     */
    void encoder::setRotation(double val, rotationUnits units) { print_unimplimented(); }

    void encoder::setPosition(double val, rotationUnits units) { print_unimplimented(); }

    /**
     * @brief Gets the rotation value of the encoder.
     * @return Returns a double that represents the current rotation of the encoder.
     * @param units The measurement unit for the encoder device.
     */
    double encoder::rotation(rotationUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    double encoder::position(rotationUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the velocity of the encoder.
     * @return Returns a double that represents the current velocity of the encoder.
     * @param units The measurement unit for the encoder device.
     */
    double encoder::velocity(velocityUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Calls a function when the encoder value changes.
     * @param callback A reference to a function.
     */
    void encoder::changed(void (*callback)(void)) { print_unimplimented(); }

};