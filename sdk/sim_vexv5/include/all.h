#pragma once
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

#ifndef V5_API_H_
#define V5_API_H_

#include "stdint.h"
#include "stdbool.h"
#include "stdarg.h"
#include <stdio.h>

/*-----------------------------------------------------------------------------*/
/** @file    v5_api.h
  * @brief   Header for V5 API
*//*---------------------------------------------------------------------------*/
#include "sim/util.h"
#include "sim/terminal.h"
#include "sim/graphics/brain_screen.h"
#include "sim/events.h"

#include "v5_apitypes.h"
#include "v5_apiuser.h"
#include "v5_color.h"

#ifdef __cplusplus
extern "C" {
#endif




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
void                  vexBackgroundProcessing( void );

// Console output

//int32_t               vexDebug( char const *fmt, ... );
#define vexDebug(...) vex_printf(__VA_ARGS__)

int32_t               vex_printf( char const *fmt, ... );
int32_t               vex_sprintf ( char *out, const char *format, ... );
int32_t               vex_snprintf( char *out, uint32_t max_len, const char *format, ... );
int32_t               vex_vsprintf( char *out, const char *format, va_list args );
int32_t               vex_vsnprintf( char *out, uint32_t max_len, const char *format, va_list args );

// system
uint32_t              vexSystemTimeGet( void );
void                  vexGettime( struct time *pTime );
void                  vexGetdate( struct date *pDate );
void                  vexSystemMemoryDump( void );
void                  vexSystemDigitalIO( uint32_t pin, uint32_t value );
uint32_t              vexSystemStartupOptions(void);
void                  vexSystemExitRequest(void);
uint64_t              vexSystemHighResTimeGet( void );
uint64_t              vexSystemPowerupTimeGet( void );
uint32_t              vexSystemLinkAddrGet( void );
uint32_t              vexSystemUsbStatus( void );

// Generic device
uint32_t              vexDevicesGetNumber( void );
uint32_t              vexDevicesGetNumberByType( V5_DeviceType type );
V5_DeviceT            vexDevicesGet( void );
V5_DeviceT            vexDeviceGetByIndex( uint32_t index );
int32_t               vexDeviceGetStatus( V5_DeviceType *buffer );
int32_t               vexDeviceGetTimestamp( V5_DeviceT device );
int32_t               vexDeviceGetTimestampByIndex( int32_t index );
uint32_t              vexDeviceButtonStateGet( void );

// This is used by the port index functions to map an index to the device pointer
#define  VEX_DEVICE_GET(device, index) V5_DeviceT device = vexDeviceGetByIndex( index )

// Controller
int32_t               vexControllerGet( V5_ControllerId id, V5_ControllerIndex index );
V5_ControllerStatus   vexControllerConnectionStatusGet( V5_ControllerId id );
bool                  vexControllerTextSet( V5_ControllerId id, uint32_t line, uint32_t col, const char *str );

// LED sensor
void                  vexDeviceLedSet( V5_DeviceT device, V5_DeviceLedColor value );
void                  vexDeviceLedRgbSet( V5_DeviceT device, uint32_t color );
V5_DeviceLedColor     vexDeviceLedGet( V5_DeviceT device );
uint32_t              vexDeviceLedRgbGet( V5_DeviceT device );

// ADI sensor
void                  vexDeviceAdiPortConfigSet( V5_DeviceT device, uint32_t port, V5_AdiPortConfiguration type );
V5_AdiPortConfiguration vexDeviceAdiPortConfigGet( V5_DeviceT device, uint32_t port );
void                  vexDeviceAdiValueSet( V5_DeviceT device, uint32_t port, int32_t value );
int32_t               vexDeviceAdiValueGet( V5_DeviceT device, uint32_t port );

// Bumper switch
V5_DeviceBumperState  vexDeviceBumperGet( V5_DeviceT device );

// Gyro - obsolete, there is currently no dedicated gyro
void                  vexDeviceGyroReset( V5_DeviceT device );
double                vexDeviceGyroHeadingGet( V5_DeviceT device );
double                vexDeviceGyroDegreesGet( V5_DeviceT device );

// Sonar - obsolete, there is currently no dedicated gyro
int32_t               vexDeviceSonarValueGet( V5_DeviceT device );

// Generic sensor - (who knows !)
int32_t               vexDeviceGenericValueGet( V5_DeviceT device );

// Motor
void                  vexDeviceMotorVelocitySet( V5_DeviceT device, int32_t velocity );
void                  vexDeviceMotorVelocityUpdate( V5_DeviceT device, int32_t velocity );
void                  vexDeviceMotorVoltageSet( V5_DeviceT device, int32_t value );
int32_t               vexDeviceMotorVelocityGet( V5_DeviceT device );
double                vexDeviceMotorActualVelocityGet( V5_DeviceT device );
int32_t               vexDeviceMotorDirectionGet( V5_DeviceT device );
void                  vexDeviceMotorModeSet( V5_DeviceT device, V5MotorControlMode mode );
V5MotorControlMode    vexDeviceMotorModeGet( V5_DeviceT device ); 
void                  vexDeviceMotorPwmSet( V5_DeviceT device, int32_t value );
int32_t               vexDeviceMotorPwmGet( V5_DeviceT device );
void                  vexDeviceMotorCurrentLimitSet( V5_DeviceT device, int32_t value );
int32_t               vexDeviceMotorCurrentLimitGet( V5_DeviceT device );
void                  vexDeviceMotorVoltageLimitSet( V5_DeviceT device, int32_t value );
int32_t               vexDeviceMotorVoltageLimitGet( V5_DeviceT device );
void                  vexDeviceMotorPositionPidSet( V5_DeviceT device, V5_DeviceMotorPid *pid );
void                  vexDeviceMotorVelocityPidSet( V5_DeviceT device, V5_DeviceMotorPid *pid );
int32_t               vexDeviceMotorCurrentGet( V5_DeviceT device );
int32_t               vexDeviceMotorVoltageGet( V5_DeviceT device );
double                vexDeviceMotorPowerGet( V5_DeviceT device );
double                vexDeviceMotorTorqueGet( V5_DeviceT device );
double                vexDeviceMotorEfficiencyGet( V5_DeviceT device );
double                vexDeviceMotorTemperatureGet( V5_DeviceT device );
bool                  vexDeviceMotorOverTempFlagGet( V5_DeviceT device );
bool                  vexDeviceMotorCurrentLimitFlagGet( V5_DeviceT device );
uint32_t              vexDeviceMotorFaultsGet( V5_DeviceT device );
bool                  vexDeviceMotorZeroVelocityFlagGet( V5_DeviceT device );
bool                  vexDeviceMotorZeroPositionFlagGet( V5_DeviceT device );
uint32_t              vexDeviceMotorFlagsGet( V5_DeviceT device );
void                  vexDeviceMotorReverseFlagSet( V5_DeviceT device, bool value );
bool                  vexDeviceMotorReverseFlagGet( V5_DeviceT device );
void                  vexDeviceMotorEncoderUnitsSet( V5_DeviceT device, V5MotorEncoderUnits units );
V5MotorEncoderUnits   vexDeviceMotorEncoderUnitsGet( V5_DeviceT device );      
void                  vexDeviceMotorBrakeModeSet( V5_DeviceT device, V5MotorBrakeMode mode );
V5MotorBrakeMode      vexDeviceMotorBrakeModeGet( V5_DeviceT device );
void                  vexDeviceMotorPositionSet( V5_DeviceT device, double position );
double                vexDeviceMotorPositionGet( V5_DeviceT device );
int32_t               vexDeviceMotorPositionRawGet( V5_DeviceT device, uint32_t *timestamp );
void                  vexDeviceMotorPositionReset( V5_DeviceT device );
double                vexDeviceMotorTargetGet( V5_DeviceT device );
void                  vexDeviceMotorServoTargetSet( V5_DeviceT device, double position );
void                  vexDeviceMotorAbsoluteTargetSet( V5_DeviceT device, double position, int32_t velocity );
void                  vexDeviceMotorRelativeTargetSet( V5_DeviceT device, double position, int32_t velocity );
void                  vexDeviceMotorGearingSet( V5_DeviceT device, V5MotorGearset value );
V5MotorGearset        vexDeviceMotorGearingGet( V5_DeviceT device );
void                  vexDeviceMotorExternalProfileSet( V5_DeviceT device, double position, int32_t velocity );

// Vision sensor
void                  vexDeviceVisionModeSet( V5_DeviceT device, V5VisionMode mode );
V5VisionMode          vexDeviceVisionModeGet( V5_DeviceT device );
int32_t               vexDeviceVisionObjectCountGet( V5_DeviceT device );
int32_t               vexDeviceVisionObjectGet( V5_DeviceT device, uint32_t indexObj, V5_DeviceVisionObject *pObject );
void                  vexDeviceVisionSignatureSet( V5_DeviceT device, V5_DeviceVisionSignature *pSignature );
bool                  vexDeviceVisionSignatureGet( V5_DeviceT device, uint32_t id, V5_DeviceVisionSignature *pSignature );
void                  vexDeviceVisionBrightnessSet( V5_DeviceT device, uint8_t percent );
uint8_t               vexDeviceVisionBrightnessGet( V5_DeviceT device );
void                  vexDeviceVisionWhiteBalanceModeSet( V5_DeviceT device, V5VisionWBMode mode );
V5VisionWBMode        vexDeviceVisionWhiteBalanceModeGet( V5_DeviceT device );
void                  vexDeviceVisionWhiteBalanceSet( V5_DeviceT device, V5_DeviceVisionRgb color );
V5_DeviceVisionRgb    vexDeviceVisionWhiteBalanceGet( V5_DeviceT device );
void                  vexDeviceVisionLedModeSet( V5_DeviceT device, V5VisionLedMode mode );
V5VisionLedMode       vexDeviceVisionLedModeGet( V5_DeviceT device );
void                  vexDeviceVisionLedBrigntnessSet( V5_DeviceT device, uint8_t percent );
uint8_t               vexDeviceVisionLedBrigntnessGet( V5_DeviceT device );
void                  vexDeviceVisionLedColorSet( V5_DeviceT device, V5_DeviceVisionRgb color);
V5_DeviceVisionRgb    vexDeviceVisionLedColorGet( V5_DeviceT device );
void                  vexDeviceVisionWifiModeSet( V5_DeviceT device, V5VisionWifiMode mode );
V5VisionWifiMode      vexDeviceVisionWifiModeGet( V5_DeviceT device );

// IMU
void                  vexDeviceImuReset( V5_DeviceT device );
double                vexDeviceImuHeadingGet( V5_DeviceT device );
double                vexDeviceImuDegreesGet( V5_DeviceT device );
void                  vexDeviceImuQuaternionGet( V5_DeviceT device, V5_DeviceImuQuaternion *data );
void                  vexDeviceImuAttitudeGet( V5_DeviceT device, V5_DeviceImuAttitude *data );
void                  vexDeviceImuRawGyroGet( V5_DeviceT device, V5_DeviceImuRaw *data );
void                  vexDeviceImuRawAccelGet( V5_DeviceT device, V5_DeviceImuRaw *data );
uint32_t              vexDeviceImuStatusGet( V5_DeviceT device );
void                  vexDeviceImuModeSet( V5_DeviceT device, uint32_t mode );
uint32_t              vexDeviceImuModeGet( V5_DeviceT device );
void                  vexDeviceImuDataRateSet( V5_DeviceT device, uint32_t rate );

// Rangefinder/Lidar - actual API to be determined
int32_t               vexDeviceRangeValueGet( V5_DeviceT device );

// Absolute encoder
void                  vexDeviceAbsEncReset( V5_DeviceT device );
void                  vexDeviceAbsEncPositionSet( V5_DeviceT device, int32_t position );
int32_t               vexDeviceAbsEncPositionGet( V5_DeviceT device );
int32_t               vexDeviceAbsEncVelocityGet( V5_DeviceT device );
int32_t               vexDeviceAbsEncAngleGet( V5_DeviceT device );
void                  vexDeviceAbsEncReverseFlagSet( V5_DeviceT device, bool value );
bool                  vexDeviceAbsEncReverseFlagGet( V5_DeviceT device );
uint32_t              vexDeviceAbsEncStatusGet( V5_DeviceT device );
void                  vexDeviceAbsEncDataRateSet( V5_DeviceT device, uint32_t rate );

// Optical/color sensor
double                vexDeviceOpticalHueGet( V5_DeviceT device );
double                vexDeviceOpticalSatGet( V5_DeviceT device );
double                vexDeviceOpticalBrightnessGet( V5_DeviceT device );
int32_t               vexDeviceOpticalProximityGet( V5_DeviceT device );
void                  vexDeviceOpticalRgbGet( V5_DeviceT device, V5_DeviceOpticalRgb *data );
void                  vexDeviceOpticalLedPwmSet( V5_DeviceT device, int32_t value );
int32_t               vexDeviceOpticalLedPwmGet( V5_DeviceT device );
uint32_t              vexDeviceOpticalStatusGet( V5_DeviceT device );
void                  vexDeviceOpticalRawGet( V5_DeviceT device, V5_DeviceOpticalRaw *data );
void                  vexDeviceOpticalModeSet( V5_DeviceT device, uint32_t mode );
uint32_t              vexDeviceOpticalModeGet( V5_DeviceT device );
uint32_t              vexDeviceOpticalGestureGet( V5_DeviceT, V5_DeviceOpticalGesture *pData );
void                  vexDeviceOpticalGestureEnable( V5_DeviceT );
void                  vexDeviceOpticalGestureDisable( V5_DeviceT );
int32_t               vexDeviceOpticalProximityThreshold( V5_DeviceT device, int32_t value );
void                  vexDeviceOpticalIntegrationTimeSet( V5_DeviceT device, double timeMs );
double                vexDeviceOpticalIntegrationTimeGet( V5_DeviceT device );

// Electro magnet
void                  vexDeviceMagnetPowerSet( V5_DeviceT device, int32_t value, int32_t time );
int32_t               vexDeviceMagnetPowerGet( V5_DeviceT device );
void                  vexDeviceMagnetPickup( V5_DeviceT device, V5_DeviceMagnetDuration duration );
void                  vexDeviceMagnetDrop( V5_DeviceT device, V5_DeviceMagnetDuration duration );
double                vexDeviceMagnetTemperatureGet( V5_DeviceT device );
double                vexDeviceMagnetCurrentGet( V5_DeviceT device );
uint32_t              vexDeviceMagnetStatusGet( V5_DeviceT device );

// Distance
uint32_t              vexDeviceDistanceDistanceGet( V5_DeviceT device );
uint32_t              vexDeviceDistanceConfidenceGet( V5_DeviceT device );
int32_t               vexDeviceDistanceObjectSizeGet( V5_DeviceT device );
double                vexDeviceDistanceObjectVelocityGet( V5_DeviceT device );
uint32_t              vexDeviceDistanceStatusGet( V5_DeviceT device );

// Gps
void                  vexDeviceGpsReset( V5_DeviceT device );
double                vexDeviceGpsHeadingGet( V5_DeviceT device );
double                vexDeviceGpsDegreesGet( V5_DeviceT device );
void                  vexDeviceGpsQuaternionGet( V5_DeviceT device, V5_DeviceGpsQuaternion *data );
void                  vexDeviceGpsAttitudeGet( V5_DeviceT device, V5_DeviceGpsAttitude *data, bool bRaw );
void                  vexDeviceGpsRawGyroGet( V5_DeviceT device, V5_DeviceGpsRaw *data );
void                  vexDeviceGpsRawAccelGet( V5_DeviceT device, V5_DeviceGpsRaw *data );
uint32_t              vexDeviceGpsStatusGet( V5_DeviceT device );
void                  vexDeviceGpsModeSet( V5_DeviceT device, uint32_t mode );
uint32_t              vexDeviceGpsModeGet( V5_DeviceT device );
void                  vexDeviceGpsDataRateSet( V5_DeviceT device, uint32_t rate );
void                  vexDeviceGpsOriginSet( V5_DeviceT device, double ox, double oy );
void                  vexDeviceGpsOriginGet( V5_DeviceT device, double *ox, double *oy );
void                  vexDeviceGpsRotationSet( V5_DeviceT device, double value );
double                vexDeviceGpsRotationGet( V5_DeviceT device);
void                  vexDeviceGpsInitialPositionSet( V5_DeviceT device, double initial_x, double initial_y, double initial_rotation );
double                vexDeviceGpsErrorGet( V5_DeviceT device );

// Generic serial port comms to any device
void                  vexDeviceGenericSerialEnable( V5_DeviceT device, int32_t options );
void                  vexDeviceGenericSerialBaudrate( V5_DeviceT device, int32_t baudrate );
int32_t               vexDeviceGenericSerialWriteChar( V5_DeviceT device, uint8_t c );
int32_t               vexDeviceGenericSerialWriteFree( V5_DeviceT device );
int32_t               vexDeviceGenericSerialTransmit( V5_DeviceT device, uint8_t *buffer, int32_t length );
int32_t               vexDeviceGenericSerialReadChar( V5_DeviceT device );
int32_t               vexDeviceGenericSerialPeekChar( V5_DeviceT device );
int32_t               vexDeviceGenericSerialReceiveAvail( V5_DeviceT device );
int32_t               vexDeviceGenericSerialReceive( V5_DeviceT device, uint8_t *buffer, int32_t length );
void                  vexDeviceGenericSerialFlush( V5_DeviceT device );

// Display/graphics
void                  vexDisplayForegroundColor( uint32_t col );
void                  vexDisplayBackgroundColor( uint32_t col );
uint32_t              vexDisplayForegroundColorGet( void );
uint32_t              vexDisplayBackgroundColorGet( void );
void                  vexDisplayErase(void);
void                  vexDisplayScroll( int32_t nStartLine, int32_t nLines );
void                  vexDisplayScrollRect( int32_t x1, int32_t y1, int32_t x2, int32_t y2, int32_t nLines );
void                  vexDisplayCopyRect( int32_t x1, int32_t y1, int32_t x2, int32_t y2, uint32_t *pSrc, int32_t srcStride );
void                  vexDisplayPixelSet( uint32_t x, uint32_t y );
void                  vexDisplayPixelClear( uint32_t x, uint32_t y );
void                  vexDisplayLineDraw( int32_t x1, int32_t y1, int32_t x2, int32_t y2 );
void                  vexDisplayLineClear( int32_t x1, int32_t y1, int32_t x2, int32_t y2 );
void                  vexDisplayRectDraw( int32_t x1, int32_t y1, int32_t x2, int32_t y2 );
void                  vexDisplayRectClear( int32_t x1, int32_t y1, int32_t x2, int32_t y2 );
void                  vexDisplayRectFill( int32_t x1, int32_t y1, int32_t x2, int32_t y2 );
void                  vexDisplayCircleDraw( int32_t xc, int32_t yc, int32_t radius );
void                  vexDisplayCircleClear( int32_t xc, int32_t yc, int32_t radius );
void                  vexDisplayCircleFill( int32_t xc, int32_t yc, int32_t radius );

void                  vexDisplayPrintf( int32_t xpos, int32_t ypos, uint32_t bOpaque, const char *format, ... );
void                  vexDisplayString( const int32_t nLineNumber, const char *format, ... );
void                  vexDisplayStringAt( int32_t xpos, int32_t ypos, const char *format, ... );
void                  vexDisplayBigString( const int32_t nLineNumber, const char *format, ... );
void                  vexDisplayBigStringAt( int32_t xpos, int32_t ypos, const char *format, ... );
void                  vexDisplaySmallStringAt( int32_t xpos, int32_t ypos, const char *format, ... );
void                  vexDisplayCenteredString( const int32_t nLineNumber, const char *format, ...);
void                  vexDisplayBigCenteredString( const int32_t nLineNumber, const char *format, ...);

// Not really for user code but we need these for some wrapper functions
void                  vexDisplayVPrintf( int32_t xpos, int32_t ypos, uint32_t bOpaque, const char *format, va_list args );
void                  vexDisplayVString( const int32_t nLineNumber, const char *format, va_list args );
void                  vexDisplayVStringAt( int32_t xpos, int32_t ypos, const char *format, va_list args );
void                  vexDisplayVBigString( const int32_t nLineNumber, const char *format, va_list args);
void                  vexDisplayVBigStringAt( int32_t xpos, int32_t ypos, const char *format, va_list args );
void                  vexDisplayVSmallStringAt( int32_t xpos, int32_t ypos, const char *format, va_list args );
void                  vexDisplayVCenteredString( const int32_t nLineNumber, const char *format, va_list args );
void                  vexDisplayVBigCenteredString( const int32_t nLineNumber, const char *format, va_list args );

void                  vexDisplayTextSize( uint32_t n, uint32_t d );
void                  vexDisplayFontNamedSet( const char *pFontName );
int32_t               vexDisplayStringWidthGet( const char *pString );
int32_t               vexDisplayStringHeightGet( const char *pString );

bool                  vexDisplayRender( bool bVsyncWait, bool bRunScheduler );
void                  vexDisplayDoubleBufferDisable(void);

void                  vexDisplayClipRegionSet( int32_t x1, int32_t y1, int32_t x2, int32_t y2 );
void                  vexDisplayClipRegionClear();

uint32_t              vexImageBmpRead( const uint8_t *ibuf, v5_image *oBuf, uint32_t maxw, uint32_t maxh );
uint32_t              vexImagePngRead( const uint8_t *ibuf, v5_image *oBuf, uint32_t maxw, uint32_t maxh, uint32_t ibuflen );
// special use only ! Talk to James.
int32_t               vexScratchMemoryPtr( void **ptr );
bool                  vexScratchMemoryLock( void );
void                  vexScratchMemoryUnlock( void );

// SD card
FRESULT               vexFileMountSD( void );
FRESULT               vexFileDirectoryGet( const char *path, char *buffer, uint32_t len );
FIL                  *vexFileOpen(const char *filename, const char *mode );
FIL                  *vexFileOpenWrite(const char *filename);
FIL                  *vexFileOpenCreate(const char *filename);
void                  vexFileClose(FIL *fdp);
int32_t               vexFileRead( char *buf, uint32_t size, uint32_t nItems, FIL *fdp );
int32_t               vexFileWrite( char *buf, uint32_t size, uint32_t nItems, FIL *fdp );
int32_t               vexFileSize( FIL *fdp );
FRESULT               vexFileSeek( FIL *fdp, uint32_t offset, int32_t whence );
bool                  vexFileDriveStatus( uint32_t drive );
int32_t               vexFileTell( FIL *fdp );
void                  vexFileSync( FIL *fdp );
uint32_t              vexFileStatus( const char *filename );

// CDC
int32_t               vexSerialWriteChar( uint32_t channel, uint8_t c );
int32_t               vexSerialWriteBuffer( uint32_t channel, uint8_t *data, uint32_t data_len );
int32_t               vexSerialReadChar( uint32_t channel );
int32_t               vexSerialPeekChar( uint32_t channel );
int32_t               vexSerialWriteFree( uint32_t channel );

// rtos hooks
void                  vexSystemTimerStop();
void                  vexSystemTimerClearInterrupt();
int32_t               vexSystemTimerReinitForRtos( uint32_t priority, void (*handler)(void *data) );
void                  vexSystemApplicationIRQHandler( uint32_t ulICCIAR );
int32_t               vexSystemWatchdogReinitRtos( void );
uint32_t              vexSystemWatchdogGet( void );

// Hooks into the interrupt system, some of these will be used by FreeRTOS
// the others are just placeholders for now
void                  vexSystemBoot( void );
void                  vexSystemUndefinedException( void );
void                  vexSystemFIQInterrupt( void );
void                  vexSystemIQRQnterrupt( void );
void                  vexSystemSWInterrupt( void );
void                  vexSystemDataAbortInterrupt( void );
void                  vexSystemPrefetchAbortInterrupt( void );

// touch
void                  vexTouchUserCallbackSet(void (* callback)(V5_TouchEvent, int32_t, int32_t));
bool                  vexTouchDataGet( V5_TouchStatus *status );

// system utility
uint32_t              vexSystemVersion( void );
uint32_t              vexStdlibVersion( void );
// get SDK version
uint32_t              vexSdkVersion( void );

// duplication of prototypes in v5_util.h for use by user code
uint32_t              vexStdlibVersionLinked( void );
bool                  vexStdlibVersionVerify( void );

// comp status
uint32_t              vexCompetitionStatus( void );
void                  vexCompetitionControl( uint32_t data );

// battery
int32_t               vexBatteryVoltageGet( void );
int32_t               vexBatteryCurrentGet( void );
double                vexBatteryTemperatureGet( void );
double                vexBatteryCapacityGet( void );

#ifdef __cplusplus
}
#endif
#endif /* V5_API_H_*/
#pragma once
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2016, All rights reserved.               */
/*                                                                            */
/*    Module:     v5_apiprivate.h (Release version)                           */
/*    Author:     James Pearman                                               */
/*    Created:    3 Nov 2016                                                  */
/*                                                                            */
/*    Revisions:  V0.1                                                        */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef V5_RUNTIME_PRIVATE_H_
#define V5_RUNTIME_PRIVATE_H_

/*----------------------------------------------------------------------------*/
/** @file    v5_apiprivate.h
  * @brief   Header for V5 Internal API
*//*--------------------------------------------------------------------------*/

#ifdef __cplusplus
extern "C" {
#endif

/*----------------------------------------------------------------------------*/
//
// Private API removed from release SDK
//
/*----------------------------------------------------------------------------*/

#ifdef __cplusplus
}
#endif
#endif /* V5_RUNTIME_PRIVATE_H_ */#pragma once
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2016, All rights reserved.               */
/*                                                                            */
/*    Module:     v5_apitypes.h                                               */
/*    Author:     James Pearman                                               */
/*    Created:    8 Nov 2016                                                  */
/*                                                                            */
/*    Revisions:  V0.1                                                        */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef V5_APITYPES_H_
#define V5_APITYPES_H_

#include "stdint.h"
#include "stdbool.h"

/*-----------------------------------------------------------------------------*/
/** @file    v5_apitypes.h
  * @brief   Header for V5 API - type definitions
*/
/*---------------------------------------------------------------------------*/

