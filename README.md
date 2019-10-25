## Foreword

This document is a work in progress.



## Overview

The Sharp MZ80A was a personal computer from the 1980's and Sharp considered that a 40 column screen with 25 rows was sufficient for the home market. For most purposes it was sufficient but with the rise of CP/M there was a number of external vendors who provided add on boards to enhance the video capabilities. Most of these boards used bespoke hardware solutions such as the addition of a 6845 CRT controller and non-standard Monitor ROMS.  A study of the MZ80A hardware though revealed it was identical to the more costly business machine, the MZ80B. The hardware in the MZ80A had been wired differently to cripple its capabilities, presumably for marketing reasons, so by rerouting the wiring it is fairly easy to achieve an 80 column display. This upgrade makes such a change, it removes the video controller gate arrays of the main board and reroutes the wiring on a daughter PCB to achieve 40/80 column switched display.

Also, a study of the monitor ROM and the hardware indicates the MZ80A was intended to have a colour output board upgrade similar to the Sharp MZ700 but was never commercially sold. Nibbles Lab (http://retropc.net/ohishi/museum/mz1200.htm) spotted this and designed a circuit to upgrade the MZ80A so that it could output video to a colour monitor. Taking this base circuit with some modifications I've added it into this upgrade.



## MZ80A 40/80 Colour Board v1.0


##### 

![alt text](https://github.com/pdsmart/MZ80A_80COLOUR/blob/master/docs/IMG_9675.jpg)

![alt text](https://github.com/pdsmart/MZ80A_80COLOUR/blob/master/docs/IMG_9671.jpg)

![alt text](https://github.com/pdsmart/MZ80A_80COLOUR/blob/master/docs/IMG_9674.jpg)

![alt text](https://github.com/pdsmart/MZ80A_80COLOUR/blob/master/docs/IMG_9678.jpg)

![alt text](https://github.com/pdsmart/MZ80A_80COLOUR/blob/master/docs/IMG_9680.jpg)





## Credits

The original Colour circuit is copyright Nibbles Lab 2018 which was adapted for this design.



## Licenses

Not withstanding the Colour Module and any future limiting restrictions, this design, hardware and software, is licensed under the GNU Public Licence v3.


