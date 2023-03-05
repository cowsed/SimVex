/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2016, All rights reserved.               */
/*                                                                            */
/*    Module:     v5_api.h                                                    */
/*    Author:     James Pearman                                               */
/*    Created:    8 Nov 2016                                                  */
/*                                                                            */
/*    Revisions:  V0.1                                                        */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#include "include/v5_api.h"

/*----------------------------------------------------------------------------*/
/*    jumptable public API                                                    */
/*----------------------------------------------------------------------------*/
//
// These are the raw jumptable wrapper function prototypes
// Many are used directly, others are further wrapped in a simpler API allowing
// access via V5 port number rather than a device pointer.
// see v5_apiuser.h for these functions
//

// simple background processing
void vexBackgroundProcessing(void)
{
    print_unimplimented();
}

// Console output

// same thing as vex_printf
//int32_t vexDebug(char const *fmt, ...){}

int32_t vex_printf(char const *fmt, ...)
{
    sim_printf("INTERCEPTED: ");
    va_list arg;
    int done;
    va_start(arg, fmt);
    done = vfprintf(stdout, fmt, arg);
    va_end(arg);
    return done;

}
int32_t vex_sprintf(char *out, const char *format, ...)
{
    print_unimplimented();
    return -1;
}
int32_t vex_snprintf(char *out, uint32_t max_len, const char *format, ...)
{
    print_unimplimented();
    return -1;
}
int32_t vex_vsprintf(char *out, const char *format, va_list args)
{
    print_unimplimented();
    return -1;
}
int32_t vex_vsnprintf(char *out, uint32_t max_len, const char *format, va_list args)
{
    print_unimplimented();
    return -1;
}

// system
uint32_t vexSystemTimeGet(void)
{
    print_unimplimented();
    return -1;
}
void vexGettime(struct time *pTime)
{
    print_unimplimented();
}

void vexGetdate(struct date *pDate)
{
    print_unimplimented();
}

void vexSystemMemoryDump(void)
{
    print_unimplimented();
}
void vexSystemDigitalIO(uint32_t pin, uint32_t value)
{
    print_unimplimented();
}
uint32_t vexSystemStartupOptions(void)
{
    print_unimplimented();
    return -1;
}
void vexSystemExitRequest(void)
{
    print_unimplimented();
}
uint64_t vexSystemHighResTimeGet(void)
{
    print_unimplimented();
    return -1;
}
uint64_t vexSystemPowerupTimeGet(void)
{
    print_unimplimented();
    return -1;
}
uint32_t vexSystemLinkAddrGet(void)
{
    print_unimplimented();
    return -1;
}
uint32_t vexSystemUsbStatus(void)
{
    print_unimplimented();
    return -1;
}

// Generic device
uint32_t vexDevicesGetNumber(void)
{
    print_unimplimented();
    return -1;
}
uint32_t vexDevicesGetNumberByType(V5_DeviceType type)
{
    print_unimplimented();
    return -1;
}
V5_DeviceT vexDevicesGet(void)
{
    print_unimplimented();
    return nullptr;
}
V5_DeviceT vexDeviceGetByIndex(uint32_t index)
{
    print_unimplimented();
    return nullptr;
}
int32_t vexDeviceGetStatus(V5_DeviceType *buffer)
{
    print_unimplimented();
    return -1;
}
int32_t vexDeviceGetTimestamp(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
int32_t vexDeviceGetTimestampByIndex(int32_t index)
{
    print_unimplimented();
    return -1;
}
uint32_t vexDeviceButtonStateGet(void)
{
    print_unimplimented();
    return -1;
}

// This is used by the port index functions to map an index to the device pointer
// defined in header
// #define VEX_DEVICE_GET(device, index) V5_DeviceT device = vexDeviceGetByIndex(index)

// Controller
int32_t vexControllerGet(V5_ControllerId id, V5_ControllerIndex index)
{
    print_unimplimented();
    return -1;
}
V5_ControllerStatus vexControllerConnectionStatusGet(V5_ControllerId id)
{
    print_unimplimented();
    return kV5ControllerOffline;
}
bool vexControllerTextSet(V5_ControllerId id, uint32_t line, uint32_t col, const char *str)
{
    print_unimplimented();
    return false;
}

// LED sensor
void vexDeviceLedSet(V5_DeviceT device, V5_DeviceLedColor value)
{
    print_unimplimented();
}
void vexDeviceLedRgbSet(V5_DeviceT device, uint32_t color)
{
    print_unimplimented();
}
V5_DeviceLedColor vexDeviceLedGet(V5_DeviceT device)
{
    print_unimplimented();
    return kLedColorBlack;
}
uint32_t vexDeviceLedRgbGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}