#ifdef __cplusplus
extern "C" {
#endif

/*----------------------------------------------------------------------------*/
/** @brief      Code signature                                                */
/*----------------------------------------------------------------------------*/
/** @details
 *   The first 16 bytes of a user code binary should contain the user code
 *   signature.  For simple user code programs this will be created by the
 *   startup code in the runtime library, certain types of user code,
 *   for example a virtual machine, may override the default settings to cause
 *   the V5 system code to enable custom functionality yet TBD.
 *
 *   to override the default use a definition like this in one of the user
 *   code source files.
 *
 *   __attribute__ ((section (".boot_data"))) vcodesig vexCodeSig =
 *   { V5_SIG_MAGIC, 
 *     V5_SIG_TYPE_USER, 
 *     V5_SIG_OWNER_VEX, 
 *     V5_SIG_OPTIONS_NONE
 *   };
 *
 *   V5_SIG_MAGIC must be set, other fields and their behavior are TBD
 *
 *   vexCodeSig is defined as "weak" and this definition will override it.
 */
typedef struct  __attribute__ ((__packed__)) _vcodesig {
  uint32_t  magic;                        // Magic, must be 'VXV5' 0x35565856 le
  uint32_t  type;                         // program type
  uint32_t  owner;                        // program originator
  uint32_t  options;                      // program options
} vcodesig ;

//
#define V5_SIG_MAGIC            0x35585658
#define V5_SIG_TYPE_USER        0
#define V5_SIG_OWNER_SYS        0
#define V5_SIG_OWNER_VEX        1
#define V5_SIG_OWNER_PARTNER    2
#define V5_SIG_OPTIONS_NONE     0
#define V5_SIG_OPTIONS_INDG     (1 << 0)   // Invert default graphics colors
#define V5_SIG_OPTIONS_EXIT     (1 << 1)   // Kill threads when main exits
#define V5_SIG_OPTIONS_THDG     (1 << 2)   // Invert graphics based on theme

#define V5_CODE_SIG( type, owner, options ) \
vcodesig  vexCodeSig  __attribute__ ((section (".boot_data"))) = \
 { V5_SIG_MAGIC, type, owner, options };

/*----------------------------------------------------------------------------*/
/** @brief      Structures used by system time functions                      */
/*----------------------------------------------------------------------------*/

// Time
struct time {
  uint8_t   ti_hour;                      /// Hours 
  uint8_t   ti_min;                       /// Minutes
  uint8_t   ti_sec;                       /// Seconds
  uint8_t   ti_hund;                      /// Hundredths of seconds
};

// Time
struct date {
  uint16_t  da_year;                      /// Year - 1980
  uint8_t   da_day;                       /// Day of the month
  uint8_t   da_mon;                       /// Month (1 = Jan)
};
// DEVICE IDs

/*----------------------------------------------------------------------------*/
/** @brief      V5 Device type definitions                                    */
/*----------------------------------------------------------------------------*/
// TODO
// Do we really want to include the declare.h file ??
typedef enum {
  kDeviceTypeNoSensor        = 0,
  kDeviceTypeMotorSensor     = 2,
  kDeviceTypeLedSensor       = 3,
  kDeviceTypeAbsEncSensor    = 4,
  kDeviceTypeCrMotorSensor   = 5,
  kDeviceTypeImuSensor       = 6,
  kDeviceTypeRangeSensor     = 7, // obsolete
  kDeviceTypeDistanceSensor  = 7,
  kDeviceTypeRadioSensor     = 8,
  kDeviceTypeTetherSensor    = 9,
  kDeviceTypeBrainSensor     = 10,
  kDeviceTypeVisionSensor    = 11,
  kDeviceTypeAdiSensor       = 12,
  kDeviceTypeRes1Sensor      = 13,
  kDeviceTypeRes2Sensor      = 14,
  kDeviceTypeRes3Sensor      = 15,
  kDeviceTypeOpticalSensor   = 16,
  kDeviceTypeMagnetSensor    = 17,
  kDeviceTypeGpsSensor       = 20,
  kDeviceTypeBumperSensor    = 0x40,
  kDeviceTypeGyroSensor      = 0x46,
  kDeviceTypeSonarSensor     = 0x47,
  kDeviceTypeGenericSensor   = 128,
  kDeviceTypeGenericSerial   = 129,
  kDeviceTypeUndefinedSensor = 255
} V5_DeviceType;


// Opaque pointer to V5 device type structure
typedef struct _V5_Device * V5_DeviceT;

// Some ports will be virtual, some physical
#define V5_MAX_DEVICE_PORTS   32
typedef V5_DeviceType V5_DeviceTypeBuffer[V5_MAX_DEVICE_PORTS];

/*----------------------------------------------------------------------------*/
/** @brief      V5 Controller definitions                                     */
/*----------------------------------------------------------------------------*/
//
// March 2018, obsolete types now removed
// additional enum for final V5 controller labels added
//
typedef enum _V5_ControllerIndex {
    AnaLeftX    =   0,
    AnaLeftY,
    AnaRightX,
    AnaRightY,
    AnaSpare1,
    AnaSpare2,

    Button5U,
    Button5D,
    Button6U,
    Button6D,
    Button7U,
    Button7D,
    Button7L,
    Button7R,
    Button8U,
    Button8D,
    Button8L,
    Button8R,

    ButtonSEL,

    BatteryLevel,

    ButtonAll,
    Flags,
    BatteryCapacity,
    
    // Final V5 names
    Axis1       = AnaRightX,
    Axis2       = AnaRightY,
    Axis3       = AnaLeftY,
    Axis4       = AnaLeftX,
    
    ButtonL1    = Button5U,
    ButtonL2    = Button5D,
    ButtonR1    = Button6U,
    ButtonR2    = Button6D,

    ButtonUp    = Button7U,
    ButtonDown  = Button7D,
    ButtonLeft  = Button7L,
    ButtonRight = Button7R,

    ButtonX     = Button8U,
    ButtonB     = Button8D,
    ButtonY     = Button8L,
    ButtonA     = Button8R  
} V5_ControllerIndex;

typedef enum _V5_ControllerStatus {
    kV5ControllerOffline = 0,
    kV5ControllerTethered,
    kV5ControllerVexnet
} V5_ControllerStatus;

typedef enum _V5_ControllerId {
    kControllerMaster = 0,
    kControllerPartner
} V5_ControllerId;

/*----------------------------------------------------------------------------*/
/** @brief      V5 LED device definitions                                     */
/*----------------------------------------------------------------------------*/
// The LED is an obsolete sensor but we will leave as it's available on the Dev
// systems
typedef enum _V5_DeviceLedColor {
    kLedColorBlack   = 0,
    kLedColorRed     = 0xFF0000,
    kLedColorGreen   = 0x00FF00,
    kLedColorBlue    = 0x0000FF,
    kLedColorYellow  = 0xFFFF00,
    kLedColorCyan    = 0x00FFFF,
    kLedColorMagenta = 0xFF00FF,
    kLedColorWhite   = 0xFFFFFF
} V5_DeviceLedColor;

/*----------------------------------------------------------------------------*/
/** @brief      V5 ADI device definitions                                     */
/*----------------------------------------------------------------------------*/
typedef enum _V5_AdiPortConfiguration {
    kAdiPortTypeAnalogIn = 0,
    kAdiPortTypeAnalogOut,
    kAdiPortTypeDigitalIn,
    kAdiPortTypeDigitalOut,

    kAdiPortTypeSmartButton,
    kAdiPortTypeSmartPot,

    kAdiPortTypeLegacyButton,
    kAdiPortTypeLegacyPotentiometer,
    kAdiPortTypeLegacyLineSensor,
    kAdiPortTypeLegacyLightSensor,
    kAdiPortTypeLegacyGyro,
    kAdiPortTypeLegacyAccelerometer,

    kAdiPortTypeLegacyServo,
    kAdiPortTypeLegacyPwm,

    kAdiPortTypeQuadEncoder,
    kAdiPortTypeSonar,

    kAdiPortTypeLegacyPwmSlew,

    kAdiPortTypeUndefined = 255
} V5_AdiPortConfiguration;

// ADI sensor has 8 ports
#define V5_ADI_PORT_NUM     8

/*----------------------------------------------------------------------------*/
/** @brief      V5 Bumper switch device definitions                           */
/*----------------------------------------------------------------------------*/
typedef enum _V5_DeviceBumperState {
    kBumperReleased  = 0,                 /// Switch pressed
    kBumperPressed   = 1                  /// Switch released
} V5_DeviceBumperState;

/*----------------------------------------------------------------------------*/
/** @brief      V5 Motor definitions                                          */
/*----------------------------------------------------------------------------*/
// Most of this is still TBD and is currently based on the IQ implementation
typedef enum  {
    kMotorControlModeOFF         = 0,     /// Motor is off and in coast mode
    kMotorControlModeBRAKE       = 1,     /// Motor is off and in brake mode
    kMotorControlModeHOLD        = 2,     /// Motor is holding at current position
    kMotorControlModeSERVO       = 3,     /// Motor is in "Servo" mode. Move to position and hold at that position
    kMotorControlModePROFILE     = 4,     /// Motor moves to set position and stops.
    kMotorControlModeVELOCITY    = 5,     /// Motor is unlimited movement at set 'velocity'
    kMotorControlModeUNDEFINED   = 6      /// 
} V5MotorControlMode;

typedef enum _V5_MotorBrakeMode {
    kV5MotorBrakeModeCoast       = 0,     /// Motor will coast when stopped
    kV5MotorBrakeModeBrake       = 1,     /// Motor will brake when stopped
    kV5MotorBrakeModeHold        = 2      /// Motor will hold position when stopped
} V5MotorBrakeMode;

typedef enum  {
    kMotorEncoderDegrees         = 0,     /// degrees Encoder Count Mode
    kMotorEncoderRotations       = 1,     /// rotations Encoder Count Mode
    kMotorEncoderCounts          = 2      /// Raw Encoder Count Mode
} V5MotorEncoderUnits;

typedef enum _V5MotorGearset {
  kMotorGearSet_36 = 0,                   /// 36:1 gear set, torque
  kMotorGearSet_18 = 1,                   /// 18:1 gear set, speed
  kMotorGearSet_06 = 2                    /// 6:1 gear set, high speed
} V5MotorGearset;

// This is for 36:1 gear set
#define V5_MOTOR_COUNTS_PER_ROT  1800.0

//
// preliminary, used for position and velocity
//
typedef struct __attribute__ ((__packed__)) _V5_DeviceMotorPid {
	uint8_t   kf;
	uint8_t   kp;
	uint8_t   ki;
	uint8_t   kd;
	uint8_t   filter;
	uint8_t   pad1;
	uint16_t  limit;
	uint8_t   threshold;
	uint8_t   loopspeed;
	uint8_t   pad2[2];
} V5_DeviceMotorPid;

/*----------------------------------------------------------------------------*/
/** @brief      V5 Vision sensor definitions                                  */
/*----------------------------------------------------------------------------*/

// subject to change
typedef enum {
  kVisionModeNormal      = 0,
  kVisionModeMixed       = 1,
  kVisionModeLineDetect  = 2,
  kVisionTypeTest        = 3
} V5VisionMode;

typedef enum {
  kVisionTypeNormal      = 0,
  kVisionTypeColorCode   = 1,
  kVisionTypeLineDetect  = 2
} V5VisionBlockType;

// White balance
typedef enum {
  kVisionWBNormal       = 0,
  kVisionWBStart        = 1,
  kVisionWBManual       = 2
} V5VisionWBMode;

// LED control, from V5 or by the vision sensor
typedef enum {
  kVisionLedModeAuto    = 0,
  kVisionLedModeManual  = 1
} V5VisionLedMode;

// Wifi mode
typedef enum {
  kVisionWifiModeOff    = 0,
  kVisionWifiModeOn     = 1
} V5VisionWifiMode;

// signature should be 40 bytes and is the same data
// as sent to the vision sensor

// if bit0 is now set you know signature is read back
#define VISION_SIG_FLAG_STATUS    (1<<0) 

typedef struct __attribute__ ((__packed__)) _V5_DeviceVisionSignature {
    uint8_t             id;
    uint8_t             flags;
    uint8_t             pad[2];
    float               range;
    int32_t             uMin;
    int32_t             uMax;
    int32_t             uMean;
    int32_t             vMin;
    int32_t             vMax;
    int32_t             vMean;
    uint32_t            mRgb;
    uint32_t            mType;
} V5_DeviceVisionSignature;

typedef struct __attribute__ ((__packed__)) _V5_DeviceVisionObject {
    uint16_t            signature;        /// block signature
    V5VisionBlockType   type;             /// block type
    uint16_t            xoffset;          /// left side of block
    uint16_t            yoffset;          /// top of block
    uint16_t            width;            /// width of block
    uint16_t            height;           /// height of block
    uint16_t            angle;            /// angle of CC block in 0.1 deg units
} V5_DeviceVisionObject;

// Color structure, used for LED and white balance
typedef struct __attribute__ ((__packed__)) _V5_DeviceVisionRgb {
    uint8_t             red;
    uint8_t             green;
    uint8_t             blue;
    uint8_t             brightness;    /// not used yet
} V5_DeviceVisionRgb;

/*----------------------------------------------------------------------------*/
/** @brief      V5 IMU sensor definitions                                     */
/*----------------------------------------------------------------------------*/

// Quaternion data from IMU
typedef struct __attribute__ ((__packed__)) _V5_DeviceImuQuaternion {
    double              a;
    double              b;
    double              c;
    double              d;
} V5_DeviceImuQuaternion;

// Attitude data from IMU
typedef struct __attribute__ ((__packed__)) _V5_DeviceImuAttitude {
    double              pitch;  // x
    double              roll;   // y
    double              yaw;    // z
} V5_DeviceImuAttitude;

// Raw data from IMU
typedef struct __attribute__ ((__packed__)) _V5_DeviceImuRaw {
    double              x;
    double              y;
    double              z;
    double              w;
} V5_DeviceImuRaw;

// native is same direction as 3wire gyro
// clockwise is positive
typedef enum _V5ImuHeadingnMode {
    kImuHeadingNative     = 0x00,
    kImuHeadingIQ         = 0x01
} _V5ImuHeadingnMode;

// Orientation mode
typedef enum _V5ImuOrientationMode {
    kImuOrientationZUp    = 0x00,
    kImuOrientationZDown  = 0x10,
    kImuOrientationXUp    = 0x20,
    kImuOrientationXDown  = 0x30,
    kImuOrientationYUp    = 0x40,
    kImuOrientationYDown  = 0x50,
    kImuOrientationAuto   = 0x80
} V5ImuOrientationMode;

// Quaternion mode
typedef enum _V5ImuQuaternionMode {
    kImuQuaternionProcessed = 0x000,
    kImuQuaternionRaw       = 0x100
} V5ImuQuaternionMode;

/*----------------------------------------------------------------------------*/
/** @brief      V5 Color sensor definitions                                   */
/*----------------------------------------------------------------------------*/
// for raw crgb data
typedef struct _V5_DeviceOpticalRaw {
    uint16_t     clear;
    uint16_t     red;
    uint16_t     green;
    uint16_t     blue;
} V5_DeviceOpticalRaw;

typedef struct _V5_DeviceOpticalRgb {
    double       red;
    double       green;
    double       blue;
    double       brightness;
} V5_DeviceOpticalRgb;

// gesture data
typedef struct _V5_DeviceOpticalGesture {
    uint8_t      udata;
    uint8_t      ddata;
    uint8_t      ldata;
    uint8_t      rdata;
    uint8_t      type;
    uint8_t      pad;
    uint16_t     count;
    uint32_t     time;
} V5_DeviceOpticalGesture;

/*----------------------------------------------------------------------------*/
/** @brief      V5 magnet definitions                                         */
/*----------------------------------------------------------------------------*/
typedef enum _V5_DeviceMagnetDuration {
    kMagnetDurationShort,
    kMagnetDurationMedium,
    kMagnetDurationLong,
    kMagnetDurationExtraLong,
} V5_DeviceMagnetDuration;

/*----------------------------------------------------------------------------*/
/** @brief      V5 gps definitions                                            */
/*----------------------------------------------------------------------------*/
// Quaternion data from GPS
typedef struct __attribute__ ((__packed__)) _V5_DeviceGpsQuaternion {
    double              a;
    double              b;
    double              c;
    double              d;
} V5_DeviceGpsQuaternion;

// Attitude data from GPS, collect all useful info into this structure now
typedef struct __attribute__ ((__packed__)) _V5_DeviceGpsAttitude {
    double              pitch;  // x
    double              roll;   // y
    double              yaw;    // z
    
    // spacial position on the field
    double              position_x;
    double              position_y;
    double              position_z;

    // alternative roll, pitch and yaw
    double              az;
    double              el;
    double              rot;
} V5_DeviceGpsAttitude;

// Raw data from GPS
typedef struct __attribute__ ((__packed__)) _V5_DeviceGpsRaw {
    double              x;
    double              y;
    double              z;
    double              w;
} V5_DeviceGpsRaw;

/*----------------------------------------------------------------------------*/
/** @brief      V5 AI Camera definitions                                      */
/*----------------------------------------------------------------------------*/

// detected object
typedef struct __attribute__ (( __packed__ )) _V5_DeviceAicamObject {
    int16_t         type;     
    int16_t         xpos;  
    int16_t         ypos;  
    int16_t         zpos;  
    int16_t         width;    
    int16_t         height;   
} V5_DeviceAicamObject;

/*----------------------------------------------------------------------------*/
/** @brief      V5 SD File system definitions                                 */
/*----------------------------------------------------------------------------*/

// Opaque pointer (FIL *) to file structure
typedef   void          FIL;

// seek flags
// changed, Mar 6 2018 to be more consistent with stdio.h
#define   FS_SEEK_SET     0
#define   FS_SEEK_CUR     1
#define   FS_SEEK_END     2

// new 1.0.13, file status
#define   FS_FILE_EXIST   1
#define   FS_FILE_DIR     2

// File function return code (FRESULT)
typedef enum {
    FR_OK = 0U,                           /// (0) Succeeded
    FR_DISK_ERR,                          /// (1) A hard error occurred in the low level disk I/O layer
    FR_INT_ERR,                           /// (2) Assertion failed
    FR_NOT_READY,                         /// (3) The physical drive cannot work
    FR_NO_FILE,                           /// (4) Could not find the file
    FR_NO_PATH,                           /// (5) Could not find the path
    FR_INVALID_NAME,                      /// (6) The path name format is invalid
    FR_DENIED,                            /// (7) Access denied due to prohibited access or directory full
    FR_EXIST,                             /// (8) Access denied due to prohibited access
    FR_INVALID_OBJECT,                    /// (9) The file/directory object is invalid
    FR_WRITE_PROTECTED,                   /// (10) The physical drive is write protected
    FR_INVALID_DRIVE,                     /// (11) The logical drive number is invalid
    FR_NOT_ENABLED,                       /// (12) The volume has no work area
    FR_NO_FILESYSTEM,                     /// (13) There is no valid FAT volume
    FR_MKFS_ABORTED,                      /// (14) The f_mkfs() aborted due to any parameter error
    FR_TIMEOUT,                           /// (15) Could not get a grant to access the volume within defined period
    FR_LOCKED,                            /// (16) The operation is rejected according to the file sharing policy
    FR_NOT_ENOUGH_CORE,                   /// (17) LFN working buffer could not be allocated
    FR_TOO_MANY_OPEN_FILES,               /// (18) Number of open files > _FS_SHARE
    FR_INVALID_PARAMETER                  /// (19) Given parameter is invalid
} FRESULT;

/*----------------------------------------------------------------------------*/
/** @brief      V5 touch events                                               */
/*----------------------------------------------------------------------------*/
typedef enum _touchEvent {
    kTouchEventRelease,
    kTouchEventPress,
    kTouchEventPressAuto
} V5_TouchEvent;

typedef struct _V5_TouchStatus {
    V5_TouchEvent lastEvent;
    int16_t       lastXpos;
    int16_t       lastYpos;
    int32_t       pressCount;
    int32_t       releaseCount;
} V5_TouchStatus;

/*----------------------------------------------------------------------------*/
/** @brief      V5 competition status bits                                    */
/*----------------------------------------------------------------------------*/

#define V5_COMP_BIT_EBL     1   // if set then robot disabled
#define V5_COMP_BIT_MODE    2   // if set then robot in autonomous
#define V5_COMP_BIT_COMP    4   // if set then either comp switch or field control connected
#define V5_COMP_BIT_GAME    8   // if set then field control connected

/*----------------------------------------------------------------------------*/
/** @brief   structure holding image info - used by bmp/png read code         */
/*----------------------------------------------------------------------------*/
// data must point to suitable buffer now
typedef struct __attribute__ ((__packed__)) _v5_image {
    uint16_t  width;
    uint16_t  height;
    uint32_t *data;
    uint32_t *p;
} v5_image;

#define SYSTEM_DISPLAY_WIDTH       		480
#define SYSTEM_DISPLAY_HEIGHT      		272

#ifdef __cplusplus
}
#endif
#endif /* V5_APITYPES_H_*/
#pragma once
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2016, All rights reserved.               */
/*                                                                            */
/*    Module:     v5_apiuser.h                                                */
/*    Author:     James Pearman                                               */
/*    Created:    8 Nov 2016                                                  */
/*                                                                            */
/*    Revisions:  V0.1                                                        */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef V5_APIUSER_H_
#define V5_APIUSER_H_

#include "stdint.h"
#include "stdbool.h"
#include "sim/util.h"
#include "sim/time.h"
#include "v5_apitypes.h"

/*----------------------------------------------------------------------------*/
/** @file    v5_apiuser.h
  * @brief   Header for V5 API device wrapper functions
*//*--------------------------------------------------------------------------*/

#ifdef __cplusplus
extern "C" {
#endif

void                vexDelay( uint32_t timems );

void                vexLedSet( uint32_t index, V5_DeviceLedColor value );
void                vexLedRgbSet( uint32_t index, uint32_t color);
V5_DeviceLedColor   vexLedGet( uint32_t index );
uint32_t            vexLedRgbGet( uint32_t index );

void                vexAdiPortConfigSet( uint32_t index, uint32_t port, V5_AdiPortConfiguration type );
V5_AdiPortConfiguration vexAdiPortConfigGet( uint32_t index, uint32_t port );
void                vexAdiValueSet( uint32_t index, uint32_t port, int32_t value );
int32_t             vexAdiValueGet( uint32_t index, uint32_t port );

V5_DeviceBumperState  vexBumperGet( uint32_t index );

void                vexGyroReset( uint32_t index );
double              vexGyroHeadingGet( uint32_t index );
double              vexGyroDegreesGet( uint32_t index );

int32_t             vexSonarValueGet( uint32_t index );

int32_t             vexGenericValueGet( uint32_t index );

void                vexMotorVelocitySet( uint32_t index, int32_t velocity );
void                vexMotorVelocityUpdate( uint32_t index, int32_t velocity );
void                vexMotorVoltageSet( uint32_t index, int32_t value );
int32_t             vexMotorVelocityGet( uint32_t index );
int32_t             vexMotorDirectionGet( uint32_t index );
double              vexMotorActualVelocityGet( uint32_t index );
void                vexMotorModeSet( uint32_t index, V5MotorControlMode mode );
V5MotorControlMode  vexMotorModeGet( uint32_t index );
void                vexMotorPwmSet( uint32_t index, int32_t value );
int32_t             vexMotorPwmGet( uint32_t index );
void                vexMotorCurrentLimitSet( uint32_t index, int32_t value );
int32_t             vexMotorCurrentLimitGet( uint32_t index );
void                vexMotorVoltageLimitSet( uint32_t index, int32_t value );
int32_t             vexMotorVoltageLimitGet( uint32_t index );
void                vexMotorPositionPidSet( uint32_t index, V5_DeviceMotorPid *pid );
void                vexMotorVelocityPidSet( uint32_t index, V5_DeviceMotorPid *pid );
int32_t             vexMotorCurrentGet( uint32_t index );
int32_t             vexMotorVoltageGet( uint32_t index );
double              vexMotorPowerGet( uint32_t index );
double              vexMotorTorqueGet( uint32_t index );
double              vexMotorEfficiencyGet( uint32_t index );
double              vexMotorTemperatureGet( uint32_t index );
bool                vexMotorOverTempFlagGet( uint32_t index );
bool                vexMotorCurrentLimitFlagGet( uint32_t index );
uint32_t            vexMotorFaultsGet( uint32_t index );
bool                vexMotorZeroVelocityFlagGet( uint32_t index );
bool                vexMotorZeroPositionFlagGet( uint32_t index );
uint32_t            vexMotorFlagsGet( uint32_t index );
void                vexMotorReverseFlagSet( uint32_t index, bool value );
bool                vexMotorReverseFlagGet( uint32_t index );
void                vexMotorEncoderUnitsSet( uint32_t index, V5MotorEncoderUnits units );
V5MotorEncoderUnits vexMotorEncoderUnitsGet( uint32_t index );
void                vexMotorBrakeModeSet( uint32_t index, V5MotorBrakeMode mode );
V5MotorBrakeMode    vexMotorBrakeModeGet( uint32_t index );
void                vexMotorPositionSet( uint32_t index, double position );
double              vexMotorPositionGet( uint32_t index );
int32_t             vexMotorPositionRawGet( uint32_t index, uint32_t *timestamp );
void                vexMotorPositionReset( uint32_t index );
double              vexMotorTargetGet( uint32_t index );
void                vexMotorServoTargetSet( uint32_t index, double position );
void                vexMotorAbsoluteTargetSet( uint32_t index, double position, int32_t velocity );
void                vexMotorRelativeTargetSet( uint32_t index, double position, int32_t velocity );
void                vexMotorGearingSet( uint32_t index, V5MotorGearset value );
V5MotorGearset      vexMotorGearingGet( uint32_t index );
void                vexMotorExternalProfileSet( uint32_t index, double position, int32_t velocity );

void                vexVisionModeSet( uint32_t index, V5VisionMode mode );
V5VisionMode        vexVisionModeGet( uint32_t index );
int32_t             vexVisionObjectCountGet( uint32_t index );
int32_t             vexVisionObjectGet( uint32_t index, uint32_t indexObj, V5_DeviceVisionObject *pObject );
void                vexVisionSignatureSet( uint32_t index, V5_DeviceVisionSignature *pSignature );
bool                vexVisionSignatureGet( uint32_t index, uint32_t id, V5_DeviceVisionSignature *pSignature );
void                vexVisionBrightnessSet( uint32_t index, uint8_t percent );
uint8_t             vexVisionBrightnessGet( uint32_t index );
void                vexVisionWhiteBalanceModeSet( uint32_t index, V5VisionWBMode mode );
V5VisionWBMode      vexVisionWhiteBalanceModeGet( uint32_t index );
void                vexVisionWhiteBalanceSet( uint32_t index, V5_DeviceVisionRgb color );
V5_DeviceVisionRgb  vexVisionWhiteBalanceGet( uint32_t index );
void                vexVisionLedModeSet( uint32_t index, V5VisionLedMode mode );
V5VisionLedMode     vexVisionLedModeGet( uint32_t index );
void                vexVisionLedBrigntnessSet( uint32_t index, uint8_t percent );
uint8_t             vexVisionLedBrigntnessGet( uint32_t index );
void                vexVisionLedColorSet( uint32_t index, V5_DeviceVisionRgb color);
V5_DeviceVisionRgb  vexVisionLedColorGet( uint32_t index );
void                vexVisionWifiModeSet( uint32_t index, V5VisionWifiMode mode );
V5VisionWifiMode    vexVisionWifiModeGet( uint32_t index );

void                vexImuReset( uint32_t index );
double              vexImuHeadingGet( uint32_t index );
double              vexImuDegreesGet( uint32_t index );
void                vexImuQuaternionGet( uint32_t index, V5_DeviceImuQuaternion *data );
void                vexImuAttitudeGet( uint32_t index, V5_DeviceImuAttitude *data );
void                vexImuRawGyroGet( uint32_t index, V5_DeviceImuRaw *data );
void                vexImuRawAccelGet( uint32_t index, V5_DeviceImuRaw *data );
uint32_t            vexImuStatusGet( uint32_t index );
void                vexImuModeSet( uint32_t index, uint32_t mode );
uint32_t            vexImuModeGet( uint32_t index );
void                vexImuDataRateSet( uint32_t index, uint32_t rate );

int32_t             vexRangeValueGet( uint32_t index );

void                vexAbsEncReset( uint32_t index );
void                vexAbsEncPositionSet( uint32_t index, int32_t position );
int32_t             vexAbsEncPositionGet( uint32_t index );
int32_t             vexAbsEncVelocityGet( uint32_t index );
int32_t             vexAbsEncAngleGet( uint32_t index );
void                vexAbsEncReverseFlagSet( uint32_t index, bool value );
bool                vexAbsEncReverseFlagGet( uint32_t index );
uint32_t            vexAbsEncStatusGet( uint32_t index );
void                vexAbsEncDataRateSet( uint32_t index, uint32_t rate );

double              vexOpticalHueGet( uint32_t index );
double              vexOpticalSatGet( uint32_t index );
double              vexOpticalBrightnessGet( uint32_t index );
int32_t             vexOpticalProximityGet( uint32_t index );
void                vexOpticalRgbGet( uint32_t index, V5_DeviceOpticalRgb *data );
void                vexOpticalLedPwmSet( uint32_t index, int32_t value );
int32_t             vexOpticalLedPwmGet( uint32_t index );
uint32_t            vexOpticalStatusGet( uint32_t index );
void                vexOpticalRawGet( uint32_t index, V5_DeviceOpticalRaw *data );
void                vexOpticalModeSet( uint32_t index, uint32_t mode );
uint32_t            vexOpticalModeGet( uint32_t index );
uint32_t            vexOpticalGestureGet( uint32_t index, V5_DeviceOpticalGesture *pData );
void                vexOpticalGestureEnable( uint32_t index );
void                vexOpticalGestureDisable( uint32_t index );
int32_t             vexOpticalProximityThreshold( uint32_t index, int32_t value );
void                vexOpticalIntegrationTimeSet( uint32_t index, double timems );
double              vexOpticalIntegrationTimeGet( uint32_t index );

void                vexMagnetPowerSet( uint32_t index, int32_t value, int32_t time );
int32_t             vexMagnetPowerGet( uint32_t index );
void                vexMagnetPickup( uint32_t index, V5_DeviceMagnetDuration duration );
void                vexMagnetDrop( uint32_t index, V5_DeviceMagnetDuration duration );
double              vexMagnetTemperatureGet( uint32_t index );
double              vexMagnetCurrentGet( uint32_t index );
uint32_t            vexMagnetStatusGet( uint32_t index );

uint32_t            vexDistanceDistanceGet( uint32_t index );
uint32_t            vexDistanceConfidenceGet( uint32_t index );
int32_t             vexDistanceObjectSizeGet( uint32_t index );
double              vexDistanceObjectVelocityGet( uint32_t index );
uint32_t            vexDistanceStatusGet( uint32_t index );

void                vexGpsReset( uint32_t index );
double              vexGpsHeadingGet( uint32_t index );
double              vexGpsDegreesGet( uint32_t index );
void                vexGpsQuaternionGet( uint32_t index, V5_DeviceGpsQuaternion *data );
void                vexGpsAttitudeGet( uint32_t index, V5_DeviceGpsAttitude *data, bool bRaw );
void                vexGpsRawGyroGet( uint32_t index, V5_DeviceGpsRaw *data );
void                vexGpsRawAccelGet( uint32_t index, V5_DeviceGpsRaw *data );
uint32_t            vexGpsStatusGet( uint32_t index );
void                vexGpsModeSet( uint32_t index, uint32_t mode );
uint32_t            vexGpsModeGet( uint32_t index );
void                vexGpsDataRateSet( uint32_t index, uint32_t rate );
void                vexGpsOriginSet( uint32_t index, double ox, double oy );
void                vexGpsOriginGet( uint32_t index, double *ox, double *oy );
void                vexGpsRotationSet( uint32_t index, double value );
double              vexGpsRotationGet( uint32_t index );
void                vexGpsInitialPositionSet( uint32_t index, double initial_x, double initial_y, double initial_rotation );
double              vexGpsErrorGet( uint32_t index );

// Generic serial port comms to any device
void                vexGenericSerialEnable( uint32_t index, int32_t options );
void                vexGenericSerialBaudrate( uint32_t index, int32_t baudrate );
int32_t             vexGenericSerialWriteChar( uint32_t index, uint8_t c );
int32_t             vexGenericSerialWriteFree( uint32_t index );
int32_t             vexGenericSerialTransmit( uint32_t index, uint8_t *buffer, int32_t length );
int32_t             vexGenericSerialReadChar( uint32_t index );
int32_t             vexGenericSerialPeekChar( uint32_t index );
int32_t             vexGenericSerialReceiveAvail( uint32_t index );
int32_t             vexGenericSerialReceive( uint32_t index, uint8_t *buffer, int32_t length );
void                vexGenericSerialFlush( uint32_t index );


#ifdef __cplusplus
}
#endif
#endif /* V5_APIUSER_H_ *//*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2016, All rights reserved.               */
/*                                                                            */
/*    Module:     v5_color.h                                                  */
/*    Author:     James Pearman                                               */
/*    Created:    20 August 2016                                              */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/


#ifndef _VEX_COLORS
#define _VEX_COLORS

//*****************************************************************************
//
// A set of color definitions.  This set is the subset of the X11 colors (from
// rgb.txt) that are supported by typical web browsers.
//
//*****************************************************************************
#define ClrAliceBlue            0x00F0F8FF
#define ClrAntiqueWhite         0x00FAEBD7
#define ClrAqua                 0x0000FFFF
#define ClrAquamarine           0x007FFFD4
#define ClrAzure                0x00F0FFFF
#define ClrBeige                0x00F5F5DC
#define ClrBisque               0x00FFE4C4
#define ClrBlack                0x00000000
#define ClrBlanchedAlmond       0x00FFEBCD
#define ClrBlue                 0x000000FF
#define ClrBlueViolet           0x008A2BE2
#define ClrBrown                0x00A52A2A
#define ClrBurlyWood            0x00DEB887
#define ClrCadetBlue            0x005F9EA0
#define ClrChartreuse           0x007FFF00
#define ClrChocolate            0x00D2691E
#define ClrCoral                0x00FF7F50
#define ClrCornflowerBlue       0x006495ED
#define ClrCornsilk             0x00FFF8DC
#define ClrCrimson              0x00DC143C
#define ClrCyan                 0x0000FFFF
#define ClrDarkBlue             0x0000008B
#define ClrDarkCyan             0x00008B8B
#define ClrDarkGoldenrod        0x00B8860B
#define ClrDarkGray             0x00A9A9A9
#define ClrDarkGreen            0x00006400
#define ClrDarkKhaki            0x00BDB76B
#define ClrDarkMagenta          0x008B008B
#define ClrDarkOliveGreen       0x00556B2F
#define ClrDarkOrange           0x00FF8C00
#define ClrDarkOrchid           0x009932CC
#define ClrDarkRed              0x008B0000
#define ClrDarkSalmon           0x00E9967A
#define ClrDarkSeaGreen         0x008FBC8F
#define ClrDarkSlateBlue        0x00483D8B
#define ClrDarkSlateGray        0x002F4F4F
#define ClrDarkTurquoise        0x0000CED1
#define ClrDarkViolet           0x009400D3
#define ClrDeepPink             0x00FF1493
#define ClrDeepSkyBlue          0x0000BFFF
#define ClrDimGray              0x00696969
#define ClrDodgerBlue           0x001E90FF
#define ClrFireBrick            0x00B22222
#define ClrFloralWhite          0x00FFFAF0
#define ClrForestGreen          0x00228B22
#define ClrFuchsia              0x00FF00FF
#define ClrGainsboro            0x00DCDCDC
#define ClrGhostWhite           0x00F8F8FF
#define ClrGold                 0x00FFD700
#define ClrGoldenrod            0x00DAA520
#define ClrGray                 0x00808080
#define ClrGreen                0x00008000
#define ClrGreenYellow          0x00ADFF2F
#define ClrHoneydew             0x00F0FFF0
#define ClrHotPink              0x00FF69B4
#define ClrIndianRed            0x00CD5C5C
#define ClrIndigo               0x004B0082
#define ClrIvory                0x00FFFFF0
#define ClrKhaki                0x00F0E68C
#define ClrLavender             0x00E6E6FA
#define ClrLavenderBlush        0x00FFF0F5
#define ClrLawnGreen            0x007CFC00
#define ClrLemonChiffon         0x00FFFACD
#define ClrLightBlue            0x00ADD8E6
#define ClrLightCoral           0x00F08080
#define ClrLightCyan            0x00E0FFFF
#define ClrLightGoldenrodYellow 0x00FAFAD2
#define ClrLightGreen           0x0090EE90
#define ClrLightGrey            0x00D3D3D3
#define ClrLightPink            0x00FFB6C1
#define ClrLightSalmon          0x00FFA07A
#define ClrLightSeaGreen        0x0020B2AA
#define ClrLightSkyBlue         0x0087CEFA
#define ClrLightSlateGray       0x00778899
#define ClrLightSteelBlue       0x00B0C4DE
#define ClrLightYellow          0x00FFFFE0
#define ClrLime                 0x0000FF00
#define ClrLimeGreen            0x0032CD32
#define ClrLinen                0x00FAF0E6
#define ClrMagenta              0x00FF00FF
#define ClrMaroon               0x00800000
#define ClrMediumAquamarine     0x0066CDAA
#define ClrMediumBlue           0x000000CD
#define ClrMediumOrchid         0x00BA55D3
#define ClrMediumPurple         0x009370DB
#define ClrMediumSeaGreen       0x003CB371
#define ClrMediumSlateBlue      0x007B68EE
#define ClrMediumSpringGreen    0x0000FA9A
#define ClrMediumTurquoise      0x0048D1CC
#define ClrMediumVioletRed      0x00C71585
#define ClrMidnightBlue         0x00191970
#define ClrMintCream            0x00F5FFFA
#define ClrMistyRose            0x00FFE4E1
#define ClrMoccasin             0x00FFE4B5
#define ClrNavajoWhite          0x00FFDEAD
#define ClrNavy                 0x00000080
#define ClrOldLace              0x00FDF5E6
#define ClrOlive                0x00808000
#define ClrOliveDrab            0x006B8E23
#define ClrOrange               0x00FFA500
#define ClrOrangeRed            0x00FF4500
#define ClrOrchid               0x00DA70D6
#define ClrPaleGoldenrod        0x00EEE8AA
#define ClrPaleGreen            0x0098FB98
#define ClrPaleTurquoise        0x00AFEEEE
#define ClrPaleVioletRed        0x00DB7093
#define ClrPapayaWhip           0x00FFEFD5
#define ClrPeachPuff            0x00FFDAB9
#define ClrPeru                 0x00CD853F
#define ClrPink                 0x00FFC0CB
#define ClrPlum                 0x00DDA0DD
#define ClrPowderBlue           0x00B0E0E6
#define ClrPurple               0x00800080
#define ClrRed                  0x00FF0000
#define ClrRosyBrown            0x00BC8F8F
#define ClrRoyalBlue            0x004169E1
#define ClrSaddleBrown          0x008B4513
#define ClrSalmon               0x00FA8072
#define ClrSandyBrown           0x00F4A460
#define ClrSeaGreen             0x002E8B57
#define ClrSeashell             0x00FFF5EE
#define ClrSienna               0x00A0522D
#define ClrSilver               0x00C0C0C0
#define ClrSkyBlue              0x0087CEEB
#define ClrSlateBlue            0x006A5ACD
#define ClrSlateGray            0x00708090
#define ClrSnow                 0x00FFFAFA
#define ClrSpringGreen          0x0000FF7F
#define ClrSteelBlue            0x004682B4
#define ClrTan                  0x00D2B48C
#define ClrTeal                 0x00008080
#define ClrThistle              0x00D8BFD8
#define ClrTomato               0x00FF6347
#define ClrTurquoise            0x0040E0D0
#define ClrViolet               0x00EE82EE
#define ClrWheat                0x00F5DEB3
#define ClrWhite                0x00FFFFFF
#define ClrWhiteSmoke           0x00F5F5F5
#define ClrYellow               0x00FFFF00
#define ClrYellowGreen          0x009ACD32

