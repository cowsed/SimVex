# Custom Signals
Since we don't have real hardware nor direct control of interrupts, we need some way of handling the vex::mevent type of callbacks

while we could just call the callbacks directly in the simulation code when they happen, if a callback takes more than an instant (an example from our code is a callback that starts a motor delays and stops) the simulation will get off

Mioght be more complicated than this because we want the main thread to handle the SIGUSR1 rather than any other thread because of the reasons mentioned above

This mught be an unknown - do callbacks block the main thread on vex
if they dont, we can just start a new thread on the simulator side to handle that
if that thread messes with vex code, thats a lack of robustness in the vex code