// ADI sensor
void vexDeviceAdiPortConfigSet(V5_DeviceT device, uint32_t port, V5_AdiPortConfiguration type)
{
    print_unimplimented();
}
V5_AdiPortConfiguration vexDeviceAdiPortConfigGet(V5_DeviceT device, uint32_t port)
{
    print_unimplimented();
    return kAdiPortTypeDigitalIn;
}
void vexDeviceAdiValueSet(V5_DeviceT device, uint32_t port, int32_t value)
{
    print_unimplimented();
}
int32_t vexDeviceAdiValueGet(V5_DeviceT device, uint32_t port)
{
    print_unimplimented();
    return -1;
}

// Bumper switch
V5_DeviceBumperState vexDeviceBumperGet(V5_DeviceT device)
{
    print_unimplimented();
    return kBumperReleased;
}

// Gyro - obsolete, there is currently no dedicated gyro
void vexDeviceGyroReset(V5_DeviceT device)
{
    print_unimplimented();
}
double vexDeviceGyroHeadingGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
double vexDeviceGyroDegreesGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}

// Sonar - obsolete, there is currently no dedicated gyro
int32_t vexDeviceSonarValueGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}

// Generic sensor - (who knows !)
int32_t vexDeviceGenericValueGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}

// Motor
void vexDeviceMotorVelocitySet(V5_DeviceT device, int32_t velocity)
{
    print_unimplimented();
}
void vexDeviceMotorVelocityUpdate(V5_DeviceT device, int32_t velocity)
{
    print_unimplimented();
}
void vexDeviceMotorVoltageSet(V5_DeviceT device, int32_t value)
{
    print_unimplimented();
}
int32_t vexDeviceMotorVelocityGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
double vexDeviceMotorActualVelocityGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
int32_t vexDeviceMotorDirectionGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceMotorModeSet(V5_DeviceT device, V5MotorControlMode mode)
{
    print_unimplimented();
}
V5MotorControlMode vexDeviceMotorModeGet(V5_DeviceT device)
{
    print_unimplimented();
    return kMotorControlModeOFF;
}
void vexDeviceMotorPwmSet(V5_DeviceT device, int32_t value)
{
    print_unimplimented();
}
int32_t vexDeviceMotorPwmGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceMotorCurrentLimitSet(V5_DeviceT device, int32_t value)
{
    print_unimplimented();
}
int32_t vexDeviceMotorCurrentLimitGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceMotorVoltageLimitSet(V5_DeviceT device, int32_t value)
{
    print_unimplimented();
}
int32_t vexDeviceMotorVoltageLimitGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceMotorPositionPidSet(V5_DeviceT device, V5_DeviceMotorPid *pid)
{
    print_unimplimented();
}
void vexDeviceMotorVelocityPidSet(V5_DeviceT device, V5_DeviceMotorPid *pid)
{
    print_unimplimented();
}
int32_t vexDeviceMotorCurrentGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
int32_t vexDeviceMotorVoltageGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
double vexDeviceMotorPowerGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
double vexDeviceMotorTorqueGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
double vexDeviceMotorEfficiencyGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
double vexDeviceMotorTemperatureGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
bool vexDeviceMotorOverTempFlagGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
bool vexDeviceMotorCurrentLimitFlagGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
uint32_t vexDeviceMotorFaultsGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
bool vexDeviceMotorZeroVelocityFlagGet(V5_DeviceT device)
{
    print_unimplimented();
    return false;
}
bool vexDeviceMotorZeroPositionFlagGet(V5_DeviceT device)
{
    print_unimplimented();
    return false;
}
uint32_t vexDeviceMotorFlagsGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceMotorReverseFlagSet(V5_DeviceT device, bool value)
{
    print_unimplimented();
}
bool vexDeviceMotorReverseFlagGet(V5_DeviceT device)
{
    print_unimplimented();
    return false;
}
void vexDeviceMotorEncoderUnitsSet(V5_DeviceT device, V5MotorEncoderUnits units)
{
    print_unimplimented();
}
V5MotorEncoderUnits vexDeviceMotorEncoderUnitsGet(V5_DeviceT device)
{
    print_unimplimented();
    return kMotorEncoderRotations;
}
void vexDeviceMotorBrakeModeSet(V5_DeviceT device, V5MotorBrakeMode mode)
{
    print_unimplimented();
}
V5MotorBrakeMode vexDeviceMotorBrakeModeGet(V5_DeviceT device)
{
    print_unimplimented();
    return kV5MotorBrakeModeCoast;
}
void vexDeviceMotorPositionSet(V5_DeviceT device, double position)
{
    print_unimplimented();
}
double vexDeviceMotorPositionGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
int32_t vexDeviceMotorPositionRawGet(V5_DeviceT device, uint32_t *timestamp)
{
    print_unimplimented();
    return -1;
}
void vexDeviceMotorPositionReset(V5_DeviceT device)
{
    print_unimplimented();
}
double vexDeviceMotorTargetGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
void vexDeviceMotorServoTargetSet(V5_DeviceT device, double position)
{
    print_unimplimented();
}
void vexDeviceMotorAbsoluteTargetSet(V5_DeviceT device, double position, int32_t velocity)
{
    print_unimplimented();
}
void vexDeviceMotorRelativeTargetSet(V5_DeviceT device, double position, int32_t velocity)
{
    print_unimplimented();
}
void vexDeviceMotorGearingSet(V5_DeviceT device, V5MotorGearset value)
{
    print_unimplimented();
}
V5MotorGearset vexDeviceMotorGearingGet(V5_DeviceT device)
{
    print_unimplimented();
    return kMotorGearSet_18;
}
void vexDeviceMotorExternalProfileSet(V5_DeviceT device, double position, int32_t velocity)
{
    print_unimplimented();
}

