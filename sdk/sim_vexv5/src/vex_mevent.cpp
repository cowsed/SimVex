#include "include/vex_mevent.h"

namespace vex
{
    mevent::mevent(uint32_t index, uint32_t id) : _event_id(id), _index(index) { print_unimplimented(); }
};