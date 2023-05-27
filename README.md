# Sim Vex API

## Supported Platforms

| Platform        | State | 
|-----------------|-------|
| My Computer     |  ✅   | 
| Everything else |  ❌   |

## Building the Sim
Only have to do this once per update.

Enter the sdk/sim_vexv5 directory and use `make`
You will probably have to change some paths in order to build on your computer

Dependencies
- OpenGL 4.something
- GLFW 3.3
- glm https://github.com/g-truc/glm
- Dear ImGui
- Assimp
- Bullet3D (eventually)

## Building your robot code

Use the supplied SetupUtility to build and run your code

### Building manually
(destructive)
take the mkenv.mk and mkrules.mk from `makes/` and replace the ones in vex/ in your robot code with them
then, from the root of the robot project, run make

optional:
specify name of project with `make P=ProjectName`

Outputs:
- Binary that runs simulation and robot code