// Vision sensor
void vexDeviceVisionModeSet(V5_DeviceT device, V5VisionMode mode)
{
    print_unimplimented();
}
V5VisionMode vexDeviceVisionModeGet(V5_DeviceT device)
{
    print_unimplimented();
    return kVisionModeNormal;
}
int32_t vexDeviceVisionObjectCountGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
int32_t vexDeviceVisionObjectGet(V5_DeviceT device, uint32_t indexObj, V5_DeviceVisionObject *pObject)
{
    print_unimplimented();
    return -1;
}
void vexDeviceVisionSignatureSet(V5_DeviceT device, V5_DeviceVisionSignature *pSignature)
{
    print_unimplimented();
}
bool vexDeviceVisionSignatureGet(V5_DeviceT device, uint32_t id, V5_DeviceVisionSignature *pSignature)
{
    print_unimplimented();
    return false;
}
void vexDeviceVisionBrightnessSet(V5_DeviceT device, uint8_t percent)
{
    print_unimplimented();
}
uint8_t vexDeviceVisionBrightnessGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceVisionWhiteBalanceModeSet(V5_DeviceT device, V5VisionWBMode mode)
{
    print_unimplimented();
}
V5VisionWBMode vexDeviceVisionWhiteBalanceModeGet(V5_DeviceT device)
{
    print_unimplimented();
    return kVisionWBNormal;
}
void vexDeviceVisionWhiteBalanceSet(V5_DeviceT device, V5_DeviceVisionRgb color)
{
    print_unimplimented();
}
V5_DeviceVisionRgb vexDeviceVisionWhiteBalanceGet(V5_DeviceT device)
{
    print_unimplimented();
    return V5_DeviceVisionRgb{};
}
void vexDeviceVisionLedModeSet(V5_DeviceT device, V5VisionLedMode mode)
{
    print_unimplimented();
}
V5VisionLedMode vexDeviceVisionLedModeGet(V5_DeviceT device)
{
    print_unimplimented();
    return kVisionLedModeAuto;
}
void vexDeviceVisionLedBrigntnessSet(V5_DeviceT device, uint8_t percent)
{
    print_unimplimented();
}
uint8_t vexDeviceVisionLedBrigntnessGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceVisionLedColorSet(V5_DeviceT device, V5_DeviceVisionRgb color)
{
    print_unimplimented();
}
V5_DeviceVisionRgb vexDeviceVisionLedColorGet(V5_DeviceT device)
{
    print_unimplimented();
    return V5_DeviceVisionRgb{};
}
void vexDeviceVisionWifiModeSet(V5_DeviceT device, V5VisionWifiMode mode)
{
    print_unimplimented();
}
V5VisionWifiMode vexDeviceVisionWifiModeGet(V5_DeviceT device)
{
    print_unimplimented();
    return kVisionWifiModeOff;
}

