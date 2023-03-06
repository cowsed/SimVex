#include "sim/time.h"


/// master clock
static std::atomic<uint32_t> sim_time; // in milliseconds 0 is start of simulation 

// true if sim is running. false if not
// does not correspond to real time
static std::atomic_bool sim_time_ticking = false;

static std::atomic_bool sim_time_should_end = false;

static int sim_clock_task();

// thread that updates the clock
static std::thread clock_tick_thread(sim_clock_task);


void sim_time_start(){
    sim_time_ticking = true;
}
void sim_time_pause(){
    sim_time_ticking = false;
}
void sim_time_end(){
    sim_time_should_end = true;
    clock_tick_thread.join();
}


static int sim_clock_task(){
    while(true){

        if (sim_time_ticking){
            sim_time+=1;
        }
        if (sim_time_should_end){
            break;
        }
        
        std::this_thread::sleep_for(std::chrono::milliseconds(1));
    }
    return 0;
}


uint64_t sim_time_microseconds(){
    return sim_time * 1000;
}
uint32_t sim_time_ms(){
    return sim_time;
}

double sim_time_sec(){
    return ((double)sim_time)/1000.0;
}