//*****************************************************************************
//
// Masks and shifts to aid in color format translation by drivers.
//
//*****************************************************************************
#define ClrRedMask              0x00FF0000
#define ClrRedShift             16
#define ClrGreenMask            0x0000FF00
#define ClrGreenShift           8
#define ClrBlueMask             0x000000FF
#define ClrBlueShift            0

#endif // _VEX_COLORS#pragma once
#include "v5_api.h"
#include "v5_apiprivate.h"

#include "vex_task.h"
#include "vex_thread.h"
#include "vex_event.h"
#include "vex_mevent.h"

#include "vex_units.h"
#include "vex_color.h"
#include "vex_device.h"
#include "vex_motor.h"
#include "vex_vision.h"
#include "vex_imu.h"
#include "vex_rotation.h"
#include "vex_optical.h"
#include "vex_distance.h"
#include "vex_electromag.h"
#include "vex_gps.h"
#include "vex_controller.h"
#include "vex_brain.h"
#include "vex_competition.h"
#include "vex_triport.h"
#include "vex_timer.h"
#include "vex_motorgroup.h"
#include "vex_drivetrain.h"
#include "vex_smartdrive.h"
#include "vex_vexlink.h"
#include "vex_roboticarm.h"
#include "vex_global.h"#pragma once
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2016, All rights reserved.               */
/*                                                                            */
/*    Module:     v5.h                                                        */
/*    Author:     James Pearman                                               */
/*    Created:    2 Dec 2016                                                  */
/*                                                                            */
/*    Revisions:  V0.1                                                        */
/*                                                                            */
/*----------------------------------------------------------------------------*/

// Collect the v5 api headers together

#include "v5_api.h"
#include "v5_apiprivate.h"

#ifdef V5_VEX_INCLUDE_OFFSCREEN_BUFFER
#include "v5_apigraphics.h"
#endif

#pragma once
#include "v5_cpp.h"
#pragma once
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2017-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_brain.h                                                 */
/*    Author:     James Pearman                                               */
/*    Created:    8 July 2017                                                 */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef VEX_BRAIN_CLASS_H
#define VEX_BRAIN_CLASS_H
#include "v5_api.h"
#include "vex_units.h"
#include "vex_device.h"
#include "vex_global.h"
#include "vex_timer.h"
#include "vex_triport.h"
#include "vex_mevent.h"
#include <type_traits> // for weird rectangle stuff

#include "sim/graphics/brain_screen.h"

/*-----------------------------------------------------------------------------*/
/** @file    vex_brain.h
 * @brief   V5 brain class header
 */
/*---------------------------------------------------------------------------*/

namespace vex
{
  /**
   * @brief Use the brain class to see battery information, SD card information, or write to the Screen.
   */
  class brain
  {
    friend class competition;

  private:
  protected:
    static int32_t _getIndex();

  public:
    /**
     * @brief Creates a new brain object.
     */
    brain();
    ~brain();

    enum class tEventType
    {
      EVENT_LCD_PRESSED = 0,
      EVENT_LCD_RELEASED = 1
    };
    /**
     * @brief Use this class to write or draw to the brain's LCD screen.
     */
    class lcd
    {
    private:
      int32_t _row;
      int32_t _maxrows;
      int32_t _rowheight;

      int32_t _col;
      int32_t _maxcols;
      int32_t _colwidth;

      int32_t _penWidth;

      uint32_t _textbase;

      char _textStr[256];

      int32_t rowToPixel(int32_t row);
      int32_t colToPixel(int32_t col);

      bool _transparent;

      int _origin_x;
      int _origin_y;

#define FONT_MONO_CELL_WIDTH 10
#define FONT_MONO_CELL_HEIGHT 20
#define FONT_MONO_CELL_BASE 4

// Not sure what to do with this yet
// does not make much sense with proportional font
// but we need to specify a location somehow
#define FONT_PROP_CELL_WIDTH 10
#define FONT_PROP_CELL_HEIGHT 20
#define FONT_PROP_CELL_BASE 4

    public:
      lcd();
      ~lcd() { print_unimplimented(); };

      /**
       * @brief Sets the cursor to the row and column number set in the parameters.
       * @param row Sets the row number for where the cursor is placed.
       * @param col Sets the column number for where the cursor is placed.
       */
      void setCursor(int32_t row, int32_t col);

      /**
       * @brief Sets the font type to be displayed on the Screen that is determined by the parameter.
       * @param font The type of font that is displayed.
       */
      void setFont(fontType font);

      /**
       * @brief Sets the pen's width.
       * @param width This represents the width of the pen when drawing. A larger width equals a wider pen stroke.
       */
      void setPenWidth(uint32_t width);

      /**
       * @brief Sets the origin of the screen to the parameters defined in the function.
       * @param x The x location of the origin.
       * @param y The y location of the origin.
       */
      void setOrigin(int32_t x, int32_t y);

      /**
       * @brief An integer that tracks the current cursor position's column, starting at 1.
       * @return Returns an integer that tracks the current cursor position's column, starting at 1.
       */
      int32_t column();

      /**
       * @brief An integer that tracks the current cursor position's row, starting at 1.
       * @return Returns an integer that tracks the current cursor position's row, starting at 1.
       */
      int32_t row();

      template <class T>
      void setPenColor(T color)
      {
        _setPenColor((uint32_t)color);
      }

      /**
       * @brief Sets the color of the pen to a specified color.
       * @param color A color unit where colors can be defined as names.
       */
      void setPenColor(const color &color);

      /**
       * @brief Sets the color of the pen to a specified color using a hex value.
       * @param color A hexadecimal value that represents color.
       */
      void setPenColor(const char *color);

      /**
       * @brief Sets the color of the pen to a specified color.
       * @param hue The integer represents the hue of the color.
       */
      void setPenColor(int hue);

      // not part of spec, may be removed
      template <class T>
      void setFillColor(T color)
      {
        _setFillColor((uint32_t)color);
      }

      /**
       * @brief Sets the default fill color for any subsequent draw command.
       * @param color In a color unit, colors can be defined as names.
       */
      void setFillColor(const color &color);

      /**
       * @brief Sets the default fill color for any subsequent draw command..
       * @param color A hexadecimal value that represents color.
       */
      void setFillColor(const char *color);

      /**
       * @brief Sets the default fill color for any subsequent draw command.
       * @param hue The integer represents the hue of the color.
       */
      void setFillColor(int hue);

      /**
       * @brief Gets the width in pixels of the given string.
       * @return Returns an integer that represents the width of the string in pixels.
       */
      int32_t getStringWidth(const char *cstr);

      /**
       * @brief Gets the height in pixels of the given string.
       * @return Returns an integer that represents the height of the string in pixels.
       */
      int32_t getStringHeight(const char *cstr);

      /**
       * @brief Prints a number, string, or Boolean.
       * @param value Information to display on the screen.
       */
      template <class T>
      void print(T value)
      {
        if (std::is_same<T, int>::value)
          print("%d", (int)value);
        else if (std::is_same<T, double>::value)
          print("%.2f", (double)value);
        else
        {
          // primarily to handle modkit number
          if ((int)value == value)
            print("%d", (int)value);
          else
            print("%.2f", (double)value);
        }
      }

      /**
       * @brief Prints a number, string, or Boolean.
       * @param format This is a reference to a char format that prints the value of variables.
       * @param ... A variable list of parameters to insert into format string.
       */
      void print(const char *format, ...);
      void print(char *format, ...);

      /**
       * @brief Prints a number, string, or Boolean at an x, y pixel location.
       * @param x The x-coordinate at which to print a message on the screen.
       * @param y The y-coordinate at which to print a message on the screen.
       * @param format A reference to a char format to print the value of variables.
       * @param ... A variable list of parameters to insert into format string.
       */
      void printAt(int32_t x, int32_t y, const char *format, ...);

      /**
       * @brief Prints a number, string, or Boolean at an x, y pixel location with the ability to be transparent.
       * @param x The x pixel location where the print should start
       * @param y The y pixel location where the print should start
       * @param bOpaque If set to false, the print will be transparent.
       * @param format A reference to a char format to print the value of variables.
       * @param ... A variable list of parameters to insert into format string.
       */
      void printAt(int32_t x, int32_t y, bool bOpaque, const char *format, ...);

      template <class T>
      void clearScreen(T color)
      {
        _clearScreen((uint32_t)color);
      }

      /**
       * @brief Clears the whole Screen to a default color or otherwise specified color.
       */
      void clearScreen(void);

      /**
       * @brief Clears the whole Screen to a default color or otherwise specified color.
       * @param color In a color unit, colors can be defined as names.
       */
      void clearScreen(const color &color);

      /**
       * @brief Clears the whole Screen to a default color or otherwise specified color.
       * @param color A hexadecimal value that represents color.
       */
      void clearScreen(const char *color);

      /**
       * @brief Clears the whole Screen to a default color or otherwise specified color.
       * @param hue The integer represents the hue of the color.
       */
      void clearScreen(int hue);

      template <class T1, class C>
      void clearLine(T1 number, C color)
      {
        if (std::is_same<C, vex::color>::value)
          clearLine((int)number, color);
        else if (std::is_same<C, const char *>::value)
          clearLine((int)number, color);
        else if (std::is_same<C, int>::value)
          clearLine((int)number, color);
        else
          _clearLine((int)number, (uint32_t)color);
      }

      /**
       * @brief Clears the specified line and sets it to a specified color.
       * @param number The integer sets the line that is to be cleared.
       * @param color A color unit where colors can be defined as names.
       */
      void clearLine(int number, const color &color);

      /**
       * @brief Clears the specified line and sets it to a specified color.
       * @param number The integer sets the line that is to be cleared.
       * @param color A hexadecimal value that represents color.
       */
      void clearLine(int number, const char *color);

      /**
       * @brief Clears the specified line and sets it to a specified color.
       * @param number The integer sets the line that is to be cleared.
       * @param hue An integer that represents the hue of the color.
       */
      void clearLine(int number, int hue);

      /**
       * @brief Clears the specified line and sets it to the background color.
       * @param number The integer sets the line that is to be cleared.
       */
      void clearLine(int number);

      /**
       * @brief Clears the rest of the line from where the cursor is located.
       */
      void clearLine(void);

      /**
       * @brief Clears the rest of the line from where the cursor is located and then moves the cursor to the beginning of the next line.
       */
      void newLine(void);

      /**
       * @brief Draws a single pixel to the screen in the specified x and y location.
       * @param x The x location of where to draw the pixel.
       * @param y The y location of where to draw the pixel.
       */
      void drawPixel(int x, int y);

      /**
       * @brief Draws a line connecting the two specified points in the parameters.
       * @param x1 The x location of the first point.
       * @param y1 The y location of the first point.
       * @param x2 The x location of the second point.
       * @param y2 The y location of the second point.
       */
      void drawLine(int x1, int y1, int x2, int y2);

      // Rectangle
      
      /**
       * @brief Draws a rectangle using the specified points and attributes set in the parameters. Fills the rectangle with the current pen and fill color.
       * @param x The x-coordinate at which the left edge of the rectangle will be drawn on the screen.
       * @param y The y-coordinate at which the top edge of the rectangle will be drawn on the screen.
       * @param width The width of the rectangle.
       * @param height The height of the rectangle.
       */
      void drawRectangle(int x, int y, int width, int height);

      /**
       * @brief Draws a rectangle using the specified points and attributes set in the parameters. Fills the rectangle with the color specified.
       * @param x The x-coordinate at which the left edge of the rectangle will be drawn on the screen.
       * @param y The y-coordinate at which the top edge of the rectangle will be drawn on the screen.
       * @param width The width of the rectangle.
       * @param height The height of the rectangle.
       * @param color A color unit where colors can be defined as names.
       */
      void drawRectangle(int x, int y, int width, int height, const color &color);

      /**
       * @brief Draws a rectangle using the specified points and attributes set in the parameters. Fills the rectangle with the color specified.
       * @param x The x-coordinate at which the left edge of the rectangle will be drawn on the screen.
       * @param y The y-coordinate at which the top edge of the rectangle will be drawn on the screen.
       * @param width The width of the rectangle.
       * @param height The height of the rectangle.
       * @param color A hexadecimal value that represents color.
       */
      void drawRectangle(int x, int y, int width, int height, const char *color);

      /**
       * @brief Draws a rectangle using the specified points and attributes set in the parameters. Fills the rectangle with the color specified.
       * @param x The x-coordinate at which the left edge of the rectangle will be drawn on the screen.
       * @param y The y-coordinate at which the top edge of the rectangle will be drawn on the screen.
       * @param width The width of the rectangle.
       * @param height The height of the rectangle.
       * @param hue The color of the rectangle.
       */
      void drawRectangle(int x, int y, int width, int height, int hue);

      // Circles
      template <class T1, class T2, class T3, class C>
      void drawCircle(T1 x, T2 y, T3 radius, C color)
      {
        if (std::is_same<C, vex::color>::value)
          drawCircle((int)x, (int)y, (int)radius, color);
        else if (std::is_same<C, const char *>::value)
          drawCircle((int)x, (int)y, (int)radius, color);
        else if (std::is_same<C, int>::value)
          drawCircle((int)x, (int)y, (int)radius, color);
        else
          _drawCircle((int)x, (int)y, (int)radius, (uint32_t)color);
      }

      /**
       * @brief Draws a circle using the specified points and attributes set in the parameters. Fills the circle with the current pen and fill color.
       * @param x The central x location of the circle.
       * @param y The central y location of the circle.
       * @param radius Sets the radius of the circle to be drawn on the Screen.
       */
      void drawCircle(int x, int y, int radius);

      /**
       * @brief Draws a circle using the specified points and attributes set in the parameters. Fills the circle with the color specified.
       * @param x The central x location of the circle.
       * @param y The central y location of the circle.
       * @param radius Sets the radius of the circle to be drawn on the Screen.
       * @param color A color unit where colors can be defined as names.
       */
      void drawCircle(int x, int y, int radius, const color &color);

      /**
       * @brief Draws a circle using the specified points and attributes set in the parameters. Fills the circle with the color specified.
       * @param x The central x location of the circle.
       * @param y The central y location of the circle.
       * @param radius Sets the radius of the circle to be drawn on the Screen.
       * @param color A hexadecimal value that represents color.
       */
      void drawCircle(int x, int y, int radius, const char *color);

      /**
       * @brief Draws a circle using the specified points and attributes set in the parameters. Fills the circle with the color specified.
       * @param x The central x location of the circle.
       * @param y The central y location of the circle.
       * @param radius Sets the radius of the circle to be drawn on the Screen.
       * @param hue An integer that represents the hue of the color.
       */
      void drawCircle(int x, int y, int radius, int hue);

      /**
       * @brief Sets the function to be called when the Screen is pressed.
       * @param callback A reference to a function.
       */
      void pressed(void (*callback)(void));
      /**
       * @brief Sets the function to be called when the Screen is pressed.  A void pointer may be passed to the callback.
       * @param callback A reference to a function.
       * @param arg A void pointer that will be passed to the callback.
       */
      void pressed(void (*callback)(void *), void *arg);

      /**
       * @brief Sets the function to be called when the screen is released after being pressed.
       * @param callback A reference to a function.
       */
      void released(void (*callback)(void));
      /**
       * @brief Sets the function to be called when the screen is released after being pressed.  A void pointer may be passed to the callback.
       * @param callback A reference to a function.
       * @param arg A void pointer that will be passed to the callback.
       */
      void released(void (*callback)(void *), void *arg);

      /**
       * @brief Gets the last x location pressed on the screen.
       * @return Returns an integer that represents the last x location pressed on the screen.
       */
      int32_t xPosition();

      /**
       * @brief Gets the last y location pressed on the screen.
       * @return Returns an integer that represents the last y location pressed on the screen.
       */
      int32_t yPosition();

      /**
       * @brief Gets the pressed status of the Screen.
       * @return Returns a Boolean based on the state of a press on the screen. If the screen is pressed, the Boolean will be true, if the button is released, the Boolean will be false.
       */
      bool pressing();

      /**
       * @brief Switches to double buffering or renders back buffer to screen.
       * @return Returns true if the back buffer was successfully copied to the screen.
       */
      bool render();

      /**
       * @brief Switches to double buffering or renders back buffer to screen.
       * @param bVsyncWait If true, wait for the Vsync signal to render.
       * @param bRunScheduler (Optional) If true, run background tasks while waiting to render. By default, this parameter is true.
       * @return Returns true if the back buffer was successfully copied to the screen.
       */
      bool render(bool bVsyncWait, bool bRunScheduler = true);

      /**
       * @brief Sets the clip region for screen output.  Only effects the current thread.
       * @param x The x-coordinate at the left edge of the clip region.
       * @param y The y-coordinate at the top edge of the clip region.
       * @param width The width of the clip region.
       * @param height The height of the clip region.
       */
      void setClipRegion(int x, int y, int width, int height);

      /**
       * @brief Draws an image on the screen using the contents of the memory buffer.
       * @param buffer A pointer to a buffer containing image data in either bmp or png format.
       * @param x The x-coordinate at which the left edge of the image will be drawn.
       * @param y The y-coordinate at which the top edge of the image will be drawn.
       * @param bufferLen The size of the source image buffer in bytes.
       * @return Returns true if the image was successfully drawn on the screen.
       * @details
       *  This function draws an image on the screen using the contents of a buffer into which
       *  either BMP or PNG raw data has already been read.  The contents may have come from a
       *  file on the SD card or have been statically declared in the code.  The image should be
       *  no larger than the V5 Screen, that is, a maximum of 480 pixels wide by 272 pixels high.
       *  The top/left corner of the image is placed at the coordinates given by x and y, these can
       *  be negative if desired.
       */
      bool drawImageFromBuffer(uint8_t *buffer, int x, int y, int bufferLen);

      /**
       * @brief Draws an image on the screen using the contents of the memory buffer.
       * @param buffer A pointer to a buffer containing raw 32 bit per pixel image data.
       * @param x The x-coordinate at which the left edge of the image will be drawn.
       * @param y The y-coordinate at which the top edge of the image will be drawn.
       * @param width The width of the image.
       * @param height The height of the image.
       * @return Returns true if the image was successfully drawn on the screen.
       * @details
       *  This funtion draws an image on the screen using the contents of a buffer into which
       *  raw RGB pixels have been placed.  Each pixel is represented by a 32 bit value, however,
       *  only the lower 24 bits are used as transparency is not yet supported.  The buffer contains
       *  pixels for the first row of the image immediately followed by pixels for the second row and so on.
       *  The image should be no larger than the V5 Screen, that is, a maximum of 480 pixels wide by 272 pixels high.
       *  The top/left corner of the image is placed at the coordinates given by x and y, these can
       *  be negative if desired.
       */
      bool drawImageFromBuffer(uint32_t *buffer, int x, int y, int width, int height);

      /**
       * @brief Draws an image on the screen using a file on the SD Card as the source.
       * @param name The name of the image, it must have either a ".bmp" or ".png" extension.
       * @param x The x-coordinate at which the left edge of the image will be drawn.
       * @param y The y-coordinate at which the top edge of the image will be drawn.
       * @return Returns true if the image was successfully drawn on the screen.
       * @details
       *  This funtion draws an image on the screen using the contents of a file on an SD Card.
       *  The file should be no larger than 512K bytes and must have either a ".bmp" or ".png" extension.
       *  The image should be no larger than the V5 Screen, that is, a maximum of 480 pixels wide by 272 pixels high.
       *  The top/left corner of the image is placed at the coordinates given by x and y, these can
       *  be negative if desired.
       */
      bool drawImageFromFile(const char *name, int x, int y);

      // not for public use yet
      void waitForRefresh();
      void renderDisable();

      // touchscreen simple events
      mevent PRESSED = {(uint32_t)brain::_getIndex(), (int)tEventType::EVENT_LCD_PRESSED};
      mevent RELEASED = {(uint32_t)brain::_getIndex(), (int)tEventType::EVENT_LCD_RELEASED};

    private:
      void _setPenColor(uint32_t rgb);
      void _setFillColor(uint32_t rgb);
      void _clearScreen(uint32_t rgb);
      void _clearLine(int number, uint32_t rgb);
      void _drawRectangle(int x, int y, int width, int height, uint32_t rgb);
      void _drawCircle(int x, int y, int radius, uint32_t rgb);

      enum class tImageBufferType
      {
        kImageBufferTypeUnknown = 0,
        kImageBufferTypeBmp,
        kImageBufferTypePng
      };

      tImageBufferType _validateImageBuffer(uint8_t *buffer);

      uint32_t webColorToRgb(const char *color);
      uint32_t hueToRgb(uint32_t color);
    };

    /**
     * @brief Use the Screen class to write or draw to the screen.
     */
    lcd Screen;

    /**
     * @brief Gets the value of the timer in the units specified.
     * @param units The unit of time that will be returned.
     * @return Returns a double that represents the value of the timer.
     */
    double timer(timeUnits units);

    /**
     * @brief Resets the timer to zero.
     */
    void resetTimer();

    /**
     * @brief Sets the timer to a value and time unit.
     * @param value The value that the timer is set to.
     * @param units The unit of time that will be returned.
     */
    void setTimer(double value, timeUnits units);

    /**
     * @brief Use the Timer class to obtain the system time.
     */
    vex::timer Timer;

    /*----------------------------------------------------------------------------*/

    /**
     * @brief The Brain's instance of Three Wire Ports A through H.
     */
    triport ThreeWirePort = triport(PORT22);

    /*----------------------------------------------------------------------------*/

    /**
     * @brief Use the battery class to see information about the battery.
     */
    class battery
    {
    public:
      battery() { print_unimplimented(); };
      ~battery() { print_unimplimented(); };

      /**
       * @brief Gets the battery capacity.
       * @return Returns an integer that represents the batteries capacity in the units specified by the parameter.
       * @param units (Optional) The type of unit that will be returned. By default, this parameter is a percentage.
       */
      uint32_t capacity(percentUnits units = percentUnits::pct);

      /**
       * @brief Gets the battery temperature.
       * @return Returns a double that represents the batteries temperature in the units specified by the parameter.
       * @param units (Optional) The type of unit that will be returned. By default, this parameter is a percentage.
       */
      double temperature(percentUnits units = percentUnits::pct);

      /**
       * @brief Gets the battery temperature.
       * @return Returns a double that represents the batteries temperature in the units specified by the parameter.
       * @param units The unit of temperature that will be returned.
       */
      double temperature(temperatureUnits units);

      /**
       * @brief Gets the battery voltage.
       * @return Returns a double that represents the batteries voltage in the units specified by the parameter.
       * @param units The unit of voltage to be returned.
       */
      double voltage(voltageUnits units = voltageUnits::volt);

      /**
       * @brief Gets the battery current.
       * @return Returns a double that represents the batteries current in the units specified by the parameter.
       * @param units The type of current to be returned.
       */
      double current(currentUnits units);
    };
    /**
     * @brief This is the Brain's instance of the battery.
     */
    battery Battery;

    /**
     * @brief Use the SD Card class to load or save files on your SD card.
     */
    class sdcard
    {
    public:
      sdcard();
      ~sdcard();

      /**
       * @brief Gets the state of the SD card
       * @return Returns true if the SD card is inserted. Returns false if there is not an SD card inserted.
       */
      bool isInserted();

      /**
       * @return Returns the number of bytes read from the file.
       * @brief Loads a file from the SD card.
       * @param name The name of the file.
       * @param buffer Pointer to a buffer for file data.
       * @param len The length of the buffer in bytes. Usually set to the max length of the buffer.
       */
      int32_t loadfile(const char *name, uint8_t *buffer, int32_t len);

      /**
       * @brief Saves a file to the SD card.
       * @return Returns the number of bytes saved to the file.
       * @param name The name of the file.
       * @param buffer Pointer to a buffer with file data.
       * @param len The length of the buffer in bytes. Usually set to the max length of the buffer.
       */
      int32_t savefile(const char *name, uint8_t *buffer, int32_t len);

      /**
       * @brief Appends data to an existing file.
       * @return Returns the number of bytes saved to the file.
       * @param name The name of the file.
       * @param buffer Pointer to a buffer with file data.
       * @param len The length of the buffer in bytes. Usually set to the max length of the buffer.
       */
      int32_t appendfile(const char *name, uint8_t *buffer, int32_t len);

      /**
       * @brief get the size in bytes of the named file
       * @return size of file in bytes
       * @param name The name of the file.
       */
      int32_t size(const char *name);

      /**
       * @brief check if the named file exists
       * @return true if the file exists
       * @param name The name of the file.
       */
      bool exists(const char *name);
    };
    /**
     * @brief This is the instance of the SD card class.
     */
    sdcard SDcard;
  };
};

#endif // VEX_BRAIN_CLASS_H
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2018-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_color.h                                                 */
/*    Author:     James Pearman                                               */
/*    Created:    21 May 2018                                                 */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_COLOR_CLASS_H
#define   VEX_COLOR_CLASS_H
#include "stdint.h"
#include "stdio.h"
#include "math.h"
#include <string.h>
/*-----------------------------------------------------------------------------*/
/** @file    vex_color.h
  * @brief   V5 color class header
*//*---------------------------------------------------------------------------*/

namespace vex {
    /**
      * @brief Use the color class to create Color objects.
    */
    class color {
        private:
          uint32_t  _argb;
          bool      _transparent;

          // special constructor only used to create a transparent color
          color( int value, bool transparent );            
          
        public:
          color();          
          /**
          * @brief Creates a color. 
          * @param value The value of the color. 
          */          
          color( int value );
          /**
          * @brief Creates a color using red, green, and blue values. 
          * @param r the color of red on a scale of 0 to 255.
          * @param g the color of green on a scale of 0 to 255.
          * @param b the color of blue on a scale of 0 to 255.
          */
          color( uint8_t r, uint8_t g, uint8_t b );            
          ~color();

          // Assignment
          uint32_t  rgb( uint32_t value );
          uint32_t  rgb( uint8_t r, uint8_t g, uint8_t b );
          void operator=( uint32_t value );

          // Get value
          uint32_t  rgb() const;                        
          operator uint32_t() const;
          
         /**
          * @brief Gets the state of the color's transparency.
          * @return Returns true if the color is transparent.
          */
          bool isTransparent() const;

         /**
          * @brief Creates a color using hue, saturation, and brightness values.         
          * @return Returns a reference to a color.
          * @param hue An integer from 0 to 360 that represents the hue of the color.
          * @param sat A double from 0.0 to 1.0 that represents the saturation of the color.
          * @param value A double from 0.0 to 1.0 that represents the brightness of the color.
          */
          color& hsv( uint32_t hue, double sat, double value );
          
         /**
          * @brief Creates a color using a hexadecimal value.
          * @return Returns a reference to a color.
          * @param color A hexadecimal or web color value that defines a specific color.
          */
          color& web( const char *color );

          // predefined colors
          
          /**
           *@brief Represents the color black.
           */
          static const color    black;
          /**
           *@brief Represents the color white.
           */
          static const color    white;
          /**
           *@brief Represents the color red.
           */
          static const color    red;
          /**
           *@brief Represents the color green.
           */
          static const color    green;
          /**
           *@brief Represents the color blue.
           */
          static const color    blue;
          /**
           *@brief Represents the color yellow.
           */
          static const color    yellow;
          /**
           *@brief Represents the color orange.
           */
          static const color    orange;
          /**
           *@brief Represents the color purple.
           */
          static const color    purple;
          /**
           *@brief Represents the color cyan.
           */
          static const color    cyan;
          /**
           *@brief Represents the color transparent.
           */
          static const color    transparent;          
    };
}

#endif // VEX_COLOR_CLASS_H#pragma once
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

#ifndef   VEX_COMPETITION_CLASS_H
#define   VEX_COMPETITION_CLASS_H

#include <stdio.h>
// VEX Stuff
#include "vex_mevent.h"
#include "vex_brain.h"
#include "sim/graphics/window.h"

/*-----------------------------------------------------------------------------*/
/** @file    vex_competition.h
  * @brief   V5 competition control class header
*//*---------------------------------------------------------------------------*/

namespace vex {
  /**
    * @brief Use this class to set up your program for competitions.
  */
  class competition {
    private:
      int32_t _index;
      static bool    _auton_pending;
      static bool    _driver_pending;
      
      static void (* _initialize_callback)(void);
      static void (* _autonomous_callback)(void);
      static void (* _drivercontrol_callback)(void);

      static  void  _disable( void *arg );
      static  void  _autonomous( void );
      static  void  _drivercontrol( void );
      
      bool _globalInstance;
      
    protected:
      int32_t _getIndex();

    public:
    /**
      * @brief Creates a competition object that has access to competition methods.      
    */
      competition();
      ~competition();

      enum class tEventType {
        EVENT_INITIALIZE     = 8,
        EVENT_AUTONOMOUS     = 9,
        EVENT_DRIVER_CTL     = 10,
        EVENT_DISABLE        = 11
      };

      // callbacks for C++ code
      // pre-auton makes no sense here

      /** 
        * @brief Calls back a function when the autonomous period starts.
        * @param callback A reference to a function.
      */
    void     autonomous( void (* callback)(void) );

      /** 
        * @brief Calls back a function when the driver control period starts.
        * @param callback A reference to a function.
      */
      void     drivercontrol( void (* callback)(void) );  
      
      // check competition states
      /** 
        * @brief Gets the status of your robot when under competition control.
        * @return Returns a Boolean based on if the autonomous or driver control periods is active. If either one is active, the Boolean will return true.
      */
      bool     isEnabled();

      /** 
        * @brief Gets the status of the Driver Control period.
        * @return Returns a Boolean based on if the Driver Control Period is active. If the Driver Control period is active, the Boolean will return true.
      */
      bool     isDriverControl();

      /** 
        * @brief Gets the status of the Autonomous period.
        * @return Returns a Boolean based on if the Autonomous Period is active. If the Autonomous Period is active, the Boolean will return true.
      */
      bool     isAutonomous();

      /** 
        * @brief Gets the status of the Competition Control Switch being plugged into the robot.
        * @return Returns a Boolean based on if the V5 is connected to the Competition Control Switch. If the Brain is connected, the Boolean will return true.
      */
      bool     isCompetitionSwitch();

      /** 
        * @brief Gets the status of the Field Control System being plugged into the robot.
        * @return Returns a Boolean based on if the V5 is connected to the Field Control System. If the Brain is connected, the Boolean will return true.
      */
      bool     isFieldControl();



      // may be useful for testing without controller            
      void     test_auton(void);
      void     test_driver(void);
      void     test_disable(void);

