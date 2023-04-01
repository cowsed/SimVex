#include <stdint.h>
#include "vex_task.h"
#include "sim/util.h"
#include <thread>
/*-----------------------------------------------------------------------------*/
/** @file    vex_task.h
 * @brief   Header for task control class
 */
/*---------------------------------------------------------------------------*/

namespace vex
{
    static std::thread m;
    /**
     * @brief Use this class to create and control tasks.
     */

    int32_t task::_index(int (*callback)(void))
    {
        print_unimplimented();
        return -1;
    }
    void task::_stopAll() { print_unimplimented(); }
    void task::_dump() { print_unimplimented(); }

    task::task() { print_unimplimented(); }
    /**
     * @brief Constructs a task with a function callback.
     * @param callback A reference to a function.
     */
    task::task(int (*callback)(void)) { print_unimplimented(); 
        m = std::thread(callback);
    }

    /**
     * @brief Constructs a task with a function callback.
     * @param callback A reference to a function.
     * @param arg A void pointer that is passed to the callback.
     */
    task::task(int (*callback)(void *), void *arg) { print_unimplimented(); }

    /**
     * @brief Constructs a task with a function callback and a priority.
     * @param callback A reference to a function.
     * @param priority Sets the priority of the task.
     */
    task::task(int (*callback)(void), int32_t priority) { print_unimplimented(); }

    /**
     * @brief Constructs a task with a function callback and a priority.
     * @param callback A reference to a function.
     * @param arg A void pointer that is passed to the callback.
     * @param priority Sets the priority of the task.
     */
    task::task(int (*callback)(void *), void *arg, int32_t priority) { print_unimplimented(); }
    task::~task() { print_unimplimented(); }

    // static const int32_t taskPrioritylow = 1;
    // static const int32_t taskPriorityNormal = 7;
    // static const int32_t taskPriorityHigh = 15;

    /**
     * @brief Stops the specified task.
     * @param t The task to be stopped.
     */
    void task::stop(const task &t) { print_unimplimented(); }

    /**
     * @brief Suspends the specified task for later use.
     * @param t The task to be suspended.
     */
    void task::suspend(const task &t) { print_unimplimented(); }

    /**
     * @brief Resumes a specified task that has been suspended.
     * @param t The task to be resumed.
     */
    void resume(const task &t) { print_unimplimented(); }

    /**
     * @brief Gets the priority of a task.
     * @return Returns an integer that represents the current priority of the specified task.
     * @param t The task to get priority of.
     */
    int32_t priority(const task &t)
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief Sets the priority of the specified task.
     * @param t The task to set the priority on.
     * @param priority The priority level of a task.
     */
    void task::setPriority(const task &t, int32_t priority) { print_unimplimented(); }

    // these act on this task
    /**
     * @brief Stops the task.
     */
    void task::stop() { print_unimplimented(); }

    /**
     * @brief Suspends the task until the task is told to resume.
     */
    void task::suspend() { print_unimplimented(); }

    /**
     * @brief Resumes the previously suspended task.
     */
    void task::resume() { print_unimplimented(); }

    /**
     * @brief Gets the priority of the task.
     * @return Returns an integer that represents the priority of the task.
     */
    int32_t task::priority()
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief Sets the priority of the task.
     * @param priority The priority level of the task.
     */
    void task::setPriority(int32_t priority) { print_unimplimented(); }

    /**
     * @brief Gets the task's index.
     * @return Returns an integer that represents the index of the task.
     */
    int32_t task::index(void)
    {
        print_unimplimented();
        return -1;
    }

    /**
     * @brief Sets the task to sleep for the specified amount of time (in milliseconds).
     * @param time The number of milliseconds for the task to sleep.
     */
    void task::sleep(uint32_t time) { print_unimplimented(); }

    /**
     * @brief return control to the scheduler and allow other tasks to run.
     */
    void task::yield() { print_unimplimented(); }

    /**
     * @brief Stops the task of the passed in function.
     * @param callback A reference to a function.
     */
    void task::stop(void *callback, int callbackId) { print_unimplimented(); }

    void task::stopAll() { print_unimplimented(); }

};

// namespace vex
// {
//     /**
//      * @brief Use this class to synchronize access to resources.
//      */
//     class semaphore
//     {
//     private:
//         static bool _initialized;
//         uint32_t _sem;

//     protected:
//     public:
//         semaphore();
//         ~semaphore();

//         /**
//          * @brief Attempts to lock the semaphore. If the semaphore is previously locked, it will block until the semaphore is unlocked.
//          */
//         void lock();

//         /**
//          * @brief Attempts to lock the semaphore. If the semaphore is previously locked, it will block until the timeout has expired or the semaphore is unlocked.
//          * @param time The maximum amount of time to wait for the semaphore to be unlocked in milliseconds.
//          */
//         void lock(uint32_t time);

//         /**
//          * @brief Unlocks a locked semaphore.
//          */
//         void unlock();

//         /**
//          * @brief Checks to see if the semaphore was locked and is owned by the current task.
//          * @return Returns a true Boolean if the semaphore was locked and is owned by the current task.
//          */
//         bool owner();
//     };
// };
