#include "sim/events.h"

namespace sim::event_handler
{
    /// @brief  true while callback threads should end. Should always be false except when we are tearing down the program where it will be false. EVEN WHEN THE SIM IS JUST PAUSED, this should be false.
    static bool end_callbacks = false;
    // array of all mevents on all devices
    static struct event_handler *mevent_array[NUM_INDICES][MAX_EVENTS_PER_INDEX];

    struct event_handler
    {
        int index;
        int id;
        mevent_func callback = NULL;
        bool should_run = false;

        std::thread *my_runner_thread;
        std::mutex *my_mutex; // locked until event happens
        std::condition_variable *my_cv;

        event_handler(int index, int event_id, mevent_func callback) : index(index), id(event_id), callback(callback), should_run(false)
        {
            my_mutex = new std::mutex();
            my_cv = new std::condition_variable();
            my_runner_thread = new std::thread(do_calling_back, index, event_id);
        }

        ~event_handler()
        {
            end_callbacks = true;
            send_mevent(index, id); // tell it to wake up so it knows to end
            (*mevent_array[index][id]->my_runner_thread).join();
            delete mevent_array[index][id]->my_cv;
            delete mevent_array[index][id]->my_mutex;
            delete mevent_array[index][id]->my_runner_thread;
        }

        static void do_calling_back(int index, int id)
        {
            while (!end_callbacks)
            {
                auto me = mevent_array[index][id];
                // aquire unique lock on my_mutex
                std::unique_lock<std::mutex>
                    lk(*me->my_mutex);

                // wait until we should run
                me->my_cv->wait(lk, [&]
                                { return me->should_run == true; });

                // check if we should just end
                if (end_callbacks)
                {
                    lk.unlock();
                    break;
                }


                // else run the callback, if non null
                if (me->callback != NULL)
                {
                    std::cerr << "doing callback on thread " << std::this_thread::get_id() << std::endl;
                    me->callback();
                }
                // did a good job, we can rest
                me->should_run = false;

                // relock. will be unlocked by sim when we should run the callback again
                lk.unlock();
            }
        }
    };

    /// @brief register a mevent with the system such that simulation can call it
    /// @param index index of mevent (sorta like port)
    /// @param event_id id of event on that port
    /// @param callback the function that should run when this guy happens
    void register_mevent(int index, int event_id)
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


        event_handler *my_mevent = new event_handler(index, event_id, NULL);

        mevent_array[index][event_id] = my_mevent;
    }
    void set_event_callback(int index, int event_id, mevent_func callback)
    {
        assert(mevent_array[index][event_id] != NULL); // make sure we're setting on an event that already exists
        mevent_array[index][event_id]->callback = callback;
    }

    void send_mevent(int index, int event_id)
    {
        if (!(index >= 0 && index < NUM_INDICES && event_id >= 0 && event_id < MAX_EVENTS_PER_INDEX))
        {
            std::cerr << "INVALID MEVENT" << std::endl;
            return;
        }

        // take lock, make sure callback isnt already running
        // tell it it should to start running
        {
            std::lock_guard<std::mutex> lk(*(mevent_array[index][event_id]->my_mutex));

            mevent_array[index][event_id]->should_run = true;
        }

        // notify that a change happened
        mevent_array[index][event_id]->my_cv->notify_one();
    }

    void stop_mevent(int index, int id)
    {
        if (index >= 0 && index < NUM_INDICES && id >= 0 && id < MAX_EVENTS_PER_INDEX)
        {
            delete mevent_array[index][id];
        }
    }

}