// IMU
void vexDeviceImuReset(V5_DeviceT device)
{
    print_unimplimented();
}
double vexDeviceImuHeadingGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
double vexDeviceImuDegreesGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
void vexDeviceImuQuaternionGet(V5_DeviceT device, V5_DeviceImuQuaternion *data)
{
    print_unimplimented();
}
void vexDeviceImuAttitudeGet(V5_DeviceT device, V5_DeviceImuAttitude *data)
{
    print_unimplimented();
}
void vexDeviceImuRawGyroGet(V5_DeviceT device, V5_DeviceImuRaw *data)
{
    print_unimplimented();
}
void vexDeviceImuRawAccelGet(V5_DeviceT device, V5_DeviceImuRaw *data)
{
    print_unimplimented();
}
uint32_t vexDeviceImuStatusGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceImuModeSet(V5_DeviceT device, uint32_t mode)
{
    print_unimplimented();
}
uint32_t vexDeviceImuModeGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceImuDataRateSet(V5_DeviceT device, uint32_t rate)
{
    print_unimplimented();
}

// Rangefinder/Lidar - actual API to be determined
int32_t vexDeviceRangeValueGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}

// Absolute encoder
void vexDeviceAbsEncReset(V5_DeviceT device)
{
    print_unimplimented();
}
void vexDeviceAbsEncPositionSet(V5_DeviceT device, int32_t position)
{
    print_unimplimented();
}
int32_t vexDeviceAbsEncPositionGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
int32_t vexDeviceAbsEncVelocityGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
int32_t vexDeviceAbsEncAngleGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceAbsEncReverseFlagSet(V5_DeviceT device, bool value)
{
    print_unimplimented();
}
bool vexDeviceAbsEncReverseFlagGet(V5_DeviceT device)
{
    print_unimplimented();
    return false;
}
uint32_t vexDeviceAbsEncStatusGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceAbsEncDataRateSet(V5_DeviceT device, uint32_t rate)
{
    print_unimplimented();
}

