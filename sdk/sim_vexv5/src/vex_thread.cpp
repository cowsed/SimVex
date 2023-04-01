#include "vex_thread.h"
#include <stdint.h>
#include "sim/util.h"
#include <thread>
namespace vex
{
    /**
     * @brief Creates a thread object.
     * @param callback A reference to a function.
     */
    thread::thread(int (*callback)(void)) { print_unimplimented(); }
    /**
     * @brief Creates a thread object.
     * @param callback A reference to a function.
     * @param arg A void pointer that is passed to the callback.
     */
    thread::thread(int (*callback)(void *), void *arg) { print_unimplimented(); }
    /**
     * @brief Creates a thread object.
     * @param callback A reference to a function.
     * @param arg A void pointer that is passed to the callback.
     */
    thread::~thread() { print_unimplimented(); }

    /**
     * @brief Gets the ID of the thread.
     * @return Returns an integer that represents the thread's ID.
     */
    int32_t thread::get_id()
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief Waits for the other thread to finish its execution.
     */
    void thread::join() { print_unimplimented(); }

    /**
     * @brief Checks whether the thread is joinable.
     * @return Returns a true Boolean if the thread is joinable.
     */
    bool thread::joinable()
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Gets the pointer to the native handle of the thread.
     */
    void *thread::native_handle()
    {
        print_unimplimented();
        return NULL;
    }

    /**
     * @brief Swaps the thread IDs with another specified thread in the parameter.
     * @param __t The thread to swap to.
     */
    void thread::swap(thread &__t) { print_unimplimented(); }

    // non standard
    /**
     * @brief Stops the thread.
     */
    void thread::interrupt() { print_unimplimented(); }

    /**
     * @brief Stop all threads except main.
     */
    void thread::interruptAll() { print_unimplimented(); }

    /**
     * @brief Sets the priority of the thread.
     * @param priority The priority of the thread to be set to.
     */
    void thread::setPriority(int32_t priority) { print_unimplimented(); }

    /**
     * @brief Gets the priority of the thread.
     * @return Returns the priority of the thread as an integer.
     */
    int32_t thread::priority()
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief Gets the number of concurrent threads supported by the hardware.
     * @return An integer that represents the amount of concurrent threads supported by the hardware.
     */
    int32_t hardware_concurrency()
    {
        print_unimplimented();
        return -1;
    }

    namespace this_thread
    {

        /**
         * @brief Gets the ID of the thread
         * @return Returns an integer that represents the thread's ID.
         */
        int32_t get_id()
        {
            print_unimplimented();
            return -1;
        }

        /**
         * @brief Suspends the current thread.
         */
        void yield() { print_unimplimented(); }

        /// sleep_for
        /**
         * @brief Suspends the current thread until the time is expired in milliseconds.
         * @param time The amount of time for the thread to sleep.
         */
        void sleep_for(uint32_t time) { print_unimplimented(); }

        /// sleep_until
        /**
         * @brief Sleeps until the system timer reaches the time specified in the parameter.
         * @param time The amount of time for the thread to sleep.
         */
        void sleep_until(uint32_t time) { print_unimplimented(); }

        // non standard
        /**
         * @brief Sets the priority of the current thread.
         * @param priority The priority of the thread to be set to.
         */
        void setPriority(int32_t priority) { print_unimplimented(); }
        /**
         * @brief Gets the priority of the current thread.
         * @return Returns the priority of the current thread as an integer.
         */
        int32_t priority()
        {
            print_unimplimented();
            return -1;
        }
    };

/**
 * @brief Use this class to create and control mutexes.
 */
#define MUTEX_LOCKED 1
#define MUTEX_UNLOCKED 0
    mutex::mutex() : _sem(MUTEX_UNLOCKED)
    {
    }
    mutex::~mutex() {}

    /**
     * @brief Locks the mutex and blocks if the mutex is not available.
     */
    void mutex::lock()
    {
        while (_sem != MUTEX_UNLOCKED)
        {
            std::this_thread::yield();
        }
        // available
        _sem = MUTEX_LOCKED;
    }

    /**
     * @brief Try to lock the mutex and returns if the mutex is not available.
     * @return Returns true if successful and false if the mutex is owned by another thread.
     */
    bool mutex::try_lock()
    {
        if (_sem == MUTEX_UNLOCKED)
        {
            _sem = MUTEX_LOCKED;
            return true;
        }
        return false;
    }

    /**
     * @brief Unlocks the mutex.
     */
    void mutex::unlock() { _sem = MUTEX_UNLOCKED; }
};