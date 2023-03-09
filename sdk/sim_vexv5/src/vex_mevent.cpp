#include "vex_mevent.h"

namespace vex
{
    mevent::mevent(uint32_t index, uint32_t id) : _event_id(id), _index(index)
    {
        sim::event_handler::register_mevent(index, id);
    }
    mevent::~mevent()
    {
        sim::event_handler::stop_mevent(_index, _event_id);
    }

};