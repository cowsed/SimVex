#include "sim/time.h"

/// master clock
static std::atomic<uint32_t> sim_time; // in milliseconds 0 is start of simulation

static TimeType time_type = TimeType::Steady;
static const char *time_type_labels = "Steady\0Accurate\0";
// true if sim is running. false if not
// does not correspond to real time
static std::atomic_bool sim_time_ticking = false;
// used to tell the time to exit so we can exit cleanly - don't touch this unless you're destroying the window
static std::atomic_bool sim_time_should_end = false;

static int sim_clock_task();

// thread that updates the clock
static std::thread clock_tick_thread(sim_clock_task);

void sim_time_start()
{
    sim_time_ticking = true;
}
void sim_time_pause()
{
    sim_time_ticking = false;
}
void sim_time_end()
{
    sim_time_should_end = true;
    clock_tick_thread.join();
}

static int sim_clock_task()
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
        
        if (sim_time_ticking)
        {
            sim_time += 1;
        }
        if (sim_time_should_end)
        {
            break;
        }
    }
    return 0;
}

uint64_t sim_time_microseconds()
{
    return sim_time * 1000;
}
uint32_t sim_time_ms()
{
    return sim_time;
}

double sim_time_sec()
{
    return ((double)sim_time) / 1000.0;
}

int *sim_time_type()
{
    return (int *)(&time_type);
}
const char *sim_time_labels_separated_by_zeroes()
{
    return time_type_labels;
}