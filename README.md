## Overview

The Sharp MZ80A was a personal computer from the 1980's and Sharp considered that a 40 column screen with 25 rows was sufficient for the home market. For most purposes it was sufficient but
with the rise of CP/M requiring 80 column displays there was a number of external vendors who provided add on boards to enhance the video capabilities. Most of these boards used bespoke
hardware solutions such as the addition of a 6845 CRT controller and non-standard Monitor ROMS.  A study of the MZ80A hardware though revealed it was identical to the more costly business
machine, the MZ80B. The hardware in the MZ80A had been wired differently to cripple its capabilities, presumably for marketing reasons, so by rerouting the wiring it is fairly easy to achieve
an 80 column display. This upgrade makes such a change, it removes the video controller gate arrays off the main board and reroutes the wiring on a daughter PCB to achieve 40/80 column
switched display.

Also, a study of the monitor ROM and the hardware indicates the MZ80A was intended to have a colour output board upgrade similar to the Sharp MZ700 but was never commercially sold.
[Nibbles Lab](http://retropc.net/ohishi/museum/mz1200.htm) spotted this and designed a circuit to upgrade the MZ80A so that it could output video to a colour monitor. Taking this base 
circuit with some modifications (composite video) I've added it into this upgrade. Also as the Character Generator ROM was raised onto the daughter PCB I took the opportunity to use a
modern Flash RAM and in so doing allow the storage and switching of multiple Character ROMS, ie. MZ80A, MZ700 I/II, Japanese MZ80K Rom etc. The 32KByte Flash RAM can store 16 character
generator ROM sets which can be switched via the attribute RAM (4 ROMS in 1 of 4 blocks) and the control register.



## MZ80A 40/80 Colour Board

The following pictures display v1.0 of the board. A few issues existed during production:-<br/>
1. The kicad footprint editor, probably my mistake, switched the 2 gate array footprints. Thus the gatearrays were in the wrong position which required a fair bit of fine soldering to correct.<br/>
2. The oscillator wasnt giving a clean signal so the addition of a 100pF ceramic cap between the U14B pin 4 and ground corrected this.<br/>
3. The gatearray G signal was not connected between the two gatearrays even though it was in the circuit, it appeared to be a PCB break.<br/>

I have corrected the circuit diagram and intend to produce a v1.1 PCB in due course. One area of the design I am not happy with is the enabling of 40/80 character mode and selection of the Character Generator ROM enable signal. Due to the limit of signals available to the board from the Video connector and gate array risers, I had to use the top 4 addresses of the video attribute RAM. It works but if you are using colour output you get the odd random colour if the top 4 bytes are being displayed (I initially thought these bytes wouldnt be displayed but the hardware scroll does display them). I am currently perfecting a latching mechanism such that the write to the top 4 bytes doesnt affect the attribute RAM. Also I will make the Flash RAM programmable in-situ such that a PCG is possible.

### Hardware

![Sheet 2](../images/MZ80_80CLR_v1_0-2.png)

This portion is the colour generation circuit. Basically it adds a 2K Static RAM into the memory mapped location 0xD800 - 0xDFFF which is called the attribute RAM. The attribute RAM can be accessed by the CPU for read/write and the video circuitry will periodically scan each location,
both Character RAM and the new attribute RAM. As each byte is scanned by the video circuitry, its output is captured by IC U7 and used to generate a foreground and background colour signal according to the bits 6:4 (foreground) and 2:0 (background). Each bit pair 6+2, 5+1, 4+0 form the 3 basic colours, RGB
and each blended with the monochrome video signal to create the necessary RGB Video signal. The RGB is only digital, ie on/off, so a maximum of 8 colours foreground and 8 colours background can be generated. The actual colour seen on a monitor is controlled by the resistors R11:R19, R13:R1, R15:R17 and R20/R22. As RGB
on modern monitors is analogue, the voltage presented to the monitor via these resistor networks controls the colour. For Composite monitors, Q1 blends RGB and and composite Sync.

In addition to the colour generation circuit, IC15 on the motherboard, the Character Generator ROM, is lifted and replaced by IC U10, a 32KByte Flash RAM. Using bits 7 and 3 from the video attribute output stream of IC U7 and in combination with the latch IC U9, a Character Generator ROM set can be selected. The latch IC U9
selects a set of 4 out of 16 character generator sets within the 32KByte Flash RAM and the attribute bits allow subselection of the 4, thus each character can choose, via the attribute RAM, a possible 4 different character sets at any one time.

![Sheet 3](../images/MZ80_80CLR_v1_0-3.png)

This portion is the 40/80 column character generation circuit. It is basically the same circuit as seen in the Sharp MZ80B. The Sharp MZ80A has the same chipset but it is wired differently, ie capped! Using this circuit, the chips are rewired and thus able to selectably switch between 40 and 80 character modes. Latch IC U9
provides the switching signal.

### Software

This is a hardware only project controlled by software which resides in the Rom Filing System or the SA-1510 monitor. The only 'soft' ware is the Character Generator ROM and also to know how to program the hardware.

All control is performed through the latch IC U9 at address location 0xDFFF. This address is used by the attribute RAM (it was deemed free when I started the project as it should appear off screen) so a write to this location *may* corrupt the attribute of the last character and only if it is visible whe the 
Character RAM is scrolled to the bottom.  The next release will resolve this bug by using a coded latch so that only a special write sequence will set the latch, other non-coded writes will go to the attribute RAM. This mechanism is needed because the Colour Board does not have access to the IORQ line or the upper
address lines so is limited to using the 0xD000:0xD7FF and 0xD800:0xDFFF chip selects.

The table below shows the bit functions of the IC U9 which is a 74HCT373 octal latch. Thus a switch from 40 to 80 column mode requires a write of 0x80 into the control address 0xDFFF.

| Bit | Function                 | Description           |
|-----|--------------------------|-----------------------|
|  0  | Character ROM Set Bit 0  | Select one of 4 sets of Character Generator ROMS.  |
|  1  | Character ROM Set Bit 1  |                       |
|  2  | Unused                   |                       |
|  3  | Unused                   |                       |
|  4  | Unused                   |                       |
|  5  | Unused                   |                       |
|  6  | Unused                   |                       |
|  7  | 40/80 Column Mode        | Enable 80 Column mode when set to 1, 40 Column when set to 0 (default) |

The Character Generator ROM on the Colour Board allows for upto 16 CG-ROM images to be stored and selected. On most of the MZ80 machines, the CG-ROM is 2K in size. On the MZ700/800 it is 4K in size. I havent yet obtained all the possible Sharp CG-ROM images so for the time being, the Character Generator
Flash RAM IC U10) is loaded as follows:

