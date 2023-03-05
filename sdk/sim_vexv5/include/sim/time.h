#include <stdint.h>
#include <atomic>
#include <thread>
#include <chrono>

// stop the world
void sim_time_stop();
// start the world
void sim_time_start();

// get the simulation time in milliseconds
uint32_t sim_time_ms();

// get the simulation time in seconds
double sim_time_sec();
