# Omnia SDR Basic


Kits available from http://omnia-sdr.com

## Features

 * Single full-speed USB interface for audio and control.
 * 1 watt transmitter.
 * DG8SAQ/PE0FKO compatible control interface.
 * Open Source firmware.  Apache 2.0 license.

## Building Firmware

The project was built with PSoC Creator 3.3 SP1 
http://www.cypress.com/

It is normal to get errors about missing files until you have built
the project for the first time.  This is because the generated files
have been excluded from the git repository. 

The bootloader project must be built before you can build the peaberry project.
