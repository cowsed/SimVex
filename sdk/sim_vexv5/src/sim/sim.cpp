#include "sim/sim.h"

namespace sim
{
    static SimState sim_state = SimState::NotReady;
    static VexState vex_state = VexState::Waiting;

    bool is_paused() { return sim_state == Paused; }
    bool is_running() { return sim_state == Playing; }

    const char *sim_state_text(){
        return (char *[]){(char *)"Not Ready", (char *)"Paused", (char *)"Running"}[sim_state];
    }


    bool is_driver_control(){return vex_state == VexState::Driver;}
    bool is_auto_control(){return vex_state == VexState::Autonamous;}

    const char *vex_state_text(){
        return (char *[]){(char *)"Waiting", (char *)"Driver", (char *)"Autonamous"}[vex_state];

    }

}