#include "../include/v5_apiuser.h"

/*----------------------------------------------------------------------------*/
/** @file    v5_apiuser.h
 * @brief   Header for V5 API device wrapper functions
 */
/*--------------------------------------------------------------------------*/

void vexDelay(uint32_t timems)
{
  print_unimplimented();
  int32_t now_ms = sim_time_ms();
  while(sim_time_ms() < now_ms + timems){

  }
}

void vexLedSet(uint32_t index, V5_DeviceLedColor value) { print_unimplimented(); }
void vexLedRgbSet(uint32_t index, uint32_t color) { print_unimplimented(); }
V5_DeviceLedColor vexLedGet(uint32_t index) { print_unimplimented(); return V5_DeviceLedColor::kLedColorBlack;}
uint32_t vexLedRgbGet(uint32_t index) { print_unimplimented(); return 0;}

void vexAdiPortConfigSet(uint32_t index, uint32_t port, V5_AdiPortConfiguration type) { print_unimplimented(); }
V5_AdiPortConfiguration vexAdiPortConfigGet(uint32_t index, uint32_t port) { print_unimplimented(); return V5_AdiPortConfiguration::kAdiPortTypeAnalogIn;}
void vexAdiValueSet(uint32_t index, uint32_t port, int32_t value) { print_unimplimented(); }
int32_t vexAdiValueGet(uint32_t index, uint32_t port) { print_unimplimented(); return 0;}

V5_DeviceBumperState vexBumperGet(uint32_t index) { print_unimplimented(); return V5_DeviceBumperState::kBumperPressed;}

void vexGyroReset(uint32_t index) { print_unimplimented(); }
double vexGyroHeadingGet(uint32_t index) { print_unimplimented(); return 0.0;}
double vexGyroDegreesGet(uint32_t index) { print_unimplimented(); return 0.0;}

int32_t vexSonarValueGet(uint32_t index) { print_unimplimented(); return 0;}

int32_t vexGenericValueGet(uint32_t index) { print_unimplimented(); return 0;}

