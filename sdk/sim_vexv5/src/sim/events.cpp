#include "sim/events.h"

#include <stdio.h>
#include <pthread.h>
#include <signal.h>
#include <thread>
#include <mutex>
#include <iostream>
#include <condition_variable>

#include "imgui.h"

#include "assert.h"

#include "sim/sim.h"

namespace sim::event_handler
{
    volatile bool threads_should_pause = false;

    // array of all mevents on all devices
    static struct event_handler *mevent_array[NUM_INDICES][MAX_EVENTS_PER_INDEX];

#define SIG_PAUSE_THREAD SIGUSR1
#define SIG_STOP_THREAD SIGUSR2

    namespace text
    {
        auto red_color = "\033[1;31m";
        auto reset_color = "\033[0m\n";
    }

    struct event_handler
    {
        int index;
        int id;
        mevent_func callback = NULL;
        bool should_run = false; // true (and signled with cv) when this event is triggered. After running once, should_run is set to false

        bool waiting_for_should_run = false;

        std::thread *my_runner_thread;
        std::mutex *my_mutex;           // locked until event happens
        std::condition_variable *my_cv; // variable to signal change in should_run

        event_handler(int index, int event_id) : index(index), id(event_id), callback(NULL), should_run(false)
        {
            mevent_array[index][id] = this;
            setup_event();
        }

        // call at end of program or event going out of scope to free resources
        ~event_handler()

        {
            // end_event();
            delete mevent_array[index][id]->my_cv;
            delete mevent_array[index][id]->my_mutex;
            delete mevent_array[index][id]->my_runner_thread;
            mevent_array[index][id] = NULL;
        }

        /// @brief sets up event such that it is ready to run when needed
        void setup_event()
        {
            callback = NULL;
            should_run = false;

            my_mutex = new std::mutex();
            my_cv = new std::condition_variable();
            my_runner_thread = new std::thread(do_calling_back, index, id);
        }
        void pause_event_thread()
        {
            should_run = false;
            printf("pausing thread %p\n", my_runner_thread);
            pthread_kill(my_runner_thread->native_handle(), SIG_PAUSE_THREAD);
        }

