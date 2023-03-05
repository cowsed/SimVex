VERBOSE = 0

PROJECT = simv5rt

PROJECTLIB = lib$(PROJECT)#libsimvexv5


SRC_C = $(wildcard src/*.cpp) 
SRC_C += $(wildcard src/*/*.cpp) 
SRC_C += $(wildcard src/*/*/*.cpp) 

SRC_C += $(wildcard vendor/imgui/*.cpp) 
SRC_C += vendor/imgui/backends/imgui_impl_glfw.cpp
SRC_C += vendor/imgui/backends/imgui_impl_opengl3.cpp

SRC_H = $(wildcard include/*.h)
SRC_H = $(wildcard vendor/imgui/*.h)



OBJ = $(addprefix $(BUILD)/, $(addsuffix .o, $(basename $(SRC_C))) )

# allow verbose to be set by makefile if not set by app
ifndef VERBOSE
BUILD_VERBOSE ?= 0
else
BUILD_VERBOSE ?= $(VERBOSE)
endif

# use verbose flag
ifeq ($(BUILD_VERBOSE),0)
Q = @
else
Q =
endif


BUILD = build
ECHO    = @echo
MKDIR = mkdir -p "$(@D)" 2> /dev/null || :

ARCH = ar
ARCH_FLAGS = rcs

CXX = clang

#-lopengl32 -lglfw3 -lglew32


CXX_FLAGS = -O2 -Wall -Werror=return-type --std=gnu++17
INC = -I/home/richie/VEX/Sim/sdk/sim_vexv5 -I/home/richie/VEX/Sim/sdk/sim_vexv5/vendor/imgui -I/home/richie/VEX/Sim/sdk/sim_vexv5/vendor/imgui/backends
all: $(BUILD)/$(PROJECTLIB).a


# compile C++ files
$(BUILD)/%.o: %.cpp $(SRC_H) $(SRC_A)
	$(Q)$(MKDIR)
	$(ECHO) "CXX $<"
	$(Q)$(CXX) $(CXX_FLAGS) $(INC) -c -o $@ $<

# create archive
$(BUILD)/$(PROJECTLIB).a: $(OBJ)
	$(ARCH) $(ARCH_FLAGS) $@ $^
	cp $(BUILD)/$(PROJECTLIB).a $(PROJECTLIB).a




# clean project
clean:
	$(info clean project)
	rm -rf $(BUILD)
	rm $(PROJECTLIB).a
