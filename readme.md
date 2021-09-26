# Gameboy DeMiSTified

22/09/21 DECA port DeMiSTified by somhic from original MiST gameboy https://github.com/mist-devel/gameboy.   

Thanks to Alastair for his help and I've added also some of his solutions from https://github.com/robinsonb5/gameboy like phase shift at SDRAM_CLK, config.h and overrides.c.

[DeMiSTify guide used](https://github.com/DECAfpga/DECA_board/tree/main/Tutorials/DeMiSTify).

v0.1 VGA version only. I2S audio line out working

v0.2 SDRAM_CLK phase shift -1.5 ns

v0.3 HDMI video&audio 640x576@60Hz

v0.4 Added Demistified versions of Neptuno and Unamiga reloaded

Source code for Gameboy for MIST
================================

This is source code of a gameboy implementation for the MIST. 

It's based on the [t80](http://opencores.org/project,t80) CPU core. A minor
fix was needed for the "LD ($FF00+C)" instruction.

The audio implementation has been taken from the PACE framework. The
original file is available in the [pacedev svn](https://svn.pacedev.net/repos/pace/sw/src/component/sound/gb/gbc_snd.vhd).

Binaries are available at https://github.com/mist-devel/mist-binaries/tree/master/cores/gameboy.
