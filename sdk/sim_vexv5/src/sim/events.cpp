#include "sim/events.h"

#define MAX_EVENTS 128

typedef void (*mevent_func)();



void register_mevent(int event_id){
    printf("Registerring event: %d\n", event_id);
}