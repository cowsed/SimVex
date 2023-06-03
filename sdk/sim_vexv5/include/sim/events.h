#pragma once


namespace sim
{
    namespace event_handler
    {
        const int MAX_EVENTS_PER_INDEX = 128;

        // number of devices that can register callbacks. _getIndex() gives you this index
        const int NUM_INDICES = 32;

        typedef void (*mevent_func)();

        // tell mevent that it exists and we will use it
        void register_mevent(int index, int event_id);
        void set_event_callback(int index, int event_id, mevent_func callback);
        bool send_mevent(int index, int event_id, bool allowed_pre_auton = false);

        //  pause while running
        void pause_all_mevents();
        // resume after pause
        void resume_all_mevents();

        // between modes and on close, end all mevents and their threads
        void end_all_mevents();

        void setup();
        void drawUI();
    }
}