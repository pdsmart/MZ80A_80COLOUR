#!/bin/bash
#########################################################################################################
##
## Name:            make_cgrom.sh
## Created:         August 2018
## Author(s):       Philip Smart
## Description:     Sharp MZ series Character Generator ROM Packaging tool
##                  This is a very basic script to copy several cCharacter Generator ROMS into a 32K
##                  image suitable for loading into the 32KByte Flash RAM used in the Programmable
##                  Character Generator.
##
## Credits:         
## Copyright:       (c) 2020 Philip Smart <philip.smart@net2net.org>
##
## History:         January 2020   - Initial script written.
##
#########################################################################################################
## This source file is free software: you can redistribute it and#or modify
## it under the terms of the GNU General Public License as published
## by the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This source file is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.
#########################################################################################################

ROOTDIR=../../MZ80A_80COLOUR
ROM_PATH=${ROOTDIR}/software/roms/
TOOL_PATH=${ROOTDIR}/software/roms/
TARGET_IMAGE_CGROM=${ROOTDIR}/software/roms/COLOURBOARD_CG.rom

# Simple operation, concatenate static images into an output image, target must be 32KByte in size.
# Currently not enough ROMS from the various machines have been obtained, so we use the MZ80A CG ROM
# as filler.
ROM_INCLUDE=
ROM_INCLUDE+="${ROM_PATH}/mz-80acg.rom:"               # 2K Slot 0
ROM_INCLUDE+="${ROM_PATH}/MZ80K_cgrom.rom:"            # 2K Slot 1
ROM_INCLUDE+="${ROM_PATH}/MZ80K2E_Jap_cgrom.rom:"      # 2K Slot 2
ROM_INCLUDE+="${ROM_PATH}/MZFONT.rom:"                 # 2K Slot 3
ROM_INCLUDE+="${ROM_PATH}/MZ700_cgrom.rom:"            # 4K Slot 4 & 3
ROM_INCLUDE+="${ROM_PATH}/MZ700_cgrom_jp.rom:"         # 4K Slot 6 & 7
ROM_INCLUDE+="${ROM_PATH}/mz-80acg.rom:"               # 2K Slot 8
ROM_INCLUDE+="${ROM_PATH}/MZ80B.rom:"                  # 2K Slot 9
ROM_INCLUDE+="${ROM_PATH}/mz-80acg.rom:"               # 2K Slot 10
ROM_INCLUDE+="${ROM_PATH}/mz-80acg.rom:"               # 2K Slot 11
ROM_INCLUDE+="${ROM_PATH}/mz-80acg.rom:"               # 2K Slot 12
ROM_INCLUDE+="${ROM_PATH}/mz-80acg.rom:"               # 2K Slot 13
ROM_INCLUDE+="${ROM_PATH}/mz-80acg.rom:"               # 2K Slot 14
ROM_INCLUDE+="${ROM_PATH}/mz-80acg.rom:"               # 2K Slot 15

echo "Creating the Character Generator ROM..."
> ${TARGET_IMAGE_CGROM}
IFS=":"; for f in ${ROM_INCLUDE}
do
    echo "Adding: ${f}..."
    cat ${f} >> ${TARGET_IMAGE_CGROM}
done
echo "CG ROM created in directory: ${ROM_PATH}, details are:"
ls -lart ${TARGET_IMAGE_CGROM}

exit 0