| Slot  | Attribute Bits 7,3 | U9 Latch Bits 0:1 | Size   | ROM                   | Description                          |
|-------|--------------------|-------------------|--------|-----------------------|--------------------------------------|
|  0    |       0,0          |       0,0         |  2K    | mz-80acg.rom          | MZ80A European CG-ROM                |
|  1    |       0,1          |       0,0         |  2K    | MZ80K_cgrom.rom       | MZ80K European CG-ROM                |
|  2    |       1,0          |       0,0         |  2K    | MZ80K2E_Jap_cgrom.rom | MZ80K Japanese CG-ROM                |
|  3    |       1,1          |       0,0         |  2K    | MZFONT.rom            | Unknown origin CG-ROM                |
| 4 & 5 |    0,0 - 0,1       |       0,1         |  4K    | MZ700_cgrom.rom       | MZ700 European CG-ROM (2 banks)      |
| 6 & 7 |    1,0 - 1,1       |       0,1         |  4K    | MZ700_cgrom_jp.rom    | MZ700 Japanese CG-ROM (2 banks)      |
|  8    |       0,0          |       1,0         |  2K    | mz-80acg.rom          | MZ80A European CG-ROM                |
|  9    |       0,1          |       1,0         |  2K    | MZ80B.rom             | MZ80B European CG-ROM                |
|  10   |       1,0          |       1,0         |  2K    | mz-80acg.rom          | MZ80A European CG-ROM                |
|  11   |       1,1          |       1,0         |  2K    | mz-80acg.rom          | MZ80A European CG-ROM                |
|  12   |       0,0          |       1,1         |  2K    | mz-80acg.rom          | MZ80A European CG-ROM                |
|  13   |       0,1          |       1,1         |  2K    | mz-80acg.rom          | MZ80A European CG-ROM                |
|  14   |       1,0          |       1,1         |  2K    | mz-80acg.rom          | MZ80A European CG-ROM                |
|  15   |       1,1          |       1,1         |  2K    | mz-80acg.rom          | MZ80A European CG-ROM                |

This image is created by the shell script in the repository, \[ABS PATH\]/software/tools/make_cgrom.sh and can be executed as follows:

````bash
cd [ABS PATH]/software
./tools/make_cgrom.sh
````

The output image, ie. ../../MZ80A_80COLOUR/software/roms/COLOURBOARD_CG.rom, can be directly flashed into a 28C256 Flash RAM and mounted on the Colour Board.


In order to set a colour on the colour output, an attribute byte is written into the attribute RAM for each character written to the Character RAM. The bits of the attribute RAM have the following function:

| Bit | Function              |
|-----|-----------------------|
|  0  | Background Blue       |
|  1  | Background Red        |
|  2  | Background Green      |
|  3  | Character ROM Bit 0   |
|  4  | Foreground Blue       |
|  5  | Foreground Red        |
|  6  | Foreground Green      |
|  7  | Character ROM Bit 1   |

To write a Blue character on a Black background for a character 'A' at screen position 0,0 - write 0x41 to Character RAM location 0xD000, write 0x10 to attribute RAM location 0xD800. This assumes Character Generator subset 0.

To select a Character Generator Set, the set is selected by bits 1:0 in IC U9 and the CG ROM, 1 of 4 is selected by the attribute bits 7 & 3 as per the table above.


### To Do
1. Correct control register access such that it doesnt write to attribute RAM.<br/>
2. Add additional logic to enable writes to the PCG Flash RAM.<br/>


## Credits

The original Colour circuit is copyright Nibbles Lab 2018 which was adapted for this design.  Where I have used or based any component on a 3rd parties design I have included the original authors copyright notice within the headers or given due credit. All 3rd party software, to my knowledge and research, is open source and freely useable, if there is found to be any component with licensing restrictions, it will be removed from this repository and a suitable link/config provided.

## Licenses

Not withstanding the Colour Module and any future limiting restrictions, this design, hardware and software, is licensed under the GNU Public Licence v3.


### The Gnu Public License v3
 The source and binary files in this project marked as GPL v3 are free software: you can redistribute it and-or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

 The source files are distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

 You should have received a copy of the GNU General Public License along with this program.  If not, see http://www.gnu.org/licenses/.