void vexMotorVelocitySet(uint32_t index, int32_t velocity) { print_unimplimented(); }
void vexMotorVelocityUpdate(uint32_t index, int32_t velocity) { print_unimplimented(); }
void vexMotorVoltageSet(uint32_t index, int32_t value) { print_unimplimented(); }
int32_t vexMotorVelocityGet(uint32_t index) { print_unimplimented(); return 0;}
int32_t vexMotorDirectionGet(uint32_t index) { print_unimplimented(); return 0;}
double vexMotorActualVelocityGet(uint32_t index) { print_unimplimented(); return 0.0;}
void vexMotorModeSet(uint32_t index, V5MotorControlMode mode) { print_unimplimented(); }
V5MotorControlMode vexMotorModeGet(uint32_t index) { print_unimplimented(); return V5MotorControlMode::kMotorControlModeOFF;}
void vexMotorPwmSet(uint32_t index, int32_t value) { print_unimplimented(); }
int32_t vexMotorPwmGet(uint32_t index) { print_unimplimented(); return 0;}
void vexMotorCurrentLimitSet(uint32_t index, int32_t value) { print_unimplimented(); }
int32_t vexMotorCurrentLimitGet(uint32_t index) { print_unimplimented(); return 0;}
void vexMotorVoltageLimitSet(uint32_t index, int32_t value) { print_unimplimented(); }
int32_t vexMotorVoltageLimitGet(uint32_t index) { print_unimplimented(); return 0;}
void vexMotorPositionPidSet(uint32_t index, V5_DeviceMotorPid *pid) { print_unimplimented(); }
void vexMotorVelocityPidSet(uint32_t index, V5_DeviceMotorPid *pid) { print_unimplimented(); }
int32_t vexMotorCurrentGet(uint32_t index) { print_unimplimented(); return 0;}
int32_t vexMotorVoltageGet(uint32_t index) { print_unimplimented(); return 0;}
double vexMotorPowerGet(uint32_t index) { print_unimplimented(); return 0.0;}
double vexMotorTorqueGet(uint32_t index) { print_unimplimented(); return 0.0;}
double vexMotorEfficiencyGet(uint32_t index) { print_unimplimented(); return 0.0;}
double vexMotorTemperatureGet(uint32_t index) { print_unimplimented(); return 0.0;}
bool vexMotorOverTempFlagGet(uint32_t index) { print_unimplimented(); return false;}
bool vexMotorCurrentLimitFlagGet(uint32_t index) { print_unimplimented(); return false;}
uint32_t vexMotorFaultsGet(uint32_t index) { print_unimplimented(); return 0;}
bool vexMotorZeroVelocityFlagGet(uint32_t index) { print_unimplimented(); return false;}
bool vexMotorZeroPositionFlagGet(uint32_t index) { print_unimplimented(); return false;}
uint32_t vexMotorFlagsGet(uint32_t index) { print_unimplimented(); return 0;}
void vexMotorReverseFlagSet(uint32_t index, bool value) { print_unimplimented(); }
bool vexMotorReverseFlagGet(uint32_t index) { print_unimplimented(); return false;}
void vexMotorEncoderUnitsSet(uint32_t index, V5MotorEncoderUnits units) { print_unimplimented(); }
V5MotorEncoderUnits vexMotorEncoderUnitsGet(uint32_t index) { print_unimplimented(); return V5MotorEncoderUnits::kMotorEncoderCounts;}
void vexMotorBrakeModeSet(uint32_t index, V5MotorBrakeMode mode) { print_unimplimented(); }
V5MotorBrakeMode vexMotorBrakeModeGet(uint32_t index) { print_unimplimented(); return V5MotorBrakeMode::kV5MotorBrakeModeBrake;}
void vexMotorPositionSet(uint32_t index, double position) { print_unimplimented(); }
double vexMotorPositionGet(uint32_t index) { print_unimplimented(); return 0.0;}
int32_t vexMotorPositionRawGet(uint32_t index, uint32_t *timestamp) { print_unimplimented(); return 0;}
void vexMotorPositionReset(uint32_t index) { print_unimplimented(); }
double vexMotorTargetGet(uint32_t index) { print_unimplimented(); return 0.0;}
void vexMotorServoTargetSet(uint32_t index, double position) { print_unimplimented(); }
void vexMotorAbsoluteTargetSet(uint32_t index, double position, int32_t velocity) { print_unimplimented(); }
void vexMotorRelativeTargetSet(uint32_t index, double position, int32_t velocity) { print_unimplimented(); }
void vexMotorGearingSet(uint32_t index, V5MotorGearset value) { print_unimplimented(); }
V5MotorGearset vexMotorGearingGet(uint32_t index) { print_unimplimented(); return _V5MotorGearset();}
void vexMotorExternalProfileSet(uint32_t index, double position, int32_t velocity) { print_unimplimented(); }

void vexVisionModeSet(uint32_t index, V5VisionMode mode) { print_unimplimented(); }
V5VisionMode vexVisionModeGet(uint32_t index) { print_unimplimented(); return V5VisionMode::kVisionTypeTest;}
int32_t vexVisionObjectCountGet(uint32_t index) { print_unimplimented(); return 0;}
int32_t vexVisionObjectGet(uint32_t index, uint32_t indexObj, V5_DeviceVisionObject *pObject) { print_unimplimented(); return 0;}
void vexVisionSignatureSet(uint32_t index, V5_DeviceVisionSignature *pSignature) { print_unimplimented(); }
bool vexVisionSignatureGet(uint32_t index, uint32_t id, V5_DeviceVisionSignature *pSignature) { print_unimplimented(); return false;}
void vexVisionBrightnessSet(uint32_t index, uint8_t percent) { print_unimplimented(); }
uint8_t vexVisionBrightnessGet(uint32_t index) { print_unimplimented(); return 0;}
void vexVisionWhiteBalanceModeSet(uint32_t index, V5VisionWBMode mode) { print_unimplimented(); }
V5VisionWBMode vexVisionWhiteBalanceModeGet(uint32_t index) { print_unimplimented(); return V5VisionWBMode::kVisionWBManual;}
void vexVisionWhiteBalanceSet(uint32_t index, V5_DeviceVisionRgb color) { print_unimplimented(); }
V5_DeviceVisionRgb vexVisionWhiteBalanceGet(uint32_t index) { print_unimplimented(); return _V5_DeviceVisionRgb();}
void vexVisionLedModeSet(uint32_t index, V5VisionLedMode mode) { print_unimplimented(); }
V5VisionLedMode vexVisionLedModeGet(uint32_t index) { print_unimplimented(); return V5VisionLedMode::kVisionLedModeAuto;}
void vexVisionLedBrigntnessSet(uint32_t index, uint8_t percent) { print_unimplimented(); }
uint8_t vexVisionLedBrigntnessGet(uint32_t index) { print_unimplimented(); return 0;}
void vexVisionLedColorSet(uint32_t index, V5_DeviceVisionRgb color) { print_unimplimented(); }
V5_DeviceVisionRgb vexVisionLedColorGet(uint32_t index) { print_unimplimented(); return V5_DeviceVisionRgb();}
void vexVisionWifiModeSet(uint32_t index, V5VisionWifiMode mode) { print_unimplimented(); }
V5VisionWifiMode vexVisionWifiModeGet(uint32_t index) { print_unimplimented(); return V5VisionWifiMode::kVisionWifiModeOff;}

