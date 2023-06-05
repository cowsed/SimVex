VEX_SIM_INSTALL_PATH = /home/richie/VEX/Sim
VEX_SIM_MODEL_PATH = $(VEX_SIM_INSTALL_PATH)/sdk/sim_vexv5/media/Models/

VERBOSE = 0

PROJECT = simv5rt

PROJECTLIB = lib$(PROJECT)#libsimv5rt


SRC_C = $(wildcard src/*.cpp) 
SRC_C += $(wildcard src/*/*.cpp) 
SRC_C += $(wildcard src/*/*/*.cpp) 
SRC_C += $(wildcard src/*/*/*/*.cpp) 
SRC_C += $(wildcard src/*/*/*/*/*.cpp)

SRC_C += $(wildcard vendor/imgui/*.cpp) 
SRC_C += vendor/imgui/backends/imgui_impl_glfw.cpp
SRC_C += vendor/imgui/backends/imgui_impl_opengl3.cpp

# SRC_C += $(wildcard vendor/assimp/code/*/*.cpp) 
# SRC_C += $(wildcard vendor/assimp/code/*/*/*.cpp) 
# SRC_C += $(wildcard vendor/assimp/code/*/*/*/*.cpp) 
# SRC_C += $(wildcard vendor/assimp/contrib/pugixml/src/*.cpp) 
# SRC_C += $(wildcard vendor/assimp/contrib/unzip/*.c) 
# SRC_C += $(wildcard vendor/assimp/contrib/zip/src/*.c) 
# SRC_C += $(wildcard vendor/assimp/contrib/zlib/*.c) 
SRC_C += $(wildcard vendor/*.) 


SRC_H += $(wildcard include/*.h)
SRC_H += $(wildcard include/*/*.h)
SRC_H += $(wildcard include/*/*/*.h)
SRC_H += $(wildcard include/*/*/*/*.h)
SRC_H += $(wildcard include/*/*/*/*/*.h)
SRC_H += $(wildcard vendor/imgui/*.h)
# SRC_H += $(wildcard vendor/assimp/contrib/pugixml/src/*.hpp)

SRC_H += $(wildcard vendor/bullet3/src/*.h)
SRC_H += $(wildcard vendor/bullet3/src/*/*.h)
SRC_H += $(wildcard vendor/bullet3/src/*/*/*.h)

SRC_A = $(wildcard vendor/bullet3/build/src/*/*.a)


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

CXX = clang-15

BOTH_FLAGS = -O2 -Wall -Werror=return-type -Wextra  -ggdb
BOTH_FLAGS += -DMODEL_PATH="\"$(VEX_SIM_MODEL_PATH)\""
BOTH_FLAGS += -DASSIMP_BUILD_BOOST_WORKAROUND -DASSIMP_BUILD_NO_C4D_IMPORTER 
BOTH_FLAGS += -DASSIMP_BUILD_NO_EXPORT -DASSIMP_BUILD_NO_IFC_IMPORTER -DASSIMP_BUILD_NO_OPENGEX_IMPORTER -DASSIMP_BUILD_NO_X3D_IMPORTER
BOTH_FLAGS += -DASSIMP_BUILD_NO_M3D_IMPORTER
BOTH_FLAGS += -DPUGIXML_HEADER_ONLY

C_FLAGS = $(BOTH_FLAGS)
CXX_FLAGS = $(BOTH_FLAGS) -O2 -Wall -Werror=return-type -Wextra --std=gnu++20 

# sim stuff
INC = -I$(VEX_SIM_INSTALL_PATH)/sdk/sim_vexv5/include 

# ImGui
INC += -I/home/richie/VEX/Sim/sdk/sim_vexv5/vendor/imgui -I/home/richie/VEX/Sim/sdk/sim_vexv5/vendor/imgui/backends 
# Assimp
INC += -I$(VEX_SIM_INSTALL_PATH)/sdk/sim_vexv5/vendor/assimp/include -I/home/richie/VEX/Sim/sdk/sim_vexv5/vendor/assimp
INC += -I$(VEX_SIM_INSTALL_PATH)/sdk/sim_vexv5/vendor/assimp/code  -I/home/richie/VEX/Sim/sdk/sim_vexv5/vendor/assimp/contrib/unzip/
INC += -I$(VEX_SIM_INSTALL_PATH)/sdk/sim_vexv5/vendor/assimp/contrib/rapidjson/include
INC += -I$(VEX_SIM_INSTALL_PATH)/sdk/sim_vexv5/vendor/assimp/contrib/pugixml/src
INC += -I$(VEX_SIM_INSTALL_PATH)/sdk/sim_vexv5/vendor/bullet3/src

# STB (#include "stb/thing")
INC += -I$(VEX_SIM_INSTALL_PATH)/sdk/sim_vexv5/vendor/


all: $(BUILD)/$(PROJECTLIB).a


# compile C++ files
$(BUILD)/%.o: %.cpp $(SRC_H) $(SRC_A)
	$(Q)$(MKDIR)
	$(ECHO) "CXX $<"
	$(Q)$(CXX) $(CXX_FLAGS) $(INC) -c -o $@ $<

# compile C files
$(BUILD)/%.o: %.c $(SRC_H) $(SRC_A)
	$(Q)$(MKDIR)
	$(ECHO) "CXX $<"
	$(Q)$(CXX) $(C_FLAGS) $(INC) -c -o $@ $<


# create archive
$(BUILD)/$(PROJECTLIB).a: $(OBJ)
	$(ARCH) $(ARCH_FLAGS) $@ $^
	cp $(BUILD)/$(PROJECTLIB).a $(PROJECTLIB).a




# clean project
clean:
	$(info clean project)
	rm -rf $(BUILD)/src
	rm -rf $(BUILD)/libsimv5rt.a
	rm $(PROJECTLIB).a

deepclean:
	$(info deepclean project)
	rm -rf $(BUILD)
	rm $(PROJECTLIB).a
