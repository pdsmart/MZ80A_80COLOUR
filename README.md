Please consult my [GitHub](https://pdsmart.github.io) website for more upto date information.

## Overview

The Sharp MZ80A was a personal computer from the 1980's and Sharp considered that a 40 column screen with 25 rows was sufficient for the home market. For most purposes it was sufficient but with the rise of CP/M requiring 80 column displays there was a number of external vendors who provided add on boards to enhance the video capabilities. Most of these boards used bespoke hardware solutions such as the addition of a 6845 CRT controller and non-standard Monitor ROMS.  A study of the MZ80A hardware though revealed it was identical to the more costly business machine, the MZ80B. The hardware in the MZ80A had been wired differently to cripple its capabilities, presumably for marketing reasons, so by rerouting the wiring it is fairly easy to achieve an 80 column display. This upgrade makes such a change, it removes the video controller gate arrays off the main board and reroutes the wiring on a daughter PCB to achieve 40/80 column switched display.

Also, a study of the monitor ROM and the hardware indicates the MZ80A was intended to have a colour output board upgrade similar to the Sharp MZ700 but was never commercially sold. Nibbles Lab (http://retropc.net/ohishi/museum/mz1200.htm) spotted this and designed a circuit to upgrade the MZ80A so that it could output video to a colour monitor. Taking this base circuit with some modifications (composite video) I've added it into this upgrade. Also as the Character Generator ROM was raised onto the daughter PCB I took the opportunity to use a modern Flash RAM and in so doing allow the storage and switching of multiple Character ROMS, ie. MZ80A, MZ700 I/II, Japanese MZ80K Rom etc. The 32KByte Flash RAM can store 16 character generator ROM sets which can be switched via the attribute RAM (4 ROMS in 1 of 4 blocks) and the control register.



## MZ80A 40/80 Colour Board v1.0

The following pictures display v1.0 of the board. A few issues existed during production:-<br/>
a) The kicad footprint editor, probably my mistake, switched the 2 gate array footprints. Thus the gatearrays were in the wrong position which required a fair bit of fine soldering to correct.<br/>
b) The oscillator wasnt giving a clean signal so the addition of a 100pF ceramic cap between the U14B pin 4 and ground corrected this.<br/>
c) The gatearray G signal was not connected between the two gatearrays even though it was in the circuit, it appeared to be a PCB break.<br/>

I have corrected the circuit diagram and intend to produce a v1.1 PCB in due course. One area of the design I am not happy with is the enabling of 40/80 character mode and selection of the Character Generator ROM enable signal. Due to the limit of signals available to the board from the Video connector and gate array risers, I had to use the top 4 addresses of the video attribute RAM. It works but if you are using colour output you get the odd random colour if the top 4 bytes are being displayed (I initially thought these bytes wouldnt be displayed but the hardware scroll does display them). I am currently perfecting a latching mechanism such that the write to the top 4 bytes doesnt affect the attribute RAM. Also I will make the Flash RAM programmable in-situ such that a PCG is possible.

#### To Do
a) Correct control register access such that it doesnt write to attribute RAM.<br/>
b) Add additional logic to enable writes to the PCG Flash RAM.<br/>

### Images of the MZ80A 40/80 Switchable Colour Board
##### 

![alt text](https://github.com/pdsmart/MZ80A_80COLOUR/blob/master/docs/IMG_9675.jpg)
Underside of the daughter board. The 34pin CN connector locates to the mainboard Video expansion connector and the remainder are standoffs to extend the original socketed IC's (removed and relocated onto the daughter card) upto the daughter board for rerouting.

![alt text](https://github.com/pdsmart/MZ80A_80COLOUR/blob/master/docs/IMG_9671.jpg)
Daughter board just out of the Infra Red SMD oven

![alt text](https://github.com/pdsmart/MZ80A_80COLOUR/blob/master/docs/IMG_9674.jpg)
Daughter board with all the relocated IC's in place.

![alt text](https://github.com/pdsmart/MZ80A_80COLOUR/blob/master/docs/IMG_9678.jpg)
Daughter board inplace on the original motherboard. Some design corrections can be seen.

![alt text](https://github.com/pdsmart/MZ80A_80COLOUR/blob/master/docs/IMG_9680.jpg)
The original motherboard with the daughter board in place. Also the tranZPUter and RFS daughter boards can be seen.



## Credits

The original Colour circuit is copyright Nibbles Lab 2018 which was adapted for this design.



## Licenses

Not withstanding the Colour Module and any future limiting restrictions, this design, hardware and software, is licensed under the GNU Public Licence v3.


