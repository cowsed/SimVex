#include "sim/events.h"

namespace sim
{
    /// @brief  true while callback threads should end. Should always be false except when we are tearing down the program where it will be false. EVEN WHEN THE SIM IS JUST PAUSED, this should be false.
    static bool end_callbacks = false;
    // array of all mevents on all devices
    static struct event_handler * mevent_array[NUM_INDICES][MAX_EVENTS_PER_INDEX];

    struct event_handler
    {
        mevent_func callback = NULL;
        std::thread *my_runner_thread;
        std::mutex *my_mutex; // locked until event happens
        std::condition_variable *my_cv;
        bool should_run = false;
        int index;
        int id;

        // TODO, this is really jank - vex things init first so when array is initialized it overwrites by defualt constructor, so this
        event_handler() : callback(callback), my_runner_thread(my_runner_thread), my_mutex(my_mutex), my_cv(my_cv), should_run(should_run), index(index), id(id) {}

        static void do_calling_back(int index, int id)
        {
            while (!end_callbacks)
            {
                auto me = mevent_array[index][id];
                // aquire unique lock on my_mutex
                std::unique_lock<std::mutex>
                    lk(*me->my_mutex);
                printf("~~~~~~ Event Lock unlocked index = %d, id = %d~~~~~~ ", index, id);

                // wait until we should run
                me->my_cv->wait(lk, [&]
                            { return me->should_run == true; });

                printf("Event Received! index = %d, id = %d", index, id);
                // check if we should just end
                if (end_callbacks)
                {
                    lk.unlock();
                    break;
                }
                // else run the callback, if non null
                if (me->callback != NULL)
                {
                    me->callback();
                }
                me->should_run = false;

                // relock. will be unlocked by sim when we should run the callback again
                lk.unlock();
            }
            printf("Finishing event %d:%d\n", index, id);
        }
        // true if this mevent has been declared
        bool isCreated()
        {
            printf("event %d:%d ready? %d\n", index, id, callback != NULL);
            return callback != NULL; // if null, we don't exist really, do any of us exist ??
        }
    };

    /// @brief register a mevent with the system such that simulation can call it
    /// @param index index of mevent (sorta like port)
    /// @param event_id id of event on that port
    /// @param callback the function that should run when this guy happens
    void register_mevent(int index, int event_id, mevent_func callback)
    {
        if (!(index >= 0 && index < NUM_INDICES && event_id >= 0 && event_id < MAX_EVENTS_PER_INDEX))
        {
            std::cerr << "INVALID MEVENT POSITION " << index << ":" << event_id << std::endl;
            return;
        }

        if (mevent_array[index][event_id] != NULL)
        {
            std::cerr << "=====================================" << std::endl;
            std::cerr << "A mevent is already registered in index " << index << " event " << event_id << "> THERE IS PROBABLY AN INITILIZATION BUG" << std::endl;
            std::cerr << "=====================================" << std::endl;
            return;
        }

        printf("Registerring event: index = %d, id = %d, cb = %p\n", index, event_id, callback);

        event_handler * my_mevent = new event_handler();

        // We're working with un initizialized stuff here
        my_mevent->index = index;
        my_mevent->id = event_id;
        my_mevent->callback = callback;
        my_mevent->should_run = false;
        my_mevent->my_mutex = new std::mutex();
        my_mevent->my_cv = new std::condition_variable();
        my_mevent->my_runner_thread = new std::thread(mevent_array[index][event_id]->do_calling_back, index, event_id);

        mevent_array[index][event_id] = my_mevent;
        
        printf("after init %d:%d is valid? %d\n", index, event_id, mevent_array[index][event_id]->isCreated());
    }
    void send_mevent(int index, int event_id)
    {
        if (!(index >= 0 && index < NUM_INDICES && event_id >= 0 && event_id < MAX_EVENTS_PER_INDEX))
        {
            std::cerr << "INVALID MEVENT" << std::endl;
        }

        std::cerr << "sending event0" << index << ":" << event_id << std::endl;
        printf("Sending event1 %d:%d\n", index, event_id);
        // take lock, make sure callback isnt already running
        // tell it its ok to start running
        {
            std::lock_guard<std::mutex> lk(*(mevent_array[index][event_id]->my_mutex));
            printf("Sending event2 %d:%d\n", index, event_id);

            mevent_array[index][event_id]->should_run = true;
            printf("Should run set %d:%d\n", index, event_id);
            printf("Event is valid %d - %p\n", mevent_array[index][event_id]!=NULL, mevent_array[index][event_id]->callback);
        }
        std::cerr << "sent event" << index << ":" << event_id << std::endl;

        // notify that a change happened
        mevent_array[index][event_id]->my_cv->notify_one();
    }

    void stop_mevent(int index, int id)
    {
        if (index >= 0 && index < NUM_INDICES && id >= 0 && id < MAX_EVENTS_PER_INDEX)
        {
            end_callbacks = true;
            if (mevent_array[index][id]!=NULL)
            {
                send_mevent(index, id); // tell it to wake up so it knows to end
                (*mevent_array[index][id]->my_runner_thread).join();
                delete mevent_array[index][id]->my_cv;
                delete mevent_array[index][id]->my_mutex;
                delete mevent_array[index][id]->my_runner_thread;
            }
        }
    }

}