      // competition is part of brain device
      // simple events for everything
      mevent   PRE_AUTONOMOUS = {(uint32_t)brain::_getIndex(), (int32_t)tEventType::EVENT_INITIALIZE   };
      mevent   AUTONOMOUS     = {(uint32_t)brain::_getIndex(), (int32_t)tEventType::EVENT_AUTONOMOUS   };
      mevent   DRIVER_CONTROL = {(uint32_t)brain::_getIndex(), (int32_t)tEventType::EVENT_DRIVER_CTL   };
      mevent   DISABLED       = {(uint32_t)brain::_getIndex(), (int32_t)tEventType::EVENT_DISABLE      };
      
      /** 
        * @brief Sets whether or not your program will stop the competition tasks between modes. 
      */
      static bool     bStopTasksBetweenModes;   

      /** 
        * @brief Sets whether or not your program will stop all tasks and events between modes. 
      */
      static bool     bStopAllTasksBetweenModes;   
  };
};

#endif // VEX_COMPETITION_CLASS_H#pragma once
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2017-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_console.h                                               */
/*    Author:     James Pearman                                               */
/*    Created:    1 Nov 2017                                                  */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_CONSOLE_CLASS_H
#define   VEX_CONSOLE_CLASS_H
#include "vex_brain.h"
#include "v5_api.h"
/*-----------------------------------------------------------------------------*/
/** @file    vex_console.h
  * @brief   V5 console class header
*//*---------------------------------------------------------------------------*/

namespace vex {
  class console : public brain {
    public:
      console();
      ~console();
      
      void    init();
 
    private:
      static  int32_t write(int32_t fd, char* buf, int32_t nbytes);
  };
}

#endif // VEX_CONSOLE_CLASS_H/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2017-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_controller.h                                            */
/*    Author:     James Pearman                                               */
/*    Created:    10 July 2017                                                */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef VEX_CONTROLLER_CLASS_H
#define VEX_CONTROLLER_CLASS_H

#include "vex_mevent.h"
#include "vex_units.h"
#include <type_traits>
#include "sim/controller.h"
/*-----------------------------------------------------------------------------*/
/** @file    vex_controller.h
 * @brief   V5 controller class header
 */
/*---------------------------------------------------------------------------*/

namespace vex
{
  /**
   * @brief Use the controller class to get values from the remote controller as well as write to the controller's screen.
   */
  class controller
  {
  private:
    // copy if the controller id when this class was instantiated
    controllerType _controllerId;
    // internal device id for this controller
    int32_t _index;

    int32_t value(V5_ControllerIndex channel);

  protected:
    int32_t _getIndex();

  public:
    /**
     * @brief Creates a new controller object.
     */
    controller();
    /**
     * @brief Creates a new controller object.
     * @param id The type of controller that is being created. This can be set to primary or partner.
     */
    controller(controllerType id);
    ~controller();

    bool installed();

    /**
     * @brief Rumbles the controller by a pattern defined by the parameter. Dots equal short, dashes equal long and space equals pause.
     * @param str A string that consists of dots and dashes that represent the rumble pattern.
     */
    void rumble(const char *str);

  private:
    // bit masks for events
    enum class tEventType
    {
      EVENT_5_UP_PRESSED = 0,
      EVENT_5_UP_RELEASED = 1,
      EVENT_5_DN_PRESSED = 2,
      EVENT_5_DN_RELEASED = 3,

      EVENT_6_UP_PRESSED = 4,
      EVENT_6_UP_RELEASED = 5,
      EVENT_6_DN_PRESSED = 6,
      EVENT_6_DN_RELEASED = 7,

      EVENT_7_UP_PRESSED = 8,
      EVENT_7_UP_RELEASED = 9,
      EVENT_7_DN_PRESSED = 10,
      EVENT_7_DN_RELEASED = 11,

      EVENT_7_L_PRESSED = 12,
      EVENT_7_L_RELEASED = 13,
      EVENT_7_R_PRESSED = 14,
      EVENT_7_R_RELEASED = 15,

      EVENT_8_UP_PRESSED = 16,
      EVENT_8_UP_RELEASED = 17,
      EVENT_8_DN_PRESSED = 18,
      EVENT_8_DN_RELEASED = 19,

      EVENT_8_L_PRESSED = 20,
      EVENT_8_L_RELEASED = 21,
      EVENT_8_R_PRESSED = 22,
      EVENT_8_R_RELEASED = 23,

      EVENT_A_CHANGED = 24,
      EVENT_B_CHANGED = 25,
      EVENT_C_CHANGED = 26,
      EVENT_D_CHANGED = 27
    };

    enum class tButtonType
    {
      kButtonL1 = 0,
      kButtonL2,
      kButtonR1,
      kButtonR2,
      kButtonUp,
      kButtonDown,
      kButtonLeft,
      kButtonRight,
      kButtonX,
      kButtonB,
      kButtonY,
      kButtonA,

      kButtonRes1,
      kButtonRes2,

      kButtonUndefined
    };
    /**
     * @brief Use the button class to get values from the controller's buttons.
     */
  public:
    class button
    {
    private:
      tButtonType _id;
      controller *_parent;
      tEventType _buttonToPressedEvent() const;
      tEventType _buttonToReleasedEvent() const;

    public:
      button() : _id(tButtonType::kButtonUndefined), _parent(NULL) { print_unimplimented(); };
      button(const tButtonType id, controller *parent) : _id(id), _parent(parent){};
      ~button(){};
      /**
       * @brief Sets the function to be called when the button is pressed.
       * @param callback A reference to a function.
       */
      void pressed(void (*callback)(void)) const;

      /**
       * @brief Sets the function to be called when the button is released.
       * @param callback A reference to a function.
       */
      void released(void (*callback)(void)) const;

      /**
       * @brief Gets the status of a button.
       * @return Returns a Boolean value based on the pressed states of the button. If the button is pressed it will return true.
       */
      bool pressing(void) const;

      mevent PRESSED = {(uint32_t)_parent->_getIndex(), (uint32_t)_buttonToPressedEvent()};
      mevent RELEASED = {(uint32_t)_parent->_getIndex(), (uint32_t)_buttonToReleasedEvent()};
    };

  public:
    // V5 competition controller buttons
    /**
     * @brief A button that represents the L1 button on the controller
     */
    const button ButtonL1 = button(tButtonType::kButtonL1, this);
    /**
     * @brief A button that represents the L2 button on the controller
     */
    const button ButtonL2 = button(tButtonType::kButtonL2, this);
    /**
     * @brief A button that represents the R1 button on the controller
     */
    const button ButtonR1 = button(tButtonType::kButtonR1, this);
    /**
     * @brief A button that represents the R2 button on the controller.
     */
    const button ButtonR2 = button(tButtonType::kButtonR2, this);
    /**
     * @brief A button that represents the up button on the controller.
     */
    const button ButtonUp = button(tButtonType::kButtonUp, this);
    /**
     * @brief A button that represents the down button on the controller.
     */
    const button ButtonDown = button(tButtonType::kButtonDown, this);
    /**
     * @brief A button that represents the left button on the controller.
     */
    const button ButtonLeft = button(tButtonType::kButtonLeft, this);
    /**
     * @brief A button that represents the right button on the controller.
     */
    const button ButtonRight = button(tButtonType::kButtonRight, this);
    /**
     * @brief A button that represents the X button on the controller.
     */
    const button ButtonX = button(tButtonType::kButtonX, this);
    /**
     * @brief A button that represents the B button on the controller.
     */
    const button ButtonB = button(tButtonType::kButtonB, this);
    /**
     * @brief A button that represents the Y button on the controller.
     */
    const button ButtonY = button(tButtonType::kButtonY, this);
    /**
     * @brief A button that represents the A button on the controller.
     */
    const button ButtonA = button(tButtonType::kButtonA, this);

  private:
    enum class tAxisType
    {
      kAxisA = 0,
      kAxisB,
      kAxisC,
      kAxisD,

      kAxisUndefined
    };

  public:
    /**
     * @brief Use the axis class to get values from one of the controller's joysticks
     */
    class axis
    {
    private:
      tAxisType _id;
      controller *_parent;
      tEventType _joystickToChangedEvent() const;

    public:
      axis() : _id(tAxisType::kAxisUndefined), _parent(NULL){};
      axis(const tAxisType id, controller *parent) : _id(id), _parent(parent){};
      ~axis(){};

      /**
       * @brief Sets the function to be called when the joystick axis value changes.
       * @param callback A reference to a function.
       */
      void changed(void (*callback)(void)) const;

      /**
       * @brief Gets the value of the joystick axis on a scale from -127 to 127.
       * @return Returns an integer that represents the value of the joystick axis.
       */
      int32_t value(void) const;

      /**
       * @brief Gets the position of the joystick axis on a scale from -100 to 100.
       * @return Returns an integer that represents the position of the joystick axis as defined by the unit in the parameter.
       * @param units (Optional) The type of unit that will be returned. By default, this parameter is a percentage.
       */
      int32_t position(percentUnits units = percentUnits::pct) const;

      mevent CHANGED = {(uint32_t)_parent->_getIndex(), (uint32_t)_joystickToChangedEvent()};
    };

  private:
    const axis AxisA = axis(tAxisType::kAxisA, this);
    const axis AxisB = axis(tAxisType::kAxisB, this);
    const axis AxisC = axis(tAxisType::kAxisC, this);
    const axis AxisD = axis(tAxisType::kAxisD, this);

  public:
    // V5 joystick names
    /**
     * @brief An axis of a joystick that represents axis 1 on the controller.
     */
    const axis &Axis1 = AxisC;
    /**
     * @brief An axis of a joystick that represents axis 2 on the controller.
     */
    const axis &Axis2 = AxisD;
    /**
     * @brief An axis of a joystick that represents axis 3 on the controller.
     */
    const axis &Axis3 = AxisA;
    /**
     * @brief An axis of a joystick that represents axis 4 on the controller.
     */
    const axis &Axis4 = AxisB;

    /**
     * @brief Use this class to write to the controller's LCD screen.
     */
    class lcd
    {
    private:
      controller *_parent;
      int32_t _row;
      int32_t _maxrows;
      int32_t _col;
      int32_t _maxcols;

      char _textStr[32];

      controllerType getControllerId();

    public:
      lcd();
      lcd(controller *parent);
      ~lcd(){};

      /**
       * @brief Sets the cursor to the row and column number set in the parameters.
       * @param row Sets the row number for where the cursor is placed.
       * @param col Sets the column number for where the cursor is placed.
       */
      void setCursor(int32_t row, int32_t col);

      /**
       * @brief An integer that tracks the current cursor position's column, starting at 1.
       * @return Returns an integer that tracks the current cursor position's column, starting at 1.
       */
      int32_t column();

      /**
       * @brief An integer that tracks the current cursor position's row, starting at 1.
       * @return Returns an integer that tracks the current cursor position's row, starting at 1.
       */
      int32_t row();

      /**
       * @brief Prints a number, string, or Boolean.
       * @param value Information to display on the screen.
       */
      template <class T>
      void print(T value)
      {
        if (std::is_same<T, int>::value)
          print("%d", (int)value);
        else if (std::is_same<T, double>::value)
          print("%.2f", (double)value);
        else
        {
          // primarily to handle modkit number
          if ((int)value == value)
            print("%d", (int)value);
          else
            print("%.2f", (double)value);
        }
      }

      /**
       * @brief Prints a number, string, or Boolean.
       * @param format This is a reference to a char format that prints the value of variables.
       * @param ... A variable list of parameters to insert into format string.
       */
      void print(const char *format, ...);
      void print(char *format, ...);

      /**
       * @brief Clears the controller's LCD screen.
       */
      void clearScreen(void);

      /**
       * @brief Clears the line specified by the parameter.
       * @param number The line number to be cleared.
       */
      void clearLine(int number);

      /**
       * @brief Clears the current line.
       */
      void clearLine(void);

      /**
       * @brief Moves the cursor to the next line.
       */
      void newLine(void);
    };

    // Controller has an instance of an lcd
    /**
     * @brief Controller's instance of LCD.
     */
    lcd Screen = lcd(this);
  };
};

#endif // VEX_CONTROLLER_CLASS_H#pragma once
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2017-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_device.h                                                */
/*    Author:     James Pearman                                               */
/*    Created:    10 Oct 2017                                                 */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_DEVICE_CLASS_H
#define   VEX_DEVICE_CLASS_H

#include "v5_api.h"
#include "vex_units.h"

/*-----------------------------------------------------------------------------*/
/** @file    vex_device.h
  * @brief   Header for device class
*//*---------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------*/
/** @brief device class                                                        */
/*-----------------------------------------------------------------------------*/
  /** @brief Use the device class to get information about a vex device plugged into the V5.
  */
 namespace vex {

  class device  {
    private:
      V5_DeviceT      _ptr;
  
    protected:
      int32_t         _index;
      int32_t         _threadID;
      int32_t         flags();
      
    public:
      device();
      device( int32_t index );  
      virtual ~device();

      V5_DeviceType   type();
      int32_t         index();
      void            init( int32_t index );
      virtual bool    installed();
      virtual int32_t value();
      uint32_t        timestamp();
  };
 };
/*-----------------------------------------------------------------------------*/
/** @brief a safe array template                                               */
/*-----------------------------------------------------------------------------*/

namespace vex {
  template <class T, int len> class safearray {
    private:
      int length;
  
    protected:
      T arr[len];
      T outofbounds;
  
    public:
      safearray(){ length = len; outofbounds = 0;
      };
      ~safearray(){};
  
      T &operator[]( int i );
      int getLength() { return length; };
  };

  template <class T, int len> T &safearray<T, len>::operator[](int i)
  {
    // bounds check the array index
    if( i < 0 || i > (length-1) ) {
      return( outofbounds );
    }
    else {
      return( arr[i] );
    }
  }
};


/*-----------------------------------------------------------------------------*/
/** @brief base class with virtual member functions used with IMU and gyro     */
/*-----------------------------------------------------------------------------*/
//
// This class is never directly used except as a ptr to gyro or imu
//
    class guido {
      public:
        guido(){};  
        virtual ~guido(){};
      
        // pure virtual methods that must be implemented
        virtual double angle( vex::rotationUnits units = vex::rotationUnits::deg ) = 0;
        virtual double heading( vex::rotationUnits units = vex::rotationUnits::deg ) = 0;
        virtual void   calibrate( int32_t value ) = 0;
        virtual bool   isCalibrating(void) = 0;
        virtual void   setHeading( double value, vex::rotationUnits units ) = 0;
        virtual double rotation( vex::rotationUnits units = vex::rotationUnits::deg ) = 0;
        virtual void   setRotation( double value, vex::rotationUnits units ) = 0;
        virtual vex::turnType getTurnType( void ) = 0;
    };

/*-----------------------------------------------------------------------------*/
/** @brief All devices class                                                   */
/*-----------------------------------------------------------------------------*/
  /** @brief Use the device class to get information about all of the vex devices plugged into the V5.
  */
  class devices {
    private:
      vex::safearray<vex::device, V5_MAX_DEVICE_PORTS> data;

    public:
      devices();  
      ~devices();

      vex::device &operator[]( int i ) {
        return( data[i] );
      }
      /**
      * @brief Get the V5 device type plugged into a specific port.      
      * @return Returns a V5 device type.
      * @param index Specifies the index to look at for the device.
      */
      V5_DeviceType   type( int32_t index );

      /**
      * @brief Gets the number of VEX devices that are plugged in.    
      * @return Returns an integer that represent the number of vex devices
      */
      int32_t         number();

      /**
      * @brief Gets the number of specified devices that are plugged into the V5.
      * @return Returns an integer that represents the number of a specific vex devices set by the parameter.
      * @param  type The type of device to look for on the V5.
      */
      int32_t         numberOf( V5_DeviceType type );
  };


#endif // VEX_DEVICE_CLASS_H#pragma once
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2019, All rights reserved.               */
/*                                                                            */
/*    Module:     vex_distance.h                                              */
/*    Author:     James Pearman                                               */
/*    Created:    26 May 2020                                                 */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_DISTANCE_CLASS_H
#define   VEX_DISTANCE_CLASS_H

/*-----------------------------------------------------------------------------*/
/** @file    vex_distance.h
  * @brief   Distance sensor device class header
*//*---------------------------------------------------------------------------*/

namespace vex {
  /** 
   * @brief Use the distance class to control the distance sensor.
   */
  class distance : public device {
    private:
      enum class tEventType {
        EVENT_DISTANCE_CHANGED     =  0,
      };
      
    public:
      /** 
       * @brief Creates a new distance sensor object on the port specified.
       * @param index The port index for this sensor. The index is zero-based.
       */
      distance( int32_t index );  
      ~distance();
    
      bool            installed();
      int32_t         value();

      
      /**
       * @brief Gets the detected object distance
       * @return Returns a double that represents the unit value specified by the parameter of the distance sensor. 
       * @param units The measurement unit for the distance sensor.
       */
      double          objectDistance( distanceUnits units );

      /**
       * @brief Gets an estimate of the detected object size
       * @return Returns the estimated object size
       */
      sizeType        objectSize( void );

      /**
       * @brief Gets an estimate of the detected object size
       * @return Returns a integer that represent a relative object size, 0 to 400 
       */
      int32_t         objectRawSize( void );

      /**
       * @brief Gets an estimate of the detected object velocity
       * @return Returns a double with object velocity in m/s
       */
      double          objectVelocity( void );

      /**
       * @brief check for object in range of the distance sensor
       * @return Returns true if an object is detected
       */
      bool            isObjectDetected( void );
      
      /**
       * @brief Calls a function when the distance value changes.
       * @param callback A reference to a function.
       */
      void            changed( void (* callback)(void) );

  };
};

#endif // VEX_DISTANCE_CLASS_H/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2019, All rights reserved.               */
/*                                                                            */
/*    Module:     vex_drivetrain.h                                            */
/*    Author:     James Pearman                                               */
/*    Created:    7 April 2019                                                */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_DRIVETRAIN_CLASS_H
#define   VEX_DRIVETRAIN_CLASS_H

#include "vex_units.h"
#include "vex_motor.h"
#include "vex_motorgroup.h"

/*-----------------------------------------------------------------------------*/
/** @file    vex_drivetrain.h
  * @brief   Drivetrain class header
*//*---------------------------------------------------------------------------*/

namespace vex {

  class drivetrain  {
    private:
      vex::motor_group  lm;
      vex::motor_group  rm;

      double _wheel_circumference;
      double _wheel_track;
      double _wheel_base;
      double _wheel_motor_gear_ratio;

      int32_t _timeout;
      bool   _waitForCompletionAll();
      double _distanceToRevs( double distance, distanceUnits units );
      double _angleToRevs( double angle, rotationUnits units );

    public:
      drivetrain( motor_group &l, motor_group &r, double wheelTravel=320, double trackWidth=320, double wheelBase=130, distanceUnits unit=distanceUnits::mm, double externalGearRatio = 1.0 );
      drivetrain( vex::motor &l, vex::motor &r, double wheelTravel=320, double trackWidth=320, double wheelBase=130, distanceUnits unit=distanceUnits::mm, double externalGearRatio = 1.0 );

      virtual ~drivetrain();
      
      void  setGearRatio( double ratio );

      /** 
       * @brief Sets the velocity of the drive based on the parameters set in the command. This command will not run the motor.  Any subsequent call that does not contain a specified motor velocity will use this value.
       * @param velocity Sets the amount of velocity.
       * @param units The measurement unit for the velocity value. 
       */
      void  setDriveVelocity( double velocity, velocityUnits units );

      void  setDriveVelocity( double velocity, percentUnits units );

      /** 
       * @brief Sets the turn velocity of the drive based on the parameters set in the command. This command will not run the motor.
       * @param velocity Sets the amount of velocity.
       * @param units The measurement unit for the velocity value. 
       */
      void  setTurnVelocity( double velocity, velocityUnits units );

      void  setTurnVelocity( double velocity, percentUnits units );

      /** 
       * @brief Sets the timeout for the motor group. If the motor group does not reach its' commanded position prior to the completion of the timeout, the motors will stop.
       * @param time Sets the amount of time.
       * @param units The measurement unit for the time value.
       */
      void  setTimeout( int32_t time, timeUnits units );

      /** 
       * @brief Sets the stopping mode of the motor group by passing a brake mode as a parameter.
       * @param mode The stopping mode can be set to coast, brake, or hold.  
       */
      void  setStopping( brakeType mode );

      /** 
       * @brief Turns the motors on, and drive in the specified direction
       * @param dir The direction to drive.
       */
      void 	drive( directionType dir ) ;

      /**
       * @brief Turn on the motors and drive in the specified direction and a specified velocity.
       * @param dir The direction to drive. 
       * @param velocity Sets the amount of velocity.
       * @param units The measurement unit for the velocity value. 
      */
      void 	drive( directionType dir, double velocity, velocityUnits units );

      /**
       * @brief Turn on the motors and drive a distance at the default velocity.
       * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
       * @param distance Sets the distance to drive.
       * @param units The measurement unit for the distance value.
       * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
      */
      bool 	driveFor( double distance, distanceUnits units, bool waitForCompletion=true );

      bool 	driveFor( directionType dir, double distance, distanceUnits units, bool waitForCompletion=true );

      /**
       * @brief Turn on the motors and drive a distance at a specified velocity.
       * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
       * @param distance Sets the distance to drive.
       * @param units The measurement unit for the distance value.
       * @param velocity Sets the amount of velocity.
       * @param units_v The measurement unit for the velocity value.
       * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
      */
      bool 	driveFor( double distance, distanceUnits units, double velocity, velocityUnits units_v, bool waitForCompletion=true );

      bool 	driveFor( directionType dir, double distance, distanceUnits units, double velocity, velocityUnits units_v, bool waitForCompletion=true );

      /** 
       * @brief Turns the motors on, and rotate in the specified direction
       * @param dir The direction to rotate the robot.
       */
      void 	turn( turnType dir );

      /** 
       * @brief Turns the motors on, and rotate in the specified direction and a specified velocity.
       * @param dir The direction to rotate the robot.
       * @param velocity Sets the amount of velocity.
       * @param units The measurement unit for the velocity value. 
       */
      void 	turn( turnType dir, double velocity, velocityUnits units );

      /**
       * @brief Turn on the motors and rotate an angle at the default velocity.
       * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
       * @param angle Sets the angle to turn.
       * @param units The measurement unit for the angle value.
       * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
      */
      virtual bool 	turnFor( double angle, rotationUnits units, bool waitForCompletion=true );

      virtual bool 	turnFor( turnType dir, double angle, rotationUnits units, bool waitForCompletion=true );

      /**
       * @brief Turn on the motors and rotate an angle at a specified velocity.
       * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
       * @param angle Sets the angle to turn.
       * @param units The measurement unit for the angle value.
       * @param velocity Sets the amount of velocity.
       * @param units_v The measurement unit for the velocity value.
       * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
      */
      virtual bool 	turnFor( double angle, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion=true );

      virtual bool 	turnFor( turnType dir, double angle, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion=true );

      /** 
       * @brief Checks to see if any of the motors are rotating to a specific target.
       * @return Returns a true Boolean if the motor is on and is rotating to a target. Returns a false Boolean if the motor is done rotating to a target.
       */
      virtual bool 	isMoving( void );

      /** 
       * @brief Checks to see if all the motor are done rotating to a specific target.
       * @return Returns a false Boolean if the motor is on and is rotating to a target. Returns a true Boolean if the motor is done rotating to a target.
       */
      bool 	isDone( void );

      /** 
       * @brief Stops the drive using the default brake mode.
       */
      void  stop();

      /** 
       * @brief Stops the drive using a specified brake mode.
       * @param mode The brake mode can be set to coast, brake, or hold. 
       */
      void  stop( brakeType mode );

      void 	arcade( double drivePower, double turnPower, percentUnits units=percentUnits::pct );

      /** 
       * @brief Gets the average velocity of the drivetrain;
       * @return Returns a double that represents the current velocity of the motor in the units defined in the parameter.
       * @param units The measurement unit for the velocity.
       */
      double  velocity( velocityUnits units );

      double  velocity( percentUnits units ) {
          return velocity( static_cast<velocityUnits>(units) );
      };

      /** 
       * @brief Gets the total current of the drivetrain;
       * @return Returns a double that represents the electrical current of the motor in the units defined in the parameter.
       * @param units The measurement unit for the current.
       */
      double  current( currentUnits units = currentUnits::amp );

      /** 
       * @brief Gets the electrical current of the drivetrain as percentage of maximum.
       * @return Returns a double that represents the electrical current of the drivetrain as percentage of max current.
       * @param units The measurement unit for the current.
       */
      double  current( percentUnits units );

      /** 
       * @brief Gets the average voltage of the drivetrain;
       * @return Returns a double that represents the voltage of the motor in the units defined in the parameter.
       * @param units The measurement unit for the voltage.
       */
      double  voltage( voltageUnits units = voltageUnits::volt );

      /** 
       * @brief Gets the average power of the drivetrain;
       * @return Returns a double that represents the power of the motor in the units defined in the parameter.
       * @param units The measurement unit for the power.
       */
      double  power( powerUnits units = powerUnits::watt );

      /** 
       * @brief Gets the average torque of the drivetrain;
       * @return Returns a double that represents the torque of the motor in the units defined in the parameter.
       * @param units The measurement unit for the torque.
       */
      double  torque( torqueUnits units = torqueUnits::Nm );

      /** 
       * @brief Gets the average efficiency of the drivetrain;
       * @return Returns the efficiency of the motor in the units defined in the parameter.
       * @param units (Optional) The measurement unit for the efficiency. By default, this parameter is a percentage.
       */
      double  efficiency( percentUnits units = percentUnits::pct );

      /** 
       * @brief Gets the average temperature of the drivetrain;
       * @return Returns the temperature of the motor in the units defined in the parameter.
       * @param units The measurement unit for the temperature.
       */
      double  temperature(  percentUnits units );
     
    protected: 
      // Helper functions that can used by sub classes
      double  distanceToMm( double distance, distanceUnits units );
      double  angleToDeg( double angle, rotationUnits units );
      int32_t timeoutGet();

      double        _turnvelocity;
      velocityUnits _turnvelocityUnits;
      uint8_t       _turnmode;
  };
};

#endif // VEX_DRIVETRAIN_CLASS_H/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2019, All rights reserved.               */
/*                                                                            */
/*    Module:     vex_electromag.h                                            */
/*    Author:     James Pearman                                               */
/*    Created:    28 May 2020                                                 */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_ELECTROMAG_CLASS_H
#define   VEX_ELECTROMAG_CLASS_H

/*-----------------------------------------------------------------------------*/
/** @file    vex_electromag.h
  * @brief   Electromagnet device class header
*//*---------------------------------------------------------------------------*/

namespace vex {
  /** 
   * @brief Use the distance class to control the distance sensor.
   */
  class electromagnet : public device {
    private:
      uint32_t        _power;
        
    public:
      /** 
       * @brief Creates a new inertial object on the port specified.
       * @param index The port index for this inertial. The index is zero-based.
       */
      electromagnet( int32_t index );  
      ~electromagnet();
    
      bool            installed();
      int32_t         value();
      
      void            setPower( uint32_t power );
      
      /**
       * @brief Energize the electromagnet for a brief time to pickup an object
       */
      void            pickup( void );
      /**
       * @brief Energize the electromagnet for a given time with default power to pickup an object
       */
      void            pickup( double time, timeUnits units = timeUnits::msec);
      /**
       * @brief Energize the electromagnet for a given time with given power to pickup an object
       */
      void            pickup( double time, timeUnits units, int32_t power );

      /**
       * @brief Energize the electromagnet for a brief time to drop an object
       */
      void            drop( void );
      /**
       * @brief Energize the electromagnet for given time with default power to drop an object
       */
      void            drop( double time, timeUnits units = timeUnits::msec );
      /**
       * @brief Energize the electromagnet for given time with given power to drop an object
       */
      void            drop( double time, timeUnits units, int32_t power );

      /**
       * @brief Gets the temperature of the electromagnet
       */
      double          temperature( temperatureUnits units = temperatureUnits::celsius );
  };
};

#endif // VEX_ELECTROMAG_CLASS_H/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2017-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_event.h                                                 */
/*    Author:     James Pearman                                               */
/*    Created:    7 July 2017                                                 */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_EVENT_CLASS_H
#define   VEX_EVENT_CLASS_H
#include "v5_api.h"
/*-----------------------------------------------------------------------------*/
/** @file    vex_event.h
  * @brief   event handler class header
*//*---------------------------------------------------------------------------*/

namespace vex {
  class event {
    private:
      static  uint32_t _usereventid;
      void         (* _callback)(void);  
      int           _userid;
      
    public:
      event();
      event( uint32_t index, uint32_t mask, void (* callback)(void) );
      event( void (* callback)(void) );
      event( event v, void (* callback)(void) );
      event( void (* callback)(void *), void *arg );
      event( event v, void (* callback)(void *), void *arg );
      ~event();
      
      static void     init( uint32_t index, uint32_t mask, void (* callback)(void) );
      // Do not use for now - here for testing
      // static void     init( uint32_t index, uint32_t mask, void (* callback)(int) );
      // static void     init( uint32_t index, uint32_t mask, void (* callback)(void *), void *arg );
      // static int32_t  userindex(void);

      void            set( void (* callback)(void) );
      void            operator()( void (* callback)(void) );

      void            broadcast();


      void            broadcastAndWait( int32_t timeout = 60000 );
      static void     broadcast( uint32_t index );
      static void     broadcastAndWait( uint32_t index, int32_t timeout = 60000 );
  };
};

#endif // VEX_EVENT_CLASS_H#pragma once
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2017-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_global.h                                                */
/*    Author:     James Pearman                                               */
/*    Created:    5 July 2017                                                 */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_GLOBAL_H
#define   VEX_GLOBAL_H
#include "v5_api.h"
#include "vex_units.h"
#include "vex_color.h"

/*-----------------------------------------------------------------------------*/
/** @file    vex_global.h
  * @brief   Globals for C++ API
*//*---------------------------------------------------------------------------*/

// more natural language based globals
namespace vex {
    extern const rotationUnits         degrees;
    extern const rotationUnits         turns;
    extern const percentUnits          percent;
    extern const timeUnits             seconds;
    extern const distanceUnits         inches;
    extern const distanceUnits         mm;
    extern const directionType         forward;
    extern const directionType         reverse;
    extern const turnType              left;
    extern const turnType              right;

    extern const axisType              xaxis;
    extern const axisType              yaxis;
    extern const axisType              zaxis;

    extern const orientationType       roll;
    extern const orientationType       pitch;
    extern const orientationType       yaw;

    extern const fontType              monoM;
    extern const fontType              monoL;
    extern const fontType              monoXL;
    extern const fontType              monoXXL;
    extern const fontType              monoS;
    extern const fontType              monoXS;
    extern const fontType              propM;
    extern const fontType              propL;
    extern const fontType              propXL;
    extern const fontType              propXXL;

    extern const controllerType        primary;
    extern const controllerType        partner;

    extern const char *                rumbleLong;
    extern const char *                rumbleShort;
    extern const char *                rumblePulse;

    extern void wait( double time, timeUnits units );
};

namespace vex {
    extern const int32_t               PORT1;
    extern const int32_t               PORT2;
    extern const int32_t               PORT3;
    extern const int32_t               PORT4;
    extern const int32_t               PORT5;
    extern const int32_t               PORT6;
    extern const int32_t               PORT7;
    extern const int32_t               PORT8;
    extern const int32_t               PORT9;
    extern const int32_t               PORT10;
    extern const int32_t               PORT11;
    extern const int32_t               PORT12;
    extern const int32_t               PORT13;
    extern const int32_t               PORT14;
    extern const int32_t               PORT15;
    extern const int32_t               PORT16;
    extern const int32_t               PORT17;
    extern const int32_t               PORT18;
    extern const int32_t               PORT19;
    extern const int32_t               PORT20;
    extern const int32_t               PORT21;
    extern const int32_t               PORT22;
    
    extern const percentUnits          pct;
    extern const timeUnits             sec;
    extern const timeUnits             msec;
    extern const voltageUnits          volt;
    extern const currentUnits          amp;
    extern const powerUnits            watt;
    extern const torqueUnits           Nm;
    extern const torqueUnits           InLb;
    extern const rotationUnits         deg;
    extern const rotationUnits         rev;
    extern const velocityUnits         rpm;
    extern const velocityUnits         dps;
    extern const temperatureUnits      celsius;
    extern const temperatureUnits      fahrenheit;

