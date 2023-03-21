#include "sim/time.h"

namespace sim
{
    /// master clock
    static std::atomic<uint32_t> time; // in milliseconds 0 is start of simulation

    static TimeType time_type = TimeType::Steady;
    static const char *time_type_labels = "Steady\0Accurate\0";
    // true if sim is running. false if not
    // does not correspond to real time
    static std::atomic_bool time_ticking = false;
    // used to tell the time to exit so we can exit cleanly - don't touch this unless you're destroying the window
    static std::atomic_bool time_should_end = false;

    static int clock_task();

    // thread that updates the clock
    static std::thread clock_tick_thread(clock_task);

    void time_start()
    {
        time_ticking = true;
    }
    void time_pause()
    {
        time_ticking = false;
    }
    void time_end()
    {
        time_should_end = true;
        clock_tick_thread.join();
    }

    static int clock_task()
    {
        auto now = std::chrono::microseconds();
        while (true)
        {

            if (time_type == TimeType::Accurate)
            {
                auto time_taken = std::chrono::microseconds() - now;
                std::this_thread::sleep_for(std::chrono::milliseconds(1) - time_taken);
                now = std::chrono::microseconds();
            }
            else
            {
                // Blindly sleep
                std::this_thread::sleep_for(std::chrono::milliseconds(1));
            }

            if (time_ticking)
            {
                time += 1;
            }
            if (time_should_end)
            {
                break;
            }
        }
        return 0;
    }

    uint64_t time_microseconds()
    {
        return time * 1000;
    }
    uint32_t time_ms()
    {
        return time;
    }

    double time_sec()
    {
        return ((double)time) / 1000.0;
    }

    int *get_time_type()
    {
        return (int *)(&time_type);
    }
    const char *time_labels_separated_by_zeroes()
    {
        return time_type_labels;
    }

}