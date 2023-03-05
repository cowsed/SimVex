#include "../include/vex_global.h"

namespace vex
{
    const rotationUnits degrees = rotationUnits::deg;
    const rotationUnits turns = rotationUnits::rev;
    const percentUnits percent = percentUnits::pct;
    const timeUnits seconds = timeUnits::sec;
    const distanceUnits inches = distanceUnits::in;
    const distanceUnits mm = distanceUnits::mm;
    const directionType forward = directionType::fwd;
    const directionType reverse = directionType::rev;
    const turnType left = turnType::left;
    const turnType right = turnType::right;

    const axisType xaxis = axisType::xaxis;
    const axisType yaxis = axisType::yaxis;
    const axisType zaxis = axisType::zaxis;

    const orientationType roll = orientationType::roll;
    const orientationType pitch = orientationType::pitch;
    const orientationType yaw = orientationType::yaw;

    const fontType monoM = fontType::mono20;
    const fontType monoL = fontType::mono30;
    const fontType monoXL = fontType::mono40;
    const fontType monoXXL = fontType::mono60;
    const fontType monoS = fontType::mono15;
    const fontType monoXS = fontType::mono12;
    const fontType propM = fontType::prop20;
    const fontType propL = fontType::prop30;
    const fontType propXL = fontType::prop40;
    const fontType propXXL = fontType::prop60;

    const controllerType primary = controllerType::primary;
    const controllerType partner = controllerType::partner;

    const char *rumbleLong = nullptr;
    const char *rumbleShort = nullptr;
    const char *rumblePulse = nullptr;

    void wait(double time, timeUnits units){
        uint32_t ms;
        switch (units){
            case timeUnits::sec:
                ms = static_cast<uint32_t>((time)*1000);
                break;
            case timeUnits::msec:
                ms = (uint32_t)time;
                break;
        }
        vexDelay(ms);
    }
};

namespace vex
{
    const int32_t PORT1 = 1;
    const int32_t PORT2 = 2;
    const int32_t PORT3 = 3;
    const int32_t PORT4 = 4;
    const int32_t PORT5 = 5;
    const int32_t PORT6 = 6;
    const int32_t PORT7 = 7;
    const int32_t PORT8 = 8;
    const int32_t PORT9 = 9;
    const int32_t PORT10 = 10;
    const int32_t PORT11 = 11;
    const int32_t PORT12 = 12;
    const int32_t PORT13 = 13;
    const int32_t PORT14 = 14;
    const int32_t PORT15 = 15;
    const int32_t PORT16 = 16;
    const int32_t PORT17 = 17;
    const int32_t PORT18 = 18;
    const int32_t PORT19 = 19;
    const int32_t PORT20 = 20;
    const int32_t PORT21 = 21;
    const int32_t PORT22 = 22;

};

namespace vex
{
    const percentUnits pct = percentUnits::pct;
    const timeUnits sec = timeUnits::sec;
    const timeUnits msec = timeUnits::msec;
    const voltageUnits volt = voltageUnits::volt;
    const currentUnits amp = currentUnits::amp;
    const powerUnits watt = powerUnits::watt;
    const torqueUnits Nm = torqueUnits::Nm;
    const torqueUnits InLb = torqueUnits::InLb;
    const rotationUnits deg = rotationUnits::deg;
    const rotationUnits rev = rotationUnits::rev;
    const velocityUnits rpm = velocityUnits::rpm;
    const velocityUnits dps = velocityUnits::dps;
    const temperatureUnits celsius = temperatureUnits::celsius;
    const temperatureUnits fahrenheit = temperatureUnits::fahrenheit;

    const directionType fwd = directionType::fwd;
    const brakeType coast = brakeType::coast;
    const brakeType brake = brakeType::brake;
    const brakeType hold = brakeType::hold;
    const gearSetting ratio36_1 = gearSetting::ratio36_1;
    const gearSetting ratio18_1 = gearSetting::ratio18_1;
    const gearSetting ratio6_1 = gearSetting::ratio6_1;

    //const color &               black = color::black;
    //const color &               white = color::white;
    //const color &               red =color::red;
    //const color &               green = color::green;
    //const color &               blue = color::blue;
    //const color &               yellow = color::yellow;
    //const color &               orange  =color::orange;
    //const color &               purple = color::purple;
    //const color &               cyan = color::cyan;
    //const color &               transparent = color::transparent;

    const fontType mono20 = fontType::mono20;
    const fontType mono30 = fontType::mono30;
    const fontType mono40 = fontType::mono40;
    const fontType mono60 = fontType::mono60;
    const fontType mono15 = fontType::mono15;
    const fontType mono12 = fontType::mono12;
    const fontType prop20 = fontType::prop20;
    const fontType prop30 = fontType::prop30;
    const fontType prop40 = fontType::prop40;
    const fontType prop60 = fontType::prop60;

    const analogUnits range8bit = analogUnits::range8bit;
    const analogUnits range10bit = analogUnits::range10bit;
    const analogUnits range12bit = analogUnits::range12bit;
    const analogUnits mV = analogUnits::mV;

};