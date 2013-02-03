# Arduino-XMega patches

1. Get the base software from https://github.com/akafugu/Xmegaduino
2. Under the installation directory in `hardware/xmegaduino/variants` symlink/copy the directories from the variants directory in this repo
3. Under the installation directory in `hardware/xmegaduino/` to `board.txt` add (to end of file) the contents of `add_to_boards.txt`

I (rambo) [updated](https://github.com/rambo/arduino-tiny/tree/attiny1634/avr-gcc) the AVR toolchain but I'm not 100% it's required.


## TODO

Instructions on how to make Arduino IDE to keep the hex-file (and how to find it) so you can use dfu_programmer in case you have no PDI-capable programmer handy

