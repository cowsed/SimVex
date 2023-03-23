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
        bool finished = false;

        std::thread *my_runner_thread;
        std::mutex *my_mutex; // locked until event happens
        std::condition_variable *my_cv;

        event_handler(int index, int event_id, mevent_func callback) : index(index), id(event_id), callback(callback), should_run(false)
        {
            mevent_array[index][id] = this;
            setup_event();
        }

        // call at end of program or event going out of scope to free resources
        ~event_handler()
        {
            printf("cancelling %d:%d\n", index, id);

            stop_event();
            printf("finished stopping\n");

            delete mevent_array[index][id]->my_cv;
            delete mevent_array[index][id]->my_mutex;
            delete mevent_array[index][id]->my_runner_thread;
        }

        /// @brief sets up event such that it is ready to run when needed
        void setup_event()
        {
            // /delete my_mutex;
            // /delete my_cv;
            // /delete my_runner_thread;

            if (my_runner_thread == NULL || my_runner_thread->joinable() == false)
            {
                delete my_mutex;
                delete my_cv;
                delete my_runner_thread;

                should_run = false;
                my_mutex = new std::mutex();
                my_cv = new std::condition_variable();
                my_runner_thread = new std::thread(do_calling_back, index, id);
            }
        }

        /// @brief resets (stops) an event task.
        /// callback function is retained it's just stopped
        void stop_event()
        {
            printf("stopping event %d.%d\n", index, id);
            // ask nicely to end event
            end_callbacks = true;
            bool sent = send_mevent(index, id);

            printf("is joinable; %d\n", mevent_array[index][id]->my_runner_thread->joinable());

            if (sent)
            {
                printf("Nice thread: %p\n", (void *)mevent_array[index][id]->my_runner_thread);
                // thread was nice and not doing anything, we can just join
                mevent_array[index][id]->my_runner_thread->join();
            }
            else
            {
                printf("force killing %d:%d\n", index, id);

                // find and kill running thread
                std::thread::native_handle_type native_handle = (*mevent_array[index][id]->my_runner_thread).native_handle();
                mevent_array[index][id]->my_runner_thread->detach();
                printf("native handle %lu\n", native_handle);
                pthread_cancel(native_handle);
                delete mevent_array[index][id]->my_runner_thread;
            }
            end_callbacks = false;
        }

        static void do_calling_back(int index, int id)
        {
            auto me = mevent_array[index][id];
            me->finished = false;
            while (!end_callbacks)
            {
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
                    me->callback();
                }
                // did a good job, we can rest
                me->should_run = false;

                // relock. will be unlocked by sim when we should run the callback again
                lk.unlock();
            }
            me->finished = true;
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

    bool send_mevent(int index, int event_id)
    {
        if (!(index >= 0 && index < NUM_INDICES && event_id >= 0 && event_id < MAX_EVENTS_PER_INDEX))
        {
            std::cerr << "INVALID MEVENT" << std::endl;
            return false;
        }
        if (mevent_array[index][event_id] == NULL)
        {
            std::cerr << "NULL MEVENT" << std::endl;
            return false;
        }

        // try to take lock]
        // if we can't return false (failed)
        // similar to interrupts in embedded. if you trigger it before interrupt handler finishes that interrupt won't trigger
        // hoping this matches how the brain works

        bool got_lock = mevent_array[index][event_id]->my_mutex->try_lock();
        if (!got_lock)
        {
            return false;
        }

        mevent_array[index][event_id]->should_run = true;

        mevent_array[index][event_id]->my_mutex->unlock();

        // notify that a change happened
        mevent_array[index][event_id]->my_cv->notify_one();
        return true;
    }

    void stop_all_mevents()
    {
        for (int index = 0; index < NUM_INDICES; index++)
        {
            for (int id = 0; id < NUM_INDICES; id++)
            {
                if (index >= 0 && index < NUM_INDICES && id >= 0 && id < MAX_EVENTS_PER_INDEX && mevent_array[index][id] != NULL)
                {
                    mevent_array[index][id]->stop_event();
                }
            }
        }
    }

    void end_mevent(int index, int id)
    {
        if (index >= 0 && index < NUM_INDICES && id >= 0 && id < MAX_EVENTS_PER_INDEX && mevent_array[index][id] != NULL)
        {
            delete mevent_array[index][id];
        }
    }

    void enable_all_mevents()
    {
        for (int index = 0; index < NUM_INDICES; index++)
        {
            for (int id = 0; id < NUM_INDICES; id++)
            {
                if (index >= 0 && index < NUM_INDICES && id >= 0 && id < MAX_EVENTS_PER_INDEX && mevent_array[index][id] != NULL)
                {
                    mevent_array[index][id]->setup_event();
                }
            }
        }
    }

}