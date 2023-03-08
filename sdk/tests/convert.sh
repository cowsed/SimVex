for FILE in *.obj; do arm-none-eabi-objdump -D $FILE > $FILE.asm; done
