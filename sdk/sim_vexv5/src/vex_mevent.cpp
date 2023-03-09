#include "vex_mevent.h"

namespace vex
{
    void doThing(){
        printf("did thing, are you happy now\n");
    }
    mevent::mevent(uint32_t index, uint32_t id) : _event_id(id), _index(index) {
        sim::register_mevent(index, id, doThing);
    }
    mevent::~mevent()
    {
        printf("destroying mevent id = %d, index = %d\n", _event_id, _index);
        sim::stop_mevent(_index, _event_id);
    }

};