    extern const directionType         fwd;
    extern const brakeType             coast;
    extern const brakeType             brake;
    extern const brakeType             hold;
    extern const gearSetting           ratio36_1;
    extern const gearSetting           ratio18_1;
    extern const gearSetting           ratio6_1;

    extern const color &               black;
    extern const color &               white;
    extern const color &               red;
    extern const color &               green;
    extern const color &               blue;
    extern const color &               yellow;
    extern const color &               orange;
    extern const color &               purple;
    extern const color &               cyan;
    extern const color &               transparent;

    extern const fontType              mono20;
    extern const fontType              mono30;
    extern const fontType              mono40;
    extern const fontType              mono60;
    extern const fontType              mono15;
    extern const fontType              mono12;
    extern const fontType              prop20;
    extern const fontType              prop30;
    extern const fontType              prop40;
    extern const fontType              prop60;

    extern const analogUnits           range8bit;
    extern const analogUnits           range10bit;
    extern const analogUnits           range12bit;
    extern const analogUnits           mV;
};

#endif // VEX_GLOBAL_H/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2021, All rights reserved.               */
/*                                                                            */
/*    Module:     vex_gps.h                                                   */
/*    Author:     James Pearman                                               */
/*    Created:    24 March 2021                                               */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_GPS_CLASS_H
#define   VEX_GPS_CLASS_H

/*-----------------------------------------------------------------------------*/
/** @file    vex_gps.h
  * @brief   gps sensor device class header
*//*---------------------------------------------------------------------------*/

namespace vex {
  /** 
   * @brief Use the gps class to control the gps sensor.
   */
  class gps : public device, public guido {
    private:
      double          _offset_h;
      double          _offset_r;
      uint32_t        _cal_delay;
      turnType        _turn_mode;
      int32_t         _signal_loss_ctr;
      
      double          _scaleRotationValue( double value, rotationUnits units );

      /**
       * @brief Gets the angle (yaw angle) of the gps sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the gps sensor.
       * @param units The measurement unit for the gps device.
       */
      double          angle( rotationUnits units = rotationUnits::deg );
      
    public:
      /** 
       * @brief Creates a new gps object on the port specified.
       * @param index The port index for this gps. The index is zero-based.
       * @param heading_offset The gps sensor rotational offset.
       */
      gps( int32_t index, double heading_offset = 0, turnType dir = turnType::right );

      /** 
       * @brief Creates a new gps object on the port specified.
       * @param index The port index for this gps. The index is zero-based.
       * @param ox the x position for the origin
       * @param oy the y position for the origin
       * @param units The units that ox and oy are using
       * @param heading_offset The gps sensor rotational offset.
       */
      gps( int32_t index, double ox, double oy, distanceUnits units = distanceUnits::mm, double heading_offset = 0, turnType dir = turnType::right );  
      ~gps();
    
      bool            installed();
      int32_t         value();

      /**
       * @brief class to hold gps angle data (proposed)
       * @details 
       *  data can be access either as roll, pitch and yaw or x, y and z
       *  data is stored in degrees.
       */
      class attitude {
        public:
          attitude();  
          attitude( double roll, double pitch, double yaw );
          ~attitude();

          double    roll;
          double    pitch;
          double    yaw;
          
          double  & x = roll;
          double  & y = pitch;
          double  & z = yaw;

          void    transform( double &x, double &y, double &z );
      };  

      /**
       * @brief Starts recalibration of the gps sensor.
       */
      void            startCalibration( int32_t value = 0 );

      void            calibrate( int32_t value = 0 ) {
          startCalibration(value);
      }      
      
      /**
       * @brief Returns true while the gps sensor is performing a requested recalibration, changing to false once recalibration has completed.
       * @return Returns true if gps sensor is still calibrating.
       */
      bool            isCalibrating(void);

      /**
       * @brief reset the heading of the sensor to 0
       */
      void            resetHeading();

      /**
       * @brief reset the rotation angle of the sensor to 0
       */
      void            resetRotation();

      /**
       * @brief set the gps sensor heading to a new value
       * @param value The new heading for the gps sensor
       * @param units The rotation unit for the angle
       */
      void            setHeading( double value, rotationUnits units );

      /**
       * @brief set the gps sensor rotation to angle
       * @param value The new absolute rotation angle for the gps sensor
       * @param units The rotation unit for the angle
       */
      void            setRotation( double value, rotationUnits units );

      /**
       * @brief Gets the roll angle of the gps sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the gps sensor.
       * @param units The measurement unit for the gps sensor.
       */
      double          roll( rotationUnits units = rotationUnits::deg );

      /**
       * @brief Gets the pitch angle of the gps sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the gps sensor.
       * @param units The measurement unit for the gps device.
       */
      double          pitch( rotationUnits units = rotationUnits::deg );

      /**
       * @brief Gets the yaw angle of the gps sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the gps sensor.
       * @param units The measurement unit for the gps sensor.
       */
      double          yaw( rotationUnits units = rotationUnits::deg );

      /**
       * @brief Gets the x position of the gps sensor.
       * @return Returns a double that x positional offset from the center of the competition field.
       */
      double          xPosition( distanceUnits units = distanceUnits::mm );

      /**
       * @brief Gets the y position of the gps sensor.
       * @return Returns a double that y positional offset from the center of the competition field.
       */
      double          yPosition( distanceUnits units = distanceUnits::mm );
      
      /**
       * @brief Gets an orientation angle of the gps sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the gps sensor.
       * @param axis  The orientation axis to recover, roll, pitch or yaw.
       * @param units The measurement unit for the gps sensor.
       */
      double          orientation( orientationType axis, rotationUnits units );            

      /**
       * @brief Gets the heading (yaw angle as 0-360 deg) of the gps sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the gps sensor.
       * @param units The measurement unit for the gps sensor.
       */
      double          heading( rotationUnits units = rotationUnits::deg );

      /**
       * @brief Gets the absolute angle (yaw angle without limits) of the gps sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the gps sensor.
       * @param units The measurement unit for the gps sensor.
       */
      double          rotation( rotationUnits units = rotationUnits::deg );
            
      /**
       * @brief Gets the gps sensor orientation in rotation form
       * @param a reference to instance of a gps::attitude class
       */
      void            orientation( attitude &a );
      
      /**
       * @brief Gets the gps sensor raw gyro data in specified units
       * @param axis the gps sensor axis to use
       * @param units The units return value
       * @return value of the specified gps sensor axis
       */
      double          gyroRate( axisType axis, velocityUnits units );
      
      /**
       * @brief Gets the gps sensor raw acceleration data in G
       * @param axis the gps sensor axis to use
       * @return value of the specified gps sensor axis
       */
      double          acceleration( axisType axis );

      /**
       * @brief return the perceived signal quality
       * @return signal quality as percent
       */
      int32_t         quality();
      
      /**
       * @brief set the origin to be at the indicated x and y position
       * @param x the x position for the origin
       * @param y the y position for the origin
       * @param units The units that x and y are using
       */
      void            setOrigin( double x, double y, distanceUnits units = distanceUnits::mm );
      
      /**
       * @brief set the origin to the current position
       */
      void            setOrigin();

      /**
       * @brief set the current gps location to be at the indicated x and y position and angle
       * @param x the x position for the current location
       * @param y the y position for the current location
       * @param units The units that x and y are using
       * @param angle the gps heading current location
       * @param units_r The units that angle is using
       */
      void            setLocation( double x, double y, distanceUnits units = distanceUnits::mm, double angle = 0, rotationUnits units_r = rotationUnits::deg );

      /**
       * @brief set the current gps location to be at the indicated x and y position and angle
       * @param x the x position for the current location in mm
       * @param y the y position for the current location in mm
       * @param angle the gps heading current location in degrees
       */
      void            setLocation( double x, double y, double angle );

      enum class tEventType {
        EVENT_HEADING_CHANGED     =  0
      };

      /**
       * @brief Calls a function when the gps sensor heading value changes.
       * @param callback A reference to a function.
       */
      void            changed( void (* callback)(void) );

      //mevent  CHANGED   = { (uint32_t)_index, ((uint32_t)tEventType::EVENT_HEADING_CHANGED) };
      
    protected:
      /**
       * @brief recover gps sensor raw status
       */
      int32_t         status();

      /**
       * @brief recover gps sensor temperature in deg C
       */
      double          temperature();
      
      /**
       * @brief change data rate to user specified value, will be rounded to multiple of 5mS
       */
      void            datarate( uint32_t rate );

      /**
       * @brief Set direction for positive angles
       * @param dir turnType::right or turnType::left
       */
      void            setTurnType( turnType dir );

      /**
       * @brief Get direction for positive angles
       * @return turnType::right or turnType::left
       */
      turnType        getTurnType();

      /**
       * @brief Gets the gps sensor orientation in quaternion form
       * @param q reference to instance of a inertial::quaternion class
       */
      void            orientation( inertial::quaternion &q );

      /**
       * @brief Gets the gps sensor orientation in quaternion form
       * @return inertial::quaternion object
       */
      inertial::quaternion orientation();
      
      /**
       * @brief force bypass mode, this causes location data to be ignored and the unit run as an IMU
       */
      void            bypass( bool value = true );
      
      /**
       * @brief set the sensor rotation offset.
       */
      void            setSensorRotation( double value );
      
      //
      // Most of these are special application.  sub class needs to be used to access them.
      //
      
      /**
       * @brief class to hold gps sensor gyro data
       */
      class gyro {
        friend  vex::gps;
        
        private:
          double    _gx;
          double    _gy;
          double    _gz;
          
        public:
          gyro();  
          ~gyro();

          // set equal to another gyro
          gyro& operator=(const gps::gyro other);

          double  & gx = _gx;
          double  & gy = _gy;
          double  & gz = _gz;
      };

      /**
       * @brief class to hold gps sensor acceleration data
       */
      class accel {
        friend  vex::gps;
        
        private:
          double    _ax;
          double    _ay;
          double    _az;
          
        public:
          accel();  
          ~accel();

          // set equal to another gyro
          accel& operator=(const gps::accel other);

          double  & ax = _ax;
          double  & ay = _ay;
          double  & az = _az;
      };

      /**
       * @brief Gets the gps sensor raw gyro data in dps
       * @return gps::gyro object
       */
      gps::gyro       gyroRate();

      /**
       * @brief Gets the gps sensor raw acceleration data in G
       * @return gps::accel object
       */
      gps::accel      acceleration();
      
      // special application - do not use unless requested
      void            setAccelerometerRange( uint8_t value );         
      void            setCollisionThreshold( double value );   
  };
};

#endif // VEX_IMU_CLASS_H/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2019, All rights reserved.               */
/*                                                                            */
/*    Module:     vex_imu.h                                                   */
/*    Author:     James Pearman                                               */
/*    Created:    3 Oct 2019                                                  */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_IMU_CLASS_H
#define   VEX_IMU_CLASS_H
#include "vex_device.h"
#include "vex_units.h"
#include <stdint.h>
/*-----------------------------------------------------------------------------*/
/** @file    vex_imu.h
  * @brief   inertial sensor device class header
*//*---------------------------------------------------------------------------*/

namespace vex {
  /** 
   * @brief Use the inertial class to control the inertial sensor.
   */
  class inertial : public device, public guido {
    private:
      double          _offset_h;
      double          _offset_r;
      uint32_t        _cal_delay;
      turnType        _turn_mode;

      double          _scaleRotationValue( double value, rotationUnits units );

      static void     _collisionEventHandler(void *arg);
      void         (* _collisionCallback)( axisType, double, double, double );
      
    public:
      /** 
       * @brief Creates a new inertial object on the port specified.
       * @param index The port index for this inertial. The index is zero-based.
       */
      inertial( int32_t index, turnType dir = turnType::right );  
      ~inertial();
    
      bool            installed();
      int32_t         value();

      /**
       * @brief class to hold an inertial matrix
       * @details
       *  This class wraps a 4x4 matrix that can be used when performing
       *  3d transformations.
       */
      class matrix {
        public:
          matrix();  
          ~matrix();

          double  data[4][4];

          void    transform( double &x, double &y, double &z );
          void    multiply( inertial::matrix &m );
          double  inverse();
      };
      

      /**
       * @brief class to hold inertial quaternion data
       */
      class quaternion {
        public:
          quaternion();  
          quaternion( double a, double b, double c, double d );
          ~quaternion();

          // storage for the quaternion data
          double    a;
          double    b;
          double    c;
          double    d;

          // set equal to another quaternion
          quaternion& operator=(const inertial::quaternion other);

          // Return this quaternion's conjugate.
          quaternion conjugate() const;

          // Return the unit quaternion corresponding to the same rotation as this one.
          quaternion normalized() const;

          // Return the quaternion multiplied by rhs.
          quaternion operator*(const inertial::quaternion& rhs) const;

          // Multiply this quaternion by rhs.
          quaternion& operator*=(const inertial::quaternion& rhs);

          // transform a vector x, y, z using this quaternion
          void        transform( double &x, double &y, double &z );

          // create a rotation quaternion fron an angle in degrees
          static  quaternion  fromAngleX( double angle );
          static  quaternion  fromAngleY( double angle );
          static  quaternion  fromAngleZ( double angle );

          // create a 4x4 matrix representing this quaternions transform
          void        matrix( inertial::matrix &m );         
      };  

      /**
       * @brief class to hold inertial angle data
       * @details 
       *  data can be access either as roll, pitch and yaw or x, y and z
       *  data is stored in degrees.
       */
      class attitude {
        public:
          attitude();  
          attitude( double roll, double pitch, double yaw );
          ~attitude();

          double    roll;
          double    pitch;
          double    yaw;
          
          double  & x = roll;
          double  & y = pitch;
          double  & z = yaw;

          void    transform( double &x, double &y, double &z );
      };  

      /**
       * @brief Starts recalibration of the inertial sensor.
       */
      void            startCalibration( int32_t value = 0 );

      void            calibrate( int32_t value = 0 ) {
          startCalibration(value);
      }      
      
      /**
       * @brief Returns true while the inertial sensor is performing a requested recalibration, changing to false once recalibration has completed.
       * @return Returns true if inertial sensor is still calibrating.
       */
      bool            isCalibrating(void);

      /**
       * @brief reset the heading of the sensor to 0
       */
      void            resetHeading();

      /**
       * @brief reset the rotation angle of the sensor to 0
       */
      void            resetRotation();

      /**
       * @brief set the inertial sensor heading to a new value
       * @param value The new heading for the inertial sensor
       * @param units The rotation unit for the angle
       */
      void            setHeading( double value, rotationUnits units );

      /**
       * @brief set the inertial sensor rotation to angle
       * @param value The new absolute rotation angle for the inertial sensor
       * @param units The rotation unit for the angle
       */
      void            setRotation( double value, rotationUnits units );

      /**
       * @brief Gets the angle (yaw angle) of the inertial sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the inertial sensor.
       * @param units The measurement unit for the inertial device.
       */
      double          angle( rotationUnits units);

      /**
       * @brief Gets the roll angle of the inertial sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the inertial sensor.
       * @param units The measurement unit for the inertial sensor.
       */
      double          roll( rotationUnits units);

      /**
       * @brief Gets the pitch angle of the inertial sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the inertial sensor.
       * @param units The measurement unit for the inertial device.
       */
      double          pitch( rotationUnits units);

      /**
       * @brief Gets the yaw angle of the inertial sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the inertial sensor.
       * @param units The measurement unit for the inertial sensor.
       */
      double          yaw( rotationUnits units);

      /**
       * @brief Gets an orientation angle of the inertial sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the inertial sensor.
       * @param axis  The orientation axis to recover, roll, pitch or yaw.
       * @param units The measurement unit for the inertial sensor.
       */
      double          orientation( orientationType axis, rotationUnits units );            

      /**
       * @brief Gets the heading (yaw angle as 0-360 deg) of the inertial sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the inertial sensor.
       * @param units The measurement unit for the inertial sensor.
       */
      double          heading( rotationUnits units = rotationUnits::deg );

      /**
       * @brief Gets the absolute angle (yaw angle without limits) of the inertial sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the inertial sensor.
       * @param units The measurement unit for the inertial sensor.
       */
      double          rotation( rotationUnits units = rotationUnits::deg );
            
      /**
       * @brief Gets the inertial sensor orientation in quaternion form
       * @param q reference to instance of a inertial::quaternion class
       */
      void            orientation( quaternion &q );

      /**
       * @brief Gets the inertial sensor orientation in quaternion form
       * @return inertial::quaternion object
       */
      quaternion      orientation();

      /**
       * @brief Gets the inertial sensor orientation in rotation form
       * @param a reference to instance of a inertial::attitude class
       */
      void            orientation( attitude &a );
      
      /**
       * @brief Gets the inertial sensor raw gyro data in specified units
       * @param axis the inertial sensor axis to use
       * @param units The units return value
       * @return value of the specified inertial sensor axis
       */
      double          gyroRate( axisType axis, velocityUnits units );
      
      /**
       * @brief Gets the inertial sensor raw acceleration data in G
       * @param axis the inertial sensor axis to use
       * @return value of the specified inertial sensor axis
       */
      double          acceleration( axisType axis );

      enum class tEventType {
        EVENT_HEADING_CHANGED     =  0,
        EVENT_COLLISION           =  1,

        // private, not set directly
        EVENT_COLLISION_AXIS_X    =  8,
        EVENT_COLLISION_AXIS_Y    =  9,
        EVENT_COLLISION_AXIS_Z    =  10
      };

      /**
       * @brief Calls a function when the inertial sensor heading value changes.
       * @param callback A reference to a function.
       */
      void            changed( void (* callback)(void) );

      /**
       * @brief Calls a function when the inertial sensor detects a collision
       * @param callback A reference to a function.
       */
      void            collision( void (* callback)(axisType, double, double, double) );

      //mevent  CHANGED   = { (uint32_t)_index, ((uint32_t)tEventType::EVENT_HEADING_CHANGED) };
      //mevent  COLLISION = { (uint32_t)_index, ((uint32_t)tEventType::EVENT_COLLISION) };
      
    protected:
      /**
       * @brief recover inertial sensor raw status
       */
      int32_t         status();

      /**
       * @brief recover inertial sensor temperature in deg C
       */
      double          temperature();
      
      /**
       * @brief change data rate to user specified value, will be rounded to multiple of 5mS
       */
      void            datarate( uint32_t rate );
      
      /**
       * @brief Set direction for positive angles
       * @param dir turnType::right or turnType::left
       */
      void            setTurnType( turnType dir );

      /**
       * @brief Get direction for positive angles
       * @return turnType::right or turnType::left
       */
      turnType        getTurnType();

      //
      // Most of these are special application.  sub class needs to be used to access them.
      //
      
      /**
       * @brief class to hold inertial sensor gyro data
       */
      class gyro {
        friend  vex::inertial;
        
        private:
          double    _gx;
          double    _gy;
          double    _gz;
          
        public:
          gyro();  
          ~gyro();

          // set equal to another gyro
          gyro& operator=(const inertial::gyro other);

          double  & gx = _gx;
          double  & gy = _gy;
          double  & gz = _gz;
      };

      /**
       * @brief class to hold inertial sensor acceleration data
       */
      class accel {
        friend  vex::inertial;
        
        private:
          double    _ax;
          double    _ay;
          double    _az;
          
        public:
          accel();  
          ~accel();

          // set equal to another gyro
          accel& operator=(const inertial::accel other);

          double  & ax = _ax;
          double  & ay = _ay;
          double  & az = _az;
      };

      /**
       * @brief Gets the inertial sensor raw gyro data in dps
       * @return inertial::gyro object
       */
      inertial::gyro  gyroRate();

      /**
       * @brief Gets the inertial sensor raw acceleration data in G
       * @return inertial::accel object
       */
      inertial::accel acceleration();

      enum class orientationMode {
          ZUp, ZDown, XUp, XDown, YUp, YDown, Auto
      };

      /**
       * @brief Set the physical orientation of the inertial sensor, this will cause recalibration
       * @param orientation the inertial sensor orientation
       */
      void            setOrientation( inertial::orientationMode orientation );
      
      // special application - do not use unless requested
      void            setAccelerometerRange( uint8_t value );         
      void            setCollisionThreshold( double value );   
  };
};

#endif // VEX_IMU_CLASS_H#pragma once
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2018-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_mevent.h                                                */
/*    Author:     James Pearman                                               */
/*    Created:    25 Jan 2018                                                 */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_MEVENT_CLASS_H
#define   VEX_MEVENT_CLASS_H
#include "v5_api.h"
#include "sim/events.h"

/*-----------------------------------------------------------------------------*/
/** @file    vex_mevent.h
  * @brief   V5 alternate event class header
*//*---------------------------------------------------------------------------*/

namespace vex {
    class mevent {
        private:
          int   _event_id;
          int   _index;
          
        public:
          mevent() : _event_id(-1), _index(-1){};
          mevent( uint32_t index, uint32_t id );
          ~mevent();
                    
          operator int() const{return _event_id;};
    };
}

#endif // VEX_MEVENT_CLASS_H/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2019, All rights reserved.               */
/*                                                                            */
/*    Module:     vex_motorgroup.h                                            */
/*    Author:     James Pearman                                               */
/*    Created:    7 April 2019                                                */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef VEX_MOTOR_GROUP_CLASS_H
#define VEX_MOTOR_GROUP_CLASS_H
#include "vex_motor.h"
/*-----------------------------------------------------------------------------*/
/** @file    vex_motorgroup.h
 * @brief   Motor group class header
 */
/*---------------------------------------------------------------------------*/

namespace vex
{

  class motor_group
  {
  private:
    class motor_group_impl;
    class motor_group_motors
    {
      friend class vex::motor_group;

    private:
#define STATIC_MEMORY 16 // do not change
      uintptr_t _memory[STATIC_MEMORY];
      motor_group_impl *pimpl;

    public:
      motor_group_motors();
      motor_group_motors(const motor_group_motors &);
      ~motor_group_motors();
    };

    int32_t _timeout;
    motor_group_motors _motors;

    void _addMotor();
    void _addMotor(vex::motor &m);

    template <typename... Args>
    void _addMotor(vex::motor &m1, Args &...m2)
    {
      _addMotor(m1);
      _addMotor(m2...);
    }

    bool waitForCompletionAll();

  public:
    motor_group();
    ~motor_group();

    template <typename... Args>
    motor_group(vex::motor &m1, Args &...m2) : motor_group()
    {
      _addMotor(m1);
      _addMotor(m2...);
    }

    template <typename... Args>
    void operator()(vex::motor &m1, Args &...m2)
    {
      _addMotor(m1);
      _addMotor(m2...);
    }

    /**
     * @brief return the number of motors in the motor group
     * @return number of motors
     */
    int32_t count(void);

    /**
     * @brief Sets the velocity of the motor group based on the parameters set in the command. This command will not run the motor.  Any subsequent call that does not contain a specified motor velocity will use this value.
     * @param velocity Sets the amount of velocity.
     * @param units The measurement unit for the velocity value.
     */
    void setVelocity(double velocity, velocityUnits units);

    void setVelocity(double velocity, percentUnits units)
    {
      setVelocity(velocity, static_cast<velocityUnits>(units));
    };

    /**
     * @brief Sets the stopping mode of the motor group by passing a brake mode as a parameter.
     * @param mode The stopping mode can be set to coast, brake, or hold.
     */
    void setStopping(brakeType mode);

    /**
     * @brief Resets the motor's encoder to the value of zero.
     */
    void resetPosition(void);

    /**
     * @brief Sets the value of all motor encoders to the value specified in the parameter.
     * @param value Sets the current position of the motor.
     * @param units The measurement unit for the position value.
     */
    void setPosition(double value, rotationUnits units);

    /**
     * @brief Sets the timeout for the motor group. If the motor group does not reach its' commanded position prior to the completion of the timeout, the motors will stop.
     * @param time Sets the amount of time.
     * @param units The measurement unit for the time value.
     */
    void setTimeout(int32_t time, timeUnits units);

    /**
     * @brief Turns the motors on, and spins them in the specified direction.
     * @param dir The direction to spin the motors.
     */
    void spin(directionType dir);

    /**
     * @brief Turn on the motors and spins them in the specified direction and a specified velocity.
     * @param dir The direction to spin the motors.
     * @param velocity Sets the amount of velocity.
     * @param units The measurement unit for the velocity value.
     */
    void spin(directionType dir, double velocity, velocityUnits units);

    void spin(directionType dir, double velocity, percentUnits units)
    {
      spin(dir, velocity, static_cast<velocityUnits>(units));
    };

    /**
     * @brief Turn on the motors and spins them in the specified direction and a specified voltage.
     * @param dir The direction to spin the motors.
     * @param voltage Sets the amount of volts.
     * @param units The measurement unit for the voltage value.
     */
    void spin(directionType dir, double voltage, voltageUnits units);

    /**
     * @brief Turns on the motors and spin them to an absolute target rotation value at a specified velocity.
     * @return Returns a Boolean that signifies when the motors have reached the target rotation value.
     * @param rotation Sets the amount of rotation.
     * @param units The measurement unit for the rotation value.
     * @param velocity Sets the amount of velocity.
     * @param units_v The measurement unit for the velocity value.
     * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
     */
    bool spinTo(double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion);
    bool spinToPosition(double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion);

    /**
     * @brief Turn on the motors and spin them to an absolute target rotation value.
     * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
     * @param rotation Sets the amount of rotation.
     * @param units The measurement unit for the rotation value.
     * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
     */
    bool spinTo(double rotation, rotationUnits units, bool waitForCompletion);
    bool spinToPosition(double rotation, rotationUnits units, bool waitForCompletion);

    /**
     * @brief Turn on the motors and spin them to a relative target rotation value at a specified velocity.
     * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
     * @param rotation Sets the amount of rotation.
     * @param units The measurement unit for the rotation value.
     * @param velocity Sets the amount of velocity.
     * @param units_v The measurement unit for the velocity value.
     * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
     */
    bool spinFor(double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion);

    bool spinFor(directionType dir, double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion);

    /**
     * @brief Turn on the motors and spin them to a relative target rotation value.
     * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
     * @param rotation Sets the amount of rotation.
     * @param units The measurement unit for the rotation value.
     * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
     */
    bool spinFor(double rotation, rotationUnits units, bool waitForCompletion);

    bool spinFor(directionType dir, double rotation, rotationUnits units, bool waitForCompletion);

    /**
     * @brief Turn on the motors and spin them to a relative target time value at a specified velocity.
     * @param time Sets the amount of time.
     * @param units The measurement unit for the time value.
     * @param velocity Sets the amount of velocity.
     * @param units_v The measurement unit for the velocity value.
     */
    void spinFor(double time, timeUnits units, double velocity, velocityUnits units_v);

    void spinFor(directionType dir, double time, timeUnits units, double velocity, velocityUnits units_v);

    /**
     * @brief Turn on the motors and spin them to a relative target time value.
     * @param time Sets the amount of time.
     * @param units The measurement unit for the time value.
     */
    void spinFor(double time, timeUnits units);

    void spinFor(directionType dir, double time, timeUnits units);

    /**
     * @brief Checks to see if any of the motors are rotating to a specific target.
     * @return Returns a true Boolean if the motor is on and is rotating to a target. Returns a false Boolean if the motor is done rotating to a target.
     */
    bool isSpinning(void);

    /**
     * @brief Checks to see if all the motor are done rotating to a specific target.
     * @return Returns a false Boolean if the motor is on and is rotating to a target. Returns a true Boolean if the motor is done rotating to a target.
     */
    bool isDone(void);

    bool isSpinningMode(void);

    /**
     * @brief Stops all motors using the default brake mode.
     */
    void stop(void);

    /**
     * @brief Stops all motors using a specified brake mode.
     * @param mode The brake mode can be set to coast, brake, or hold.
     */
    void stop(brakeType mode);

    /**
     * @brief Sets the max torque of the motors.
     * @param value Sets the amount of torque.
     * @param units The measurement unit for the torque value.
     */
    void setMaxTorque(double value, percentUnits units);

    /**
     * @brief Sets the max torque of the motors.
     * @param value Sets the amount of torque.
     * @param units The measurement unit for the torque value.
     */
    void setMaxTorque(double value, torqueUnits units);

    /**
     * @brief Sets the max torque of the motors.
     * @param value Sets the amount of torque.
     * @param units The measurement unit for the torque value.
     */
    void setMaxTorque(double value, currentUnits units);

    /**
     * @brief Gets which direction the first motor in the group is spinning.
     * @return Returns the direction that the motor is spinning.
     */
    directionType direction(void);

    /**
     * @brief Gets the current position of the first motor in the group's encoder.
     * @returns Returns a double that represents the current position of the motor in the units defined in the parameter.
     * @param units The measurement unit for the position.
     */
    double position(rotationUnits units);

    /**
     * @brief Gets the current velocity of the first motor in the group.
     * @return Returns a double that represents the current velocity of the motor in the units defined in the parameter.
     * @param units The measurement unit for the velocity.
     */
    double velocity(velocityUnits units);

    double velocity(percentUnits units)
    {
      return velocity(static_cast<velocityUnits>(units));
    };

    /**
     * @brief Gets the sum electrical current for all motors in the group.
     * @return Returns a double that represents the electrical current of the motors in the units defined in the parameter.
     * @param units The measurement unit for the current.
     */
    double current(currentUnits units);

    /**
     * @brief Gets the electrical current of the motors in percentage of maximum.
     * @return Returns a double that represents the electrical current of the motors as percentage of max current.
     * @param units The measurement unit for the current.
     */
    double current(percentUnits units);

    /**
     * @brief Gets the voltage of the first motor in the group.
     * @return Returns a double that represents the voltage of the motor in the units defined in the parameter.
     * @param units The measurement unit for the voltage.
     */
    double voltage(voltageUnits units);

    /**
     * @brief Gets the power of the first motor in the group.
     * @return Returns a double that represents the power of the motor in the units defined in the parameter.
     * @param units The measurement unit for the power.
     */
    double power(powerUnits units);

    /**
     * @brief Gets the torque of the first motor in the group.
     * @return Returns a double that represents the torque of the motor in the units defined in the parameter.
     * @param units The measurement unit for the torque.
     */
    double torque(torqueUnits units);

    /**
     * @brief Gets the efficiency of the first motor in the group.
     * @return Returns the efficiency of the motor in the units defined in the parameter.
     * @param units (Optional) The measurement unit for the efficiency. By default, this parameter is a percentage.
     */
    double efficiency(percentUnits units = percentUnits::pct);

    /**
     * @brief Gets the temperature  of the first motor in the group.
     * @return Returns the temperature of the motor in the units defined in the parameter.
     * @param units The measurement unit for the temperature.
     */
    double temperature(percentUnits units = percentUnits::pct);

    /**
     * @brief Gets the temperature  of the motor.
     * @return Returns the temperature of the motor in the units defined in the parameter.
     * @param units The measurement unit for the temperature.
     */
    double temperature(temperatureUnits units);
  };
}

#endif // VEX_MOTOR_GROUP_CLASS_H#pragma once
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2017-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_motor.h                                                 */
/*    Author:     James Pearman                                               */
/*    Created:    2 June 2017                                                 */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_MOTOR_CLASS_H
#define   VEX_MOTOR_CLASS_H

#include "vex_device.h"

/*-----------------------------------------------------------------------------*/
/** @file    vex_motor.h
  * @brief   Motor device class header
*//*---------------------------------------------------------------------------*/

namespace vex {
  /** 
    * @brief Use the motor class to control motor devices.
  */
  class motor : public device {
    public:
     /** 
      * @brief Creates a new motor object on the port specified.
      * @param index The port index for this motor. The index is zero-based.
      */
      motor( int32_t index );  
      ~motor();
    
      bool            installed();
      int32_t         value();

      /** 
       * @brief Creates a new motor object on the port specified and sets the reversed flag.
       * @param index The port index for this motor. The index is zero-based.
       * @param reverse Sets the reverse flag for the new motor object.
       */
      motor( int32_t index, bool reverse );

      /** 
       * @brief Creates a new motor object on the port specified and sets the gear setting
       * @param index The port index for this motor. The index is zero-based.
       * @param gears Sets the gear's setting for the new motor object.
       */
      motor( int32_t index, gearSetting gears );

