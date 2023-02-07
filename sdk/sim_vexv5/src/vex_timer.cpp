#include "include/vex_timer.h"
/*-----------------------------------------------------------------------------*/
/** @file    vex_timer.h
 * @brief   V5 timer class header
 */
/*---------------------------------------------------------------------------*/

namespace vex
{
    timer::timer() {print_unimplimented();}
    timer::~timer() {print_unimplimented();}

    // Assignment
    void timer::operator=(uint32_t value) {print_unimplimented();}

    // Get value
    timer::operator uint32_t() const {print_unimplimented(); return 0;}

    /**
     * @brief Gets the current value of the timer in mS.
     * @return Returns the current value of the timer in mS.
     */
    uint32_t timer::time() const {print_unimplimented(); return 0;}

    /**
     * @brief Gets the current value of the timer in specified units.
     * @return Returns a double that represents the time in the specified units.
     * @param units The measurement unit for time.
     */
    double timer::time(timeUnits units) const {print_unimplimented(); return 0.0;}

    /**
     * @brief Gets the current value of the timer in seconds.
     * @return Returns the current value of the timer in seconds.
     */
    double timer::value() const {print_unimplimented(); return 0.0;}

    /**
     * @brief Sets the current value of the timer to 0.
     */
    void timer::clear() {print_unimplimented();}

    /**
     * @brief Sets the current value of the timer to 0.
     */
    void timer::reset() {print_unimplimented();}

    /**
     * @brief Gets the current value of the system timer in mS.
     * @return Returns the value of the system timer in mS.
     */
    uint32_t timer::system() {print_unimplimented(); return 0;}

    /**
     * @brief Gets the current value of the high-resolution timer (in microseconds).
     * @return Returns the current value of the high-resolution timer (in microseconds).
     */
    uint64_t timer::systemHighResolution() {print_unimplimented(); return 0;}

    /**
     * @brief Sets a callback that will be called in the future.
     * @param callback A pointer to a function that will be called when the timer expires.
     * @param value The delay in mS to when the function will be called.
     */
    void timer::event(void (*callback)(void *), uint32_t value) {print_unimplimented();}

    /**
     * @brief Sets a callback that will be called in the future.
     * @param callback A pointer to a function that will be called when the timer expires.
     * @param value The delay in mS to when the function will be called.
     */
    void timer::event(void (*callback)(void), uint32_t value) {print_unimplimented();}
};
