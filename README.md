# Gameboy DeMiSTified

22/09/21 DECA port DeMiSTified by somhic from original MiST gameboy https://github.com/mist-devel/gameboy.   

Special thanks to Alastair M. Robinson creator of [DeMiSTify](https://github.com/robinsonb5/DeMiSTify) for helping me. 

Original module sound errors and signed/unsigned troubles have been arranged thanks to @rampa069.

I've also added some of his solutions from https://github.com/robinsonb5/gameboy like phase shift at SDRAM_CLK, and content from firmware/config.h and overrides.c.

[DeMiSTify guide used](https://github.com/DECAfpga/DECA_board/tree/main/Tutorials/DeMiSTify).

**Features:**

* HDMI video output
* VGA video output is available through GPIO (see pinout below). Tested with PS2 & R2R VGA adapter (333)  https://www.waveshare.com/vga-ps2-board.htm
* Line out (3.5 jack green connector) and HDMI audio output
* PWM audio is available through GPIO (see pinout below)
* Joystick available through GPIO  (see pinout below).  **Joystick power pin must be 2.5 V**
  * **DANGER: Connecting power pin above 2.6 V may damage the FPGA**
  * This core is prepared for Megadrive 6 button gamepads as it outputs a permanent high level on pin 7 of DB9

**Additional hardware required**:

- SDRAM module. Tested with 32 MB SDRAM board for MiSTer (extra slim) XS_2.2 ([see connections](https://github.com/SoCFPGA-learning/DECA/tree/main/Projects/sdram_mister_deca))
- PS/2 Keyboard connected to GPIO  (see pinout below)

##### Versions:

v0.1 VGA version only. I2S audio line out working

v0.2 SDRAM_CLK phase shift -1.5 ns

v0.3 HDMI video&audio 640x576@60Hz

v0.4 Added Demistified versions of Neptuno and Unamiga reloaded

v0.5 Updated Demistify. Added Joystick pinout

### Instructions to compile the project for a specific board:

(Note that sof/svf files are already included in /deca/output_files/)

```sh
git clone https://github.com/DECAfpga/gameboy
cd gameboy
#Do a first make (will finish in error). It will download missing submodules 
make
#when asked just accept default settings with Enter key
#Create file site.mk in DeMiSTify folder 
cd DeMiSTify
cp site.template site.mk
#Edit site.mk and add your own PATHs to Quartus (Q19)
gedit site.mk
#[OPTIONAL STEP only needed if main branch is outdated]
git checkout somhic
#Go back to root folder and do a make with board target (deca, neptuno, uareloaded). If not specified it will compile for all targets.
cd ..
make BOARD=deca
```

After that you can:

* Flash bitstream directly from [command line](https://github.com/DECAfpga/DECA_binaries#flash-bitstream-to-fgpa-with-quartus)
* Load project in Quartus from /deca/gameboy_deca.qpf

### Pinout connections:

![pinout_deca](pinout_deca.png)

Mouse is not required to use this core

**Others:**

* Button KEY0 is a reset button

### STATUS

* Working fine

* HDMI video outputs special resolution so will not work on all monitors. 

### OSD Controls

* F12 show/hide OSD 
* The reset button KEY0 resets the controller (so re-initialises the SD card if it's been changed, reloads any autoboot ROM.) The OSD Reset menu item resets the core itself.

### Follows original readme.md content:

Source code for Gameboy for MIST
================================

This is source code of a gameboy implementation for the MIST. 

It's based on the [t80](http://opencores.org/project,t80) CPU core. A minor
fix was needed for the "LD ($FF00+C)" instruction.

The audio implementation has been taken from the PACE framework. The
original file is available in the [pacedev svn](https://svn.pacedev.net/repos/pace/sw/src/component/sound/gb/gbc_snd.vhd).

Binaries are available at https://github.com/mist-devel/mist-binaries/tree/master/cores/gameboy.