void vexImuReset(uint32_t index) { print_unimplimented(); }
double vexImuHeadingGet(uint32_t index) { print_unimplimented(); return 0.0;}
double vexImuDegreesGet(uint32_t index) { print_unimplimented(); return 0.0;}
void vexImuQuaternionGet(uint32_t index, V5_DeviceImuQuaternion *data) { print_unimplimented(); }
void vexImuAttitudeGet(uint32_t index, V5_DeviceImuAttitude *data) { print_unimplimented(); }
void vexImuRawGyroGet(uint32_t index, V5_DeviceImuRaw *data) { print_unimplimented(); }
void vexImuRawAccelGet(uint32_t index, V5_DeviceImuRaw *data) { print_unimplimented(); }
uint32_t vexImuStatusGet(uint32_t index) { print_unimplimented(); return 0;}
void vexImuModeSet(uint32_t index, uint32_t mode) { print_unimplimented(); }
uint32_t vexImuModeGet(uint32_t index) { print_unimplimented(); return 0;}
void vexImuDataRateSet(uint32_t index, uint32_t rate) { print_unimplimented(); }

int32_t vexRangeValueGet(uint32_t index) { print_unimplimented(); return 0;}

void vexAbsEncReset(uint32_t index) { print_unimplimented(); }
void vexAbsEncPositionSet(uint32_t index, int32_t position) { print_unimplimented(); }
int32_t vexAbsEncPositionGet(uint32_t index) { print_unimplimented(); return 0;}
int32_t vexAbsEncVelocityGet(uint32_t index) { print_unimplimented(); return 0;}
int32_t vexAbsEncAngleGet(uint32_t index) { print_unimplimented(); return 0;}
void vexAbsEncReverseFlagSet(uint32_t index, bool value) { print_unimplimented(); }
bool vexAbsEncReverseFlagGet(uint32_t index) { print_unimplimented(); return false;}
uint32_t vexAbsEncStatusGet(uint32_t index) { print_unimplimented(); return 0;}
void vexAbsEncDataRateSet(uint32_t index, uint32_t rate) { print_unimplimented(); }

double vexOpticalHueGet(uint32_t index) { print_unimplimented(); return 0.0;}
double vexOpticalSatGet(uint32_t index) { print_unimplimented(); return 0.0;}
double vexOpticalBrightnessGet(uint32_t index) { print_unimplimented(); return 0.0;}
int32_t vexOpticalProximityGet(uint32_t index) { print_unimplimented(); return 0;}
void vexOpticalRgbGet(uint32_t index, V5_DeviceOpticalRgb *data) { print_unimplimented(); }
void vexOpticalLedPwmSet(uint32_t index, int32_t value) { print_unimplimented(); }
int32_t vexOpticalLedPwmGet(uint32_t index) { print_unimplimented(); return 0;}
uint32_t vexOpticalStatusGet(uint32_t index) { print_unimplimented(); return 0;}
void vexOpticalRawGet(uint32_t index, V5_DeviceOpticalRaw *data) { print_unimplimented(); }
void vexOpticalModeSet(uint32_t index, uint32_t mode) { print_unimplimented(); }
uint32_t vexOpticalModeGet(uint32_t index) { print_unimplimented(); return 0;}
uint32_t vexOpticalGestureGet(uint32_t index, V5_DeviceOpticalGesture *pData) { print_unimplimented(); return 0;}
void vexOpticalGestureEnable(uint32_t index) { print_unimplimented(); }
void vexOpticalGestureDisable(uint32_t index) { print_unimplimented(); }
int32_t vexOpticalProximityThreshold(uint32_t index, int32_t value) { print_unimplimented(); return 0;}
void vexOpticalIntegrationTimeSet(uint32_t index, double timems) { print_unimplimented(); }
double vexOpticalIntegrationTimeGet(uint32_t index) { print_unimplimented(); return 0.0;}

