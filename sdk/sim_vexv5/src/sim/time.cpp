#include "include/sim/time.h"


/// master clock
static std::atomic<uint32_t> sim_time; // in milliseconds 0 is start of simulation 

// true if sim is running. false if not
// does not correspond to real time
static std::atomic_bool sim_time_ticking = false;

void sim_time_start(){
    sim_time_ticking = true;
}
void sim_time_stop(){
    sim_time_ticking = false;
}

static int sim_clock_task(){
    auto now = std::chrono::steady_clock::now();
    while(true){
        if (sim_time_ticking){
            sim_time+=1;
        }
        
        std::this_thread::sleep_until(now + std::chrono::milliseconds(1));
    }
}

// thread that updates the clock
static std::thread clock_tick_thread(sim_clock_task);


uint32_t sim_time_ms(){
    return sim_time;
}

double sim_time_sec(){
    return ((double)sim_time)/1000.0;
}
