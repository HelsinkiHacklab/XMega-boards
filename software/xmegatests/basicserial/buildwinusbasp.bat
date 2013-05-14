rem Compile and link
avr-gcc -mmcu=atxmega32a4u -I. -Os -Wall main.cpp -o main.elf

rem Disassembly
remavr-objdump -Dx main.elf > main.asm 

rem Convert progmem from .elf to .hex
avr-objcopy -j .text -j .data -O ihex main.elf main.hex 
rem Convert eeprom from .elf to .eep
rem avr-objcopy -j .eeprom --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0 --no-change-warnings -O ihex main.elf main.eep 

rem Program the chip
rem avrdude -c avrisp2 -P usb -p x32a4 -U flash:w:main.hex
rem avrdude -c avrisp2 -P usb -p x32a4 -U flash:w:main.hex -U eeprom:w:main.eep
avrdude -c usbasp -P usb -p x32a4 -U flash:w:main.hex


rem dfu-programmer atxmega32a4u flash main.hex
