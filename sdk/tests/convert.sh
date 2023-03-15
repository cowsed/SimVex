for FILE in *.obj; do arm-none-eabi-objdump -D -C --demangle $FILE > $FILE.asm; done
