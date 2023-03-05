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

