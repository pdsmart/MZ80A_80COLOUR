---------------------------------------------------------------------------------------------------------
--
-- Name:            VideoController.vhd
-- Created:         June 2020
-- Author(s):       Philip Smart
-- Description:     MZ80A Video Module v2.0 FPGA logic definition file.
--                  This module contains the definition of the video controller used in v2.0 of the Sharp MZ80A 
--                  Video Module. The controller emulates the video logic of the Sharp MZ80A, MZ-700 and
--                  MZ80B including pixel graphics.
--
-- Credits:         
-- Copyright:       (c) 2018-20 Philip Smart <philip.smart@net2net.org>
--
-- History:         June 2020 - Initial creation.
--
---------------------------------------------------------------------------------------------------------
-- This source file is free software: you can redistribute it and-or modify
-- it under the terms of the GNU General Public License as published
-- by the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This source file is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http:--www.gnu.org-licenses->.
---------------------------------------------------------------------------------------------------------
library ieee;
library pkgs;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use work.VideoController_pkg.all;

entity VideoController is
    --generic (
    --);
    port (    
        -- Primary and video clocks.
        SYS_CLK                   : in    std_logic;                                     -- 50MHz main FPGA clock.
        VID_CLK                   : in    std_logic;                                     -- 16MHz base clock for video timing and gate clocking.

        -- V[name] = Voltage translated signals which mirror the mainboard signals but at a lower voltage.
        -- Addres Bus
        VADDR                     : in    std_logic_vector(13 downto 0);                 -- Z80 Address bus, multiplexed with video address.

        -- Data Bus
        VDATA                     : inout std_logic_vector(7 downto 0);                  -- Z80 Data bus from mainboard Colour Card CD connector..

        -- Control signals.
        VMEM_CSn                  : in    std_logic;                                     -- Extended memory select to FPGA.
        VVRAM_CS_INn              : in    std_logic;                                     -- Chip Select for access to the Video RAM from the mainboard IC15 socket.
        VCSn                      : in    std_logic;                                     -- Video RAM Attribute Chip Select (CSn) to FPGA.
        VGTn                      : in    std_logic;                                     -- Video Gate (GTn) 
        VIORQn                    : in    std_logic;                                     -- IORQn to FPGA.
        VRDn                      : in    std_logic;                                     -- RDn to FPGA.
        VWRn                      : in    std_logic;                                     -- WRn to FPGA.
        VRESETn                   : in    std_logic;                                     -- Reset to FPGA.

        -- VGA signals.
        VGA_R                     : out   std_logic_vector(3 downto 0);                  -- 16 level Red output.
        VGA_G                     : out   std_logic_vector(3 downto 0);                  -- 16 level Green output.
        VGA_B                     : out   std_logic_vector(3 downto 0);                  -- 16 level Blue output.
        VGA_HS                    : out   std_logic;                                     -- Horizontal sync.
        VGA_VS                    : out   std_logic;                                     -- Vertical sync.

        -- Composite signals.
        CSYNCn                    : out   std_logic;                                     -- Composite sync negative polarity.
        CSYNC                     : out   std_logic;                                     -- Comnposite sync.
        VSRVIDEO_OUT              : out   std_logic;                                     -- Video out from 74LS165 on mainboard, pre-GATE.
        VHBLNK_OUTn               : out   std_logic;                                     -- Horizontal blanking.
        VHSY_OUT                  : out   std_logic;                                     -- Horizontal Sync.
        VSYNCH_OUT                : out   std_logic;                                     -- Veritcal Sync.
        VVBLNK_OUTn               : out   std_logic;                                     -- Vertical blanking.

        -- Reserved.
        TBA                       : in    std_logic_vector(9 downto 0)                   -- Reserved signals.

        -- JTAG / ISP
        --TCK                     : in    std_logic;
        --TDI                     : in    std_logic;
        --TDO                     : out   std_logic;
        --TMS                     : in    std_logic 
    );
end entity;

