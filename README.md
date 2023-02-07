# Sim Vex API

## Making
Making the API - necessary for using the simulator for the first time. After it's been built once and you're testing robot code you will never have to do this build again. When the Sim build script is run it will link against the libsimv5rt.a rather than the actual libv5rt.a


## Linking

Linking is the fancy part

Inputs:
- libsimv5rt.a
- Robot Code (.cpp/.h) including main.cpp

Outputs:
Binary that runs simulation and robot code