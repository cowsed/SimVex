#pragma once
#include "stdio.h"
#include <thread>
#include <mutex>
#include <iostream>
#include <condition_variable>

namespace sim
{
    const int MAX_EVENTS_PER_INDEX = 128; //128

    // number of devices that can register callbacks. _getIndex() gives you this index
    const int NUM_INDICES = 32;

    typedef void (*mevent_func)();



    void register_mevent(int index, int event_id, mevent_func callback);

    void send_mevent(int index, int event_id);

    void stop_mevent(int index, int id);
}