architecture rtl of VideoController is

    type VIDEOLUT is array (integer range 0 to 19, integer range 0 to 28) of integer range 0 to 2000;

    -- Constants
    --
    constant MAX_SUBROW          : integer := 8;

    constant VRAMDISABLE         : std_logic := '0';
    constant GRAMDISABLE         : std_logic := '0';
    constant NORMAL              : std_logic := '1';
    constant NORMAL80            : std_logic := '0';
    constant COLOUR              : std_logic := '0';
    constant COLOUR80            : std_logic := '0';
    constant MZ_KC               : std_logic := '0';
    constant MZ_A                : std_logic := '1';
    constant MZ_80B              : std_logic := '0';
    constant MZ_80C              : std_logic := '0';
    constant MZ80K               : std_logic := '0';
    constant MZ80C               : std_logic := '0';
    constant MZ80A               : std_logic := '1';
    constant MZ80B               : std_logic := '0';
    constant MZ1200              : std_logic := '0';
    constant MZ2000              : std_logic := '0';
    constant MZ700               : std_logic := '0';
    constant MZ800               : std_logic := '0';
    constant VRAMWAIT            : std_logic := '0';
    constant PCGRAM              : std_logic := '0';
    constant CONFIG_CHAR80       : std_logic := '0';
    constant VGAMODE             : std_logic_vector(1 downto 0) := "11";

    -- 
    -- Video Timings for different machines and display configuration.
    --
    constant FB_PARAMS           : VIDEOLUT := (

    -- Display window variables:-
    --   H_DSP_START,      H_DSP_END,H_DSP_WND_START,  H_DSP_WND_END,    H_MNU_START,      H_MNU_END,    H_HDR_START,      H_HDR_END,    H_FTR_START,      H_FTR_END,    V_DSP_START,      V_DSP_END,V_DSP_WND_START,  V_DSP_WND_END,    V_MNU_START,      V_MNU_END,    V_HDR_START,      V_HDR_END,    V_FTR_START,      V_FTR_END,     H_LINE_END,     V_LINE_END,   MAX_COLUMNS,        H_SYNC_START,                   H_SYNC_END,               V_SYNC_START,                   V_SYNC_END,           H_PX,             V_PX      			
    (              0,            320,              0,            320,             32,            288,              0,              0,              0,              0,              0,            200,              0,            200,             36,            164,              0,              0,              0,             0,             511,            259,         40,                320  + 73,              320 + 73  + 45,                   200 + 19,                 200 + 19 + 4,              0,               0),      -- 0  MZ80B/2000 machines have a monochrome 60Hz display  with scan of 512 x 260 for a 320x200 viewable area in 40Char mode.			
    (              0,            640,              0,            640,            192,            448,              0,              0,              0,              0,              0,            200,              0,            200,             36,            164,              0,              0,              0,             0,            1023,            259,         80,                640  + 146,             640 + 146 + 90,                   200 + 19,                 200 + 19 + 4,              0,               0),      -- 1  MZ80B/2000 machines have a monochrome 60Hz display  with scan of 1024 x 260 for a 640x200 viewable area in 80Char mode.			
    (              0,            320,              0,            320,             32,            288,              0,              0,              0,              0,              0,            200,              0,            200,             36,            164,              0,              0,              0,             0,             511,            259,         40,                320  + 73,              320 + 73  + 45,                   200 + 19,                 200 + 19 + 4,              0,               0),      -- 2  MZ80K/C/1200/A machines have a monochrome 60Hz display  with scan of 512 x 260 for a 320x200 viewable area.			
    (              0,            640,              0,            640,            192,            448,              0,              0,              0,              0,              0,            200,              0,            200,             36,            164,              0,              0,              0,             0,            1023,            259,         80,                640  + 146,             640 + 146 + 90,                   200 + 19,                 200 + 19 + 4,              0,               0),      -- 3  MZ80K/C/1200/A machines with an adapted monochrome 60Hz display  with scan of 1024 x 260 for a 640x200 viewable area.			
    (              0,            320,              0,            320,             32,            288,              0,              0,              0,              0,              0,            200,              0,            200,             36,            164,              0,              0,              0,             0,             567,            311,         40,                320  + 80,              320 + 80  + 40,                   200 + 45,                 200 + 45 + 3,              0,               0),      -- 4  MZ700 has a colour 50Hz display  with scan of 568 x 320 for a 320x200 viewable area.			
    (              0,            640,              0,            640,            192,            448,              0,              0,              0,              0,              0,            200,              0,            200,             36,            164,              0,              0,              0,             0,            1134,            311,         80,                640  + 160,             640 + 160 + 80,                   200 + 45,                 200 + 45 + 3,              0,               0),      -- 5  MZ700 has colour 50Hz display  with scan of 1136 x 320 for a 640x200 viewable area.			
    (              0,            320,              0,            320,             32,            288,              0,              0,              0,              0,              0,            200,              0,            200,             36,            164,              0,              0,              0,             0,             511,            259,         40,                320  + 73,              320 + 73  + 45,                   200 + 19,                 200 + 19 + 4,              0,               0),      -- 6  MZ80K/C/1200/A machines with MZ700 style colour @ 60Hz display  with scan of 512 x 260 for a 320x200 viewable area.			
    (              0,            640,              0,            640,            192,            448,              0,              0,              0,              0,              0,            200,              0,            200,             36,            164,              0,              0,              0,             0,            1023,            259,         80,                640  + 146,             640 + 146 + 90,                   200 + 19,                 200 + 19 + 4,              0,               0),      -- 7  MZ80K/C/1200/A machines with MZ700 style colour @ 60Hz display  with scan of 1024 x 260 for a 640x200 viewable area.			
    (              0,            640,              0,            640,            192,            448,              0,            640,              0,            640,              0,            480,             39,            439,            111,            367,              8,             24,            444,            479,            831,            519,         40,                640  + 16,              640 + 16  + 96,                   480 + 10,                 480 + 10 + 2,              1,               1),      -- 8  640x480  @ 60Hz timings for 40Char mode monochrome. 			
    (              0,            640,              0,            640,            192,            448,              0,            640,              0,            640,              0,            480,             39,            439,            111,            367,              8,             24,            444,            479,            799,            524,         40,                640  + 16,              640 + 16  + 96,                   480 + 10,                 480 + 10 + 2,              1,               1),      -- 9  640x480  @ 60Hz timings for 40Char mode monochrome.
    (              0,            640,              0,            640,            192,            448,              0,            640,              0,            640,              0,            480,             39,            439,            111,            367,              8,             24,            444,            479,            831,            508,         80,                640  + 16,              640 + 16  + 96,                   480 + 10,                 480 + 10 + 2,              0,               1),      -- 10 640x480  @ 60Hz timings for 80Char mode monochrome.
    (              0,            640,              0,            640,            192,            448,              0,            640,              0,            640,              0,            480,             39,            439,            111,            367,              8,             24,            444,            479,            799,            524,         80,                640  + 16,              640 + 16  + 96,                   480 + 10,                 480 + 10 + 2,              0,               1),      -- 11 640x480  @ 60Hz timings for 80Char mode monochrome.
    (              0,            640,              0,            640,            192,            448,              0,            640,              0,            640,              0,            480,             39,            439,            111,            367,              8,             24,            444,            479,            831,            508,         40,                640  + 16,              640 + 16  + 96,                   480 + 10,                 480 + 10 + 2,              1,               1),      -- 12 640x480  @ 60Hz timings for 80Char mode colour.
    (              0,            640,              0,            640,            192,            448,              0,            640,              0,            640,              0,            480,             39,            439,            111,            367,              8,             24,            444,            479,            799,            524,         40,                640  + 16,              640 + 16  + 96,                   480 + 10,                 480 + 10 + 2,              1,               1),      -- 13 640x480  @ 60Hz timings for 40Char mode colour.
    (              0,            640,              0,            640,            192,            448,              0,            640,              0,            640,              0,            480,             39,            439,            111,            367,              8,             24,            444,            479,            831,            508,         80,                640  + 16,              640 + 16  + 96,                   480 + 10,                 480 + 10 + 2,              0,               1),      -- 14 640x480  @ 60Hz timings for 80Char mode colour.
    (              0,            640,              0,            640,            192,            448,              0,            640,              0,            640,              0,            480,             39,            439,            111,            367,              8,             24,            444,            479,            799,            524,         80,                640  + 16,              640 + 16  + 96,                   480 + 10,                 480 + 10 + 2,              0,               1),      -- 15 640x480  @ 60Hz timings for 80Char mode colour.
    (              0,            640,              0,            640,            192,            448,              0,            640,              0,            640,              0,            480,             39,            439,            111,            367,              8,             24,            444,            479,            831,            519,         40,                640  + 24,              640 + 24  + 40,                   480 + 9,                  480 +  9 + 2,              1,               1),      -- 16 640x480  @ 72Hz timings for 40Char mode monochrome. 			
    (              0,            640,              0,            640,            192,            448,              0,            640,              0,            640,              0,            480,             39,            439,            111,            367,              8,             24,            444,            479,            831,            519,         80,                640  + 24,              640 + 24  + 40,                   480 + 9,                  480 +  9 + 2,              0,               1),      -- 17 640x480  @ 72Hz timings for 80Char mode monochrome. 			
    (              0,            640,              0,            640,            192,            448,              0,            640,              0,            640,              0,            480,             39,            439,            111,            367,              8,             24,            444,            479,            831,            519,         40,                640  + 24,              640 + 24  + 40,                   480 + 9,                  480 +  9 + 2,              1,               1),      -- 18 640x480  @ 72Hz timings for 40Char mode colour. 			
    (              0,            640,              0,            640,            192,            448,              0,            640,              0,            640,              0,            480,             39,            439,            111,            367,              8,             24,            444,            479,            831,            519,         80,                640  + 24,              640 + 24  + 40,                   480 + 9,                  480 +  9 + 2,              0,               1)       -- 19 640x480  @ 72Hz timings for 80Char mode colour. 			
    );


    --
    -- Registers
    --
    signal VIDEOMODE             :     integer range 0 to 20;
    signal VIDEOMODE_LAST        :     integer range 0 to 20;
    signal VIDEOMODE_CHANGED     :     std_logic;
    signal MAX_COLUMN            :     integer range 0 to 80;
    signal FB_ADDR               :     std_logic_vector(13 downto 0);        -- Frame buffer actual address
    signal OFFSET_ADDR           :     std_logic_vector(7 downto 0);         -- Display Offset - for MZ1200/80A machines with 2K VRAM
    signal SR_G_DATA             :     std_logic_vector(7 downto 0);         -- Shift Register to serialise Green pixels.
    signal SR_R_DATA             :     std_logic_vector(7 downto 0);         -- Shift Register to serialise Red pixels.
    signal SR_B_DATA             :     std_logic_vector(7 downto 0);         -- Shift Register to serialise Blue pixels.
    signal DISPLAY_DATA          :     std_logic_vector(15 downto 0);
    signal XFER_ADDR             :     std_logic_vector(10 downto 0);
    signal XFER_SUB_ADDR         :     std_logic_vector(2 downto 0);
    signal XFER_VRAM_DATA        :     std_logic_vector(15 downto 0);
    signal XFER_GRAM_DATA        :     std_logic_vector(23 downto 0);        -- GRAM I (MZ80B) + GRAM II (MZ80B) + GRAM III (RGB mode)
    signal XFER_MAPPED_DATA      :     std_logic_vector(23 downto 0);
    signal XFER_WEN              :     std_logic;
    signal XFER_VRAM_ADDR        :     std_logic_vector(10 downto 0);
    signal XFER_DST_ADDR         :     std_logic_vector(13 downto 0);
    signal XFER_CGROM_ADDR       :     std_logic_vector(11 downto 0);
    signal CGROM_DATA            :     std_logic_vector(7 downto 0);         -- Font Data To Display
    signal DISPLAY_INVERT        :     std_logic;                            -- Invert display Mode of MZ80A/1200
    signal H_SHIFT_CNT           :     integer range 0 to 7;
    signal H_PX                  :     integer range 0 to 3;                 -- Variable to indicate if horizontal pixels should be multiplied (for conversion to alternate formats).
    signal H_PX_CNT              :     integer range 0 to 3;                 -- Variable to indicate if horizontal pixels should be multiplied (for conversion to alternate formats).
    signal V_PX                  :     integer range 0 to 3;                 -- Variable to indicate if vertical pixels should be multiplied (for conversion to alternate formats).
    signal V_PX_CNT              :     integer range 0 to 3;                 -- Variable to indicate if vertical pixels should be multiplied (for conversion to alternate formats).

    --
    -- CPU/Video Access
    --
    signal VRAM_VIDEO_DATA       :     std_logic_vector(7 downto 0);         -- Display data output to CPU.
    signal VRAM_DO               :     std_logic_vector(7 downto 0);         -- VRAM Data out.
    signal VRAM_WEN              :     std_logic;                            -- VRAM Write enable signal.
    signal GRAM_VIDEO_DATA       :     std_logic_vector(7 downto 0);         -- Graphics display data output to CPU.
    signal GRAM_ADDR             :     std_logic_vector(13 downto 0);        -- Graphics RAM Address.
    signal GRAM_DI_R             :     std_logic_vector(7 downto 0);         -- Graphics Red RAM Data.
    signal GRAM_DI_G             :     std_logic_vector(7 downto 0);         -- Graphics Green RAM Data.
    signal GRAM_DI_B             :     std_logic_vector(7 downto 0);         -- Graphics Blue RAM Data.
    signal GRAM_DI_GI            :     std_logic_vector(7 downto 0);         -- Graphics Option GRAM I for MZ80B
    signal GRAM_DI_GII           :     std_logic_vector(7 downto 0);         -- Graphics Option GRAM II for MZ80B
    signal GRAM_DI_GIII          :     std_logic_vector(7 downto 0);         -- Graphics Option GRAM III to provide RGB mode.
    signal GRAM_DO_R             :     std_logic_vector(7 downto 0);         -- Graphics Red RAM Data out.
    signal GRAM_DO_G             :     std_logic_vector(7 downto 0);         -- Graphics Green RAM Data out.
    signal GRAM_DO_B             :     std_logic_vector(7 downto 0);         -- Graphics Blue RAM Data out.
    signal GRAM_DO_GI            :     std_logic_vector(7 downto 0);         -- Graphics Option GRAM I Data out for MZ80B.
    signal GRAM_DO_GII           :     std_logic_vector(7 downto 0);         -- Graphics Option GRAM II Data out for MZ80B.
    signal GRAM_DO_GIII          :     std_logic_vector(7 downto 0);         -- Graphics Option GRAM III Data out RGB mode.
    signal GRAM_WEN_R            :     std_logic;                            -- Graphics Red RAM Write enable signal.
    signal GRAM_WEN_G            :     std_logic;                            -- Graphics Green RAM Write enable signal.
    signal GRAM_WEN_B            :     std_logic;                            -- Graphics Blue RAM Write enable signal.
    signal GRAM_WEN_GI           :     std_logic;                            -- Graphics Option GRAM I Write enable signal for MZ80B.
    signal GRAM_WEN_GII          :     std_logic;                            -- Graphics Option GRAM II Write enable signal for MZ80B.
    signal GRAM_WEN_GIII         :     std_logic;                            -- Graphics Option GRAM III Write enable signal RGB mode.
    signal GRAM_CLK              :     std_logic;                            -- Clock used to access the GRAM (CPU or IOCTL_CLK).
    signal GRAM_CLK_EN           :     std_logic;                            -- Clock enable for GRAM.
    signal GRAM_MODE             :     std_logic_vector(7 downto 0);         -- Programmable mode register to control GRAM operations.
    signal GRAM_R_FILTER         :     std_logic_vector(7 downto 0);         -- Red pixel writer filter.
    signal GRAM_G_FILTER         :     std_logic_vector(7 downto 0);         -- Green pixel writer filter.
    signal GRAM_B_FILTER         :     std_logic_vector(7 downto 0);         -- Blue pixel writer filter.
    signal GRAM_OPT_WRITE        :     std_logic;                            -- Graphics write to GRAMI (0) or GRAMII (1) for MZ80B/MZ2000
    signal GRAM_OPT_OUT1         :     std_logic;                            -- Graphics enable GRAMI output to display
    signal GRAM_OPT_OUT2         :     std_logic;                            -- Graphics enable GRAMII output to display
    signal T80_MA                :     std_logic_vector(11 downto 0);        -- CPU Address Masked according to machine model.
    signal CS_INVERT_n           :     std_logic;                            -- Chip Select to enable Inverse mode.
    signal CS_SCROLL_n           :     std_logic;                            -- Chip Select to perform a hardware scroll.
    signal CS_GRAM_OPT_n         :     std_logic;                            -- Chip Select to write the graphics options for MZ80B/MZ2000.
    signal CS_FB_CTL_n           :     std_logic;                            -- Chip Select to write to the Graphics mode register.
    signal CS_FB_RED_n           :     std_logic;                            -- Chip Select to write to the Red pixel per byte indirect write register.
    signal CS_FB_GREEN_n         :     std_logic;                            -- Chip Select to write to the Green pixel per byte indirect write register.
    signal CS_FB_BLUE_n          :     std_logic;                            -- Chip Select to write to the Blue pixel per byte indirect write register.
    signal CS_PCG_n              :     std_logic;
    signal VWEN                  :     std_logic;                            -- Write enable to VRAM.
    signal GWEN_R                :     std_logic;                            -- Write enable to Red GRAM.
    signal GWEN_G                :     std_logic;                            -- Write enable to Green GRAM.
    signal GWEN_B                :     std_logic;                            -- Write enable to Blue GRAM.
    signal GWEN_GI               :     std_logic;                            -- Write enable to for GRAMI option on MZ80B/2000.
    signal GWEN_GII              :     std_logic;                            -- Write enable to for GRAMII option on MZ80B/2000.
    signal GWEN_GIII             :     std_logic;                            -- Write enable to for GRAMIII option for RGB mode.
    --
    -- Internal Signals
    --
    signal H_COUNT               :     unsigned(10 downto 0);                -- Horizontal pixel counter
    signal H_BLANKi              :     std_logic;                            -- Horizontal Blanking
    signal H_SYNC_ni             :     std_logic;                            -- Horizontal Blanking
    signal H_DSP_START           :     integer range 0 to 2047;
    signal H_DSP_END             :     integer range 0 to 2047;
    signal H_DSP_WND_START       :     integer range 0 to 2047;              -- Window within the horizontal display when data is output.
    signal H_DSP_WND_END         :     integer range 0 to 2047;
    signal H_SYNC_START          :     integer range 0 to 2047;
    signal H_SYNC_END            :     integer range 0 to 2047;
    signal H_LINE_END            :     integer range 0 to 2047;
    signal V_COUNT               :     unsigned(10 downto 0);                -- Vertical pixel counter
    signal V_BLANKi              :     std_logic;                            -- Vertical Blanking
    signal V_SYNC_ni             :     std_logic;                            -- Horizontal Blanking
    signal V_DSP_START           :     integer range 0 to 2047;
    signal V_DSP_END             :     integer range 0 to 2047;
    signal V_DSP_WND_START       :     integer range 0 to 2047;              -- Window within the vertical display when data is output.
    signal V_DSP_WND_END         :     integer range 0 to 2047;
    signal V_SYNC_START          :     integer range 0 to 2047;
    signal V_SYNC_END            :     integer range 0 to 2047;
    signal V_LINE_END            :     integer range 0 to 2047;
    --
    -- CG-ROM
    --
    signal CGROM_DO              :     std_logic_vector(7 downto 0);
    signal CGROM_BANK            :     std_logic_vector(3 downto 0);
    --
    -- PCG
    --
    signal CGRAM_DO              :     std_logic_vector(7 downto 0);
    signal CG_ADDR               :     std_logic_vector(11 downto 0);
    signal CGRAM_ADDR            :     std_logic_vector(11 downto 0);
    signal PCG_DATA              :     std_logic_vector(7 downto 0);
    signal CGRAM_DI              :     std_logic_vector(7 downto 0);
    signal CGRAM_WE_n            :     std_logic;
    signal CGRAM_WEN             :     std_logic;
    signal CGRAM_SEL             :     std_logic;


    function to_std_logic(L: boolean) return std_logic is
    begin
        if L then
            return('1');
        else
            return('0');
        end if;
    end function to_std_logic;

    component dpram
        generic (
              init_file          : string;
              widthad_a          : natural;
              width_a            : natural;
              widthad_b          : natural;
              width_b            : natural;
              outdata_reg_a      : string := "UNREGISTERED";
              outdata_reg_b      : string := "UNREGISTERED"
        );
        Port (
              clock_a            : in  std_logic  := '1';
              clocken_a          : in  std_logic  := '1';
              address_a          : in  std_logic_vector (widthad_a-1 downto 0);
              data_a             : in  std_logic_vector (width_a-1 downto 0);
              wren_a             : in  std_logic  := '0';
              q_a                : out std_logic_vector (width_a-1 downto 0);

              clock_b            : in  std_logic;
              clocken_b          : in  std_logic  := '1';
              address_b          : in  std_logic_vector (widthad_b-1 downto 0);
              data_b             : in  std_logic_vector (width_b-1 downto 0);
              wren_b             : in  std_logic  := '0';
              q_b                : out std_logic_vector (width_b-1 downto 0)
          );
    end component;
