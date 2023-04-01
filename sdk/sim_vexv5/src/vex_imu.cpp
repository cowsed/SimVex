#include "vex_imu.h"
#include "sim/util.h"
#include "vex_units.h"
namespace vex
{

    double _scaleRotationValue(double value, rotationUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    void _collisionEventHandler(void *arg) { print_unimplimented(); }

    /**
     * @brief Creates a new inertial object on the port specified.
     * @param index The port index for this inertial. The index is zero-based.
     */
    inertial::inertial(int32_t index, turnType dir) { print_unimplimented(); }
    inertial::~inertial() { print_unimplimented(); }

    bool inertial::installed()
    {
        print_unimplimented();
        return false;
    }
    int32_t inertial::value()
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief class to hold an inertial matrix
     * @details
     *  This class wraps a 4x4 matrix that can be used when performing
     *  3d transformations.
     */
    inertial::matrix::matrix() { print_unimplimented(); }
    inertial::matrix::~matrix() { print_unimplimented(); }

    void inertial::matrix::transform(double &x, double &y, double &z) { print_unimplimented(); }
    void inertial::matrix::multiply(inertial::matrix &m) { print_unimplimented(); }
    double inertial::matrix::inverse()
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief class to hold inertial quaternion data
     */
    inertial::quaternion::quaternion() { print_unimplimented(); }
    inertial::quaternion::quaternion(double a, double b, double c, double d) { print_unimplimented(); }
    inertial::quaternion::~quaternion() { print_unimplimented(); }

    // set equal to another quaternion
    inertial::quaternion &inertial::quaternion::operator=(const inertial::quaternion other)
    {
        print_unimplimented();
        return *this;
    }

    // Return this quaternion's conjugate.
    inertial::quaternion inertial::quaternion::conjugate() const
    {
        print_unimplimented();
        return inertial::quaternion{};
    }

    // Return the unit quaternion corresponding to the same rotation as this one.
    inertial::quaternion inertial::quaternion::normalized() const
    {
        print_unimplimented();
        return inertial::quaternion{};
    }

    // Return the quaternion multiplied by rhs.
    inertial::quaternion inertial::quaternion::operator*(const inertial::quaternion &rhs) const
    {
        print_unimplimented();
        return inertial::quaternion{};
    }

    // Multiply this quaternion by rhs.
    inertial::quaternion &inertial::quaternion::operator*=(const inertial::quaternion &rhs)
    {
        print_unimplimented();
        return *this;
    }

    // transform a vector x, y, z using this quaternion
    void inertial::quaternion::transform(double &x, double &y, double &z) { print_unimplimented(); }

    // create a rotation quaternion fron an angle in degrees
    inertial::quaternion inertial::quaternion::fromAngleX(double angle)
    {
        print_unimplimented();
        return inertial::quaternion{};
    }
    inertial::quaternion inertial::quaternion::fromAngleY(double angle)
    {
        print_unimplimented();
        return inertial::quaternion{};
    }
    inertial::quaternion inertial::quaternion::fromAngleZ(double angle)
    {
        print_unimplimented();
        return inertial::quaternion{};
    }

    // create a 4x4 matrix representing this quaternions transform
    void inertial::quaternion::matrix(inertial::matrix &m) { print_unimplimented(); }

    /**
     * @brief class to hold inertial angle data
     * @details
     *  data can be access either as roll, pitch and yaw or x, y and z
     *  data is stored in degrees.
     */
    inertial::attitude::attitude() { print_unimplimented(); }
    inertial::attitude::attitude(double roll, double pitch, double yaw) { print_unimplimented(); }
    inertial::attitude::~attitude() { print_unimplimented(); }

    void inertial::attitude::transform(double &x, double &y, double &z) { print_unimplimented(); }

    /**
     * @brief Starts recalibration of the inertial sensor.
     */
    void inertial::startCalibration(int32_t value) { print_unimplimented(); }

    /**
     * @brief Returns true while the inertial sensor is performing a requested recalibration, changing to false once recalibration has completed.
     * @return Returns true if inertial sensor is still calibrating.
     */
    bool inertial::isCalibrating(void)
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief reset the heading of the sensor to 0
     */
    void inertial::resetHeading() { print_unimplimented(); }

    /**
     * @brief reset the rotation angle of the sensor to 0
     */
    void inertial::resetRotation() { print_unimplimented(); }

    /**
     * @brief set the inertial sensor heading to a new value
     * @param value The new heading for the inertial sensor
     * @param units The rotation unit for the angle
     */
    void inertial::setHeading(double value, rotationUnits units) { print_unimplimented(); }

    /**
     * @brief set the inertial sensor rotation to angle
     * @param value The new absolute rotation angle for the inertial sensor
     * @param units The rotation unit for the angle
     */
    void inertial::setRotation(double value, rotationUnits units) { print_unimplimented(); }

    /**
     * @brief Gets the angle (yaw angle) of the inertial sensor.
     * @return Returns a double that represents the unit value specified by the parameter of the inertial sensor.
     * @param units The measurement unit for the inertial device.
     */
    double inertial::angle(rotationUnits units = rotationUnits::deg)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the roll angle of the inertial sensor.
     * @return Returns a double that represents the unit value specified by the parameter of the inertial sensor.
     * @param units The measurement unit for the inertial sensor.
     */
    double inertial::roll(rotationUnits units = rotationUnits::deg)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the pitch angle of the inertial sensor.
     * @return Returns a double that represents the unit value specified by the parameter of the inertial sensor.
     * @param units The measurement unit for the inertial device.
     */
    double inertial::pitch(rotationUnits units = rotationUnits::deg)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the yaw angle of the inertial sensor.
     * @return Returns a double that represents the unit value specified by the parameter of the inertial sensor.
     * @param units The measurement unit for the inertial sensor.
     */
    double inertial::yaw(rotationUnits units = rotationUnits::deg)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets an orientation angle of the inertial sensor.
     * @return Returns a double that represents the unit value specified by the parameter of the inertial sensor.
     * @param axis  The orientation axis to recover, roll, pitch or yaw.
     * @param units The measurement unit for the inertial sensor.
     */
    double inertial::orientation(orientationType axis, rotationUnits units) { print_unimplimented();  return 0.0;}

    /**
     * @brief Gets the heading (yaw angle as 0-360 deg) of the inertial sensor.
     * @return Returns a double that represents the unit value specified by the parameter of the inertial sensor.
     * @param units The measurement unit for the inertial sensor.
     */
    double inertial::heading(rotationUnits units) { print_unimplimented();  return 0.0;}

    /**
     * @brief Gets the absolute angle (yaw angle without limits) of the inertial sensor.
     * @return Returns a double that represents the unit value specified by the parameter of the inertial sensor.
     * @param units The measurement unit for the inertial sensor.
     */
    double inertial::rotation(rotationUnits units) { print_unimplimented();  return 0.0;}

    /**
     * @brief Gets the inertial sensor orientation in quaternion form
     * @param q reference to instance of a inertial::quaternion class
     */
    void inertial::orientation(quaternion &q) { print_unimplimented(); }

    /**
     * @brief Gets the inertial sensor orientation in quaternion form
     * @return inertial::quaternion object
     */
    inertial::quaternion inertial::orientation() { print_unimplimented();  return inertial::quaternion{};}

    /**
     * @brief Gets the inertial sensor orientation in rotation form
     * @param a reference to instance of a inertial::attitude class
     */
    void inertial::orientation(attitude &a) { print_unimplimented(); }

    /**
     * @brief Gets the inertial sensor raw gyro data in specified units
     * @param axis the inertial sensor axis to use
     * @param units The units return value
     * @return value of the specified inertial sensor axis
     */
    double inertial::gyroRate(axisType axis, velocityUnits units) { print_unimplimented(); return 0.0; }

    /**
     * @brief Gets the inertial sensor raw acceleration data in G
     * @param axis the inertial sensor axis to use
     * @return value of the specified inertial sensor axis
     */
    double inertial::acceleration(axisType axis) { print_unimplimented();  return 0.0;}

    /**
     * @brief Calls a function when the inertial sensor heading value changes.
     * @param callback A reference to a function.
     */
    void inertial::changed(void (*callback)(void)) { print_unimplimented(); }

    /**
     * @brief Calls a function when the inertial sensor detects a collision
     * @param callback A reference to a function.
     */
    void inertial::collision(void (*callback)(axisType, double, double, double)) { print_unimplimented(); }

    // mevent  CHANGED   = { (uint32_t)_index, ((uint32_t)tEventType::EVENT_HEADING_CHANGED) }{print_unimplimented();}
    // mevent  COLLISION = { (uint32_t)_index, ((uint32_t)tEventType::EVENT_COLLISION) }{print_unimplimented();}

    /**
     * @brief recover inertial sensor raw status
     */
    int32_t inertial::status() { print_unimplimented(); return -1;}

    /**
     * @brief recover inertial sensor temperature in deg C
     */
    double inertial::temperature() { print_unimplimented();  return 0.0;}

    /**
     * @brief change data rate to user specified value, will be rounded to multiple of 5mS
     */
    void inertial::datarate(uint32_t rate) { print_unimplimented(); }

    /**
     * @brief Set direction for positive angles
     * @param dir turnType::right or turnType::left
     */
    void inertial::setTurnType(turnType dir) { print_unimplimented(); }

    /**
     * @brief Get direction for positive angles
     * @return turnType::right or turnType::left
     */
    turnType inertial::getTurnType() { print_unimplimented(); return turnType::left;}

    //
    // Most of these are special application.  sub class needs to be used to access them.
    //

    /**
     * @brief class to hold inertial sensor gyro data
     */
    inertial::gyro::gyro() { print_unimplimented(); }
    inertial::gyro::~gyro() { print_unimplimented(); }

    // set equal to another gyro
    inertial::gyro &inertial::gyro::operator=(const inertial::gyro other) { print_unimplimented(); return *this;}

    /**
     * @brief class to hold inertial sensor acceleration data
     */
    inertial::accel::accel() { print_unimplimented(); }
    inertial::accel::~accel() { print_unimplimented(); }

    // set equal to another gyro
    inertial::accel &inertial::accel::operator=(const inertial::accel other) { print_unimplimented(); return *this;}

    /**
     * @brief Gets the inertial sensor raw gyro data in dps
     * @return inertial::gyro object
     */
    inertial::gyro inertial::gyroRate() { print_unimplimented(); return inertial::gyro{};}

    /**
     * @brief Gets the inertial sensor raw acceleration data in G
     * @return inertial::accel object
     */
    inertial::accel inertial::acceleration() { print_unimplimented(); return inertial::accel{};}

    /**
     * @brief Set the physical orientation of the inertial sensor, this will cause recalibration
     * @param orientation the inertial sensor orientation
     */
    void inertial::setOrientation(inertial::orientationMode orientation) { print_unimplimented(); }

    // special application - do not use unless requested
    void inertial::setAccelerometerRange(uint8_t value) { print_unimplimented(); }
    void inertial::setCollisionThreshold(double value) { print_unimplimented(); }
};