// Optical/color sensor
double vexDeviceOpticalHueGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
double vexDeviceOpticalSatGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
double vexDeviceOpticalBrightnessGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
int32_t vexDeviceOpticalProximityGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceOpticalRgbGet(V5_DeviceT device, V5_DeviceOpticalRgb *data)
{
    print_unimplimented();
}
void vexDeviceOpticalLedPwmSet(V5_DeviceT device, int32_t value)
{
    print_unimplimented();
}
int32_t vexDeviceOpticalLedPwmGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
uint32_t vexDeviceOpticalStatusGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceOpticalRawGet(V5_DeviceT device, V5_DeviceOpticalRaw *data)
{
    print_unimplimented();
}
void vexDeviceOpticalModeSet(V5_DeviceT device, uint32_t mode)
{
    print_unimplimented();
}
uint32_t vexDeviceOpticalModeGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
uint32_t vexDeviceOpticalGestureGet(V5_DeviceT, V5_DeviceOpticalGesture *pData)
{
    print_unimplimented();
    return -1;
}
void vexDeviceOpticalGestureEnable(V5_DeviceT)
{
    print_unimplimented();
}
void vexDeviceOpticalGestureDisable(V5_DeviceT)
{
    print_unimplimented();
}
int32_t vexDeviceOpticalProximityThreshold(V5_DeviceT device, int32_t value)
{
    print_unimplimented();
    return -1;
}
void vexDeviceOpticalIntegrationTimeSet(V5_DeviceT device, double timeMs)
{
    print_unimplimented();
}
double vexDeviceOpticalIntegrationTimeGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}

// Electro magnet
void vexDeviceMagnetPowerSet(V5_DeviceT device, int32_t value, int32_t time)
{
    print_unimplimented();
}
int32_t vexDeviceMagnetPowerGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceMagnetPickup(V5_DeviceT device, V5_DeviceMagnetDuration duration)
{
    print_unimplimented();
}
void vexDeviceMagnetDrop(V5_DeviceT device, V5_DeviceMagnetDuration duration)
{
    print_unimplimented();
}
double vexDeviceMagnetTemperatureGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
double vexDeviceMagnetCurrentGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
uint32_t vexDeviceMagnetStatusGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}

// Distance
uint32_t vexDeviceDistanceDistanceGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
uint32_t vexDeviceDistanceConfidenceGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
int32_t vexDeviceDistanceObjectSizeGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
double vexDeviceDistanceObjectVelocityGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
uint32_t vexDeviceDistanceStatusGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}

// Gps
void vexDeviceGpsReset(V5_DeviceT device)
{
    print_unimplimented();
}
double vexDeviceGpsHeadingGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
double vexDeviceGpsDegreesGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
void vexDeviceGpsQuaternionGet(V5_DeviceT device, V5_DeviceGpsQuaternion *data)
{
    print_unimplimented();
}
void vexDeviceGpsAttitudeGet(V5_DeviceT device, V5_DeviceGpsAttitude *data, bool bRaw)
{
    print_unimplimented();
}
void vexDeviceGpsRawGyroGet(V5_DeviceT device, V5_DeviceGpsRaw *data)
{
    print_unimplimented();
}
void vexDeviceGpsRawAccelGet(V5_DeviceT device, V5_DeviceGpsRaw *data)
{
    print_unimplimented();
}
uint32_t vexDeviceGpsStatusGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceGpsModeSet(V5_DeviceT device, uint32_t mode)
{
    print_unimplimented();
}
uint32_t vexDeviceGpsModeGet(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
void vexDeviceGpsDataRateSet(V5_DeviceT device, uint32_t rate)
{
    print_unimplimented();
}
void vexDeviceGpsOriginSet(V5_DeviceT device, double ox, double oy)
{
    print_unimplimented();
}
void vexDeviceGpsOriginGet(V5_DeviceT device, double *ox, double *oy)
{
    print_unimplimented();
}
void vexDeviceGpsRotationSet(V5_DeviceT device, double value)
{
    print_unimplimented();
}
double vexDeviceGpsRotationGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}
void vexDeviceGpsInitialPositionSet(V5_DeviceT device, double initial_x, double initial_y, double initial_rotation)
{
    print_unimplimented();
}
double vexDeviceGpsErrorGet(V5_DeviceT device)
{
    print_unimplimented();
    return 0.0;
}