begin

    --
    -- Instantiation
    --
    
    -- Video memory as seen by the MZ Series. This is a 1K or 2K or 2K + 2K Attribute RAM
    -- organised as 4K x 8 on the CPU side and 2K x 16 on the display side, top bits are not used for MZ80K/C/1200/A.
    --
    VRAM0 : dpram
    GENERIC MAP (
        init_file            => null,
        widthad_a            => 12,
        width_a              => 8,
        widthad_b            => 11,
        width_b              => 16,
        outdata_reg_b        => "UNREGISTERED"
    )
    PORT MAP (
        -- Port A used for CPU access.
        clock_a              => VID_CLK,       
        clocken_a            => '1',
        address_a            => VADDR(11 downto 0),      
        data_a               => VDATA,   
        wren_a               => VRAM_WEN,       
        q_a                  => VRAM_DO,
    
        -- Port B used for VRAM -> DISPLAY BUFFER transfer (SOURCE).
        clock_b              => SYS_CLK,
        clocken_b            => '1',
        address_b            => XFER_VRAM_ADDR,
        data_b               => (others => '0'),
        wren_b               => '0',
        q_b                  => XFER_VRAM_DATA
    );
    
    -- Graphics frame buffer memory. This is an enhancement and allows for 320x200 or 640x200 pixel display in 8 colours. It matches
    -- the output frame buffer in size, so the contents are blended by a programmable logical operator (ie. OR) with the expanded Video
    -- Ram contents to create the output display.
    --
