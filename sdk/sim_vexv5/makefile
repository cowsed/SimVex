VERBOSE = 1

PROJECT = simv5rt

PROJECTLIB = lib$(PROJECT)#libsimvexc5


SRC_C = $(wildcard src/*.cpp) 
SRC_C += $(wildcard src/*/*.cpp) 
SRC_C += $(wildcard src/*/*/*.cpp) 

SRC_H = $(wildcard include/*.h)
SRC_H = $(wildcard include/*/*.h)
SRC_H = $(wildcard include/*/*/*.h)


OBJ = $(addprefix $(BUILD)/, $(addsuffix .o, $(basename $(SRC_C))) )

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
CXX_FLAGS = -O2 -Wall -Werror=return-type -fno-exceptions  -std=gnu++11  
INC = -I/home/richie/VEX/Sim/sdk/sim_vexv5

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
