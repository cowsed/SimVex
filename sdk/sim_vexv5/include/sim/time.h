#pragma once

#include <stdint.h>
#include <atomic>
#include <thread>
#include <chrono>

// pause the world
void sim_time_pause();
// start the world
void sim_time_start();

// end the world
void sim_time_end();



// get the simulation time in microseconds
uint64_t sim_time_microseconds();

// get the simulation time in milliseconds
uint32_t sim_time_ms();

// get the simulation time in seconds
double sim_time_sec();

enum TimeType{
    Steady = 0, // Time will increase steadily and will not go wacky when simulation is paused. However, it will drift slowly over time. Use this for debugging
    Accurate = 1, // Time will increase fine and accurate SO LONG AS THE SIMULATION IS NOT PAUSED. It will not drift over time. Use this for more accurate simulation
};

// used to select type of time
int * sim_time_type();
const char * sim_time_labels_separated_by_zeroes();