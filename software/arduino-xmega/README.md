# Arduino-XMega patches

1. Get the base software from https://github.com/akafugu/Xmegaduino
2. Under the installation directory in `hardware/xmegaduino/variants` symlink/copy the directories from the variants directory in this repo
3. Under the installation directory in `hardware/xmegaduino/` to `board.txt` add (to end of file) the contents of `add_to_boards.txt`

I (rambo) [updated](https://github.com/rambo/arduino-tiny/tree/attiny1634/avr-gcc) the AVR toolchain but I'm not 100% it's required.

## More detailed instructions

1. Download correct package for your platform from [download page](https://github.com/akafugu/Xmegaduino/downloads) (MacOS, Linux or Windows)
2. Extract the package
3. Get this project by checking it out from GitHub with `git clone https://github.com/HelsinkiHacklab/XMega-boards.git`
4. Copy or link `hhl_xmega32_v1_pdi` from `XMega-boards/software/arduino-xmega/variants/` under `hardware/xmegaduino/variants` in the directory you extracted from package in step 2.
5. Add text from `add_to_boards.txt` in `boards.txt` file in `hardware/xmegaduino`
6. Depending on your platform, the `hardware` directory may be in different places
    * On Windows and Linux package extracts into directory called `arduino`and `hardware` is a subdirectory under it.
    * On MacOS package extracts into Arduino.App application bundle and `hardware` is inside it under `Contents/Resources/Java`. You can either Ctrl-click on Finder and select "Show package contents". On commandline the application bundle shows as a regular directory.
7. If you don't have git (Windows), you can either download the repository as zipfile from repository's front page or use "raw" button to get individual files. If you do latter, remember to create `hhl_xmega32_v1_pdi` directory and put `pins_arduino.h` and `serial_init.cpp` in there.

## TODO

Instructions on how to make Arduino IDE to keep the hex-file (and how to find it) so you can use dfu_programmer in case you have no PDI-capable programmer handy