      /** 
       * @brief Creates a new motor object on the port specified Sets the reversed flag and the gear setting for the new motor object.
       * @param index The port index for this motor. The index is zero-based.
       * @param gears Sets the gear's setting for the new motor object.
       * @param reverse Sets the reverse flag for the new motor object.
       */  
      motor( int32_t index, gearSetting gears, bool reverse );

      /** 
       * @brief Sets the motor mode to "reverse", which will make motor commands spin the motor in the opposite direction.
       * @param value If set to true, motor commands spin the motor in the opposite direction.
       */
      void            setReversed( bool value );

      /** 
       * @brief Sets the velocity of the motor based on the parameters set in the command. This command will not run the motor.  Any subsequent call that does not contain a specified motor velocity will use this value.
       * @param velocity Sets the amount of velocity.
       * @param units The measurement unit for the velocity value. 
       */
      void            setVelocity( double velocity, velocityUnits units );

      /** 
       * @brief Sets the velocity of the motor based on the parameters set in the command. This command will not run the motor.  Any subsequent call that does not contain a specified motor velocity will use this value.
       * @param velocity Sets the amount of velocity.
       * @param units The measurement unit for the velocity value.
       */
      void            setVelocity( double velocity, percentUnits units ){
          setVelocity( velocity, static_cast<velocityUnits>(units) );
      };

      //Legacy 
      void            setBrake( brakeType mode );

      /** 
       * @brief Sets the stopping mode of the motor by passing a brake mode as a parameter.
       * @param mode The stopping mode can be set to coast, brake, or hold.  
       */
      void            setStopping( brakeType mode );

      /** 
       * @brief Resets the motor's encoder to the value of zero. 
       */   
      void            resetPosition( void );

      /** 
       * @brief Sets the value of the motor's encoder to the value specified in the parameter.
       * @param value Sets the current position of the motor.
       * @param units The measurement unit for the position value.
       */
      void            setPosition( double value, rotationUnits units );

      /** 
       * @brief Sets the timeout for the motor. If the motor does not reach its' commanded position prior to the completion of the timeout, the motor will stop.
       * @param time Sets the amount of time.
       * @param units The measurement unit for the time value.
       */
      void            setTimeout( int32_t time, timeUnits units );

      //Actions

      /** 
       * @brief Turns the motor on, and spins it in the specified direction.
       * @param dir The direction to spin the motor.
       */
      void            spin( directionType dir );

      /**
       * @brief Turns on the motor and spins it in a specified direction and a specified velocity.
       * @param dir The direction to spin the motor. 
       * @param velocity Sets the amount of velocity.
       * @param units The measurement unit for the velocity value. 
       */
      void            spin( directionType dir, double velocity, velocityUnits units );

      void            spin( directionType dir, double velocity, percentUnits units ){
          spin( dir, velocity, static_cast<velocityUnits>(units) );
      }

      /**
       * @brief Turns on the motor and spins it in a specified direction and a specified voltage.
       * @param dir The direction to spin the motor. 
       * @param voltage Sets the amount of volts.
       * @param units The measurement unit for the voltage value. 
       */
      void            spin( directionType dir, double voltage, voltageUnits units );

      /**
       * @brief Turns on the motor and spins it to an absolute target rotation value at a specified velocity.
       * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
       * @param rotation Sets the amount of rotation.
       * @param units The measurement unit for the rotation value.
       * @param velocity Sets the amount of velocity.
       * @param units_v The measurement unit for the velocity value. 
       * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
       */
      bool            spinTo( double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion=true );

      bool            spinToPosition( double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion=true );

      /**
       * @brief Turns on the motor and spins it to an absolute target rotation value.
       * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
       * @param rotation Sets the amount of rotation.
       * @param units The measurement unit for the rotation value.        
       * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
       */
      bool            spinTo( double rotation, rotationUnits units, bool waitForCompletion=true );

      bool            spinToPosition( double rotation, rotationUnits units, bool waitForCompletion=true );

      /**
       * @brief Turns on the motor and spins it to a relative target rotation value at a specified velocity.
       * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
       * @param rotation Sets the amount of rotation.
       * @param units The measurement unit for the rotation value.
       * @param velocity Sets the amount of velocity.
       * @param units_v The measurement unit for the velocity value.
       * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
       */
      bool            spinFor( double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion=true );

      bool            spinFor( directionType dir, double rotation, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion=true );

      /**
       * @brief Turns on the motor and spins it to a relative target rotation value.
       * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
       * @param rotation Sets the amount of rotation.
       * @param units The measurement unit for the rotation value.        
       * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
       */
      bool            spinFor( double rotation, rotationUnits units, bool waitForCompletion=true );

      bool            spinFor( directionType dir, double rotation, rotationUnits units, bool waitForCompletion=true );
      
      /**
       * @brief Turns on the motor and spins it to a relative target time value at a specified velocity.
       * @return true on success, false if parameter error
       * @param time Sets the amount of time.
       * @param units The measurement unit for the time value.
       * @param velocity Sets the amount of velocity.
       * @param units_v The measurement unit for the velocity value.       
       */
      bool            spinFor( double time, timeUnits units, double velocity, velocityUnits units_v );

      bool            spinFor( directionType dir, double time, timeUnits units, double velocity, velocityUnits units_v );

      /**
       * @brief Turns on the motor and spins it to a relative target time value.
       * @return true on success, false if parameter error
       * @param time Sets the amount of time.
       * @param units The measurement unit for the time value.              
       */
      bool            spinFor( double time, timeUnits units );

      bool            spinFor( directionType dir, double time, timeUnits units );

      /** 
       * @brief Checks to see if the motor is rotating to a specific target.
       * @return Returns a true Boolean if the motor is on and is rotating to a target. Returns a false Boolean if the motor is done rotating to a target.
       */
      bool            isSpinning( void );

      /** 
       * @brief Checks to see if the motor is done rotating to a specific target.
       * @return Returns a false Boolean if the motor is on and is rotating to a target. Returns a true Boolean if the motor is done rotating to a target.
       */
      bool            isDone( void );

      bool            isSpinningMode( void );

      /** 
       * @brief Stops the motor using the default brake mode.
       */
      void            stop( void );

      /** 
       * @brief Stops the motor using a specified brake mode.
       * @param mode The brake mode can be set to coast, brake, or hold. 
       */
      void            stop( brakeType mode );

      /** 
       * @brief Sets the max torque of the motor.
       * @param value Sets the amount of torque.
       * @param units The measurement unit for the torque value.
       */
      void            setMaxTorque( double value, percentUnits units );

      /** 
       * @brief Sets the max torque of the motor.
       * @param value Sets the amount of torque.
       * @param units The measurement unit for the torque value.
       */
      void            setMaxTorque( double value, torqueUnits units );
      
      /** 
       * @brief Sets the max torque of the motor.
       * @param value Sets the amount of torque.
       * @param units The measurement unit for the torque value.
       */
      void            setMaxTorque( double value, currentUnits units );
      
      // sensing

      /** 
       * @brief Gets which direction the motor is spinning.
       * @return Returns the direction that the motor is spinning.
       */
      directionType   direction( void );

      /** 
       * @brief Gets the current position of the motor's encoder.
       * @returns Returns a double that represents the current position of the motor in the units defined in the parameter.
       * @param units The measurement unit for the position.
       */
      double          position( rotationUnits units );

      /** 
       * @brief Gets the current velocity of the motor.
       * @return Returns a double that represents the current velocity of the motor in the units defined in the parameter.
       * @param units The measurement unit for the velocity.
       */
      double          velocity( velocityUnits units );

      double          velocity( percentUnits units ) {
          return velocity( static_cast<velocityUnits>(units) );
      };

      /** 
       * @brief Gets the electrical current of the motor.
       * @return Returns a double that represents the electrical current of the motor in the units defined in the parameter.
       * @param units The measurement unit for the current.
       */
      double          current( currentUnits units = currentUnits::amp );

      /** 
       * @brief Gets the electrical current of the motor in percentage of maximum.
       * @return Returns a double that represents the electrical current of the motor as percentage of max current.
       * @param units The measurement unit for the current.
       */
      double          current( percentUnits units );

      /** 
       * @brief Gets the electrical voltage of the motor.
       * @return Returns a double that represents the electrical voltage of the motor in the units defined in the parameter.
       * @param units The measurement unit for the voltage.
       */
      double          voltage( voltageUnits units = voltageUnits::volt );

      /** 
       * @brief Gets the power of the motor.
       * @return Returns a double that represents the power of the motor in the units defined in the parameter.
       * @param units The measurement unit for the power.
       */
      double          power( powerUnits units = powerUnits::watt );

      /** 
       * @brief Gets the torque of the motor.
       * @return Returns a double that represents the torque of the motor in the units defined in the parameter.
       * @param units The measurement unit for the torque.
       */
      double          torque( torqueUnits units = torqueUnits::Nm );

      /** 
       * @brief Gets the efficiency of the motor.
       * @return Returns the efficiency of the motor in the units defined in the parameter.
       * @param units (Optional) The measurement unit for the efficiency. By default, this parameter is a percentage.
       */
      double          efficiency( percentUnits units = percentUnits::pct );

      /** 
       * @brief Gets the temperature  of the motor.
       * @return Returns the temperature of the motor in the units defined in the parameter.
       * @param units The measurement unit for the temperature.
       */
      double          temperature( percentUnits units = percentUnits::pct );
      
      /** 
       * @brief Gets the temperature  of the motor.
       * @return Returns the temperature of the motor in the units defined in the parameter.
       * @param units The measurement unit for the temperature.
       */
      double          temperature( temperatureUnits units );

      /** 
       * @brief Get the type of the motor, 11W or 5.5W.
       * @return Returns the type of the motor, 0 is 11W, 1 is 5.5W.
       */
      int32_t         getMotorType();            


    protected:
      int32_t         getTimeout();
      double          getVelocity( velocityUnits units );
      double          command( velocityUnits units );
    
    private:
      int32_t         _timeout;
      int32_t         _velocity;
      brakeType       _mode;
      brakeType       _brakeMode;
      bool            _spinMode;
            
      void            defaultStopping( brakeType mode );

      void            setRotationUnits( rotationUnits units );
      double          velocityToScaled( double velocity, velocityUnits units );
      int32_t         scaledToVelocity( double value, velocityUnits units );
      double          torqueToCurrent( double torque );
  };
};

#endif // VEX_MOTOR_CLASS_H/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2019, All rights reserved.               */
/*                                                                            */
/*    Module:     vex_optical.h                                               */
/*    Author:     James Pearman                                               */
/*    Created:    26 May 2020                                                 */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_OPTICAL_CLASS_H
#define   VEX_OPTICAL_CLASS_H

/*-----------------------------------------------------------------------------*/
/** @file    vex_optical.h
  * @brief   Optical (color) sensor device class header
*//*---------------------------------------------------------------------------*/

namespace vex {
  /** 
   * @brief Use the optical class to control the optical sensor.
   */
  class optical : public device {
    private:
      int32_t   _led_intensity;
      int32_t   _prox_threshold;
      
      enum class tEventType {
        EVENT_OBJECT_FOUND =  0,
        EVENT_OBJECT_LOST  =  1,
        EVENT_GESTURE_UP   =  2,
        EVENT_GESTURE_DOWN  =  3,
        EVENT_GESTURE_LEFT  =  4,
        EVENT_GESTURE_RIGHT =  5,
      };
            
    public:
      /** 
       * @brief Creates a new optical sensor object on the port specified.
       * @param index The port index for this sensor. The index is zero-based.
       * @param enableGesture enable gesture detection
       */
      optical( int32_t index, bool enableGesture = false );  
      ~optical();
    
      bool            installed();
      int32_t         value();

      /**
       * @brief Gets the hue detected by the optical sensor.
       * @return Returns an integer that represents the hue the optical sensor has detected.
       */
      double          hue();

      /**
       * @brief Gets the brightness value detected by the optical sensor.
       * @return Returns an integer that represents the brightness value the optical sensor has detected.
       */
      double          brightness( bool bRaw = false );

      /**
       * @brief Gets the detected color as a fully saturated vex::color
       * @return Returns a vex::color object that represents the hue of the closest color detected to twelve possible values.
       */
      vex::color      color();

      /**
       * @brief Check to see if an object is detected by the optical sensor.
       * @return Returns a boolean that represents whether an object has been detected.
       */
      bool            isNearObject();

      /**
       * @brief Calls a function when the optical sensor proximity sensor detects an object.
       * @param callback A reference to a function.
       */
      void            objectDetected( void (* callback)(void) );

      /**
       * @brief Calls a function when the optical sensor proximity sensor detects an object is missing.
       * @param callback A reference to a function.
       */
      void            objectLost( void (* callback)(void) );

      /**
       * @brief sets the value of the detection threshold
       * @param value The new detection threshold in proximity units (1 to 255).  0 means no change.
       * @return the current value of the proximity threshold
       */
      int32_t         objectDetectThreshold( int32_t value = 0 );
      
      /**
       * @brief Calls a function when the optical sensor gesture engine detects a movement down to up.
       * @param callback A reference to a function.
       */
      void            gestureUp( void (* callback)(void) );

      /**
       * @brief Calls a function when the optical sensor gesture engine detects a movement up to down.
       * @param callback A reference to a function.
       */
      void            gestureDown( void (* callback)(void) );

      /**
       * @brief Calls a function when the optical sensor gesture engine detects a movement right to left.
       * @param callback A reference to a function.
       */
      void            gestureLeft( void (* callback)(void) );

      /**
       * @brief Calls a function when the optical sensor gesture engine detects a movement left to right.
       * @param callback A reference to a function.
       */
      void            gestureRight( void (* callback)(void) );

      /**
       * @brief Turns the led on the optical sensor on or off.
       */
      void            setLight( ledState state );

      /**
       * @brief Set the intensity of the led on the optical sensor in percent.
       */
      void            setLightPower( int32_t intensity, percentUnits units = percentUnits::pct );

      /**
       * @brief A class to collect all gesture detection data.
       */
      class gesture {
          friend  vex::optical;
          
          private:
            uint8_t   _udata;
            uint8_t   _ddata;
            uint8_t   _ldata;
            uint8_t   _rdata;
            uint32_t  _count;
            gestureType _type;
            
          public:
            gesture();
            ~gesture();

            const uint8_t & udata = _udata;
            const uint8_t & ddata = _ddata;
            const uint8_t & ldata = _ldata;
            const uint8_t & rdata = _rdata;
            const uint32_t & count = _count;
            
            const gestureType & type = _type;            
      };
      
      /**
       * @brief Enable gesture detection on the optical sensor.
       */
      void            gestureEnable(void);

      /**
       * @brief Disable gesture detection on the optical sensor.
       */
      void            gestureDisable(void);

      /**
       * @brief get object with the most recent gesture detection data.
       */
      optical::gesture getGesture();        

      /**
       * @brief A class to hold raw or processed rgbc data.
       */
      class rgbc {
          friend  vex::optical;

          public:
            double  red;
            double  green;
            double  blue;
            double  clear;

          rgbc() : red(0), green(0), blue(0), clear(0) {}
          ~rgbc() {}
      };
      
      /**
       * @brief get raw or processed rgbc data. The default is raw.
       */
      optical::rgbc   getRgb( bool bRawColor = true );  
      
      /**
       * @brief set sensor integration time
       */
      void            integrationTime( double timeMs );

      /**
       * @brief get sensor integration time
       */
      double          integrationTime();
      
  };
};

#endif // VEX_OPTICAL_CLASS_H/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2021, All rights reserved.               */
/*                                                                            */
/*    Module:     vex_roboticarm.h                                            */
/*    Author:     VEX Robotics                                                */
/*    Created:    15 March 2021                                               */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef VEX_ROBOT_ARM_H
#define VEX_ROBOT_ARM_H

namespace vex {
  class RoboticArm
  {
  public:

    struct Position {
      double x, y, z, a;
    };

    struct Angle {
      double j1, j2, j3, j4;
    };

  private:

    // This describes tool tip positions
    struct Quad {
      double  a, b, c, d;
    };

    #define PFLAG_CHANGE_POSITION 1
    #define PFLAG_CHANGE_FILTER   2
    #define PFLAG_CHANGE_VELOCITY 4

    // These are the physical dimensions of the robot arm
    #define ARM_A 7.0
    #define ARM_B 7.0
    #define ARM_C 1.9509
    #define ARM_D 0.0555
    #define ARM_P0r 0.7224
    #define ARM_P0z 5.296
    #define ARM_z3 0.7

    // These variables are for the double boxcar filter used for velocity profiling
    #define FILTERSIZE  1000
    Quad Vfilter[FILTERSIZE];       // Velocity boxcar filter static array
    Quad Afilter[FILTERSIZE];       // Acceleration boxcar filter static array
    Quad VfilterSum, AfilterSum;    // Running sums for the two filters
    int Vhead, Vtail, Ahead, Atail; // Pointer integers into the boxcar filters circular buffers
    Angle Last;                     // Remember the last target angles in order to compute the expected motor velocities

    // Variables used to keep track of position movements and the profiling
    #define LOOPTIME  0.01  // 100 times per second
    double  PosVelocity = 10.0, AngVelocity = 90.0;
    double  TargetX, TargetY, TargetZ, TargetA; // This is the command position coming from the user or user's exective program. This is where we want the motor to go to.
    double  PosX, PosY, PosZ, PosA; // This is the integration of the filtered velocity - the target profile we want the motor to follow
    double  UnfilX, UnfilY, UnfilZ, UnfilA; // This is the instantaneous integrated velocity. This tells us where the motor is going to end up after it goes through its profile
    int     VFilterLen = 50, AFilterLen = 50; // This is the size of the boxcar filters
    int     VFilterBuf, AFilterBuf;
    int     ProfileLoopFlag = 0;
    double  BufX, BufY, BufZ, BufA;
  
    double J1_OFFSET = 0; // This relates the measured values to the mastering values
    double J2_OFFSET = 0;
    double J3_OFFSET = 0;
    double J4_OFFSET = 0;

    double  I1 = 0.0, I2 = 0.0, I3 = 0.0, I4 = 0.0; // Motor integrators

    Position Offset = {.x = 0.0, .y = 0.0, .z = 0.0, .a = 0.0};

    // These are the kinematic constants for the robot arm
    double Arm_dr = 0.0;
    double Arm_dp = 0.0;
    double Arm_dz = 0.0;

    motor &mJ1;
    motor &mJ2;
    motor &mJ3;
    motor &mJ4;
    pot &mJ1_pot;
    pot &mJ2_pot;
    pot &mJ3_pot;
    pot &mJ4_pot;

    bool hasMasterValues = false;
    bool emergencyStopped = false;

    // local changes start
    double joint4Angle = 0.0;
    double linearSpeed = 5;
    double jointSpeed = 25;
    task motionProfileTask;
    bool isLinearMotionMode = true;
    bool filterIsSet = false;
    bool toolOffsetIsSet = false;

    void startProfilerTask();
    void stopProfilerTask();
    bool profilerIsRunning = false;
    bool profilerThreadDisabled = false;
    // local changes end


  public:

    RoboticArm(motor& joint1Motor, pot& joint1Pot, motor& joint2Motor, pot& joint2Pot, motor& joint3Motor, pot& joint3Pot, motor& joint4Motor, pot& joint4Pot);

    void setMasteringValues(int joint1Value, int joint2Value, int joint3Value, int joint4Value);

    // local start
    void moveToPositionLinear(double x, double y, double z);
    void moveToPositionLinear(double x, double y, double z, double a);
    void moveToPositionJoint(double x, double y, double z);
    void moveToPositionJoint(double x, double y, double z, double a);

    void setArmAngle(double angle);

    int getJointValue(int jointNumber);
    double getAxisPosition(axisType axis);

    void setLinearMoveSpeed(double speed);
    void setJointMoveSpeed(double speed);


    void setRelativePosition(double x, double y, double z);

    void enableManualMovement();

    int getInfo();
    // local end

    void getRelativePosition(Position &output);
    void setRelativePosition(double x, double y, double z, double a);
    void moveToRelativePosition(double x, double y, double z, double a);
    void moveToPosition(double x, double y, double z, double a);
    void setProfileVelocity(double pvel, double avel);
    void setToolTipOffset(double dr, double dp, double dz);
    void setProfileFilter(int vlen, int alen);
    int positionArrived(void);
    void stow(void);
    void getPosition(Position &output);
    int positionProfileLoopLinear(void);
    int positionProfileLoopJoint(void);
    void emergencyStop();
    // void readMasteringValues(void);
    void enterMasteringMode(void);

  private:

    void velocityFilter(double vx, double vy, double vz, double va);
    void initializeProfilePosition(void);
    void initializeProfileAngle(void);
    void initializeVelocityFilter(void);
    void motorControlLoop(Angle &angs);
    void complimentaryFilterAngles(Angle &result);
    void readBestAngles(Angle &result);
    void initializeComplimentaryFilter(void);
    void adjustProfileFilter(int vlen, int alen);
    int checkMasteringValue(int masteringValue, int jointNumber, int min, int max);
    double getJ1(void);
    double getJ2(void);
    double getJ3(void);
    double getJ4(void);
    void forwardKinematicSolve(double t, double a1, double b1, double c1, Position &output);
    void inverseKinematicSolve(double x,double y,double z,double a, Angle &output);
    
    static int profilerTaskHelper(void* armPtr);
  };
};

#endif  // VEX_ROBOT_ARM_H

/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2019, All rights reserved.               */
/*                                                                            */
/*    Module:     vex_rotation.h                                              */
/*    Author:     James Pearman                                               */
/*    Created:    3 Oct 2019                                                  */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_ROTATION_CLASS_H
#define   VEX_ROTATION_CLASS_H
#include <stdint.h>
#include "vex_device.h"
/*-----------------------------------------------------------------------------*/
/** @file    vex_rotation.h
  * @brief   rotation sensor device class header
*//*---------------------------------------------------------------------------*/

namespace vex {
  /** 
    * @brief Use the rotation class to control absolute encoder devices.
  */
  class rotation : public device {
    public:
      /** 
       * @brief Creates a new rotation object on the port specified.
       * @param index The port index for this rotation sensor. The index is zero-based.
       */
      rotation( int32_t index, bool reverse = false );  
      ~rotation();
    
      bool            installed();
      int32_t         value();

      /** 
       * @brief Sets the encoder mode to "reverse", position and angle will change in the opposite direction.
       * @param value If set to true, the encoder counts in reverse
       */
      void            setReversed( bool value );

      /**
       * @brief Gets the angle of the absolute encoder.
       * @return Returns a double that represents the unit value specified by the parameter of the encoder sensor.
       * @param units The measurement unit for the encoder device.
       */
      double          angle( rotationUnits units = rotationUnits::deg );

      /** 
       * @brief Resets the position of the absolute encoder to the value of zero. 
       */   
      void            resetPosition( void );

      /** 
       * @brief Sets the value of the absolute encoder to the value specified in the parameter.
       * @param value Sets the current position of the absolute encoder.
       * @param units The measurement unit for the position value.
       */
      void            setPosition( double value, rotationUnits units );
        
      /** 
       * @brief Gets the current position of the absolute encoder.
       * @returns Returns a double that represents the current position of the encoder in the units defined in the parameter.
       * @param units The measurement unit for the position.
       */
      double          position( rotationUnits units );

       /** 
       * @brief Gets the current velocity of the absolute encoder.
       * @return Returns a double that represents the current velocity of the encoder in the units defined in the parameter.
       * @param units The measurement unit for the velocity.
       */
      double          velocity( velocityUnits units );

      enum class tEventType {
        EVENT_ANGLE_CHANGED     =  0
      };

      /**
       * @brief Calls a function when the encoder value changes.
       * @param callback A reference to a function.
       */
      void      changed( void (* callback)(void) );

      //mevent  CHANGED   = { (uint32_t)_index, ((uint32_t)tEventType::EVENT_ANGLE_CHANGED) };
      
    protected:
      /**
       * @brief recover abs encoder raw status
       */
      int32_t         status();
      
      /**
       * @brief recover abs encoder temperature in deg C
       */
      double          temperature();

      /**
       * @brief change data rate to user specified value, will be rounded to multiple of 5mS
       */
      void            datarate( uint32_t rate );
  };
};

#endif // VEX_ROTATION_CLASS_H/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2019, All rights reserved.               */
/*                                                                            */
/*    Module:     vex_smartdrive.h                                            */
/*    Author:     James Pearman                                               */
/*    Created:    7 April 2019                                                */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_DRIVETRAIN_EXT_CLASS_H
#define   VEX_DRIVETRAIN_EXT_CLASS_H

#include "vex_motor.h"
#include "vex_motorgroup.h"
#include "vex_drivetrain.h"

/*-----------------------------------------------------------------------------*/
/** @file    vex_smartdrive.h
  * @brief   Drivetrain class header
*//*---------------------------------------------------------------------------*/

namespace vex {

  class smartdrive : public drivetrain  {
    public:  
      smartdrive( motor_group &l, motor_group &r, guido &g, double wheelTravel=320, double trackWidth=320, double wheelBase=130, distanceUnits unit=distanceUnits::mm, double externalGearRatio = 1.0 );
      smartdrive( motor &l, motor &r, guido &g, double wheelTravel=320, double trackWidth=320, double wheelBase=130, distanceUnits unit=distanceUnits::mm, double externalGearRatio = 1.0 );

      ~smartdrive();

      void  setTurnThreshold( double t );
      void  setTurnConstant( double kp );

      smartdrive & setTurnDirectionReverse( bool value );

      /**
       * @brief Turn on the motors and rotate to a heading at the default velocity.
       * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
       * @param angle Sets the angle to turn.
       * @param units The measurement unit for the angle value.
       * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
      */
      bool turnToHeading( double angle, rotationUnits units,  bool waitForCompletion=true );
      
      /**
       * @brief Turn on the motors and rotate to a heading at a specified velocity.
       * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
       * @param angle Sets the angle to turn.
       * @param units The measurement unit for the angle value.
       * @param velocity Sets the amount of velocity.
       * @param units_v The measurement unit for the velocity value.
       * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
      */
      bool turnToHeading( double angle, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion=true );

      /**
       * @brief Turn on the motors and rotate to an angle at the default velocity.
       * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
       * @param angle Sets the angle to turn.
       * @param units The measurement unit for the angle value.
       * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
      */
      bool turnToRotation( double angle, rotationUnits units,  bool waitForCompletion=true );
      
      /**
       * @brief Turn on the motors and rotate to an angle at a specified velocity.
       * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
       * @param angle Sets the angle to turn.
       * @param units The measurement unit for the angle value.
       * @param velocity Sets the amount of velocity.
       * @param units_v The measurement unit for the velocity value.
       * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
      */
      bool turnToRotation( double angle, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion=true );

      /**
       * @brief Turn on the motors and rotate an angle at the default velocity.
       * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
       * @param dir Sets the direction to turn.
       * @param angle Sets the angle to turn.
       * @param units The measurement unit for the angle value.
       * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
      */
      virtual bool turnFor( turnType dir, double angle, rotationUnits units,  bool waitForCompletion=true );

      virtual bool turnFor( double angle, rotationUnits units, bool waitForCompletion=true );
      
      /**
       * @brief Turn on the motors and rotate an angle at a specified velocity.
       * @return Returns a Boolean that signifies when the motor has reached the target rotation value.
       * @param dir Sets the direction to turn.
       * @param angle Sets the angle to turn.
       * @param units The measurement unit for the angle value.
       * @param velocity Sets the amount of velocity.
       * @param units_v The measurement unit for the velocity value.
       * @param waitForCompletion (Optional) If true, your program will wait until the motor reaches the target rotational value. If false, the program will continue after calling this function. By default, this parameter is true.
      */
      virtual bool turnFor( turnType dir, double angle, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion=true );

      virtual bool turnFor( double angle, rotationUnits units, double velocity, velocityUnits units_v, bool waitForCompletion=true );

      /**
       * @brief set the gyro/inertial sensor heading to angle
       * @param value The new heading for the gyro
       * @param units The rotation unit for the angle
       */
      void setHeading(  double value, rotationUnits units );
      
      /**
       * @brief Gets the heading (angle) of the gyro/inertial sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the gyro sensor.
       * @param units The measurement unit for the gyro device.
       */
      double heading( rotationUnits units = rotationUnits::deg );

      /**
       * @brief Gets the rotation (absolute angle) of the gyro/inertial sensor.
       * @return Returns a double that represents the unit value specified by the parameter of the gyro sensor.
       * @param units The measurement unit for the gyro device.
       */
      double rotation( rotationUnits units = rotationUnits::deg );

      /**
       * @brief set the gyro/inertial sensor rotation to angle
       * @param value The new absolute angle for the gyro
       * @param units The rotation unit for the angle
       */
      void setRotation(  double value, rotationUnits units );
      
      
      /** 
       * @brief Checks to see if the turnToHeading, turnToRotation or turnFor function is still running.
       * @return Returns a true Boolean if the motor is on and is rotating to a target. Returns a false Boolean if the motor is done rotating to a target.
       */
      bool isTurning();

      virtual bool isMoving();
      
    private:
      guido  *g;
      double      _targetAngle;
      turnType    _targetDir;
      int32_t     _timeout;
      bool        _turning;
      bool        _blocked;
      bool        _abortCheck;
      int32_t     _gyroTaskId;
      double      _turnThreshold;
      double      _turnKp;
      double      _turningVelocity;
      velocityUnits _turningVelocityUnits;
            
      turnType    _turnPositive;
      turnType    _turnNegative;
                  
      static int  _gyrotask( void *arg );
      void        _initevents();
      bool        _testForCompletionGyro();
      bool        _waitForCompletionGyro();

      enum class tEventType {
        EVENT_GYRO_POLL = 4
      };
  };
}

#endif // VEX_DRIVETRAIN_EXT_CLASS_H/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2016-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_task.h                                                  */
/*    Author:     James Pearman                                               */
/*    Created:    22 Nov 2016                                                 */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_TASK_CLASS_H
#define   VEX_TASK_CLASS_H
#include <stdint.h>
// In case we have ROBOTC definitions
#ifdef task
#undef task
#endif

/*-----------------------------------------------------------------------------*/
/** @file    vex_task.h
  * @brief   Header for task control class
*//*---------------------------------------------------------------------------*/

namespace vex {
  /** 
    * @brief Use this class to create and control tasks.
  */
  class task  {
    friend class competition;

    private:
      static  int   _labelId;
      void         *_callback;
      int           _callbackId;
        
    protected:
      static int32_t _index( int (* callback)(void) );
      static void    _stopAll();
      static void    _dump();
      
    public:
      task();
      /**
      * @brief Constructs a task with a function callback.
      * @param callback A reference to a function.
      */
      task( int (* callback)(void) );
      
      /**
      * @brief Constructs a task with a function callback.
      * @param callback A reference to a function.
      * @param arg A void pointer that is passed to the callback.
      */
      task( int (* callback)(void *), void *arg );

      /**
      * @brief Constructs a task with a function callback and a priority.
      * @param callback A reference to a function.
      * @param priority Sets the priority of the task.
      */
      task( int (* callback)(void), int32_t priority );
      
      /**
      * @brief Constructs a task with a function callback and a priority.
      * @param callback A reference to a function.
      * @param arg A void pointer that is passed to the callback.
      * @param priority Sets the priority of the task.
      */
      task( int (* callback)(void *), void *arg, int32_t priority );
      ~task();

      static const int32_t taskPrioritylow    =  1;
      static const int32_t taskPriorityNormal =  7;
      static const int32_t taskPriorityHigh   = 15;
      
      /**
      * @brief Stops the specified task.
      * @param t The task to be stopped.
      */
      static void stop( const task &t );

      /**
      * @brief Suspends the specified task for later use.
      * @param t The task to be suspended.
      */
      static void suspend( const task &t );

      /**
      * @brief Resumes a specified task that has been suspended.
      * @param t The task to be resumed.
      */
      static void resume( const task &t );

      /**
      * @brief Gets the priority of a task.
      * @return Returns an integer that represents the current priority of the specified task.
      * @param t The task to get priority of.
      */
      static int32_t priority( const task &t ) ;

      /**
      * @brief Sets the priority of the specified task.
      * @param t The task to set the priority on.
      * @param priority The priority level of a task.
      */
      static void setPriority( const task &t, int32_t priority ) ;

      // these act on this task
      /**
      * @brief Stops the task.
      */
      void        stop();

      /**
      * @brief Suspends the task until the task is told to resume.
      */
      void        suspend();

