#include "vex_timer.h"
/*-----------------------------------------------------------------------------*/
/** @file    vex_timer.h
 * @brief   V5 timer class header
 */
/*---------------------------------------------------------------------------*/
// static timed_events =

namespace vex
{
    timer::timer() : _offset(0), _initial(sim::time_ms()) {}
    timer::~timer() { 
        // cleanup events set
        print_unimplimented();
        printf("goodbye time\n");
     }

    // Assignment
    void timer::operator=(uint32_t value)
    {
        _initial = value; // not entirely sure where this is used or if this is right
        _offset = 0;
    }

    // Get value - time since this timer started
    timer::operator uint32_t() const { return sim::time_ms() - _initial; }

    /**
     * @brief Gets the current value of the timer in mS.
     * @return Returns the current value of the timer in mS.
     */
    uint32_t timer::time() const
    {
        return sim::time_ms() - _initial;
    }

    /**
     * @brief Gets the current value of the timer in specified units.
     * @return Returns a double that represents the time in the specified units.
     * @param units The measurement unit for time.
     */
    double timer::time(timeUnits units) const
    {  
        uint32_t time_ms = time();
        if (units==vex::msec){
            return (double)time_ms;
        }

        return ((double)time_ms)/1000.0;
    }

    /**
     * @brief Gets the current value of the timer in seconds.
     * @return Returns the current value of the timer in seconds.
     */
    double timer::value() const
    {
        return time(timeUnits::sec);
    }

    /**
     * @brief Sets the current value of the timer to 0.
     */
    void timer::clear() { _initial = sim::time_ms(); _offset = 0; }

    /**
     * @brief Sets the current value of the timer to 0.
     */
    void timer::reset() { _initial = sim::time_ms(); _offset = 0; }

    /**
     * @brief Gets the current value of the system timer in mS.
     * @return Returns the value of the system timer in mS.
     */
    uint32_t timer::system() { return sim::time_ms(); }

    /**
     * @brief Gets the current value of the high-resolution timer (in microseconds).
     * @return Returns the current value of the high-resolution timer (in microseconds).
     */
    uint64_t timer::systemHighResolution() { return sim::time_microseconds(); }

    /**
     * @brief Sets a callback that will be called in the future.
     * @param callback A pointer to a function that will be called when the timer expires.
     * @param value The delay in mS to when the function will be called.
     */
    void timer::event(void (*callback)(void *), uint32_t value) { print_unimplimented(); }

    /**
     * @brief Sets a callback that will be called in the future.
     * @param callback A pointer to a function that will be called when the timer expires.
     * @param value The delay in mS to when the function will be called.
     */
    void timer::event(void (*callback)(void), uint32_t value) { print_unimplimented(); }
};
