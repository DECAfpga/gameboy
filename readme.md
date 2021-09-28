# Gameboy DeMiSTified

22/09/21 DECA port DeMiSTified by somhic from original MiST gameboy https://github.com/mist-devel/gameboy.   

Special thanks to Alastair M. Robinson creator of [DeMiSTify](https://github.com/robinsonb5/DeMiSTify) for helping me. 

I've also added some of his solutions from https://github.com/robinsonb5/gameboy like phase shift at SDRAM_CLK, and content from firmware/config.h and overrides.c.

[DeMiSTify guide used](https://github.com/DECAfpga/DECA_board/tree/main/Tutorials/DeMiSTify).

##### Versions:

v0.1 VGA version only. I2S audio line out working

v0.2 SDRAM_CLK phase shift -1.5 ns

v0.3 HDMI video&audio 640x576@60Hz

v0.4 Added Demistified versions of Neptuno and Unamiga reloaded

### Instructions to compile the project for a specific board:

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
#Go back to root folder and do a make with board target (deca, neptuno, uareloaded). If not specified it will compile for all targets.
cd ..
make BOARD=deca
```

### Follows original readme.md content:

Source code for Gameboy for MIST
================================

This is source code of a gameboy implementation for the MIST. 

It's based on the [t80](http://opencores.org/project,t80) CPU core. A minor
fix was needed for the "LD ($FF00+C)" instruction.

The audio implementation has been taken from the PACE framework. The
original file is available in the [pacedev svn](https://svn.pacedev.net/repos/pace/sw/src/component/sound/gb/gbc_snd.vhd).

Binaries are available at https://github.com/mist-devel/mist-binaries/tree/master/cores/gameboy.