      /**
      * @brief Resumes the previously suspended task.
      */
      void        resume();

      /**
      * @brief Gets the priority of the task.
      * @return Returns an integer that represents the priority of the task.
      */
      int32_t     priority();

      /**
      * @brief Sets the priority of the task.
      * @param priority The priority level of the task.
      */
      void        setPriority( int32_t priority );

      /**
      * @brief Gets the task's index.
      * @return Returns an integer that represents the index of the task.
      */
      int32_t     index( void );


      /**
      * @brief Sets the task to sleep for the specified amount of time (in milliseconds).
      * @param time The number of milliseconds for the task to sleep.
      */
      static void sleep( uint32_t time );

      /**
      * @brief return control to the scheduler and allow other tasks to run.
      */
      static void yield();

      /**
      * @brief Stops the task of the passed in function.
      * @param callback A reference to a function. 
      */
      static void stop( void *callback, int callbackId = 0 );      

      static void stopAll();
  };
};

namespace vex {
  /**
    * @brief Use this class to synchronize access to resources.
  */
  class semaphore  {
    private:
      static  bool   _initialized;
      uint32_t       _sem;
        
    protected:
    
    public:
      semaphore();
      ~semaphore();
      

      /**
      * @brief Attempts to lock the semaphore. If the semaphore is previously locked, it will block until the semaphore is unlocked.
      */
      void        lock();

      /**
      * @brief Attempts to lock the semaphore. If the semaphore is previously locked, it will block until the timeout has expired or the semaphore is unlocked.
      * @param time The maximum amount of time to wait for the semaphore to be unlocked in milliseconds.
      */
      void        lock( uint32_t time );

      /**
      * @brief Unlocks a locked semaphore.
      */
      void        unlock();

      /**
      * @brief Checks to see if the semaphore was locked and is owned by the current task.
      * @return Returns a true Boolean if the semaphore was locked and is owned by the current task.
      */
      bool        owner();      
  };
};

#endif // VEX_TASK_CLASS_H
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2017-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_thread.h                                                */
/*    Author:     James Pearman                                               */
/*    Created:    8 Nov 2017                                                  */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_THREAD_CLASS_H
#define   VEX_THREAD_CLASS_H

#include <chrono>

/*-----------------------------------------------------------------------------*/
/** @file    vex_thread.h
  * @brief   Header for thread control class (variation on tasks)
*//*---------------------------------------------------------------------------*/

namespace vex {
  /** 
    * @brief Use this class to create and control threads.
  */
  class thread {
    private:
      static  int   _labelId;
      void         *_callback;
      int           _callbackId;

    public:
      thread() : _callback( NULL ) {};
      /**
      * @brief Creates a thread object.
      * @param callback A reference to a function.
      */
      thread( int  (* callback)(void) );
      /**
      * @brief Creates a thread object.
      * @param callback A reference to a function.
      * @param arg A void pointer that is passed to the callback.
      */
      thread( int  (* callback)(void *), void *arg );
      /**
      * @brief Creates a thread object.
      * @param callback A reference to a function. 
      */
      thread( void (* callback)(void) ) : thread( (int (*)(void)) callback ) {}
      /**
      * @brief Creates a thread object.
      * @param callback A reference to a function.
      * @param arg A void pointer that is passed to the callback.
      */
      thread( void (* callback)(void *), void *arg ) : thread( (int (*)(void *)) callback, arg ) {}
      ~thread();

      static const int32_t threadPrioritylow    =  1;
      static const int32_t threadPriorityNormal =  7;
      static const int32_t threadPriorityHigh   = 15;
      
      /**
      * @brief Gets the ID of the thread.
      * @return Returns an integer that represents the thread's ID.
      */
      int32_t           get_id();

      /**
      * @brief Waits for the other thread to finish its execution. 
      */
      void              join(); 

      /**
      * @brief Permits the thread to execute from the thread handle. 
      */
      void              detach() {};

      /**
      * @brief Checks whether the thread is joinable.
      * @return Returns a true Boolean if the thread is joinable.
      */
      bool              joinable();

      /**
      * @brief Gets the pointer to the native handle of the thread. 
      */
      void             *native_handle();

      /**
      * @brief Swaps the thread IDs with another specified thread in the parameter.
      * @param __t The thread to swap to.
      */
      void              swap( thread& __t );
      
      // non standard
      /**
      * @brief Stops the thread.
      */
      void              interrupt();      

      /**
      * @brief Stop all threads except main.
      */
      static void       interruptAll();      

      /**
      * @brief Sets the priority of the thread.
      * @param priority The priority of the thread to be set to.
      */
      void              setPriority( int32_t priority );

      /**
      * @brief Gets the priority of the thread.
      * @return Returns the priority of the thread as an integer.
      */
      int32_t           priority();


      /**
      * @brief Gets the number of concurrent threads supported by the hardware.
      * @return An integer that represents the amount of concurrent threads supported by the hardware. 
      */      
      static  int32_t   hardware_concurrency();

      /**
      * @brief Swaps two threads specified in the parameters.
      * @param __x A thread to swap with the next thread set in the parameter.
      * @param __y A thread to swap with the previous thread set in the parameter.
      */
      static  void      swap( thread& __x, thread& __y ) { __x.swap(__y); }
  };
  
  namespace this_thread {

      /**
      * @brief Gets the ID of the thread
      * @return Returns an integer that represents the thread's ID.
      */  
      int32_t   get_id();

      /**
      * @brief Suspends the current thread. 
      */  
      void      yield();

      /// sleep_for
      /**
      * @brief Suspends the current thread until the time is expired in milliseconds.
      * @param time The amount of time for the thread to sleep.
      */  
      void      sleep_for( uint32_t time );

      /**
      * @brief Suspends the current thread until the time is expired in milliseconds.
      * @param __rtime The standard chrono::duration object representing the time to sleep.
      */
      template<typename _Rep, typename _Period>
      inline void
      sleep_for(const std::chrono::duration<_Rep, _Period>& __rtime) {
    	  if (__rtime <= __rtime.zero())
    	    return;
    	  
        int __ms = std::chrono::duration_cast<std::chrono::milliseconds>(__rtime).count();
        sleep_for( (uint32_t)__ms );
      }
      
      /// sleep_until
      /**
      * @brief Sleeps until the system timer reaches the time specified in the parameter.
      * @param time The amount of time for the thread to sleep.
      */  
      void      sleep_until( uint32_t time );
      /**
      * @brief Sleeps until the system timer reaches the time specified in the parameter.
      * @param __atime The standard chrono::time_point object representing the time to sleep.
      */
      template<typename _Clock, typename _Duration>
      inline void
      sleep_until(const std::chrono::time_point<_Clock, _Duration>& __atime)
        {
        auto __now = _Clock::now();
        if (__now < __atime)
          sleep_for(__atime - __now);
        }

      // non standard
      /**
      * @brief Sets the priority of the current thread.
      * @param priority The priority of the thread to be set to.
      */
      void              setPriority( int32_t priority );
      /**
      * @brief Gets the priority of the current thread.
      * @return Returns the priority of the current thread as an integer.
      */ 
      int32_t           priority();
    };   
       
  /** 
    * @brief Use this class to create and control mutexes.
  */
  class mutex {
    private:
      uint32_t  _sem;
    
    public:
      mutex();
      ~mutex();
    
      /**
      * @brief Locks the mutex and blocks if the mutex is not available. 
      */
      void  lock();

      /**
      * @brief Try to lock the mutex and returns if the mutex is not available.
      * @return Returns true if successful and false if the mutex is owned by another thread.
      */
      bool  try_lock();

      /**
      * @brief Unlocks the mutex.
      */
      void  unlock();
  };
};


#endif // VEX_THREAD_CLASS_H#pragma once
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2018-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_timer.h                                                 */
/*    Author:     James Pearman                                               */
/*    Created:    24 May 2018                                                 */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_TIMER_CLASS_H
#define   VEX_TIMER_CLASS_H

#include "v5_api.h"
#include "vex_units.h"
/*-----------------------------------------------------------------------------*/
/** @file    vex_timer.h
  * @brief   V5 timer class header
*//*---------------------------------------------------------------------------*/

namespace vex {
    /**
      * @brief Use the timer class to create timers for your program.
    */
    class timer {
        private:
          uint32_t  _offset; // time after start that the timer will be triggered
          uint32_t  _initial; // time from start of time that this timer was started
          
        public:
          timer();          
          ~timer();

          // Assignment
          void operator=( uint32_t value );

          // Get value
          operator uint32_t() const;          

         /**
          * @brief Gets the current value of the timer in mS.
          * @return Returns the current value of the timer in mS.
          */
          uint32_t  time() const;
          
         /**
          * @brief Gets the current value of the timer in specified units.
          * @return Returns a double that represents the time in the specified units.
          * @param units The measurement unit for time.
         */
          double    time( timeUnits units ) const;
          
         /**
          * @brief Gets the current value of the timer in seconds.
          * @return Returns the current value of the timer in seconds.
          */
          double    value() const;

         /**
          * @brief Sets the current value of the timer to 0.
          */
          void      clear();

         /**
          * @brief Sets the current value of the timer to 0.
          */
          void      reset();

         /**
          * @brief Gets the current value of the system timer in mS.
          * @return Returns the value of the system timer in mS.
          */
          static uint32_t  system();

         /**
          * @brief Gets the current value of the high-resolution timer (in microseconds).
          * @return Returns the current value of the high-resolution timer (in microseconds).
          */
          static uint64_t  systemHighResolution();

         /**
          * @brief Sets a callback that will be called in the future.
          * @param callback A pointer to a function that will be called when the timer expires.
          * @param value The delay in mS to when the function will be called.
          */
          static void event( void(* callback)(void *), uint32_t value );

         /**
          * @brief Sets a callback that will be called in the future.
          * @param callback A pointer to a function that will be called when the timer expires.
          * @param value The delay in mS to when the function will be called.
          */
          static void event( void(* callback)(void), uint32_t value );
    };
}

#endif // VEX_TIMER_CLASS_H#pragma once
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2018-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_triport.h                                               */
/*    Author:     James Pearman                                               */
/*    Created:    10 Jan 2018                                                 */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------*/
/** @file    vex_triport.h
  * @brief   Triport device class header
*//*---------------------------------------------------------------------------*/

#ifndef   VEX_TRIPORT_CLASS_H
#define   VEX_TRIPORT_CLASS_H

#include "vex_device.h"
#include "vex_mevent.h"

/*-----------------------------------------------------------------------------*/
/** @brief Triport device class                                                */
/*-----------------------------------------------------------------------------*/
namespace vex {
  /** 
    * @brief Use this class to get and set information about devices on Three Wire Ports A through H.
  */
  class triport : public device {
    public:
      enum class tEventType {
        EVENT_DIN_HIGH        =  0,
        EVENT_DIN_LOW         =  1,
        EVENT_AIN_CHANGED     =  2
      };

    private:
      uint32_t _id = 0;

      void _setport() {};
      void _configPort( uint32_t id, triportType type );
    
      template <typename first, typename... Args>
      void _setport( first port, Args... args ) {
        _configPort( _id++, port );
        _setport( args... );
      }

      int32_t _getIndex();

      // conversion from C++ enum to C API
      V5_AdiPortConfiguration   _internalType( triportType type );
      triportType               _externalType( V5_AdiPortConfiguration type );
        
    public:
      triport( int32_t index );  
      ~triport();

      template <typename... Args>
      triport( int32_t index, Args... args) : triport(index) {
        _setport( args... );
      }
      /**
       * @brief Gets the status of what is installed on the port.
       * @return Returns true if a 3-Wire Port device is installed in the port, otherwise false.
       */
      bool            installed();
     
      /** 
        * @brief TBD
      */
      class port {
        friend class __tridevice;

        private:
          int32_t   _id;
          triport   *_parent;
          int32_t   _convertAnalog( analogUnits units );
          int32_t   _virtual_value( int32_t virtual_port );
          
        public:
          port() : _id( -1 ), _parent(NULL) {};
          port( const int32_t id, triport *parent );
          port( const int32_t id, const triportType type, triport *parent );
          ~port() {};          
          
          /**
           * @brief Sets the port to a specific port type.
           * @param type A type of port that you want to set it to.
           */
          void type( const triportType type );

          /**
           * @brief Gets the current port type.
           * @return Returns the Port Type.
           */
          triportType type();

          /**
           * @brief Gets the index of the parent smart port
           */
          int32_t   index();

          /**
           * @brief Gets the id of the port
           * @return Returns an integer in the range 0 to 7, -1 for error
           */
          int32_t   id();

          /**
           * @brief Sets the port's value to the specified integer in the parameter. 
           * @param value An integer number that will be set to the port's value.
           */
          void      value( int32_t value );

          /**
           * @brief Gets the value of a port.
           * @return Returns an integer that represents the port's value.
           */
          int32_t   value();

          /**
           * @brief Sets the value of the port to a Boolean value.
           * @param value A true or false Boolean value that the port will be set to.
           */
          void      set( bool value );


          /**
           * @brief Calls back a function when the port is pressed.
           * @param callback A reference to a function.
           */
          void     pressed( void (* callback)(void) );

          /**
           * @brief Calls back a function when the port is released.
           * @param callback A reference to a function.
           */
          void     released( void (* callback)(void) );

          /**
           * @brief Calls back a function when the port has changed value.
           * @param callback A reference to a function.
           */
          void     changed( void (* callback)(void) );

               
          void operator()( const triportType type ) {
            this->type( type );
          }
          void operator=( const int32_t value )  {
            this->value( value );
          }
          operator int()  {
            return this->value();
          }          
          operator bool()  {
            return (this->value() > 0) ? true : false;
          }          

          // encoder specific
          /**
           * @brief Resets the rotation of the encoder to zero.
           */
          void    resetRotation( void );

          /**
           * @brief Sets the rotation of the encoder to a specific value.
           * @param val A double that represents the value to set the rotation to.
           * @param units The unit type that the previous value should be treated as.
           */
          void    setRotation( double val, rotationUnits units );

          /**
           * @brief Gets the rotation value of the encoder.
           * @return Returns a double that represents the current rotation of the encoder.
           * @param units A unit type that defines what value of rotation that should be returned.
           */
          double  rotation( rotationUnits units );

          /**
           * @brief Gets the velocity of the encoder.
           * @return Returns a double that represents the current velocity of the encoder.
           * @param units A unit type that defines what value of velocity that should be returned.
           */
          double  velocity( velocityUnits units );

          /**
           * @brief Gets the value of the distance sensor.
           * @return Returns a double that represents the current distance of the sensor.
           * @param units A distance unit type that defines what value of distance that should be returned. 
           */
          double  distance( distanceUnits units );

          mevent  PRESSED   = { (uint32_t)_parent->_getIndex(), ((uint32_t)tEventType::EVENT_DIN_HIGH    + (_id<<2)) };
          mevent  RELEASED  = { (uint32_t)_parent->_getIndex(), ((uint32_t)tEventType::EVENT_DIN_LOW     + (_id<<2)) };
          mevent  CHANGED   = { (uint32_t)_parent->_getIndex(), ((uint32_t)tEventType::EVENT_AIN_CHANGED + (_id<<2)) };
          
          mevent  &HIGH     = PRESSED;
          mevent  &LOW      = RELEASED;
      };

      // A triport device has 8 ports
      // This creates those instances and associates them with this triport
      port Port[8] = { {0, this},
                       {1, this},
                       {2, this},
                       {3, this},
                       {4, this},
                       {5, this},
                       {6, this},
                       {7, this}
                     };  
      
      // These are the public named references to those ports

      /**
       * @brief A Three Wire Port that is labeled as A on the Brain.
      */               
      port  &A = Port[0];
      /**
       * @brief A Three Wire Port that is labeled as B on the Brain.
      */
      port  &B = Port[1];
      /**
       * @brief A Three Wire Port that is labeled as C on the Brain.
      */
      port  &C = Port[2];
      /**
       * @brief A Three Wire Port that is labeled as D on the Brain.
      */
      port  &D = Port[3];
      /**
       * @brief A Three Wire Port that is labeled as E on the Brain.
      */
      port  &E = Port[4];
      /**
       * @brief A Three Wire Port that is labeled as F on the Brain.
      */
      port  &F = Port[5];
      /**
       * @brief A Three Wire Port that is labeled as G on the Brain.
      */
      port  &G = Port[6];
      /**
       * @brief A Three Wire Port that is labeled as H on the Brain.
      */
      port  &H = Port[7];
  };
  /** 
    * @brief Base class that allows access to Three Wire Port functions and members.
  */
  class __tridevice {
      protected:
        triport::port   &_port;

        int32_t   _convertAnalog( analogUnits units );
        int32_t   _virtual_value( int32_t virtual_port );
        
        int32_t   _index();
        int32_t   _id();

        mevent &_PRESSED   = _port.PRESSED;
        mevent &_RELEASED  = _port.RELEASED;
        mevent &_CHANGED   = _port.CHANGED;
        mevent &_HIGH      = _port.HIGH;
        mevent &_LOW       = _port.LOW;
                
      public:
        __tridevice( triport::port &port, triportType type );
      protected:
        ~__tridevice();

  };
  /** 
    * @brief Use this class when programming with the limit switch
  */
  class limit : private __tridevice {
      public:

       /**
        * @brief Creates a new limit object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        limit( triport::port &port );
        ~limit();
        
        /**
         * @brief Gets the value of the limit switch
         * @return Returns an integer that represents the value of the limit switch.
        */
        int32_t   value();

        /**
         * @brief Gets the state of the limit switch.
         * @return Returns the state of the limit switch. 
        */
        int32_t   pressing() { return value(); };

        /**
         * @brief Calls a function when the limit switch is pressed.
         * @param callback A reference to a function.
         */
        void      pressed( void (* callback)(void) );

        /**
         * @brief Calls a function when the limit switch is released.
         * @param callback A reference to a function.
         */
        void      released( void (* callback)(void) );

        operator int();
        operator bool();
        
        mevent &PRESSED   = _PRESSED;
        mevent &RELEASED  = _RELEASED;
  };
  /** 
    * @brief Use this class when programming with the bumper device
  */
  class bumper : private __tridevice {
      public:
       /**
        * @brief Creates a new bumper switch object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        bumper( triport::port &port );
        ~bumper();
        
        /**
         * @brief Gets the value of the bumper switch.
         * @return Returns an integer that represents the value of the bumper switch. 
         */
        int32_t   value();

        /**
         * @brief Get the pressed status of the bumper switch.
         * @return Returns the state of the bumper switch. If it is pressed it will return a one. If unpressed, it will return a zero.
         */
        int32_t   pressing() { return value(); };

        /**
         * @brief Calls a function when the bumper switch is pressed.
         * @param callback A reference to a function.
         */
        void      pressed( void (* callback)(void) );

        /**
         * @brief Calls a function when the bumper switch is released.
         * @param callback A reference to a function.
         */
        void      released( void (* callback)(void) );

        operator int();
        operator bool();

        mevent &PRESSED   = _PRESSED;
        mevent &RELEASED  = _RELEASED;
  };  
  /**
    * @brief Use this class when programming with a digital-in device
  */
  class digital_in : private __tridevice {
      public:

        /**
        * @brief Creates a new digital_in object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        digital_in( triport::port &port );
        ~digital_in();
        
        /**
         * @brief Gets the value of the digital_in device.
         * @return Returns an integer that represents the value of the digital-in device.
         */
        int32_t   value();

        /**
         * @brief Calls a function when the digital input goes high.
         * @param callback A reference to a function.
         */
        void      high( void (* callback)(void) );

        /**
         * @brief Calls a function when the digital input goes low.
         * @param callback A reference to a function.
         */
        void      low( void (* callback)(void) );

        operator int();
        operator bool();

        // digital in needs inversion
        // ADI inverts digital inputs so switch press is seen as high
        mevent  &HIGH     = _LOW;
        mevent  &LOW      = _HIGH;
  };
  /**
    * @brief Use this class when programming with a digital-out device.
  */
  class digital_out : private __tridevice {
      public:

        /**
        * @brief Creates a new digital_out object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        digital_out( triport::port &port );
        ~digital_out();
        
        /**
         * @brief Gets the value of the digital_out device.
         * @return Returns an integer that represents the value of the digital-out device.
         */
        int32_t   value();

        /**
         * @brief Sets the digital_out device to a Boolean value.
         * @param value A true or false Boolean value.
         */
        void      set( bool value );
        operator int();
        operator bool();

        /**
         * @brief Sets the output value of the digital_out device.
         * @param value The value to set the digital_out device. Typically 1 or 0.
         */
        void operator=( const int32_t value );
  };

  /**
    * @brief Use this class when programming with a led device.
  */
  class led : public digital_out {
      public:

        /**
        * @brief Creates a new led object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        led( triport::port &port );
        ~led();
        
        /**
         * @brief Sets the led device to the on state.
         */
        void      on();

        /**
         * @brief Sets the led device to the off state.
         */
        void      off();
  };

  /**
    * @brief Use this class when programming with a pneumatics device.
  */
  class pneumatics : public digital_out {
      public:

        /**
        * @brief Creates a new pneumatics object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        pneumatics( triport::port &port );
        ~pneumatics();
        
        /**
         * @brief Sets the pneumatics device to the solenoid open state allowing air to flow into the cylinder.
         */
        void      open();

        /**
         * @brief Sets the pneumatics device to the solenoid close state stopping air flowing into the cylinder.
         */
        void      close();
  };
    
  // Analog sensors
  /** 
    * @brief Use this class when programming with a potentiometer.
  */
  class pot : private __tridevice {
      public:

        /**
        * @brief Creates a new pot object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        pot( triport::port &port );
        ~pot();
        
        /**
         * @brief Gets the value of the potentiometer in the units defined in the parameter.
         * @return Returns an integer that represents the unit value specified by the parameter of the potentiometer device.
         * @param units The measurement unit for the potentiometer device. 
         */
        int32_t   value( analogUnits units );

        /**
         * @brief Gets the value of the potentiometer in the units defined in the parameter.
         * @return Returns an integer that represents the unit value specified by the parameter of the potentiometer device.
         * @param units The measurement unit for the potentiometer device. 
         */
        int32_t   value( percentUnits units ) {
          return value( analogUnits::pct );
        };

        int32_t   angle( percentUnits units = percentUnits::pct ) {
          return value( units );
        };

        /**
         * @brief Gets the value of the potentiometer in the units defined in the parameter.
         * @return Returns an integer that represents the unit value specified by the parameter of the potentiometer device.
         * @param units The measurement unit for the potentiometer device.
         */
        double    value( rotationUnits units );

        double    angle( rotationUnits units ) {
          return value( units );
        };

        /**
         * @brief Calls a function when the potentiometer value changes.
         * @param callback A reference to a function.
         */
        void      changed( void (* callback)(void) );

        mevent &CHANGED   = _CHANGED;
  };
  /** 
    * @brief Use this class when programming with a continuous rotation potentiometer.
  */
  class potV2 : private __tridevice {
      public:

       /**
        * @brief Creates a new pot object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        potV2( triport::port &port );
        ~potV2();
        
        /**
         * @brief Gets the value of the potentiometer in the units defined in the parameter.
         * @return Returns an integer that represents the unit value specified by the parameter of the potentiometer device.
         * @param units The measurement unit for the potentiometer device. 
         */
        int32_t   value( analogUnits units );

        /**
         * @brief Gets the value of the potentiometer in the units defined in the parameter.
         * @return Returns an integer that represents the unit value specified by the parameter of the potentiometer device.
         * @param units The measurement unit for the potentiometer device. 
         */
        int32_t   value( percentUnits units ) {
          return value( analogUnits::pct );
        };

        int32_t   angle( percentUnits units = percentUnits::pct ) {
          return value( units );
        };

        /**
         * @brief Gets the value of the potentiometer in the units defined in the parameter.
         * @return Returns an integer that represents the unit value specified by the parameter of the potentiometer device.
         * @param units The measurement unit for the potentiometer device.
         */
        double    value( rotationUnits units );

        double    angle( rotationUnits units ) {
          return value( units );
        };

        /**
         * @brief Calls a function when the potentiometer value changes.
         * @param callback A reference to a function.
         */
        void      changed( void (* callback)(void) );

        mevent &CHANGED   = _CHANGED;
  };
  /** 
    * @brief Use this class when programming with a line follower.
  */  
  class line : private __tridevice {
      public:

        /**
        * @brief Creates a new line object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        line( triport::port &port );
        ~line();
        /**
         * @brief Gets the value of the line follower.
         * @return Returns an integer that represents the unit value specified by the parameter of the line follower.
         * @param units The measurement unit for the line device. 
         */
        int32_t   value( analogUnits units );

        int32_t   reflectivity( percentUnits units = percentUnits::pct );
        
        /**
         * @brief Gets the value of the line follower.
         * @return Returns an integer that represents the unit value specified by the parameter of the line follower.
         * @param units The measurement unit for the line device. 
         */
        int32_t   value( percentUnits units ) {
          return value( analogUnits::pct );
        };

        /**
         * @brief Calls a function when the line sensor value changes.
         * @param callback A reference to a function.
         */
        void      changed( void (* callback)(void) );

        mevent &CHANGED   = _CHANGED;
  };
  /**
    * @brief Use this class when programming with a light sensor.
  */  
  class light : private __tridevice {
      public:

        /**
        * @brief Creates a new light object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        light( triport::port &port );
        ~light();

        /**
         * @brief Gets the value of the light sensor.
         * @return Returns an integer that represents the unit value specified by the parameter of the light sensor.
         * @param units The measurement unit for the light device.
         */
        int32_t   value( analogUnits units );

        int32_t   brightness( percentUnits units = percentUnits::pct );

        /**
         * @brief Gets the value of the light sensor.
         * @return Returns an integer that represents the unit value specified by the parameter of the light sensor.
         * @param units The measurement unit for the light device.
         */
        int32_t   value( percentUnits units ) {
          return value( analogUnits::pct );
        };

        /**
         * @brief Calls a function when the light sensor value changes.
         * @param callback A reference to a function.
         */
        void      changed( void (* callback)(void) );

        mevent &CHANGED   = _CHANGED;
  };
  /** 
    * @brief Use this class when programming with a gyro sensor.
  */
  class gyro : private __tridevice, public guido {
      private:
        int32_t         _offset_h;
        int32_t         _offset_r;
        uint32_t        _cal_delay;
          
      public:

        /**
        * @brief Creates a new gyro object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        gyro( triport::port &port );
        ~gyro();
        
        /**
         * @brief Gets the value of the gyro sensor.
         * @return Returns an integer that represents the unit value specified by the parameter of the gyro sensor.
         * @param units The measurement unit for the gyro device.
         */
        int32_t   value( analogUnits units );

        /**
         * @brief Gets the value of the gyro sensor.
         * @return Returns an integer that represents the unit value specified by the parameter of the gyro sensor.
         * @param units The measurement unit for the gyro device.
         */
        double    value( rotationUnits units );

        /**
         * @brief Gets the value of the gyro sensor.
         * @return Returns an integer that represents the unit value specified by the parameter of the gyro sensor.
         * @param units The measurement unit for the gyro device.
         */
        int32_t   value( percentUnits units ) {
          return value( analogUnits::pct );
        };

        /**
         * @brief Starts recalibration of the gyro.
         * @param value (Optional) Sets the amount of calibration time. By default, this parameter is zero.
         */
        void      startCalibration( int32_t value = 0 );

        void      calibrate( int32_t value = 0 ) {
          startCalibration( value );
        }

        /**
         * @brief Returns true while the gyro sensor is performing a requested recalibration, changing to false once recalibration has completed.
         * @return Returns true if gyro is still calibrating.
         */
        bool      isCalibrating();
                
        /**
         * @brief Calls a function when the gyro sensor value changes.
         * @param callback A reference to a function.
         */
        void      changed( void (* callback)(void) );

        /**
         * @brief reset the gyro sensor angle to 0
         */
        void      resetAngle();

        /**
         * @brief reset the gyro sensor angle to 0
         */
        void      resetHeading();

        /**
         * @brief reset the gyro sensor absolute angle to 0
         */
        void      resetRotation();
        
        /**
         * @brief reset the gyro sensor angle to angle
         * @param value The new angle for the gyro
         * @param units The rotation unit for the angle
         */
        void      resetAngle( double value, rotationUnits units );

        /**
         * @brief reset the gyro sensor angle to angle
         * @param value The new heading for the gyro
         * @param units The rotation unit for the angle
         */
        void      setHeading( double value, rotationUnits units );

        /**
         * @brief Gets the angle of the gyro sensor.
         * @return Returns a double that represents the unit value specified by the parameter of the gyro sensor.
         * @param units The measurement unit for the gyro device.
         */
        double    angle( rotationUnits units = rotationUnits::deg );

        /**
         * @brief Gets the angle of the gyro sensor.
         * @return Returns a double that represents the unit value specified by the parameter of the gyro sensor.
         * @param units The measurement unit for the gyro device.
         */
        double    heading( rotationUnits units = rotationUnits::deg );

        /**
         * @brief Gets the rotation (absolute angle) of the gyro sensor.
         * @return Returns a double that represents the unit value specified by the parameter of the gyro sensor.
         * @param units The measurement unit for the gyro device.
         */
        double    rotation( rotationUnits units = rotationUnits::deg );

        /**
         * @brief set the gyro sensor rotation to angle
         * @param value The new absolute angle for the gyro
         * @param units The rotation unit for the angle
         */
        void      setRotation( double value, rotationUnits units );

        /**
         * @brief Get direction for positive angles
         * @return turnType::right or turnType::left
         */
        turnType        getTurnType();

        mevent &CHANGED   = _CHANGED;
  };
  /** 
    * @brief Use this class when programming with an accelerometer sensor.
  */  
  class accelerometer : private __tridevice {
      public:

        /**
        * @brief Creates a new accelerometer object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        accelerometer( triport::port &port, bool bHighSensitivity = false  );
        ~accelerometer();
        /**
         * @brief Gets the value of the accelerometer.
         * @return Returns an integer that represents the unit value specified by the parameter of the accelerometer sensor.
         * @param units The measurement unit for the accelerometer device.
         */
        int32_t   value( analogUnits units );

        /**
         * @brief Gets the value of the accelerometer.
         * @return Returns an integer that represents the unit value specified by the parameter of the accelerometer sensor.
         * @param units The measurement unit for the accelerometer device. 
         */
        int32_t   value( percentUnits units ) {
          return value( analogUnits::pct );
        };

        /**
         * @brief Gets the value of the accelerometer in G.
         * @return Returns a double that represents the acceleration in G of the accelerometer sensor.
         */
        double    acceleration();
        
        /**
         * @brief Calls a function when the accelerometer value changes.
         * @param callback A reference to a function.
         */
        void      changed( void (* callback)(void) );

        mevent &CHANGED   = _CHANGED;
        
        private:
          bool    highSensitivity;
  };
  /** 
    * @brief Use this class when programming with an analog-in device.
  */    
  class analog_in : private __tridevice {
      public:

        /**
        * @brief Creates a new analog-in object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        analog_in( triport::port &port );
        ~analog_in();
        
        /**
         * @brief Gets the value of the analog-in device.
         * @return Returns an integer that represents the unit value specified by the parameter of the analog-in device.
         * @param units The measurement unit for the analog-in device. 
         */
        int32_t   value( analogUnits units );
        /**
         * @brief Gets the value of the analog-in device.
         * @return Returns an integer that represents the unit value specified by the parameter of the analog-in device.
         * @param units The measurement unit for the analog-in device.
         */
        int32_t   value( percentUnits units ) {
          return value( analogUnits::pct );
        };

        /**
         * @brief Calls a function when the analog input value changes.
         * @param callback A reference to a function.
         */
        void      changed( void (* callback)(void) );

        mevent &CHANGED   = _CHANGED;
  };  
  /** 
    * @brief Use this class when programming with an encoder.
  */   
  class encoder : private __tridevice {
      public:

        /**
        * @brief Creates a new encoder object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        encoder( triport::port &port );
        ~encoder();
        
        /**
         * @brief Gets the value of the encoder.
         * @return Returns an integer that represents the value of the encoder device.
         */
        int32_t   value();
        operator int();
        
         /**
           * @brief Resets the rotation of the encoder to zero.
           */
        void    resetRotation( void );

        /**
          * @brief Sets the rotation of the encoder to a specific value.
          * @param val Sets the amount of rotation.
          * @param units The measurement unit for the rotation value.
          */
        void    setRotation( double val, rotationUnits units );