void vexMagnetPowerSet(uint32_t index, int32_t value, int32_t time) { print_unimplimented(); }
int32_t vexMagnetPowerGet(uint32_t index) { print_unimplimented(); return 0;}
void vexMagnetPickup(uint32_t index, V5_DeviceMagnetDuration duration) { print_unimplimented(); }
void vexMagnetDrop(uint32_t index, V5_DeviceMagnetDuration duration) { print_unimplimented(); }
double vexMagnetTemperatureGet(uint32_t index) { print_unimplimented(); return 0.0;}
double vexMagnetCurrentGet(uint32_t index) { print_unimplimented(); return 0.0;}
uint32_t vexMagnetStatusGet(uint32_t index) { print_unimplimented(); return 0;}

uint32_t vexDistanceDistanceGet(uint32_t index) { print_unimplimented(); return 0;}
uint32_t vexDistanceConfidenceGet(uint32_t index) { print_unimplimented(); return 0;}
int32_t vexDistanceObjectSizeGet(uint32_t index) { print_unimplimented(); return 0;}
double vexDistanceObjectVelocityGet(uint32_t index) { print_unimplimented(); return 0.0;}
uint32_t vexDistanceStatusGet(uint32_t index) { print_unimplimented(); return 0;}

void vexGpsReset(uint32_t index) { print_unimplimented(); }
double vexGpsHeadingGet(uint32_t index) { print_unimplimented(); return 0.0;}
double vexGpsDegreesGet(uint32_t index) { print_unimplimented(); return 0.0;}
void vexGpsQuaternionGet(uint32_t index, V5_DeviceGpsQuaternion *data) { print_unimplimented(); }
void vexGpsAttitudeGet(uint32_t index, V5_DeviceGpsAttitude *data, bool bRaw) { print_unimplimented(); }
void vexGpsRawGyroGet(uint32_t index, V5_DeviceGpsRaw *data) { print_unimplimented(); }
void vexGpsRawAccelGet(uint32_t index, V5_DeviceGpsRaw *data) { print_unimplimented(); }
uint32_t vexGpsStatusGet(uint32_t index) { print_unimplimented(); return 0;}
void vexGpsModeSet(uint32_t index, uint32_t mode) { print_unimplimented(); }
uint32_t vexGpsModeGet(uint32_t index) { print_unimplimented(); return 0;}
void vexGpsDataRateSet(uint32_t index, uint32_t rate) { print_unimplimented(); }
void vexGpsOriginSet(uint32_t index, double ox, double oy) { print_unimplimented(); }
void vexGpsOriginGet(uint32_t index, double *ox, double *oy) { print_unimplimented(); }
void vexGpsRotationSet(uint32_t index, double value) { print_unimplimented(); }
double vexGpsRotationGet(uint32_t index) { print_unimplimented(); return 0.0;}
void vexGpsInitialPositionSet(uint32_t index, double initial_x, double initial_y, double initial_rotation) { print_unimplimented(); }
double vexGpsErrorGet(uint32_t index) { print_unimplimented(); return 0.0;}

// Generic serial port comms to any device
void vexGenericSerialEnable(uint32_t index, int32_t options) { print_unimplimented(); }
void vexGenericSerialBaudrate(uint32_t index, int32_t baudrate) { print_unimplimented(); }
int32_t vexGenericSerialWriteChar(uint32_t index, uint8_t c) { print_unimplimented(); return 0;}
int32_t vexGenericSerialWriteFree(uint32_t index) { print_unimplimented(); return 0;}
int32_t vexGenericSerialTransmit(uint32_t index, uint8_t *buffer, int32_t length) { print_unimplimented(); return 0;}
int32_t vexGenericSerialReadChar(uint32_t index) { print_unimplimented(); return 0;}
int32_t vexGenericSerialPeekChar(uint32_t index) { print_unimplimented(); return 0;}
int32_t vexGenericSerialReceiveAvail(uint32_t index) { print_unimplimented(); return 0;}
int32_t vexGenericSerialReceive(uint32_t index, uint8_t *buffer, int32_t length) { print_unimplimented(); return 0;}
void vexGenericSerialFlush(uint32_t index) { print_unimplimented(); }