        /// @brief func that each mevent thread uses to run its callbacks
        /// @param index the index of the mevent this function call is for
        /// @param id the id of the mevent this function call is for
        static void do_calling_back(int index, int id)
        {
            auto me = mevent_array[index][id];
            while (1)
            {
                // aquire unique lock on my_mutex

                std::unique_lock<std::mutex>
                    lk(*me->my_mutex);

                // wait until we should run
                me->waiting_for_should_run = true;
                me->my_cv->wait(lk, [&]
                                { return me->should_run == true; });
                me->waiting_for_should_run = false;

                // else run the callback, if non null
                if (me->callback != NULL)
                {
                    printf("%d:%d callback = %p\n", index, id, me->callback);
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
            std::cerr << text::reset_color << "INVALID MEVENT POSITION " << index << ":" << event_id << text::reset_color << std::endl;
            return;
        }

        if (mevent_array[index][event_id] != NULL)
        {

            std::cerr << text::red_color << "=====================================" << text::reset_color << std::endl;
            std::cerr << text::red_color << "A mevent is already registered in index " << index << " event " << event_id << "> THERE IS PROBABLY A SIM BUG NOT A VEX BUG" << text::reset_color << std::endl;
            std::cerr << text::red_color << "=====================================" << text::reset_color << std::endl;
            return;
        }

        // make a new event and hold it for safekeeping
        event_handler *my_mevent = new event_handler(index, event_id);
        mevent_array[index][event_id] = my_mevent;
    }
    /// @brief set the callback function that will execute when a callback is triggered
    /// @param index  index of the event - see reference manual
    /// @param event_id id of the event - see reference manual
    /// @param callback callback function that will be executed
    void set_event_callback(int index, int event_id, mevent_func callback)
    {
        if (mevent_array[index][event_id] == NULL)
        {
            std::cerr << text::red_color << "Trying to set callback on an event that doesnt exist. Probably a sim implementation issue - or you're doing weird shenanigans. Don't do those please :(" << text::reset_color << std::endl;
        }

        mevent_array[index][event_id]->callback = callback;
    }
    /// @brief
    /// @param index
    /// @param event_id
    /// @return false if thread is being difficult and we could not send an event. true if sent to a thread or that thread doesn't exist
    bool send_mevent(int index, int event_id, bool allowed_pre_auton)
    {
        if (!allowed_pre_auton && !(sim::is_auto_control() || sim::is_driver_control()))
        {

            std::cerr << text::red_color << "Trying to send mevent while the robot isn't running. we'll just not send it" << text::reset_color << std::endl;
            return true;
        }
        if (!(index >= 0 && index < NUM_INDICES && event_id >= 0 && event_id < MAX_EVENTS_PER_INDEX) || (mevent_array[index][event_id] == NULL))
        {
            std::cerr << text::red_color << "INVALID MEVENT" << text::reset_color << std::endl;
            return true;
        }

        if (mevent_array[index][event_id] == NULL)
        {
            std::cerr << text::red_color << "NULL MEVENT" << text::reset_color << std::endl;
            return true;
        }

        // try to take lock
        // if we can't return false (failed)
        // similar to interrupts in embedded. if you trigger it before interrupt handler finishes that interrupt won't trigger
        // hoping this matches how the brain works
        // TODO give the get a timeout. on the offchacne we have a one shot callback but we catch it on the wrong nanosecond

        printf("Sending mevent %d:%d - callback = %p\n", index, event_id, mevent_array[index][event_id]->callback);

        bool got_lock = mevent_array[index][event_id]->my_mutex->try_lock();
        if (!got_lock)
        {
            printf("failed\n");
            return false;
        }

        printf("succeeded\n");

        mevent_array[index][event_id]->should_run = true;
        mevent_array[index][event_id]->my_mutex->unlock();

        // notify that a change happened
        mevent_array[index][event_id]->my_cv->notify_one();
        return true;
    }

    bool endall = false;
    void end_all_mevents()
    {
        endall = true;
        pause_all_mevents();

        std::this_thread::sleep_for(std::chrono::milliseconds(200));

        std::this_thread::yield();

        // resume_all_mevents(); // make sure our signal handlers aren't interfering withthemselves. kinda heavy handed but seems to work
        for (int index = 0; index < NUM_INDICES; index++)
        {
            for (int id = 0; id < NUM_INDICES; id++)
            {
                if (index >= 0 && index < NUM_INDICES && id >= 0 && id < MAX_EVENTS_PER_INDEX && mevent_array[index][id] != NULL)
                {
                    delete mevent_array[index][id]->my_cv;
                    delete mevent_array[index][id]->my_mutex;
                    delete mevent_array[index][id]->my_runner_thread;
                    mevent_array[index][id]->should_run = false;
                    mevent_array[index][id]->my_mutex = new std::mutex();
                    mevent_array[index][id]->my_cv = new std::condition_variable();

                    mevent_array[index][id]->my_runner_thread = new std::thread(event_handler::do_calling_back, index, id);
                }
            }
        }
    }

    void pause_all_mevents()
    {
        if (threads_should_pause == true)
        {
            printf("not pausing events - already paused\n");
            // already paused
            return;
        }
        threads_should_pause = true;
        for (int index = 0; index < NUM_INDICES; index++)
        {
            for (int id = 0; id < NUM_INDICES; id++)
            {
                if (index >= 0 && index < NUM_INDICES && id >= 0 && id < MAX_EVENTS_PER_INDEX && mevent_array[index][id] != NULL)
                {
                    mevent_array[index][id]->pause_event_thread();
                }
            }
        }
    }
    void resume_all_mevents()
    {
        threads_should_pause = false;
    }

    /// @brief signal handler for pausing
    /// @param signo signal number - should always be SIG_PAUSE_EVENT
    /// @param info unused - needed for pthread implementation
    /// @param extra unused - needed for pthread implementation
    void interrupt_thread_sig_handler(int signo, siginfo_t *info, void *extra)
    {

        printf("signal %d handled on thread %lu\n", signo, std::this_thread::get_id());
        std::this_thread::sleep_for(std::chrono::milliseconds(2));

        // go for a spin
        while (threads_should_pause)
        {
            printf("thread pausing\n");
            std::this_thread::sleep_for(std::chrono::milliseconds(10));
            if (endall)
            {
                printf("Pthread exitting");
                _exit(0); // for some reason, pthread_exit doesnt work here
                return;
            }
        }
        printf("exitted event handler\n");
    }

    void set_signal_handlers()
    {
        struct sigaction action;

        action.sa_flags = SA_SIGINFO;
        action.sa_sigaction = interrupt_thread_sig_handler;

        int res = sigaction(SIG_PAUSE_THREAD, &action, NULL);

        if (res == -1)
        {
            perror("sigusr: sigaction : setting pause handler");
            _exit(1);
        }
    }

    void setup()
    {
        set_signal_handlers();
    }
    void drawUI()
    {
        ImGui::Begin("Events");
        ImGui::Text("Should pause: %s", (threads_should_pause ? "yes" : "no"));
        for (int index = 0; index < NUM_INDICES; index++)
        {
            ImGui::Text("Device: %d", index);
            for (int id = 0; id < MAX_EVENTS_PER_INDEX; id++)
            {
                if (mevent_array[index][id] == NULL)
                {
                    continue;
                }
                auto me = mevent_array[index][id];
                ImGui::Separator();
                ImGui::Text("Event %d:%d", index, id);
                ImGui::Text("Callback: %s", (me->callback != NULL) ? "yes" : "no");
                ImGui::Text("should run: %s", (me->should_run) ? "yes" : "no");
                ImGui::Text("id: 0x%x", me->my_runner_thread->get_id());
            }
        }

        ImGui::End();
    }
}