--    GRAMG : dpram -- GREEN
--    GENERIC MAP (
--        init_file            => null,
--        widthad_a            => 14,
--        width_a              => 8,
--        widthad_b            => 14,
--        width_b              => 8,
--        outdata_reg_b        => "UNREGISTERED"
--    )
--    PORT MAP (
--        -- Port A used for CPU access.
--        clock_a              => VID_CLK,
--        clocken_a            => '1',
--        address_a            => GRAM_ADDR,
--        data_a               => GRAM_DI_G,
--        wren_a               => GRAM_WEN_G, 
--        q_a                  => GRAM_DO_G,
--    
--        -- Port B used for VRAM -> DISPLAY BUFFER transfer (SOURCE).
--        clock_b              => SYS_CLK,
--        clocken_b            => '1',
--        address_b            => XFER_DST_ADDR,   -- FB Destination address is used as GRAM is on a 1:1 mapping with FB.
--        data_b               => (others => '0'),
--        wren_b               => '0',
--        q_b                  => XFER_GRAM_DATA(7 downto 0)
--    );
--    --
--    GRAMR : dpram -- RED
--    GENERIC MAP (
--        init_file            => null,
--        widthad_a            => 14,
--        width_a              => 8,
--        widthad_b            => 14,
--        width_b              => 8,
--        outdata_reg_b        => "UNREGISTERED"
--    )
--    PORT MAP (
--        -- Port A used for CPU access.
--        clock_a              => VID_CLK,
--        clocken_a            => '1',
--        address_a            => GRAM_ADDR,
--        data_a               => GRAM_DI_R,
--        wren_a               => GRAM_WEN_R, 
--        q_a                  => GRAM_DO_R,
--    
--        -- Port B used for VRAM -> DISPLAY BUFFER transfer (SOURCE).
--        clock_b              => SYS_CLK,
--        clocken_b            => '1',
--        address_b            => XFER_DST_ADDR,   -- FB Destination address is used as GRAM is on a 1:1 mapping with FB.
--        data_b               => (others => '0'),
--        wren_b               => '0',
--        q_b                  => XFER_GRAM_DATA(15 downto 8)
--    );
--    --
--    GRAMB : dpram -- BLUE
--    GENERIC MAP (
--        init_file            => null,
--        widthad_a            => 14,
--        width_a              => 8,
--        widthad_b            => 14,
--        width_b              => 8,
--        outdata_reg_b        => "UNREGISTERED"
--    )
--    PORT MAP (
--        -- Port A used for CPU access.
--        clock_a              => VID_CLK,
--        clocken_a            => '1',
--        address_a            => GRAM_ADDR,
--        data_a               => GRAM_DI_B,
--        wren_a               => GRAM_WEN_B, 
--        q_a                  => GRAM_DO_B,
--    
--        -- Port B used for VRAM -> DISPLAY BUFFER transfer (SOURCE).
--        clock_b              => SYS_CLK,
--        clocken_b            => '1',
--        address_b            => XFER_DST_ADDR,   -- FB Destination address is used as GRAM is on a 1:1 mapping with FB.
--        data_b               => (others => '0'),
--        wren_b               => '0',
--        q_b                  => XFER_GRAM_DATA(23 downto 16)
--    );
    
    -- MZ80B Graphics RAM Option I
    --
    GRAMI : dpram
    GENERIC MAP (
        init_file            => null,
        widthad_a            => 13,
        width_a              => 8,
        widthad_b            => 13,
        width_b              => 8,
        outdata_reg_b        => "UNREGISTERED"
    )
    PORT MAP (
        -- Port A used for CPU access.
        clock_a              => VID_CLK,
        clocken_a            => '1',
        address_a            => GRAM_ADDR(12 downto 0),
        data_a               => GRAM_DI_GI,
        wren_a               => GRAM_WEN_GI, 
        q_a                  => GRAM_DO_GI,
    
        -- Port B used for VRAM -> DISPLAY BUFFER transfer (SOURCE).
        clock_b              => SYS_CLK,
        clocken_b            => '1',
        address_b            => XFER_DST_ADDR(12 downto 0),            -- FB Destination address is used as GRAM is on a 1:1 mapping with FB.
        data_b               => (others => '0'),
        wren_b               => '0',
        q_b                  => XFER_GRAM_DATA(7 downto 0)
    );
    
    -- MZ80B Graphics RAM Option II
    --
    GRAMII : dpram
    GENERIC MAP (
        init_file            => null,
        widthad_a            => 13,
        width_a              => 8,
        widthad_b            => 13,
        width_b              => 8,
        outdata_reg_b        => "UNREGISTERED"
    )
    PORT MAP (
        -- Port A used for CPU access.
        clock_a              => VID_CLK,
        clocken_a            => '1',
        address_a            => GRAM_ADDR(12 downto 0),
        data_a               => GRAM_DI_GII,
        wren_a               => GRAM_WEN_GII, 
        q_a                  => GRAM_DO_GII,
    
        -- Port B used for VRAM -> DISPLAY BUFFER transfer (SOURCE).
        clock_b              => SYS_CLK,
        clocken_b            => '1',
        address_b            => XFER_DST_ADDR(12 downto 0),           -- FB Destination address is used as GRAM is on a 1:1 mapping with FB.
        data_b               => (others => '0'),
        wren_b               => '0',
        q_b                  => XFER_GRAM_DATA(15 downto 8)
    );
    
    -- MZ80B Graphics RAM Option III - this is not present on the MZ80B but is instantiated so that the MZ80B banks can be used for RGD (Bank I-R, II-G, III-B) when not running in MZ80B
    -- compatibility mode.
    --
    GRAMIII : dpram
    GENERIC MAP (
        init_file            => null,
        widthad_a            => 13,
        width_a              => 8,
        widthad_b            => 13,
        width_b              => 8,
        outdata_reg_b        => "UNREGISTERED"
    )
    PORT MAP (
        -- Port A used for CPU access.
        clock_a              => VID_CLK,
        clocken_a            => '1',
        address_a            => GRAM_ADDR(12 downto 0),
        data_a               => GRAM_DI_GIII,
        wren_a               => GRAM_WEN_GIII, 
        q_a                  => GRAM_DO_GIII,
    
        -- Port B used for VRAM -> DISPLAY BUFFER transfer (SOURCE).
        clock_b              => SYS_CLK,
        clocken_b            => '1',
        address_b            => XFER_DST_ADDR(12 downto 0),           -- FB Destination address is used as GRAM is on a 1:1 mapping with FB.
        data_b               => (others => '0'),
        wren_b               => '0',
        q_b                  => XFER_GRAM_DATA(23 downto 16)
    );
    -- Display Buffer Memory, organised in a Row x Col format, where Address = (Row * MAX_COLUMN * 8) + Col,
    -- but in real terms it is a 320x200x3 or 640x200x3 frame buffer.
    --
    FRAMEBUF0 : dpram
    GENERIC MAP (
        init_file            => null,
        widthad_a            => 14,
        width_a              => 16,
        widthad_b            => 14,
        width_b              => 16,
        outdata_reg_b        => "UNREGISTERED"
    )
    PORT MAP (
        -- Port A used for Display output.
        clock_a              => SYS_CLK,
        clocken_a            => '1',
        address_a            => FB_ADDR,
        data_a               => (others => '0'),
        wren_a               => '0',
        q_a                  => DISPLAY_DATA,
    
        -- Port B used for VRAM -> DISPLAY BUFFER transfer (DESTINATION).
        clock_b              => SYS_CLK,
        clocken_b            => '1',
        address_b            => XFER_DST_ADDR,
        data_b               => XFER_MAPPED_DATA(15 downto 0),
        wren_b               => XFER_WEN 
      --q_b                  =>
    );
    
    -- 0 = MZ80K  CGROM = 2Kbytes -> 0000:07ff
    -- 1 = MZ80C  CGROM = 2Kbytes -> 0800:0fff
    -- 2 = MZ1200 CGROM = 2Kbytes -> 1000:17ff
    -- 3 = MZ80A  CGROM = 2Kbytes -> 1800:1fff
    -- 4 = MZ700  CGROM = 4Kbytes -> 2000:2fff
    --
    CGROM0 : dpram
    GENERIC MAP (
        init_file            => "./software/mif/combined_cgrom.mif",
        widthad_a            => 11,
        width_a              => 8,
        widthad_b            => 11,
        width_b              => 8
    ) 
    PORT MAP (
        clock_a              => SYS_CLK,
        clocken_a            => '1',
       -- address_a            => CGROM_BANK & CG_ADDR(10 downto 0),
        address_a            => CG_ADDR(10 downto 0),
        data_a               => (others => '0'),
        wren_a               => '0',
        q_a                  => CGROM_DO,
    
        clock_b              => SYS_CLK,
        clocken_b            => '0',
        address_b            => (others => '0'),
        data_b               => (others => '0'),
        wren_b               => '0',
        q_b                  => open
    );
    
    CGRAM : dpram
    GENERIC MAP (
        init_file            => null,
        widthad_a            => 12,
        width_a              => 8,
        widthad_b            => 12,
        width_b              => 8
    ) 
    PORT MAP (
        clock_a              => SYS_CLK,
        clocken_a            => '1',
        address_a            => CG_ADDR(11 downto 0),
        data_a               => CGRAM_DI,
        wren_a               => CGRAM_WEN,
        q_a                  => CGRAM_DO,
    
        clock_b              => SYS_CLK,
        clocken_b            => '0',
        address_b            => (others => '0'),
        data_b               => (others => '0'),
        wren_b               => '0',
        q_b                  => open
    );
    
    -- Clock as maximum system speed to minimise transfer time.
    --
    process( VRESETn, SYS_CLK )
        variable XFER_CYCLE      : integer range 0 to 10;
        variable XFER_ENABLED    : std_logic;                            -- Enable transfer of VRAM/GRAM to framebuffer.
        variable XFER_PAUSE      : std_logic;                            -- Pause transfer of VRAM/GRAM to framebuffer during data display period.
        variable XFER_SRC_COL    : integer range 0 to 80;
        variable XFER_DST_SUBROW : integer range 0 to 7;
    begin
        if VRESETn='0' then
            XFER_VRAM_ADDR   <= (others => '0');
            XFER_DST_ADDR    <= (others => '0');
            XFER_CGROM_ADDR  <= (others => '0');
            XFER_ENABLED     := '0';
            XFER_PAUSE       := '0';
            XFER_SRC_COL     := 0;
            XFER_DST_SUBROW  := 0;
            XFER_CYCLE       := 0;
            XFER_WEN         <= '0';
            XFER_MAPPED_DATA <= (others => '0');
    
        -- Copy at end of Display based on the highest clock to minimise time,
        --
        elsif rising_edge(SYS_CLK) then
    
            -- Every time we reach the end of the visible display area we enable copying of the VRAM and GRAM into the
            -- display framebuffer, ready for the next frame display. This starts to occur a fixed set of rows after 
            -- they have been displayed, initially only during the hblank period of a row, but the during the full row
            -- in the vblank period.
            --
            if V_COUNT = 0 then
                XFER_ENABLED   := '1';
            end if;
    
            -- During the actual data display, we pause until the start of the hblanking period.
            --
            if XFER_WEN = '0' and H_BLANKi = '0' and V_BLANKi = '0' then -- XFER_WEN = '0' and (((V_COUNT >= V_DSP_START and V_COUNT < V_DSP_END) and (H_COUNT >= H_DSP_START and H_COUNT < H_DSP_END)) or (H_COUNT >= H_LINE_END-1)) then
                XFER_PAUSE      := '1';
            else
                XFER_PAUSE      := '0';
            end if;
    
            -- If we are in the active transfer window, start transfer.
            --
            if XFER_ENABLED = '1' and XFER_PAUSE = '0' then
    
                -- Once we reach the end of the framebuffer, disable the copying until next frame.
                --
                if XFER_DST_ADDR = 16383 then
                    XFER_ENABLED := '0';
                end if;
    
                -- Finite state machine to implement read, map and write.
                case (XFER_CYCLE) is
    
                    when 0 =>
                        XFER_MAPPED_DATA <= (others => '0');
                        XFER_CYCLE       := 1;
    
                    -- Get the source character and map via the PCG to a slice of the displayed character.
                    -- Recalculate the destination address based on this loops values.
                    when 1 =>
                        -- Setup the PCG address based on the read character.
                        XFER_CGROM_ADDR  <= XFER_VRAM_DATA(15) & XFER_VRAM_DATA(7 downto 0) & std_logic_vector(to_unsigned(XFER_DST_SUBROW, 3));
                        XFER_CYCLE       := 2;
    
                    --   Graphics mode:- 7/6 = Operator (00=OR,01=AND,10=NAND,11=XOR),
                    --                     5 = GRAM Output Enable  0 = active.
                    --                     4 = VRAM Output Enable, 0 = active.
                    --                   3/2 = Write mode (00=Page 1:Red, 01=Page 2:Green, 10=Page 3:Blue, 11=Indirect),
                    --                   1/0 = Read mode  (00=Page 1:Red, 01=Page2:Green, 10=Page 3:Blue, 11=Not used).
                    --
                    -- Extra cycle for CGROM to latch, use time to decide which mode we are processing.
                    when 2 =>
                        -- Check to see if VRAM is disabled, if it is, skip.
                        --
                        if VRAMDISABLE = '0' and GRAM_MODE(4) = '0' and (NORMAL = '1' or NORMAL80 = '1') then
                            -- Monochrome modes?
                            XFER_CYCLE := 4;
    
                        elsif VRAMDISABLE = '0' and GRAM_MODE(4) = '0' and (COLOUR = '1' or COLOUR80 = '1') then
                            -- Colour modes?
                            XFER_CYCLE := 3;
    
                        else
                            -- Disabled or unrecognised mode.
                            XFER_CYCLE := 5;
                        end if;
    
                    -- Colour modes?
                    -- Expand and store the slice of the character with colour expansion.
                    --
                    when 3 =>
                        if CGROM_DATA(7) = '0' then
                            XFER_MAPPED_DATA(7)      <= XFER_VRAM_DATA(10);
                            XFER_MAPPED_DATA(15)     <= XFER_VRAM_DATA(9);
                    --        XFER_MAPPED_DATA(23)     <= XFER_VRAM_DATA(8);
                        else
                            XFER_MAPPED_DATA(7)      <= XFER_VRAM_DATA(14);
                            XFER_MAPPED_DATA(15)     <= XFER_VRAM_DATA(13);
                    --        XFER_MAPPED_DATA(23)     <= XFER_VRAM_DATA(12);
                        end if;
                        if CGROM_DATA(6) = '0' then
                            XFER_MAPPED_DATA(6)      <= XFER_VRAM_DATA(10);
                            XFER_MAPPED_DATA(14)     <= XFER_VRAM_DATA(9);
                    --        XFER_MAPPED_DATA(22)     <= XFER_VRAM_DATA(8);
                        else
                            XFER_MAPPED_DATA(6)      <= XFER_VRAM_DATA(14);
                            XFER_MAPPED_DATA(14)     <= XFER_VRAM_DATA(13);
                    --        XFER_MAPPED_DATA(22)     <= XFER_VRAM_DATA(12);
                        end if;
                        if CGROM_DATA(5) = '0' then
                            XFER_MAPPED_DATA(5)      <= XFER_VRAM_DATA(10);
                            XFER_MAPPED_DATA(13)     <= XFER_VRAM_DATA(9);
                    --        XFER_MAPPED_DATA(21)     <= XFER_VRAM_DATA(8);
                        else
                            XFER_MAPPED_DATA(5)      <= XFER_VRAM_DATA(14);
                            XFER_MAPPED_DATA(13)     <= XFER_VRAM_DATA(13);
                    --        XFER_MAPPED_DATA(21)     <= XFER_VRAM_DATA(12);
                        end if;
                        if CGROM_DATA(4) = '0' then
                            XFER_MAPPED_DATA(4)      <= XFER_VRAM_DATA(10);
                            XFER_MAPPED_DATA(12)     <= XFER_VRAM_DATA(9);
                    --        XFER_MAPPED_DATA(20)     <= XFER_VRAM_DATA(8);
                        else
                            XFER_MAPPED_DATA(4)      <= XFER_VRAM_DATA(14);
                            XFER_MAPPED_DATA(12)     <= XFER_VRAM_DATA(13);
                    --        XFER_MAPPED_DATA(20)     <= XFER_VRAM_DATA(12);
                        end if;
                        if CGROM_DATA(3) = '0' then
                            XFER_MAPPED_DATA(3)      <= XFER_VRAM_DATA(10);
                            XFER_MAPPED_DATA(11)     <= XFER_VRAM_DATA(9);
                    --        XFER_MAPPED_DATA(19)     <= XFER_VRAM_DATA(8);
                        else
                            XFER_MAPPED_DATA(3)      <= XFER_VRAM_DATA(14);
                            XFER_MAPPED_DATA(11)     <= XFER_VRAM_DATA(13);
                    --        XFER_MAPPED_DATA(19)     <= XFER_VRAM_DATA(12);
                        end if;
                        if CGROM_DATA(2) = '0' then
                            XFER_MAPPED_DATA(2)      <= XFER_VRAM_DATA(10);
                            XFER_MAPPED_DATA(10)     <= XFER_VRAM_DATA(9);
                   --         XFER_MAPPED_DATA(18)     <= XFER_VRAM_DATA(8);
                        else
                            XFER_MAPPED_DATA(2)      <= XFER_VRAM_DATA(14);
                            XFER_MAPPED_DATA(10)     <= XFER_VRAM_DATA(13);
                   --         XFER_MAPPED_DATA(18)     <= XFER_VRAM_DATA(12);
                        end if;
                        if CGROM_DATA(1) = '0' then
                            XFER_MAPPED_DATA(1)      <= XFER_VRAM_DATA(10);
                            XFER_MAPPED_DATA(9)      <= XFER_VRAM_DATA(9);
                   --         XFER_MAPPED_DATA(17)     <= XFER_VRAM_DATA(8);
                        else
                            XFER_MAPPED_DATA(1)      <= XFER_VRAM_DATA(14);
                            XFER_MAPPED_DATA(9)      <= XFER_VRAM_DATA(13);
                  --          XFER_MAPPED_DATA(17)     <= XFER_VRAM_DATA(12);
                        end if;
                        if CGROM_DATA(0) = '0' then
                            XFER_MAPPED_DATA(0)      <= XFER_VRAM_DATA(10);
                            XFER_MAPPED_DATA(8)      <= XFER_VRAM_DATA(9);
                   --         XFER_MAPPED_DATA(16)     <= XFER_VRAM_DATA(8);
                        else
                            XFER_MAPPED_DATA(0)      <= XFER_VRAM_DATA(14);
                            XFER_MAPPED_DATA(8)      <= XFER_VRAM_DATA(13);
                   --         XFER_MAPPED_DATA(16)     <= XFER_VRAM_DATA(12);
                        end if;
                        XFER_CYCLE := 6;
    
                    -- Monochrome modes?
                    -- Expand and store the slice of the character.
                    --
                    when 4 =>
                        if CGROM_DATA(7) = '1' then
                            XFER_MAPPED_DATA(7)      <= '1';
                            if MZ_KC = '1' then
                                XFER_MAPPED_DATA(15) <= '1';
                    --            XFER_MAPPED_DATA(23) <= '1';
                            end if;
                        end if;
                        if CGROM_DATA(6) = '1' then
                            XFER_MAPPED_DATA(6)      <= '1';
                            if MZ_KC = '1' then
                                XFER_MAPPED_DATA(14) <= '1';
                      --          XFER_MAPPED_DATA(22) <= '1';
                            end if;
                        end if;
                        if CGROM_DATA(5) = '1' then
                            XFER_MAPPED_DATA(5)      <= '1';
                            if MZ_KC = '1' then
                                XFER_MAPPED_DATA(13) <= '1';
                  --              XFER_MAPPED_DATA(21) <= '1';
                            end if;
                        end if;
                        if CGROM_DATA(4) = '1' then
                            XFER_MAPPED_DATA(4)      <= '1';
                            if MZ_KC = '1' then
                                XFER_MAPPED_DATA(12) <= '1';
                    --            XFER_MAPPED_DATA(20) <= '1';
                            end if;
                        end if;
                        if CGROM_DATA(3) = '1' then
                            XFER_MAPPED_DATA(3)      <= '1';
                            if MZ_KC = '1' then
                                XFER_MAPPED_DATA(11) <= '1';
                    --            XFER_MAPPED_DATA(19) <= '1';
                            end if;
                        end if;
                        if CGROM_DATA(2) = '1' then
                            XFER_MAPPED_DATA(2)      <= '1';
                            if MZ_KC = '1' then
                                XFER_MAPPED_DATA(10) <= '1';
                  --              XFER_MAPPED_DATA(18) <= '1';
                            end if;
                        end if;
                        if CGROM_DATA(1) = '1' then
                            XFER_MAPPED_DATA(1)      <= '1';
                            if MZ_KC = '1' then
                                XFER_MAPPED_DATA(9)  <= '1';
                   --             XFER_MAPPED_DATA(17) <= '1';
                            end if;
                        end if;
                        if CGROM_DATA(0) = '1' then
                            XFER_MAPPED_DATA(0)      <= '1';
                            if MZ_KC = '1' then
                                XFER_MAPPED_DATA(8)  <= '1';
                  --              XFER_MAPPED_DATA(16) <= '1';
                            end if;
                        end if;
                        XFER_CYCLE := 5;
    
                    when 5 =>
                        -- If invert option selected, invert green.
                        --
                      --  if (MZ_80B = '1' and INVERSE_n = '0') or (MZ_A = '1' and DISPLAY_INVERT = '1') then
                        if (MZ_A = '1' and DISPLAY_INVERT = '1') then
                            XFER_MAPPED_DATA(7 downto 0) <= not XFER_MAPPED_DATA(7 downto 0);
                        end if;
                        XFER_CYCLE := 6;
    
                    when 6 =>
                        -- Graphics ram enabled?
                        --
                        if GRAMDISABLE = '0' and GRAM_MODE(5) = '0' then
                            -- Merge in the graphics data using defined mode.
                            --
                            case GRAM_MODE(7 downto 6) is
                                when "00" =>
                                    XFER_MAPPED_DATA <= XFER_MAPPED_DATA or   reverse_vector(XFER_GRAM_DATA(23 downto 16)) & reverse_vector(XFER_GRAM_DATA(15 downto 8)) & reverse_vector(XFER_GRAM_DATA(7 downto 0));
                                when "01" =>
                                    XFER_MAPPED_DATA <= XFER_MAPPED_DATA and  reverse_vector(XFER_GRAM_DATA(23 downto 16)) & reverse_vector(XFER_GRAM_DATA(15 downto 8)) & reverse_vector(XFER_GRAM_DATA(7 downto 0));
                                when "10" =>
                                    XFER_MAPPED_DATA <= XFER_MAPPED_DATA nand reverse_vector(XFER_GRAM_DATA(23 downto 16)) & reverse_vector(XFER_GRAM_DATA(15 downto 8)) & reverse_vector(XFER_GRAM_DATA(7 downto 0));
                                when "11" =>
                                    XFER_MAPPED_DATA <= XFER_MAPPED_DATA xor  reverse_vector(XFER_GRAM_DATA(23 downto 16)) & reverse_vector(XFER_GRAM_DATA(15 downto 8)) & reverse_vector(XFER_GRAM_DATA(7 downto 0));
                            end case;
                        end if;
                        XFER_CYCLE := 7;
    
                    when 7 =>
                        -- For MZ80B, if enabled, blend in the graphics memory.
                        --
                        if MZ_80B = '1' and XFER_DST_ADDR < 8192 then
                            if GRAM_OPT_OUT1 = '1' and GRAM_OPT_OUT2 = '1' then
                                XFER_MAPPED_DATA(15 downto 8) <= XFER_MAPPED_DATA(15 downto 8) or reverse_vector(XFER_GRAM_DATA(23 downto 16)) or reverse_vector(XFER_GRAM_DATA(7 downto 0)) or reverse_vector(XFER_GRAM_DATA(15 downto 8));
                            elsif GRAM_OPT_OUT1 = '1' then
                                XFER_MAPPED_DATA(15 downto 8) <= XFER_MAPPED_DATA(15 downto 8) or reverse_vector(XFER_GRAM_DATA(7 downto 0));
                            elsif GRAM_OPT_OUT2 = '1' then
                                XFER_MAPPED_DATA(15 downto 8) <= XFER_MAPPED_DATA(15 downto 8) or reverse_vector(XFER_GRAM_DATA(15 downto 8));
                            end if;
                        end if;
                        XFER_CYCLE := 8;
    
                    -- Commence write of mapped data.
                    when 8 =>
                        XFER_WEN   <= '1';
                        XFER_CYCLE := 9;
    
                    -- Complete write and update address.
                    when 9 =>
                        -- Write cycle to framebuffer finished.
                        XFER_WEN   <= '0';
                        XFER_CYCLE := 10;
    
                    when 10 =>
                        -- For each source character, we generate 8 lines in the frame buffer. Thus we need to 
                        -- process the same source row 8 times, each time incrementing the sub-row which is used
                        -- to extract the next pixel set from the CG. This data is thus written into the destination as:-
                        -- <Row:0,CGLine:0,0 .. MAX_COLUMN -1> <Row:0,CGLine:1,0.. MAX_COLUMN -1> .. <Row:0,CGLine:7,0.. MAX_COLUMN -1>
                        -- ..
                        -- <Row:24,CGLine:0,0 .. MAX_COLUMN -1><Row:24,CGLine:1,0.. MAX_COLUMN -1> .. <Row:24,CGLine:7,0.. MAX_COLUMN -1>
                        --
                        -- To achieve this, we keep a note of the column and sub-row, incrementing the source address until end of line
                        -- then winding it back if we are still rendering the Characters for a given row. 
                        -- Destination address always increments every clock cycle to take the next pixel set.
                        --
                        if XFER_SRC_COL < MAX_COLUMN - 1 then
                            XFER_SRC_COL        := XFER_SRC_COL + 1;
                            XFER_VRAM_ADDR      <= XFER_VRAM_ADDR + 1;
                        else
                            if XFER_DST_SUBROW < MAX_SUBROW -1 then
                                XFER_SRC_COL    := 0;
                                XFER_DST_SUBROW := XFER_DST_SUBROW + 1;
                                XFER_VRAM_ADDR  <= XFER_VRAM_ADDR - (MAX_COLUMN - 1);
                            else
                                XFER_SRC_COL    := 0;
                                XFER_VRAM_ADDR  <= XFER_VRAM_ADDR + 1;
                                XFER_DST_SUBROW := 0;
                            end if;
                        end if;
    
                        -- Destination address increments every tick.
                        --
                        XFER_DST_ADDR <= XFER_DST_ADDR + 1;
                        XFER_CYCLE := 0;
                end case;
            end if;
    
            -- On a new cycle, reset the transfer parameters.
            --
            if V_COUNT = V_LINE_END and H_COUNT = H_LINE_END - 1 then
    
                -- Start of display, setup the start of VRAM for display according to machine. 
                if MZ_A = '1' then
                    XFER_VRAM_ADDR <= (OFFSET_ADDR & "000");
                else
                    XFER_VRAM_ADDR   <= (others => '0');
                end if;
                XFER_DST_ADDR    <= (others => '0');
                XFER_CGROM_ADDR  <= (others => '0');
                XFER_SRC_COL     := 0;
                XFER_DST_SUBROW  := 0;
                XFER_CYCLE       := 0;
                XFER_ENABLED     := '0';
                XFER_WEN         <= '0';
                XFER_MAPPED_DATA <= (others => '0');
            end if;
        end if;
    end process;
    
    -- Process to generate the video data signals.
    --
    process( VRESETn, SYS_CLK)
    begin
        -- On reset, set the basic parameters which hold the video signal generator in reset
        -- then load up the required parameter set and generate the video signal.
        --
        if VRESETn = '0' then
                H_DSP_START                  <= 0;
                H_DSP_END                    <= 0;
                H_DSP_WND_START              <= 0;
                H_DSP_WND_END                <= 0;
                V_DSP_START                  <= 0;
                V_DSP_END                    <= 0;
                V_DSP_WND_START              <= 0;
                V_DSP_WND_END                <= 0;
                MAX_COLUMN                   <= 0;
                H_LINE_END                   <= 0;
                V_LINE_END                   <= 0;
                H_COUNT                      <= (others => '0');
                V_COUNT                      <= (others => '0');
                H_BLANKi                     <= '1';
                V_BLANKi                     <= '1';
                H_SYNC_ni                    <= '1';
                V_SYNC_ni                    <= '1';
                H_PX_CNT                     <= 0;
                V_PX_CNT                     <= 0;
                H_SHIFT_CNT                  <= 0;
                VIDEOMODE_LAST               <= 0;
                VIDEOMODE_CHANGED            <= '1';
                FB_ADDR                      <= (others => '0');
    
        elsif rising_edge(SYS_CLK) then
        --if CLKBUS(CKENVIDEO) = '1' then
    
            -- If the video mode changes, reset the variables to the initial state. This occurs
            -- at the end of a frame to minimise the monitor syncing incorrectly.
            --
            VIDEOMODE_LAST                   <= VIDEOMODE;
            if VIDEOMODE_LAST /= VIDEOMODE then
                VIDEOMODE_CHANGED            <= '1';
            end if;
            if VIDEOMODE_CHANGED = '1' then
    
                -- Iniitialise control registers.
                --
                FB_ADDR                          <= (others => '0');
                VIDEOMODE_CHANGED                <= '0';
    
                -- Load up configuration from the look up table based on video mode.
                --
                H_DSP_START                      <= FB_PARAMS(VIDEOMODE, 0);
                H_DSP_END                        <= FB_PARAMS(VIDEOMODE, 1);
                H_DSP_WND_START                  <= FB_PARAMS(VIDEOMODE, 2);
                H_DSP_WND_END                    <= FB_PARAMS(VIDEOMODE, 3);
                V_DSP_START                      <= FB_PARAMS(VIDEOMODE, 10);
                V_DSP_END                        <= FB_PARAMS(VIDEOMODE, 11);
                V_DSP_WND_START                  <= FB_PARAMS(VIDEOMODE, 12);
                V_DSP_WND_END                    <= FB_PARAMS(VIDEOMODE, 13);
                H_LINE_END                       <= FB_PARAMS(VIDEOMODE, 20);
                V_LINE_END                       <= FB_PARAMS(VIDEOMODE, 21);
                MAX_COLUMN                       <= FB_PARAMS(VIDEOMODE, 22);
                H_SYNC_START                     <= FB_PARAMS(VIDEOMODE, 23);
                H_SYNC_END                       <= FB_PARAMS(VIDEOMODE, 24);
                V_SYNC_START                     <= FB_PARAMS(VIDEOMODE, 25);
                V_SYNC_END                       <= FB_PARAMS(VIDEOMODE, 26);
                H_PX                             <= FB_PARAMS(VIDEOMODE, 27);
                V_PX                             <= FB_PARAMS(VIDEOMODE, 28);
                --
                H_COUNT                          <= (others => '0');
                V_COUNT                          <= (others => '0');
                H_BLANKi                         <= '1';
                V_BLANKi                         <= '1';
                H_SYNC_ni                        <= '1';
                V_SYNC_ni                        <= '1';
                H_PX_CNT                         <= 0;
                V_PX_CNT                         <= 0;
                H_SHIFT_CNT                      <= 0;
    
            else
    
                -- Activate/deactivate signals according to pixel position.
                --
                if H_COUNT =  H_DSP_START     then H_BLANKi  <= '0'; end if;
                --if H_COUNT =  H_LINE_END      then H_BLANKi  <= '0'; end if;
                if H_COUNT =  H_DSP_END       then H_BLANKi  <= '1'; end if;
                if H_COUNT =  H_SYNC_END      then H_SYNC_ni <= '1'; end if;
                if H_COUNT =  H_SYNC_START    then H_SYNC_ni <= '0'; end if;
                if V_COUNT =  V_DSP_START     then V_BLANKi  <= '0'; end if;
                --if V_COUNT =  V_LINE_END      then V_BLANKi  <= '0'; end if;
                if V_COUNT =  V_DSP_END       then V_BLANKi  <= '1'; end if;
                if V_COUNT =  V_SYNC_START    then V_SYNC_ni <= '0'; end if;
                if V_COUNT =  V_SYNC_END      then V_SYNC_ni <= '1'; end if;
    
                -- If we are in the active visible area, stream the required output based on the various buffers.
                --
                if H_COUNT >= H_DSP_START and H_COUNT < H_DSP_END and V_COUNT >= V_DSP_START and V_COUNT < V_DSP_END then
    
                    if (V_COUNT >= V_DSP_WND_START and V_COUNT < V_DSP_WND_END) and (H_COUNT >= H_DSP_WND_START and H_COUNT < H_DSP_WND_END) then
                        -- Update Horizontal Pixel multiplier.
                        --
                        if H_PX_CNT = 0 then
    
                            H_PX_CNT             <= H_PX;
                            H_SHIFT_CNT          <= H_SHIFT_CNT - 1;
    
                            -- Main screen.
                            --
                            if H_SHIFT_CNT = 0 then -- and (V_COUNT >= V_DSP_WND_START and V_COUNT < V_DSP_WND_END) and (H_COUNT >= H_DSP_WND_START and H_COUNT < H_DSP_WND_END) then
    
                                -- During the visible portion of the frame, data is stored in the frame buffer in bytes, 1 bit per pixel x 8 and 3 colors,
                                -- thus 1 x 8 x 3 or 24 bit. Read out the values into shift registers to be serialised.
                                --
                                SR_G_DATA        <= DISPLAY_DATA( 7 downto 0);
                                SR_R_DATA        <= DISPLAY_DATA(15 downto 8);
                                SR_B_DATA        <= DISPLAY_DATA(15 downto 8);
                                FB_ADDR          <= FB_ADDR + 1;
    
                            else -- H_SHIFT_CNT /= 0 then --and H_COUNT >= H_DSP_START and H_COUNT < H_DSP_END and V_COUNT >= V_DSP_START and V_COUNT < V_DSP_END then
                                -- During the active display area, if the shift counter is not 0 and the horizontal multiplier is equal to the setting,
                                -- shift the data in the shift register to display the next pixel.
                                --
                                SR_G_DATA        <= SR_G_DATA(6 downto 0) & '0';
                                SR_R_DATA        <= SR_R_DATA(6 downto 0) & '0';
                                SR_B_DATA        <= SR_B_DATA(6 downto 0) & '0';
    
                            end if;
                        else
                            H_PX_CNT             <= H_PX_CNT - 1;
                        end if;
                    else
                        -- Blank.
                        --
                        SR_G_DATA                <= (others => '0');
                        SR_R_DATA                <= (others => '0');
                        SR_B_DATA                <= (others => '0');
                        H_PX_CNT                 <= H_PX;
                        H_SHIFT_CNT              <= 1;
                    end if;
    
                else
                    H_PX_CNT                     <= 0;
                    H_SHIFT_CNT                  <= 0;
                end if;
    
                -- Horizontal/Vertical counters are updated each clock cycle to accurately track pixel/timing.
                --
                if H_COUNT = H_LINE_END then
                    H_COUNT                      <= (others => '0');
                    H_PX_CNT                     <= 0;
    
                    -- Update Vertical Pixel multiplier.
                    --
                    if V_PX_CNT = 0 then
                        V_PX_CNT                 <= V_PX;
                    else
                        V_PX_CNT                 <= V_PX_CNT - 1;
                    end if;
    
                    -- When we need to repeat a line due to pixel multiplying, wind back the framebuffer address to start of line.
                    --
                    if V_COUNT >= V_DSP_WND_START and V_COUNT < V_DSP_WND_END and V_PX /= 0 and V_PX_CNT > 0 then
                        FB_ADDR                  <= FB_ADDR - MAX_COLUMN;
                    end if;
    
                    -- Once we have reached the end of the active vertical display, reset the framebuffer address.
                    --
                    if V_COUNT = V_DSP_END then
                        FB_ADDR                  <= (others => '0');
                    end if;
    
                    -- End of vertical line, increment to next or reset to beginning.
                    --
                    if V_COUNT = V_LINE_END then
                        V_COUNT                  <= (others => '0');
                        V_PX_CNT                 <= 0;
                    else
                        V_COUNT                  <= V_COUNT + 1;
                    end if;
                else
                    H_COUNT                      <= H_COUNT + 1;
                end if;
            end if;
        end if;
      --  end if;
    end process;
    
    -- Control Registers
    --
    -- MZ1200/80A: INVERT display, accessed at E014
    --             SCROLL display, accessed at E200 - E2FF, the address determines the offset.
    -- F0-F3 clocks the i8253 gate for MZ80B. (not used in this module)
    -- F4-F7 set ths MZ80B/MZ2000 graphics options. Bit 0 = 0, Write to Graphics RAM I, Bit 0 = 1, Write to Graphics RAM II.
    --       Bit 1 = 1, blend Graphics RAM I output on display, Bit 2 = 1, blend Graphics RAM II output on display.
    --
    -- IO Range for Graphics enhancements is set by the MCTRL DISPLAY2{7:3] register.
    -- x[0|8],<val> sets the graphics mode. 7/6 = Operator (00=OR,01=AND,10=NAND,11=XOR), 5=GRAM Output Enable, 4 = VRAM Output Enable, 3/2 = Write mode (00=Page 1:Red, 01=Page 2:Green, 10=Page 3:Blue, 11=Indirect), 1/0=Read mode (00=Page 1:Red, 01=Page2:Green, 10=Page 3:Blue, 11=Not used).
    -- x[1|9],<val> sets the Red bit mask (1 bit = 1 pixel, 8 pixels per byte).
    -- x[2|A],<val> sets the Green bit mask (1 bit = 1 pixel, 8 pixels per byte).
    -- x[3|B],<val> sets the Blue bit mask (1 bit = 1 pixel, 8 pixels per byte).
    -- x[4|C]       switches in 1 16Kb page (3 pages) of graphics ram to C000 - FFFF. This overrides all MZ700 page switching functions.
    -- x[5|D]       switches out the graphics ram and returns to previous state.
    --
    process( VRESETn, SYS_CLK )
    begin
        if VRESETn='0' then
            DISPLAY_INVERT        <= '0';
            OFFSET_ADDR           <= (others => '0');
            GRAM_MODE             <= "00001100";
            GRAM_R_FILTER         <= (others => '1');
            GRAM_G_FILTER         <= (others => '1');
            GRAM_B_FILTER         <= (others => '1');
            GRAM_OPT_WRITE        <= '0';
            GRAM_OPT_OUT1         <= '0';
            GRAM_OPT_OUT2         <= '0';
    
        elsif rising_edge(SYS_CLK) then
    
          --  if CLKBUS(CKENCPU) = '1' then
    
                if CS_INVERT_n='0' and VRDn='0' then
                    DISPLAY_INVERT    <= T80_MA(0);
                end if;
    
                if CS_SCROLL_n='0' and VRDn='0' then
                    if NORMAL80 = '1' or COLOUR80 = '1' then
                        OFFSET_ADDR   <= (others => '0');
                    else
                        OFFSET_ADDR   <= VADDR(7 downto 0);
                    end if;
                end if;
    
                if CS_FB_CTL_n = '0'   and VWRn = '0' then
                    GRAM_MODE         <= VDATA;
                end if;
    
                if CS_FB_RED_n = '0'   and VWRn = '0' then
                    GRAM_R_FILTER     <= VDATA;
                end if;
    
                if CS_FB_GREEN_n = '0' and VWRn = '0' then
                    GRAM_G_FILTER     <= VDATA;
                end if;
    
                if CS_FB_BLUE_n = '0'  and VWRn = '0' then
                    GRAM_B_FILTER     <= VDATA;
                end if;
    
                if CS_GRAM_OPT_n = '0' and VWRn = '0' then
                    GRAM_OPT_WRITE    <= VDATA(0);
                    GRAM_OPT_OUT1     <= VDATA(1);
                    GRAM_OPT_OUT2     <= VDATA(2);
                end if;
           -- end if;
        end if;
    end process;
    
    --
    -- PCG Access Registers
    --
    -- E010: PCG_DATA (byte to describe 8-pixel row of a character)
    -- E011: PCG_ADDR (offset in the PCG in 8-pixel row unit) -> up to 256/8 = 32 characters
    -- E012: PCG_CTRL
    --                bit 0-1: character selector -> (PCG_ADDR + 256*(PCG_CTRL&3)) -> address in the range of the upper 128 characters font
    --                bit 2 : font selector -> PCG_CTRL&2 == 0 -> 1st font else 2nd font
    --                bit 3 : select which font for display
    --                bit 4 : use programmable font for display
    --                bit 5 : set programmable upper font -> PCG_CTRL&20 == 0 -> fixed upper 128 characters else programmable upper 128 characters
    --                So if you want to change a character pattern (only doable in the upper 128 characters of a font), you need to:
    --                - set bit 5 to 1 : PCG_CTRL[5] = 1
    --                - set the font to select : PCG_CTRL[2] = font_number
    --                - set the first row address of the character: PCG_ADDR[0..7] = row[0..7] and PCG_CTRL[0..1] = row[8..9]
    --                - set the 8 pixels of the row in PCG_DATA
    --
    process( VRESETn, SYS_CLK ) begin
        if VRESETn = '0' then
            CGRAM_ADDR                <= (others=>'0');
            PCG_DATA                  <= (others=>'0');
            CGRAM_WE_n                <= '1';
    
        elsif rising_edge(SYS_CLK) then
    
       --     if CLKBUS(CKENCPU) = '1' then
    
                if CS_PCG_n = '0' and VWRn = '0' then
                    -- Set the PCG Data to program to RAM. 
                    if VADDR(1 downto 0) = "00" then
                        PCG_DATA                <= VDATA;
                    end if;
    
                    -- Set the PCG Address in RAM. 
                    if VADDR(1 downto 0) = "01" then
                        CGRAM_ADDR(7 downto 0)  <= VDATA;
                    end if;
    
                    -- Set the PCG Control register.
                    if VADDR(1 downto 0) = "10"  then
                        CGRAM_ADDR(11 downto 8) <= (VDATA(2) and MZ_A) & '1' & VDATA(1 downto 0);
                        CGRAM_WE_n              <= not VDATA(4);
                        CGRAM_SEL               <= VDATA(5);
                    end if;
                end if;
        --    end if;
        end if;
    end process;
    
    --
    -- CPU / RAM signals and selects.
    --
    T80_MA               <= "00" & VADDR(9 downto 0)                     when MZ_KC = '1'
                            else
                            VADDR(11 downto 0);
    -- Program Character Generator RAM. E010 - Write cycle (Read cycle = reset memory swap).
    CS_PCG_n             <= '0'                                          when VMEM_CSn = '0'      and VADDR(13 downto 12) = "10" and VADDR(10 downto 4) = "0000001"
                            else '1';                                                                   -- D010 -> D01f
    -- Invert display register. E014/E015
    CS_INVERT_n          <= '0'                                          when VMEM_CSn = '0'      and MZ_A = '1'        and T80_MA(11 downto 9) = "000" and T80_MA(4 downto 2) = "101"
                            else '1';
    -- Scroll display register. E200 - E2FF
    CS_SCROLL_n          <= '0'                                          when VMEM_CSn = '0'      and VADDR(13 downto 12) = "10" and VADDR(11 downto 8)="0010" and MZ_A='1'
                            else '1';
    -- MZ80B/MZ2000 Graphics Options Register select. F4-F7
    CS_GRAM_OPT_n        <= '0'                                          when VIORQn = '0' and VADDR(7 downto 2) = "111101"
                            else '1';
    -- <block>0,<val> sets the graphics mode. 7/6 = Operator (00=OR,01=AND,10=NAND,11=XOR),
    --                                          5 = GRAM Output Enable, 4 = VRAM Output Enable,
    --                                        3/2 = Write mode (00=Page 1:Red, 01=Page 2:Green, 10=Page 3:Blue, 11=Indirect),
    --                                        1/0 = Read mode (00=Page 1:Red, 01=Page2:Green, 10=Page 3:Blue, 11=Not used).
    CS_FB_CTL_n          <= '0'                                          when VIORQn = '0' and VADDR(7 downto 0) = "11111000"
                            else '1';
    --  01,<val> sets the Red bit mask (1 bit = 1 pixel, 8 pixels per byte).
    CS_FB_RED_n          <= '0'                                          when VIORQn = '0' and VADDR(7 downto 0) = "11111001"
                            else '1';
    --  02,<val> sets the Green bit mask (1 bit = 1 pixel, 8 pixels per byte).
    CS_FB_GREEN_n        <= '0'                                          when VIORQn = '0' and VADDR(7 downto 0) = "11111010"
                            else '1';
    --  03,<val> sets the Blue bit mask (1 bit = 1 pixel, 8 pixels per byte).
    CS_FB_BLUE_n         <= '0'                                          when VIORQn = '0' and VADDR(7 downto 0) = "11111011"
                            else '1';
    
    VDATA                <= VRAM_VIDEO_DATA                              when VRDn = '0'        and (VVRAM_CS_INn = '0' or VCSn = '0')
                            else
                         --   GRAM_VIDEO_DATA                              when VRDn = '0'        and VMEM_CSn = '0'      and VADDR(13) = '1'
                         --   else
                            GRAM_DO_GI                                   when VRDn = '0'        and VMEM_CSn = '0'      and VADDR(13) = '1'  and GRAM_OPT_WRITE = '0'
                            else
                            GRAM_DO_GII                                  when VRDn = '0'        and VMEM_CSn = '0'      and VADDR(13) = '1'  and GRAM_OPT_WRITE = '1'
                            else
                            GRAM_DO_GIII                                 when VRDn = '0'        and VMEM_CSn = '0'      and VADDR(13 downto 12) = "01"  and GRAM_OPT_WRITE = '1'
                            else
                            (others=>'Z');
    
    VWEN                 <= '1'                                          when VWRn='0'          and (VVRAM_CS_INn = '0' or VCSn = '0')
                            else '0';
    VRAM_WEN             <= VWEN;
    VRAM_VIDEO_DATA      <= VRAM_DO;
    
    -- CGROM Data to CG RAM, either ROM -> RAM copy or Z80 provides map.
    --
    CGRAM_DI             <= CGROM_DO                                     when CGRAM_SEL = '1'               -- Data from ROM
                            else
                            PCG_DATA                                     when CGRAM_SEL = '0'               -- Data from PCG
                            else (others=>'0');
    CGRAM_WEN            <= not (CGRAM_WE_n or CS_PCG_n) and not VWRn; 
    
    --
    -- Font select
    --
    CGROM_DATA           <= CGROM_DO                                     when PCGRAM='0'
                            else
                            PCG_DATA                                     when CS_PCG_n='0'         and VADDR(1 downto 0)="10" and VWRn='0'
                            else
                            CGRAM_DO                                     when PCGRAM='1'
                            else (others => '1');
    CG_ADDR              <= CGRAM_ADDR(11 downto 0)                      when CGRAM_WE_n = '0'
                            else XFER_CGROM_ADDR;
    CGROM_BANK           <= "0000"                                       when MZ80K  = '1'
                            else
                            "0001"                                       when MZ80C  = '1'
                            else
                            "0010"                                       when MZ1200 = '1'
                            else
                            "0011"                                       when MZ80A  = '1'
                            else
                            "0100"                                       when MZ700  = '1'  and XFER_CGROM_ADDR(11) = '0'
                            else
                            "0101"                                       when MZ700  = '1'  and XFER_CGROM_ADDR(11) = '1'
                            else
                            "0110"                                       when MZ800  = '1'  and XFER_CGROM_ADDR(11) = '0'
                            else
                            "0111"                                       when MZ800  = '1'  and XFER_CGROM_ADDR(11) = '1'
                            else
                            "1000"                                       when MZ80B  = '1'
                            else
                            "1001"                                       when MZ2000 = '1'
                            else
                            "1111";
    
    
    -- As the Graphics RAM is an odd size, 16384 x 3 colour planes, it has to be in 3 seperate 16K blocks to avoid wasting memory (or having it synthesized away),
    -- thus there are 3 sets of signals, 1 per colour.
    --
    GRAM_ADDR            <= VADDR(13 downto 0);
                            -- direct writes when accessing individual pages.
    GRAM_DI_R            <= VDATA                                        when GRAM_MODE(3 downto 2) = "00"
                            else
                            VDATA and GRAM_R_FILTER                      when GRAM_MODE(3 downto 2) = "11"
                            else
                            (others=>'0');
                            -- direct writes when accessing individual pages.
    GRAM_DI_G            <= VDATA                                        when GRAM_MODE(3 downto 2) = "01"
                            else
                            VDATA and GRAM_G_FILTER                      when GRAM_MODE(3 downto 2) = "11"
                            else
                            (others=>'0');
                            -- direct writes when accessing individual pages.
    GRAM_DI_B            <= VDATA                                        when GRAM_MODE(3 downto 2) = "10"
                            else
                            VDATA and GRAM_B_FILTER                      when GRAM_MODE(3 downto 2) = "11"
                            else
                            (others=>'0');
    GWEN_R               <= '1'                                          when VWRn = '0' and VMEM_CSn = '0' and GRAM_MODE(3 downto 2) = "00"
                            else
                            '1'                                          when VWRn = '0' and VMEM_CSn = '0' and GRAM_MODE(3 downto 2) = "11"
                            else
                            '0';
    GRAM_WEN_R           <= GWEN_R;
    GWEN_G               <= '1'                                          when VWRn='0'   and VMEM_CSn = '0' and GRAM_MODE(3 downto 2) = "01"
                            else
                            '1'                                          when VWRn='0'   and VMEM_CSn = '0' and GRAM_MODE(3 downto 2) = "11"
                            else
                            '0';
    GRAM_WEN_G           <= GWEN_G;
    GWEN_B               <= '1'                                          when VWRn='0'   and VMEM_CSn = '0' and GRAM_MODE(3 downto 2) = "10"
                            else
                            '1'                                          when VWRn='0'   and VMEM_CSn = '0' and GRAM_MODE(3 downto 2) = "11"
                            else
                            '0';
    GRAM_WEN_B           <= GWEN_B;
    GRAM_VIDEO_DATA      <= GRAM_DO_R                                    when GRAM_MODE(1 downto 0) = "00"
                            else
                            GRAM_DO_G                                    when GRAM_MODE(1 downto 0) = "01"
                            else
                            GRAM_DO_B                                    when GRAM_MODE(1 downto 0) = "10"
                            else
                            (others=>'0');
    
    -- MZ80B/MZ2000 Graphics Option RAM.
    --
    GRAM_DI_GI           <= VDATA;
    GRAM_DI_GII          <= VDATA;
    GRAM_DI_GIII         <= VDATA;
    GWEN_GI              <= '1'                                          when VWRn = '0' and  VMEM_CSn = '0'     and VADDR(13) = '1' and GRAM_OPT_WRITE = '0'
                            else
                            '0';
    GRAM_WEN_GI          <= GWEN_GI;
    GWEN_GII             <= '1'                                          when VWRn='0'   and VMEM_CSn = '0'      and VADDR(13) = '1' and GRAM_OPT_WRITE = '1'
                            else
                            '0';
    GRAM_WEN_GII         <= GWEN_GII;
    GWEN_GIII            <= '1'                                          when VWRn='0'   and VMEM_CSn = '0'      and VADDR(13 downto 12) = "01" and GRAM_OPT_WRITE = '1'
                            else
                            '0';
    GRAM_WEN_GIII        <= GWEN_GIII;
    
    -- Work out the current video mode, which is used to look up the parameters for frame generation.
    --
    VIDEOMODE            <= 0  when VGAMODE = "11" and MZ_80B   = '1' and CONFIG_CHAR80 = '0'
                            else
                            1  when VGAMODE = "11" and MZ_80B   = '1' and CONFIG_CHAR80 = '1'
                            else
                            2  when VGAMODE = "11" and NORMAL   = '1'
                            else
                            3  when VGAMODE = "11" and NORMAL80 = '1'
                            else
                            4  when VGAMODE = "11" and COLOUR   = '1' and MZ700 = '1'
                            else
                            5  when VGAMODE = "11" and COLOUR80 = '1' and MZ700 = '1'
                            else
                            6  when VGAMODE = "11" and COLOUR   = '1'
                            else
                            7  when VGAMODE = "11" and COLOUR80 = '1' 
                            else
                            8  when VGAMODE = "00" and MZ_80B   = '1' and CONFIG_CHAR80 = '0'
                            else
                            10 when VGAMODE = "00" and MZ_80B   = '1' and CONFIG_CHAR80 = '1'
                            else
                            9  when VGAMODE = "01" and MZ_80B   = '1' and CONFIG_CHAR80 = '0'
                            else
                            11 when VGAMODE = "01" and MZ_80B   = '1' and CONFIG_CHAR80 = '1'
                            else
                            8  when VGAMODE = "00" and NORMAL   = '1'
                            else
                            9  when VGAMODE = "01" and NORMAL   = '1'
                            else
                            10 when VGAMODE = "00" and NORMAL80 = '1'
                            else
                            11 when VGAMODE = "01" and NORMAL80 = '1'
                            else
                            12 when VGAMODE = "00" and COLOUR   = '1' and MZ700 = '1'
                            else
                            13 when VGAMODE = "01" and COLOUR   = '1' and MZ700 = '1'
                            else
                            18 when VGAMODE = "10" and COLOUR   = '1' and MZ700 = '1'
                            else
                            14 when VGAMODE = "00" and COLOUR80 = '1' and MZ700 = '1'
                            else
                            15 when VGAMODE = "01" and COLOUR80 = '1' and MZ700 = '1'
                            else
                            19 when VGAMODE = "10" and COLOUR80 = '1' and MZ700 = '1'
                            else
                            12 when VGAMODE = "00" and COLOUR   = '1'
                            else
                            13 when VGAMODE = "01" and COLOUR   = '1'
                            else
                            18 when VGAMODE = "10" and COLOUR   = '1'
                            else
                            14 when VGAMODE = "00" and COLOUR80 = '1'
                            else
                            15 when VGAMODE = "01" and COLOUR80 = '1'
                            else
                            19 when VGAMODE = "10" and COLOUR80 = '1'
                            else
                            16 when VGAMODE = "10" and NORMAL   = '1'
                            else
                            17 when VGAMODE = "10" and NORMAL80 = '1'
                            else
                            2;
    
    -- Data bus bidirectional control. Only output data during a read cycle. 
    VDATA            <= VRAM_DO when VRDn = '0' and (VVRAM_CS_INn = '0' or VCSn = '0')
                        else
                        (others => 'Z');
                        
    VGA_R             <= (others => SR_R_DATA(7)) when H_BLANKi='0'
                        else
                        (others => '0');
    VGA_G             <= (others => SR_G_DATA(7)) when H_BLANKi='0'
                        else
                        (others => '0');
    VGA_B             <= (others => SR_B_DATA(7)) when H_BLANKi='0'
                        else
                        (others => '0');
    VGA_HS            <= H_SYNC_ni;
    VGA_VS            <= V_SYNC_ni;
    CSYNCn            <= not (H_SYNC_ni or V_SYNC_ni);
    CSYNC             <= H_SYNC_ni or V_SYNC_ni;
    VSRVIDEO_OUT      <= SR_R_DATA(7) or SR_G_DATA(7) or SR_B_DATA(7);                    -- Video out from 74LS165 on mainboard, pre-GATE.
    VHBLNK_OUTn       <= H_BLANKi;                                                        -- Horizontal blanking.
    VHSY_OUT          <= not H_SYNC_ni;                                                   -- Horizontal Sync.
    VSYNCH_OUT        <= not V_SYNC_ni;                                                   -- Veritcal Sync.
    VVBLNK_OUTn       <= V_BLANKi;                                                        -- Vertical blanking.

    -- Process to subdivide the video clock into the frequencies required by the main board.
    
end architecture;