// Generic serial port comms to any device
void vexDeviceGenericSerialEnable(V5_DeviceT device, int32_t options)
{
    print_unimplimented();
}
void vexDeviceGenericSerialBaudrate(V5_DeviceT device, int32_t baudrate)
{
    print_unimplimented();
}
int32_t vexDeviceGenericSerialWriteChar(V5_DeviceT device, uint8_t c)
{
    print_unimplimented();
    return -1;
}
int32_t vexDeviceGenericSerialWriteFree(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
int32_t vexDeviceGenericSerialTransmit(V5_DeviceT device, uint8_t *buffer, int32_t length)
{
    print_unimplimented();
    return -1;
}
int32_t vexDeviceGenericSerialReadChar(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
int32_t vexDeviceGenericSerialPeekChar(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
int32_t vexDeviceGenericSerialReceiveAvail(V5_DeviceT device)
{
    print_unimplimented();
    return -1;
}
int32_t vexDeviceGenericSerialReceive(V5_DeviceT device, uint8_t *buffer, int32_t length)
{
    print_unimplimented();
    return -1;
}
void vexDeviceGenericSerialFlush(V5_DeviceT device)
{
    print_unimplimented();
}

// Display/graphics
void vexDisplayForegroundColor(uint32_t col)
{
    print_unimplimented();
}
void vexDisplayBackgroundColor(uint32_t col)
{
    print_unimplimented();
}
uint32_t vexDisplayForegroundColorGet(void)
{
    print_unimplimented();
    return -1;
}
uint32_t vexDisplayBackgroundColorGet(void)
{
    print_unimplimented();
    return -1;
}
void vexDisplayErase(void)
{
    print_unimplimented();
}
void vexDisplayScroll(int32_t nStartLine, int32_t nLines)
{
    print_unimplimented();
}
void vexDisplayScrollRect(int32_t x1, int32_t y1, int32_t x2, int32_t y2, int32_t nLines)
{
    print_unimplimented();
}
void vexDisplayCopyRect(int32_t x1, int32_t y1, int32_t x2, int32_t y2, uint32_t *pSrc, int32_t srcStride)
{
    print_unimplimented();
}
void vexDisplayPixelSet(uint32_t x, uint32_t y)
{
    print_unimplimented();
}
void vexDisplayPixelClear(uint32_t x, uint32_t y)
{
    print_unimplimented();
}
void vexDisplayLineDraw(int32_t x1, int32_t y1, int32_t x2, int32_t y2)
{
    print_unimplimented();
}
void vexDisplayLineClear(int32_t x1, int32_t y1, int32_t x2, int32_t y2)
{
    print_unimplimented();
}
void vexDisplayRectDraw(int32_t x1, int32_t y1, int32_t x2, int32_t y2)
{
    print_unimplimented();
}
void vexDisplayRectClear(int32_t x1, int32_t y1, int32_t x2, int32_t y2)
{
    print_unimplimented();
}
void vexDisplayRectFill(int32_t x1, int32_t y1, int32_t x2, int32_t y2)
{
    print_unimplimented();
}
void vexDisplayCircleDraw(int32_t xc, int32_t yc, int32_t radius)
{
    print_unimplimented();
}
void vexDisplayCircleClear(int32_t xc, int32_t yc, int32_t radius)
{
    print_unimplimented();
}
void vexDisplayCircleFill(int32_t xc, int32_t yc, int32_t radius)
{
    print_unimplimented();
}

void vexDisplayPrintf(int32_t xpos, int32_t ypos, uint32_t bOpaque, const char *format, ...)
{
    print_unimplimented();
}
void vexDisplayString(const int32_t nLineNumber, const char *format, ...)
{
    print_unimplimented();
}
void vexDisplayStringAt(int32_t xpos, int32_t ypos, const char *format, ...)
{
    print_unimplimented();
}
void vexDisplayBigString(const int32_t nLineNumber, const char *format, ...)
{
    print_unimplimented();
}
void vexDisplayBigStringAt(int32_t xpos, int32_t ypos, const char *format, ...)
{
    print_unimplimented();
}
void vexDisplaySmallStringAt(int32_t xpos, int32_t ypos, const char *format, ...)
{
    print_unimplimented();
}
void vexDisplayCenteredString(const int32_t nLineNumber, const char *format, ...)
{
    print_unimplimented();
}
void vexDisplayBigCenteredString(const int32_t nLineNumber, const char *format, ...)
{
    print_unimplimented();
}

// Not really for user code but we need these for some wrapper functions
void vexDisplayVPrintf(int32_t xpos, int32_t ypos, uint32_t bOpaque, const char *format, va_list args)
{
    print_unimplimented();
}
void vexDisplayVString(const int32_t nLineNumber, const char *format, va_list args)
{
    print_unimplimented();
}
void vexDisplayVStringAt(int32_t xpos, int32_t ypos, const char *format, va_list args)
{
    print_unimplimented();
}
void vexDisplayVBigString(const int32_t nLineNumber, const char *format, va_list args)
{
    print_unimplimented();
}
void vexDisplayVBigStringAt(int32_t xpos, int32_t ypos, const char *format, va_list args)
{
    print_unimplimented();
}
void vexDisplayVSmallStringAt(int32_t xpos, int32_t ypos, const char *format, va_list args)
{
    print_unimplimented();
}
void vexDisplayVCenteredString(const int32_t nLineNumber, const char *format, va_list args)
{
    print_unimplimented();
}
void vexDisplayVBigCenteredString(const int32_t nLineNumber, const char *format, va_list args)
{
    print_unimplimented();
}

void vexDisplayTextSize(uint32_t n, uint32_t d)
{
    print_unimplimented();
}
void vexDisplayFontNamedSet(const char *pFontName)
{
    print_unimplimented();
}
int32_t vexDisplayStringWidthGet(const char *pString)
{
    print_unimplimented();
    return -1;
}
int32_t vexDisplayStringHeightGet(const char *pString)
{
    print_unimplimented();
    return -1;
}

bool vexDisplayRender(bool bVsyncWait, bool bRunScheduler)
{
    print_unimplimented();
    return false;
}
void vexDisplayDoubleBufferDisable(void)
{
    print_unimplimented();
}

void vexDisplayClipRegionSet(int32_t x1, int32_t y1, int32_t x2, int32_t y2)
{
    print_unimplimented();
}
void vexDisplayClipRegionClear()
{
    print_unimplimented();
}

uint32_t vexImageBmpRead(const uint8_t *ibuf, v5_image *oBuf, uint32_t maxw, uint32_t maxh)
{
    print_unimplimented();
    return -1;
}
uint32_t vexImagePngRead(const uint8_t *ibuf, v5_image *oBuf, uint32_t maxw, uint32_t maxh, uint32_t ibuflen)
{
    print_unimplimented();
    return -1;
}
// special use only ! Talk to James.
int32_t vexScratchMemoryPtr(void **ptr)
{
    print_unimplimented();
    return -1;
}
bool vexScratchMemoryLock(void)
{
    print_unimplimented();
    return false;
}
void vexScratchMemoryUnlock(void)
{
    print_unimplimented();
}

// SD card
FRESULT vexFileMountSD(void)
{
    print_unimplimented();
    return (FRESULT)(0);
}
FRESULT vexFileDirectoryGet(const char *path, char *buffer, uint32_t len)
{
    print_unimplimented();
    return (FRESULT)(0);
}
FIL *vexFileOpen(const char *filename, const char *mode)
{
    print_unimplimented();
    return (void *)0;
}
FIL *vexFileOpenWrite(const char *filename)
{
    print_unimplimented();
    return (void *)0;
}
FIL *vexFileOpenCreate(const char *filename)
{
    print_unimplimented();
    return (void *)0;
}
void vexFileClose(FIL *fdp)
{
    print_unimplimented();
}
int32_t vexFileRead(char *buf, uint32_t size, uint32_t nItems, FIL *fdp)
{
    print_unimplimented();
    return -1;
}
int32_t vexFileWrite(char *buf, uint32_t size, uint32_t nItems, FIL *fdp)
{
    print_unimplimented();
    return -1;
}
int32_t vexFileSize(FIL *fdp)
{
    print_unimplimented();
    return -1;
}
FRESULT vexFileSeek(FIL *fdp, uint32_t offset, int32_t whence)
{
    print_unimplimented();
    return (FRESULT)0;
}
bool vexFileDriveStatus(uint32_t drive)
{
    print_unimplimented();
    return false;
}
int32_t vexFileTell(FIL *fdp)
{
    print_unimplimented();
    return -1;
}
void vexFileSync(FIL *fdp)
{
    print_unimplimented();
}
uint32_t vexFileStatus(const char *filename)
{
    print_unimplimented();
    return -1;
}

// CDC
int32_t vexSerialWriteChar(uint32_t channel, uint8_t c)
{
    print_unimplimented();
    return -1;
}
int32_t vexSerialWriteBuffer(uint32_t channel, uint8_t *data, uint32_t data_len)
{
    print_unimplimented();
    return -1;
}
int32_t vexSerialReadChar(uint32_t channel)
{
    print_unimplimented();
    return -1;
}
int32_t vexSerialPeekChar(uint32_t channel)
{
    print_unimplimented();
    return -1;
}
int32_t vexSerialWriteFree(uint32_t channel)
{
    print_unimplimented();
    return -1;
}

// rtos hooks
void vexSystemTimerStop()
{
    print_unimplimented();
}
void vexSystemTimerClearInterrupt()
{
    print_unimplimented();
}
int32_t vexSystemTimerReinitForRtos(uint32_t priority, void (*handler)(void *data))
{
    print_unimplimented();
    return -1;
}
void vexSystemApplicationIRQHandler(uint32_t ulICCIAR)
{
    print_unimplimented();
}
int32_t vexSystemWatchdogReinitRtos(void)
{
    print_unimplimented();
    return -1;
}
uint32_t vexSystemWatchdogGet(void)
{
    print_unimplimented();
    return -1;
}

// Hooks into the interrupt system, some of these will be used by FreeRTOS
// the others are just placeholders for now
void vexSystemBoot(void)
{
    print_unimplimented();
}
void vexSystemUndefinedException(void)
{
    print_unimplimented();
}
void vexSystemFIQInterrupt(void)
{
    print_unimplimented();
}
void vexSystemIQRQnterrupt(void)
{
    print_unimplimented();
}
void vexSystemSWInterrupt(void)
{
    print_unimplimented();
}
void vexSystemDataAbortInterrupt(void)
{
    print_unimplimented();
}
void vexSystemPrefetchAbortInterrupt(void)
{
    print_unimplimented();
}

// touch
void vexTouchUserCallbackSet(void (*callback)(V5_TouchEvent, int32_t, int32_t))
{
    print_unimplimented();
}
bool vexTouchDataGet(V5_TouchStatus *status)
{
    print_unimplimented();
    return false;
}

// system utility
uint32_t vexSystemVersion(void)
{
    print_unimplimented();
    return -1;
}
uint32_t vexStdlibVersion(void)
{
    print_unimplimented();
    return -1;
}
// get SDK version
uint32_t vexSdkVersion(void)
{
    print_unimplimented();
    return -1;
}

// duplication of prototypes in v5_util.h for use by user code
uint32_t vexStdlibVersionLinked(void)
{
    print_unimplimented();
    return -1;
}
bool vexStdlibVersionVerify(void)
{
    print_unimplimented();
    return false;
}

// comp status
uint32_t vexCompetitionStatus(void)
{
    print_unimplimented();
    return -1;
}
void vexCompetitionControl(uint32_t data)
{
    print_unimplimented();
}

// battery
int32_t vexBatteryVoltageGet(void)
{
    print_unimplimented();
    return -1;
}
int32_t vexBatteryCurrentGet(void)
{
    print_unimplimented();
    return -1;
}
double vexBatteryTemperatureGet(void)
{
    print_unimplimented();
    return 0.0;
}
double vexBatteryCapacityGet(void)
{
    print_unimplimented();
    return 0.0;
}
