#include "vex_mevent.h"

namespace vex
{
    mevent::mevent(uint32_t index, uint32_t id) : _event_id(id), _index(index) {
        sim::event_handler::register_mevent(index, id, NULL);
    }
    mevent::~mevent()
    {
        printf("destroying mevent id = %d, index = %d\n", _event_id, _index);
        sim::event_handler::stop_mevent(_index, _event_id);
    }

};