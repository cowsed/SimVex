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
- OpenGL 4.something (install)
- GLFW 3.3 (install)
- glm https://github.com/g-truc/glm (install)
- Dear ImGui (submoduled)
- Assimp (submoduled)
- Bullet3D (submoduled*)

## Installing Dependencies
OpenGL, GLFW, and GLM Needs to be installed on your system

Assimp requires the following steps to install
```bash
cd sdk/sim_vexv5/vendor/assimp/
cmake CMakeLists.txt -DBUILD_SHARED_LIBS=OFF
make -j2
```
where 2 is the number of cores you wish to devote to compilation

Bullet3D requires the following steps to install (for now)
```bash
cd sdk/sim_vexv5/vendor/bullet3/
mkdir build
cd build/
cmake ../ -DUSE_DOUBLE_PRECISION=ON
make -j2
```
where 2 is the number of cores you wish to devote to compilation

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
