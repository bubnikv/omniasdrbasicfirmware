# Omnia SDR Basic

This is a firmware fork for the Omnia Basic SDR (now Proficio Basic SDR) by Vojtech Bubnik OK1IAK. In the current incarnation, the firmware integrates a Iambic keyer,
which produces an IQ transmit tone at VFO+1kHz frequency and a 1.2kHz sine sidetone at the pin 29 (P1[4], connected to the programming connector), therefore a full BK transmit is possible without the host SDR application even knowing the hardware is transmitting.

The kits available from http://www.multus-sdr.com/

## There are following limitations of the current firmware:

- The standalone CW transmit works only as long as a host application keeps a receive audio stream from the Omnia open. This is due to the fact that that the transmit audio packets are produced at the same rythm as the receive audio packets.
- The sidetone is currently locked to 1.2kHz. This is to make the tone audible even with a tiny high frequency audio transducer. In the future the sidetone frequency will be made configurable.
- There is no amplitude / phase correction of the transmit IQ tone. This will change in the future, and the amplitude / phase correction will be handled by pre-computing the corrected IQ waveforms into RAM.
- The transmit IQ tone is fixed and there is no provision for the host application to change either the IQ tone / VFO offset, or the transmit VFO frequency. In the future the Linrad host application will be modified to provide a TX VFO frequency to the Omnia immediately after the tuning click, so that the Omnia could retune its VFO autonomously at the first keyer symbol, maintaining the full BK functionality.
- While this firmware feeds the host application with a muted audio stream during the TX, neither HDSDR nor Linrad handle these zero receive intervals correctly. The Linrad application will be modified in the future to handle these zero receive audio packets as mute commands. Unfortunately the HDSDR is closed source and the author does not respond to such feature requests.
- The keyer is locked to Iambic-B mode and to a fixed speed cca. 18WPM. This will be made configurable in the future, either through add-on buttons or host commands.

## Following hardware extensions are recommended:

To allow a zero latency QSK, this firmware generates a sidetone on pin 29 (P1[4]). The sidetone is generated by an integrated 8 bit D/A current converter feeding a grounded 4.7k resistor. Therefore the tone output shows steps at the D/A modulation frequency and the output is weak and needs amplification. I used a common LM386 integrated amplifier to drive a tiny audio transducer or a small speaker. Another possibility is to feed the audio into a sound card line input and configure the integrated sound card mixer to mix the sidetone with the SDR receive audio.

Couple of buttons are always handy to control the integrated keyer without a host intervention. 

![Add-on board schematic](https://github.com/bubnikv/omniasdrbasicfirmware/blob/master/kicad/omnia-addon-schematic.png)

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

The "bootloader" project must be built before you can build the "basic" project.
As of now the Release build of the "basic" projects links incorrectly the Debug result of the "bootloader" project, so you have to build the Debug "bootloader" project before building the Release "basic" project. Current code does not fit the FLASH if the "basic" project is compiled in Debug mode, you have to build "basic" in the Release mode.