        void    setPosition( double val, rotationUnits units );

        /**
         * @brief Gets the rotation value of the encoder.
         * @return Returns a double that represents the current rotation of the encoder.
         * @param units The measurement unit for the encoder device.
         */
        double  rotation( rotationUnits units );

        double  position( rotationUnits units );

        /**
         * @brief Gets the velocity of the encoder.
         * @return Returns a double that represents the current velocity of the encoder.
         * @param units The measurement unit for the encoder device.
         */
        double  velocity( velocityUnits units );

        /**
         * @brief Calls a function when the encoder value changes.
         * @param callback A reference to a function.
         */
        void      changed( void (* callback)(void) );

        mevent &CHANGED   = _CHANGED;
  };
  /** 
    * @brief Use this class when programming with a sonar sensor.
  */     
  class sonar : private __tridevice {
      public:

        /**
        * @brief Creates a new sonar object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        sonar( triport::port &port );
        ~sonar();
        
        /**
         * @brief Gets the value of the distance sensor.
         * @return Returns an integer that represents the value of the sonar sensor.  
         */
        int32_t   value();
        operator int();

        /**
         * @brief Gets the value of the sonar sensor.
         * @return Returns an integer that represents the unit value specified by the parameter of the sonar sensor. 
         * @param units The measurement unit for the sonar device.
         */
        double  distance( distanceUnits units );

        /**
         * @brief Calls a function when the sonar value changes.
         * @param callback A reference to a function.
         */
        void      changed( void (* callback)(void) );

        mevent &CHANGED   = _CHANGED;        

        // settings
        void      setMaximum( double distance, distanceUnits units );
        /**
         * @brief Gets an object is present in front of the sonar sensor
         * @return Returns a boolean that will be true if the sonar sensor is detecting an object.
         */
        bool      foundObject();    
        
      private:
        uint32_t  _maxdistance;
        uint32_t  _mindistance;

        void      setMinimum( double distance, distanceUnits units );
  };  
  /** 
    * @brief Use this class when programming with a pwm-out device.
  */
  class pwm_out : private __tridevice {
      public:

        /**
        * @brief Creates a new pwm-out object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        pwm_out( triport::port &port );
        ~pwm_out();
        
        /**
         * @brief Sets the state of the pwm device.
         * @param value Sets the length of the pulse width.
         * @param units The measurement unit for the state value.
         */
        void state( int32_t value, percentUnits units );
  };
  /** 
    * @brief Use this class when programming with a servo device.
  */
  class servo : private __tridevice {
      public:

        /**
        * @brief Creates a new servo object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        servo( triport::port &port );
        ~servo();
        
        /**
         * @brief Sets the position of the servo device.
         * @param value Sets the amount of rotation.
         * @param units The measurement unit for the rotation value.
         */
        void setPosition( int32_t value, percentUnits units );

        /**
         * @brief Sets the position of the servo device.
         * @param value Sets the amount of rotation.
         * @param units The measurement unit for the rotation value.
         */
        void setPosition( double value, rotationUnits units );
    
        /**
        * @brief Sets the position of the servo device.
        * @param value Sets the amount of rotation.
        * @param units The measurement unit for the rotation value.
        */
        void startRotateTo( int32_t value, percentUnits units ){
          setPosition(value, units);
        }

        /**
        * @brief Sets the position of the servo device.
        * @param value Sets the amount of rotation.
        * @param units The measurement unit for the rotation value.
        */
        void startRotateTo( double value, rotationUnits units ){
          setPosition(value, units);
        }
  };
  /** 
    * @brief Use this class when programming a motor connected to a motor controller 29.
  */
  class motor29 : private __tridevice {
      private:
        bool    _reversed;
        int32_t _velocity;
        bool    _spinMode;

      public:

        /**
        * @brief Creates a new motor29 object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        motor29( triport::port &port );

        /**
        * @brief Creates a new motor29 object on the port specified in the parameter.
        * @param port A reference to a three wire port.
        * @param reverse Sets the reverse flag for the new motor29 object.
       */
        motor29( triport::port &port, bool reverse );
        ~motor29();
        
        /**
         * @brief Sets the velocity of the motor based on the parameters set in the command. This command will not run the motor.  Any subsequent call that does not contain a specified motor velocity will use this value.
         * @param velocity Sets the amount of velocity.
         * @param units The measurement unit of the velocity value. 
         */
        void setVelocity( double velocity, percentUnits units );

        /** 
         * @brief Sets the motor mode to "reverse", which will make motor commands spin the motor in the opposite direction.
         * @param value If set to true, the motor will spin in the reversed direction.
         */
        void setReversed( bool value );
        
        /** 
         * @brief Turns the motor on, and spins it in the specified direction.
         * @param dir The direction to spin the motor.
         */
        void spin( directionType dir );

        /**
         * @brief Turns on the motor and spins it in a specified direction and a specified velocity.
         * @param dir The direction to spin the motor. 
         * @param velocity Sets the amount of velocity.
         * @param units The measurement unit of the velocity value. 
        */
        void spin( directionType dir, double velocity, velocityUnits units );

        void spin( directionType dir, double velocity, percentUnits units ){
            spin( dir, velocity, static_cast<velocityUnits>(units) );
        };
        
        /** 
         * @brief Stops the motor using the default brake mode.
         */
        void stop( void );
  };
  /** 
    * @brief Use this class when programming with a motor connected to a victor motor controller.
  */
  class motor_victor : private __tridevice {
      private:
        bool    _reversed;
        int32_t _velocity;
        bool    _spinMode;

      public:

        /**
        * @brief Creates a new motor victor object on the port specified in the parameter.
        * @param port A reference to a three wire port.
       */
        motor_victor( triport::port &port );

        /**
        * @brief Creates a new motor victor object on the port specified in the parameter.
        * @param port A reference to a three wire port.
        * @param reverse Sets the reverse flag for the new motor_victor object.
       */
        motor_victor( triport::port &port, bool reverse );
        ~motor_victor();
        
        /**
         * @brief Sets the velocity of the motor based on the parameters set in the command. This command will not run the motor.  Any subsequent call that does not contain a specified motor velocity will use this value.
         * @param velocity Sets the amount of velocity.
         * @param units The measurement unit of the velocity value. 
         */
        void setVelocity( double velocity, percentUnits units );

        /** 
         * @brief Sets the motor mode to "reverse", which will make motor commands spin the motor in the opposite direction.
         * @param value If set to true, the motor will spin in the reversed direction.
         */
        void setReversed( bool value );
        
        /** 
         * @brief Turns the motor on, and spins it in the specified direction.
         * @param dir The direction to spin the motor.
         */
        void spin( directionType dir );

        /**
         * @brief Turns on the motor and spins it in a specified direction and a specified velocity.
         * @param dir The direction to spin the motor. 
         * @param velocity Sets the amount of velocity.
         * @param units The measurement unit of the velocity value. 
        */
        void spin( directionType dir, double velocity, velocityUnits units );

        void spin( directionType dir, double velocity, percentUnits units ){
            spin( dir, velocity, static_cast<velocityUnits>(units) );
        };
        
        /** 
         * @brief Stops the motor using the default brake mode.
         */
        void stop( void );
    };

};

#endif  // VEX_TRIPORT_CLASS_H
#pragma once
/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2017-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_units.h                                                 */
/*    Author:     James Pearman                                               */
/*    Created:    5 July 2017                                                 */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_UNITS_H
#define   VEX_UNITS_H

#include "v5_apitypes.h"

// fix issue with some builds (windows simulation build)
#if defined(small)
#undef small
#endif

/*-----------------------------------------------------------------------------*/
/** @file    vex_units.h
  * @brief   Header for global units
*//*---------------------------------------------------------------------------*/

namespace vex {
    /**
     @brief The measurement units for percentage values.
    */
    enum class percentUnits {
      /** @brief A percentage unit that represents a value from 0% to 100% */
      pct = 0
    };
    /**
     @brief The measurement units for time values.
    */
    enum class timeUnits {
      /** @brief A time unit that is measured in seconds.*/
      sec,
      /** @brief A time unit that is measured in milliseconds.*/
      msec
    };
    /**
     @brief The measurement units for current values.
    */
    enum class currentUnits {
      /** @brief A current unit that is measured in amps.*/
      amp
    };
    /**
     @brief The measurement units for voltage values.
    */
    enum class voltageUnits {
      /** @brief A voltage unit that is measured in volts.*/
      volt,
      /** @brief The measurement units for power values millivolts.*/
      mV
    };
    /**
     @brief The measurement units for power values.
    */
    enum class powerUnits {
      /** @brief A power unit that is measured in watts.*/
      watt
    };
    /**
     @brief The measurement units for torque values.
    */
    enum class torqueUnits {
      /** @brief A torque unit that is measured in Newton Meters.*/
      Nm,
      /** @brief A torque unit that is measured in Inch Pounds.*/
      InLb
    };
    /**
     @brief The measurement units for rotation values.
    */
    enum class rotationUnits {
      /** @brief A rotation unit that is measured in degrees.*/
      deg,
      /** @brief A rotation unit that is measured in revolutions.*/
      rev,
      /** @brief A rotation unit that is measured in raw data form.*/
      raw = 99
    };
    /**
     @brief The measurement units for velocity values.
    */
    enum class velocityUnits {
      /** @brief A velocity unit that is measured in percentage.*/
      pct = (int)percentUnits::pct,
      /** @brief A velocity unit that is measured in rotations per minute.*/
      rpm,
      /** @brief A velocity unit that is measured in degrees per second.*/
      dps
    };
    /**
     @brief The measurement units for distance values.
    */
    enum class distanceUnits {
      /** @brief A distance unit that is measured in millimeters.*/
      mm,
      /** @brief A distance unit that is measured in inches.*/
      in,
      /** @brief A distance unit that is measured in centimeters.*/
      cm
    };
    /**
     @brief The measurement units for analog values.
    */
    enum class analogUnits {
      /** @brief An analog unit that is measured in percentage.*/
      pct = (int)percentUnits::pct,
      /** @brief An analog unit that is measured in an 8-bit analog value (a value with 256 possible states).*/
      range8bit,
      /** @brief An analog unit that is measured in a 10-bit analog value (a value with 1024 possible states).*/
      range10bit,
      /** @brief An analog unit that is measured in a 12-bit analog value (a value with 4096 possible states).*/
      range12bit,
      /** @brief An analog unit that is measured in millivolts.*/
      mV
    };
    /**
     @brief The measurement units for temperature values.
    */
    enum class temperatureUnits {
      /** @brief A temperature unit that is measured in celsius.*/
      celsius,
      /** @brief A temperature unit that is measured in fahrenheit.*/
      fahrenheit
    };
    
    // Motor related
    /**
     @brief The defined units for direction values.
    */
    enum class directionType {
      /** @brief A direction unit that is defined as forward.*/
      fwd = 0,
      /** @brief A direction unit that is defined as backward.*/
      rev,
      undefined
    };

    /**
     @brief The defined units for turn values.
    */
    enum class turnType {
      /** @brief A turn unit that is defined as left turning.*/
      left,
      /** @brief A turn unit that is defined as right turning.*/
      right
      };
        
    /**
     @brief The defined units for brake values.
    */
    enum class brakeType {
      /** @brief A brake unit that is defined as coast.*/
      coast = kV5MotorBrakeModeCoast,
      /** @brief A brake unit that is defined as brake.*/
      brake = kV5MotorBrakeModeBrake,
      /** @brief A brake unit that is defined as hold.*/
      hold  = kV5MotorBrakeModeHold,
      undefined
    } ;
    /**
     @brief The defined units for gear values.
    */
    enum class gearSetting {
      /** @brief A gear unit that is defined as the red 36:1 gear cartridge used in V5 Smart Motors.*/
      ratio36_1 = kMotorGearSet_36,
      /** @brief A gear unit that is defined as the green 18:1 gear cartridge used in V5 Smart Motors.*/
      ratio18_1 = kMotorGearSet_18,
      /** @brief A gear unit that is defined as the blue 6:1 gear cartridge used in V5 Smart Motors.*/
      ratio6_1  = kMotorGearSet_06
    };
    
    // Brain/LCD related
    /**
     @brief The defined units for font values.
    */
    enum class fontType {
      /** @brief A font unit that is defined as mono20.*/
      mono20 = 0,
      /** @brief A font unit that is defined as mono30.*/
      mono30,
      /** @brief A font unit that is defined as mono40.*/
      mono40,
      /** @brief A font unit that is defined as mono60.*/
      mono60,
      /** @brief A font unit that is defined as prop20.*/
      prop20,
      /** @brief A font unit that is defined as prop30.*/
      prop30,
      /** @brief A font unit that is defined as prop40.*/
      prop40,
      /** @brief A font unit that is defined as prop60.*/
      prop60,

      // not in spec
      /** @brief A font unit that is defined as mono15.*/
      mono15,
      /** @brief A font unit that is defined as mono12.*/
      mono12,
      /** @brief A font unit that is defined as cjk16.*/      
      cjk16
    };                    

    // triport
    /**
     @brief The defined units for triport devices.
    */
    enum class triportType {
      /** @brief A triport unit that is defined as an analog input.*/
      analogInput,
      /** @brief A triport unit that is defined as an analog output.*/
      analogOutput,
      /** @brief A triport unit that is defined as a digital input.*/
      digitalInput,
      /** @brief A triport unit that is defined as a digital output.*/
      digitalOutput,

      /** @brief A triport unit that is defined as a button.*/
      button,
      /** @brief A triport unit that is defined as a potentiometer.*/
      potentiometer,
      /** @brief A triport unit that is defined as a line sensor.*/
      lineSensor,
      /** @brief A triport unit that is defined as a light sensor.*/
      lightSensor,   
      /** @brief A triport unit that is defined as a gyro.*/
      gyro, 
      /** @brief A triport unit that is defined as an accelerometer.*/
      accelerometer,
      
      /** @brief A triport unit that is defined as a motor.*/
      motor,
      /** @brief A triport unit that is defined as a servo.*/
      servo,
      
      /** @brief A triport unit that is defined as a quadrature encoder.*/
      quadEncoder,
      /** @brief A triport unit that is defined as a sonar.*/
      sonar,
      
      /** @brief A triport unit that is defined as a motor with slew rate control.*/
      motorS,
    };

    /**
     @brief The defined units for controller devices.
    */
    enum class controllerType {
      /** @brief A controller unit defined as a primary controller.*/
      primary = kControllerMaster,
      /** @brief A controller unit defined as a partner controller.*/
      partner = kControllerPartner
    };

    /**
     @brief The defined units for inertial sensor axis.
    */
    enum class axisType {
      xaxis,
      yaxis,
      zaxis
    };

    /**
     @brief The defined units for inertial sensor orientation.
    */
    enum class orientationType {
      roll,
      pitch,
      yaw
    };

    /**
     @brief The defined units for distance sensor object size.
    */
    enum class sizeType {
      none,
      small,
      medium,
      large
    };
    
    /**
     @brief The defined units for optical sensor led state.
    */
    enum class ledState {
      off,
      on
    };
    
    /**
     @brief The defined units for optical sensor gesture types.
    */
    enum class gestureType {
      none,
      up,
      down,
      left,
      right
    };
    
    /**
     @brief The defined units for vexlink types.
    */
    enum class linkType {
      undefined,
      /** @brief A vexlink type that is defined as the manager radio. */
      manager,
      /** @brief A vexlink type that is defined as the worker radio. */
      worker,
      /** @brief A vexlink type that is defined as a raw unmanaged link. */      
      raw
    };
};

#endif // VEX_UNITS_H/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2019, All rights reserved.               */
/*                                                                            */
/*    Module:     vex_vexlink.h                                               */
/*    Author:     James Pearman                                               */
/*    Created:    5 Nov 2019                                                  */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_VEXLINK_CLASS_H
#define   VEX_VEXLINK_CLASS_H

/*-----------------------------------------------------------------------------*/
/** @file    vex_vexlink.h
  * @brief   Radio/vexlink device class header
*//*---------------------------------------------------------------------------*/

namespace vex {
  class vexlink : public device {
    public:      
      vexlink( int32_t index, const char *name, linkType type, bool isWired = false );  
      virtual ~vexlink();

      bool            installed();

      bool            isLinked();

      bool            isReceiving();

    protected:
      vexlink( int32_t index );  

      enum class tEventType {
        EVENT_DATA_RECEIVED    =  0,
        EVENT_MSG_RECEIVED     =  1
      };
    
      static const uint32_t max_buffer   = 512;
      static const uint32_t max_name_len = 128;

      // configuration of this link
      linkType _type;
      bool     _isWired;
      
      // single event handler
      bool     _eventAdded;
      
      // temporary storage
      uint8_t  _txbuffer[ max_buffer ];
      uint8_t  _rxbuffer[ max_buffer ];

      // storage for link name
      uint8_t  _linkname[ max_name_len ];

      // set these to point at functions that implement
      // the necessary functionality.

      // rx functions
      int32_t (* _avail)( uint32_t index );
      int32_t (* _peek)( uint32_t index );
      int32_t (* _read)( uint32_t index );
      int32_t (* _receive)( uint32_t index, uint8_t *buffer, int32_t length );

      // tx functions
      int32_t (* _free)( uint32_t index );
      int32_t (* _write)( uint32_t index, uint8_t c );
      int32_t (* _transmit)( uint32_t index, uint8_t *buffer, int32_t length );
                  
      int32_t debug( int32_t id );
      
      void    baud( int32_t baudrate );
      
      static  uint32_t _crc32_table[256];
      static  uint32_t  crc32( uint8_t *pData, uint32_t numberOfBytes, uint32_t accumulator );
      static  uint32_t  strcrc32( const char *str );
  };

  /** 
   * @brief Use the serial_link class to send raw data bytes between vexlink devices
  */
  class serial_link : public vexlink {
    public:
      /** 
       * @brief Creates a new serial_link object on the port specified.
       * @param index The port index for this serial_link. The index is zero-based.
       */
      serial_link( int32_t index, const char *name, linkType type, bool isWired = false );  
      ~serial_link();
    
      int32_t     send( uint8_t *buffer, int32_t length );
      int32_t     send( const char *buffer, int32_t length ) {
          return send( (uint8_t *)buffer, length );
      }

      int32_t     receive( uint8_t *buffer, int32_t length, int32_t timeoutMs = 500 );
      
      void        received( void (* callback)(uint8_t *, int32_t) );

    private:
      static void _eventHandler(void *arg);
      void        _eventHandler();

      void     (* _callback)(uint8_t *, int32_t);
  };
 
  /** 
   * @brief Use the message_link class to send strings between vexlink devices
  */
  class message_link : public vexlink {
    public:
      /** 
       * @brief Creates a new message_link object on the port specified.
       * @param index The port index for this message_link. The index is zero-based.
       */
      message_link( int32_t index, const char *name, linkType type, bool isWired = false );  
      ~message_link();
    
      int32_t     send( const char *message );      
      int32_t     send( const char *message, double value );
      int32_t     send( const char *message, int32_t index, double value );

      int32_t     receive( char *message, int32_t length, int32_t timeoutMs = 500 );
            
      void        received( void (* callback)(const char *, const char *, double) );
      void        received( void (* callback)(const char *, const char *, int32_t, double) );

      void        received( const char *message, void (* callback)(const char *, const char *, double) );
      void        received( const char *message, void (* callback)(const char *, const char *, int32_t, double) );
      
    protected:
      class data {
        public:
          const char *linkname;
          double      value;
          int32_t     index;
          uint32_t    time;
          int32_t     count;
      };
      
      void        received( void (* callback)(const char *, data& data) );
    
    private:
      static void _eventHandler(void *arg);
      void        _eventHandler();

      typedef     void (* tCallback_1)(const char *, const char *, double);
      typedef     void (* tCallback_2)(const char *, const char *, int32_t, double);
      typedef     void (* tCallback_3)(const char *, data& data);

      const uint8_t id_dbl      = 1;
      const uint8_t id_idx_dbl  = 2;
      
      void       *_callback;
      int32_t     _callback_type;
      
      data        _data;

      static const int32_t max_message_handlers   = 512;
      
      struct _messageHandlers {
        uint32_t  hash;
        void     *callback;
        int32_t   callback_type;
      } _messages[ max_message_handlers ];
      
      int32_t   _message_index;          

      void      _addMessageHandler( const char *message, void * callback, int32_t type );
  };
};

#endif // VEX_VEXLINK_CLASS_H/*----------------------------------------------------------------------------*/
/*                                                                            */
/*    Copyright (c) Innovation First 2017-2019, All rights reserved.          */
/*                                                                            */
/*    Module:     vex_vision.h                                                */
/*    Author:     James Pearman                                               */
/*    Created:    30 June 2017                                                */
/*                                                                            */
/*    Revisions:                                                              */
/*                V1.00     TBD - Initial release                             */
/*                                                                            */
/*----------------------------------------------------------------------------*/

#ifndef   VEX_VISION_CLASS_H
#define   VEX_VISION_CLASS_H
#include "v5_apitypes.h"
#include "vex_device.h"
#include <stdint.h>

/*-----------------------------------------------------------------------------*/
/** @file    vex_vision.h
  * @brief   Vision sensor device class header
*//*---------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------*/
/** @brief Vision sensor device class                                          */
/*-----------------------------------------------------------------------------*/
namespace vex {
  /** 
    * @brief Use this class when programming the vision sensor.
  */
  class vision : public device {
    private:
      #define VISION_MAX_OBJECTS               16
      #define VISION_DEFAULT_SNAPSHOT_OBJECTS   8
      
      // Variadic template for signature setting
      void _setsig() {};
      template <typename signature, typename... Args>
      void _setsig( signature &sig, Args &... args ) {
        setSignature( sig );
        _setsig( args... );
      }
            
    public:

     /** 
      * @brief Creates a new vision object on the port specified.
      * @param index The port index for this vision. The index is zero-based.
      */  
      vision( int32_t index );  
      ~vision();

     /** 
      * @brief Creates a new vision object on the port specified. Sets the brightness setting and all of the vision objects settings.
      * @param index The port index for this vision. The index is zero-based.
      * @param bright The vision sensor brightness setting. Values are 0 to 255
      * @param sigs List of signature objects used to setup the detection signatures for this sensor.
      */
      template <typename... Args>
      vision( int32_t index, uint8_t bright, Args &... sigs  ) : vision( index ) {
        setBrightness( bright );
        _setsig( sigs... );
      }
       
      bool            installed();
      int32_t         value();

      enum class detectionMode {
        objectDetect = kVisionModeNormal,
        mixedDetect  = kVisionModeMixed,
        lineDetect   = kVisionModeLineDetect,
        test         = kVisionTypeTest
      };
      
      enum class whiteBalanceMode {
        automatic    = kVisionWBNormal,
        start        = kVisionWBStart,
        manual       = kVisionWBManual
      };

      enum class ledMode {
        automatic    = kVisionLedModeAuto,
        manual       = kVisionLedModeManual
      };

      enum class wifiMode {
        off          = kVisionWifiModeOff,
        on           = kVisionWifiModeOn
      };
      
      /** 
       * @brief The object class represents an object that the vision sensor detects.
      */  
      class object {          
          int     _id;
          int     _originX;
          int     _originY;
          int     _centerX;
          int     _centerY;
          int     _width;
          int     _height;
          double  _angle;
          bool    _exists;
      
        public:

          /** 
           * @brief Creates a new vision object with all properties set to default values.
           */
          object();
          ~object();
        
          /** 
           * @brief Copies all properties of the passed in object into this object.
           * @param obj The object whose properties are to be copied.
           */
          void      set( V5_DeviceVisionObject obj );
        
          /** 
           * @brief Inverts the angle for this object.
           */
          void      flipAngle();

          /**
           * @brief Sets all properties for this object to default values.
           */
          void      clear();
        
          object& operator=( const object &obj );
          object& operator=( int32_t signatureId );
 
           /**
           * @brief The unique ID of the object.
           */
          const int  &id;
          /**
           * @brief The top left x position of the object.
           */
          const int  &originX;
          /**
           * @brief The top left y position of the object.
           */
          const int  &originY;
          /**
           * @brief The center x position of the object.
           */
          const int  &centerX;
          /**
           * @brief The center y position of the object.
           */
          const int  &centerY;
          /**
           * @brief The width of the object.
           */
          const int  &width;
          /**
           * @brief The height of the object.
           */
          const int  &height;
          /**
           * @brief The angle of the object.
           */
          const double &angle;
          /**
           * @brief If the vision sensor detects the object or not.
           */
          const bool &exists;
      };
        
      /**
       * @brief Use this class when programming the vision sensor.
      */
      class signature {
        friend class vex::vision;

        private:
          #define   MAX_MAME    32

          int32_t   _id;
          int32_t   _uMin;
          int32_t   _uMax;
          int32_t   _uMean;
          int32_t   _vMin;
          int32_t   _vMax;
          int32_t   _vMean;
          float     _range;
          uint32_t  _rgb;
          uint32_t  _type;

          void      clear();
                  
          static void setTypeColorCode() {};
          template <typename signature, typename... Args>
          static void setTypeColorCode( signature &sig, Args &... args ) {
            sig._type = 1;
            setTypeColorCode( args... );
          }

        public:
          signature();
          ~signature();
          
         /** 
          * @brief Creates a new vision signature object.
          * @param id The signature id.
          * @param uMin The signature minimum value on the u axis.
          * @param uMax The signature maximum value on the u axis.
          * @param uMean The signature mean value on the u axis.
          * @param vMin The signature minimum value on the v axis.
          * @param vMax The signature maximum value on the v axis.
          * @param vMean The signature mean value on the v axis.
          * @param range The signature range scale factor.
          * @param type The signature type, normal, or color code.
          */  
          signature( int32_t id, int32_t uMin, int32_t uMax, int32_t uMean, int32_t vMin, int32_t vMax, int32_t vMean, float range, int32_t type );


          // read only references to internal variables
          const int32_t   &id;
          const int32_t   &uMin;
          const int32_t   &uMax;
          const int32_t   &uMean;
          const int32_t   &vMin;
          const int32_t   &vMax;
          const int32_t   &vMean;
          const float     &range;
          const uint32_t  &rgb;
          const uint32_t  &type;
      };
      
    /**
     * @brief Use this class when programming the vision sensor.
     */
    class code {
        private:
          uint32_t _code;
          bool     _flipped = false;
        
        public:
          code(int32_t sig1, int32_t sig2);
          code(int32_t sig1, int32_t sig2, int32_t sig3);
          code(int32_t sig1, int32_t sig2, int32_t sig3, int32_t sig4);
          code(int32_t sig1, int32_t sig2, int32_t sig3, int32_t sig4, int32_t sig5 );
  
         /** 
          * @brief Creates a new vision code object.
          * @param s1 The first signature which is part of the color code.
          * @param s2 The second signature which is part of the color code.
          */  

          code( signature &s1, signature &s2 );
          code( signature &s1, signature &s2, signature &s3 );
          code( signature &s1, signature &s2, signature &s3, signature &s4 );
          code( signature &s1, signature &s2, signature &s3, signature &s4, signature &s5 ); 
      
          uint32_t getCode()   { return _code;    }
          bool     isFlipped() { return _flipped; } 
      };      
       
      /**
       * @brief Takes a data sample from the vision sensor.
       * @return Returns the number of objects found from the ID passed in the parameter.
       * @param id The ID of the object to look for.
       */ 
      int32_t         takeSnapshot( uint32_t id );

      /**
       * @brief Takes a data sample from the vision sensor.
       * @return Returns the number of objects found from the code signature passed in the parameter. 
       * @param cc The code signature of the object to look for.
       */
      int32_t         takeSnapshot( code &cc );

      /**
       * @brief Takes a data sample from the vision sensor. 
       * @return Returns a number of objects found from the signature passed in the parameter. 
       * @param sig The signature of the object to look for.
       */
      int32_t         takeSnapshot( signature &sig );

      /**
       * @brief Takes a data sample from the vision sensor, and only stores  the largest samples of the specified amount.
       * @return Returns a limited number of objects found from the ID passed in the parameter.
       * @param id The ID of the object to look for.
       * @param count the amount  of objects to look for. The largest of the object will be returned.
       */
      int32_t         takeSnapshot( uint32_t id, uint32_t count );

      /**
       * @brief Takes a data sample from the vision sensor, and only stores  the largest samples of the specified amount.
       * @return Returns a limited number of objects found from the code signature passed in the parameter.
       * @param cc The code signature of the object to look for.
       * @param count the amount  of objects to look for. The largest of the object will be returned.
       */
      int32_t         takeSnapshot( code &cc, uint32_t count );

      /**
       * @brief Takes a data sample from the vision sensor, and only stores  the largest samples of the specified amount.
       * @return Returns a limited number of objects found from the signature passed in the parameter.
       * @param sig The signature of the object to look for.
       * @param count the amount  of objects to look for. The largest of the object will be returned.
       */
      int32_t         takeSnapshot( signature &sig, uint32_t count );

      /**
       * @brief The amount of objects found in the data sample.
       */
      int32_t         objectCount;

      /**
       * @brief The largest object found in the data sample.
       */
      object          largestObject;

      /**
       * @brief An array containing the largest object(s) found in the data sample.
       */
      safearray< object, VISION_MAX_OBJECTS > objects;  

      // not part of current spec
      bool            setSignature( V5_DeviceVisionSignature *pSignature );
      bool            getSignature( uint32_t id, V5_DeviceVisionSignature *pSignature );
      bool            setSignature( signature &sig );
      bool            getSignature( uint32_t id, signature &sig );
      bool            setMode( detectionMode mode );
      detectionMode   getMode( void );
      bool            setBrightness( uint8_t value );
      uint8_t         getBrightness( void );
      bool            setWhiteBalanceMode( whiteBalanceMode mode );
      whiteBalanceMode getWhiteBalanceMode( void );
      bool            setWhiteBalanceValues( uint8_t red, uint8_t green, uint8_t blue );
      bool            getWhiteBalanceValues( uint8_t *red, uint8_t *green, uint8_t *blue );

      /**
       * @brief Changes the mode of the LED on the vision sensor.
       * @param mode The LED mode. Automatic mode will cause the LED color to be controlled by the vision sensor firmware. Manual mode allows the LED color to be controlled by the user program.
       * @return Returns true if setting was successfully saved.
       */
      bool            setLedMode( ledMode mode );

      /**
       * @brief Gets the mode of the LED from the vision sensor.
       * @return Returns a tLedMode that represents the current mode of the vision sensor LED.
       */
      ledMode         getLedMode( void );

      /**
       * @brief Changes the brightness of the LED on the vision sensor when LED is set to manual mode.
       * @param percent A percentage of total brightness of the vision sensor LED when in manual mode. Values are 0 to 100. 0 = LED off
       * @return Returns true if setting was successfully saved.
       */
      bool            setLedBrightness( uint8_t percent );

      /**
       * @brief Gets the brightness of the LED from the vision sensor.
       * @return Returns a value between 0 and 100 that represents the current brightness of the vision sensor LED.
       */
      uint8_t         getLedBrightness( void );

      /**
       * @brief Changes the color of the LED on the vision sensor when LED is set to manual mode.
       * @param red A value from 0 to 255 the represents the intensity of the red color of the LED.
       * @param green A value from 0 to 255 the represents the intensity of the green color of the LED.
       * @param blue A value from 0 to 255 the represents the intensity of the blue color of the LED. 
       * @return Returns true if setting was successfully saved.
       */
      bool            setLedColor( uint8_t red, uint8_t green, uint8_t blue );

      /**
       * @brief Gets the color of the LED from the vision sensor.
       * @param red A reference to a value to store the intensity of the red color of the LED.
       * @param green A reference to a value to store the intensity of the green color of the LED.
       * @param blue A reference to a value to store the intensity of the blue color of the LED.
       * @return Returns true if values were sucessfully recived. 
       */
      bool            getLedColor( uint8_t *red, uint8_t *green, uint8_t *blue );

      
      bool            setWifiMode( wifiMode mode );
      wifiMode        getWifiMode( void );
                  
    private:
      // storage for raw data from camera
      V5_DeviceVisionObject _objects[ VISION_MAX_OBJECTS ];
      // set all objects to 0
      void               _clearObjects( void );
  };
};

typedef vex::vision::object     VexVisionObject;
typedef vex::vision::code       VisionCode;

#endif // VEX_VISION_CLASS_H