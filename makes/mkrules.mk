# VEXcode mkrules.mk 2019_03_26_01

# compile C files
$(BUILD)/%.o: %.c $(SRC_H)
	$(Q)$(MKDIR)
	$(ECHO) "CC  $<"
	$(Q)$(CC) $(CFLAGS) $(INC) -c -o $@ $<
	
# compile C++ files
$(BUILD)/%.o: %.cpp $(SRC_H) $(SRC_A)
	$(Q)$(MKDIR)
	$(ECHO) "CXX $<"
	$(Q)$(CXX) $(CXX_FLAGS) $(INC) -c -o $@ $<
	
# create executable 
$(BUILD)/$(PROJECT).elf: $(OBJ) $(TOOLCHAIN)/$(PLATFORM)/build/libsimv5rt.a
	$(ECHO) "LINK $@"
	$(Q)$(LINK) $(LNK_FLAGS) -o $@ $^ $(LIBS)
	$(Q)$(SIZE) $@

# create binary 
$(BUILD)/$(PROJECT).bin: $(BUILD)/$(PROJECT).elf
	$(Q)$(OBJCOPY) -O binary $(BUILD)/$(PROJECT).elf $(BUILD)/$(PROJECT).bin
	$(Q)cp $(BUILD)/$(PROJECT).elf $(PROJECT)
# clean project
clean:
	$(info clean project)
	$(Q)$(CLEAN)