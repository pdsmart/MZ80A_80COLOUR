---------------------------------------------------------------------------------------------------------
--
-- Name:            VideoInterface.vhd
-- Created:         June 2020
-- Author(s):       Philip Smart
-- Description:     MZ80A Video Module v2.0 CPLD logic definition file.
--                  This module contains the definition of the logic used in v2.0 of the Sharp MZ80A 
--                  Video Module. The design uses a CPLD for glue logic and voltage translation and a
--                  Cyclone III to realise the video circuitry.
--                  The sizing of the CPLD is probably overkill but like most developments, more is better
--                  until the design is finalised as it gives you more options.
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
use work.VideoInterface_pkg.all;

entity VideoInterface is
    --generic (
    --);
    port (    
        -- Primary video clock.
        VID_CLK                   : in    std_logic;                                     -- 16MHz base clock for video timing and gate clocking.

        -- Z80 Address and Data. Address is muxed with video addressing, not direct.
        A                         : in    std_logic_vector(13 downto 0);                 -- Z80 Address bus, multiplexed with video address. 13..11 come from the tranZPUter board.
        D                         : inout std_logic_vector(7 downto 0);                  -- Z80 Data bus, from the Colour Card CN! connector.

        -- Z80 Control signals.
        WRn                       : in    std_logic;                                     -- Z80 Write signal from the Colour Card CN! connector.
        RDn                       : in    std_logic;                                     -- Z80 Read signal from the Colour Card CN! connector.
        RESETn                    : in    std_logic;                                     -- Z80 RESET signal from the tranZPUter board.
        IORQn                     : in    std_logic;                                     -- Z80 IORQ signal from the tranZPUter board.

        -- Video and Mainboard signals.
        SRVIDEO_OUT               : out   std_logic;                                     -- Shift Register 74LS165 Video Output onto mainboard.
        CLK_31_5K_OUT             : out   std_logic;                                     -- 31.5KHz time base for the 8253 on mainboard. Signal was from the MB14298.
        CLK_1MHZ_OUT              : out   std_logic;                                     -- 1MHZ video timing clock output to mainboard. Signal was from the MB14298.
        CLK_2MHZ_OUT              : out   std_logic;                                     -- 2MHZ main CPU clock output to mainboard. Signal was from the MB14298.
        HBLNK_OUTn                : out   std_logic;                                     -- Horizontal Blanking output. Signal was from the MB14298.
        HSY_OUT                   : out   std_logic;                                     -- Horizontal sync output. Signal was from the MB14298.
        SYNCH_OUT                 : out   std_logic;                                     -- Vertical sync output. Signal was from the MB14298.
        VBLNK_OUTn                : out   std_logic;                                     -- Vertical blanking output. Signal was from the MB14298.
        MB_HBLNKn                 : in    std_logic;                                     -- Mainboard Horizontal Blanking from the Colour Card CN! connector.
        MB_SYNCH                  : in    std_logic;                                     -- Mainboard Vertical sync from the Colour Card CN! connector.
        MB_V_HBLNKn               : in    std_logic;                                     -- Mainboard combined vertical/horizontal sync from the Colour Card CN! connector.
        MB_VIDEO                  : in    std_logic;                                     -- Mainboard Video (74LS165 output combined with GATE) from the Colour Card CN! connector.
        MB_LOAD                   : in    std_logic;                                     -- Mainboard shift register load signal from the Colour Card CN! connector.
        VRAM_CS_INn               : in    std_logic;                                     -- Chip Select for access to the Video RAM from the mainboard IC15 socket.
        GTn                       : in    std_logic;                                     -- GATE signal from the Colour Card CN! connector.
        CSn                       : in    std_logic;                                     -- Chip Select for the Video Attribute RAM from the Colour Card CN! connector.
        MEM_CSn                   : in    std_logic;                                     -- Extended memory select for region 0xE000 - 0xFFFF from the tranZPUter board.

        -- V[name] = Voltage translated signals which mirror the mainboard signals but at a lower voltage.
        VADDR                     : out   std_logic_vector(13 downto 0);                 -- Z80 Address bus, multiplexed with video address.
        VDATA                     : inout std_logic_vector(7 downto 0);                  -- Z80 Data bus from mainboard Colour Card CD connector..
        VRAMD                     : inout std_logic_vector(7 downto 0);                  -- Z80 Data bus from the VRAM chip, gated according to state signals.
        VMEM_CSn                  : out   std_logic;                                     -- Extended memory select to FPGA.
        VVRAM_CS_INn              : out   std_logic;                                     -- Chip Select for access to the Video RAM from the mainboard IC15 socket.
        VIORQn                    : out   std_logic;                                     -- IORQn to FPGA.
        VRDn                      : out   std_logic;                                     -- RDn to FPGA.
        VCSn                      : out   std_logic;                                     -- Video RAM Attribute Chip Select (CSn) to FPGA.
        VGTn                      : out   std_logic;                                     -- Video Gate (GTn) 
        VWRn                      : out   std_logic;                                     -- WRn to FPGA.
        VRESETn                   : out   std_logic;                                     -- Reset to FPGA.
        --
        VSRVIDEO_OUT              : in    std_logic;                                     -- Video out from 74LS165 on mainboard, pre-GATE.
        VHBLNK_OUTn               : in    std_logic;                                     -- Horizontal blanking.
        VHSY_OUT                  : in    std_logic;                                     -- Horizontal Sync.
        VSYNCH_OUT                : in    std_logic;                                     -- Veritcal Sync.
        VVBLNK_OUTn               : in    std_logic;                                     -- Vertical blanking.

        -- Reserved.
        TBA                       : in    std_logic_vector(9 downto 0)                   -- Reserved signals.

        -- JTAG / ISP
        --TCK                     : in    std_logic;
        --TDI                     : in    std_logic;
        --TDO                     : out   std_logic;
        --TMS                     : in    std_logic 
    );
end entity;

architecture rtl of VideoInterface is

    -- Clock generation wires.
    signal CLK2Mi                 :       std_logic;                                     -- 2MHz used for the CPU main frequency.
    signal CLK1Mi                 :       std_logic;                                     -- 1MHz used for video timing.
    signal CLK31500i              :       std_logic;                                     -- 8253 Clock base frequency used for RTC,

    function to_std_logic(L: boolean) return std_logic is
    begin
        if L then
            return('1');
        else
            return('0');
        end if;
    end function to_std_logic;
begin

    --
    -- Instantiation
    --

    -- Voltage translation. The FPGA is max 3.3v tolerant (as are nearly all FPGA's) so the 5V signals from the mainboard would have to go through a diode clamp 
    -- or converter. Given the pricing of the MAX7000 series chips it is easier and cheaper to use a CPLD to perform the voltage translation as they are 5V tolerant
    -- and the mainboard accepts 3.3V output voltages.
    --
    VADDR            <= A;
    VRESETn          <= RESETn;
    VIORQn           <= IORQn;
    VRDn             <= RDn;
    VWRn             <= WRn;
    VGTn             <= GTn;
    VCSn             <= CSn;
    VMEM_CSn         <= MEM_CSn;
    VVRAM_CS_INn     <= VRAM_CS_INn;

    -- Data bus is muxed between the Z80 data bus and VRAMD which is the gated data bus after the video buffers.
    VDATA            <= VRAMD when WRn = '0' and VRAM_CS_INn = '0'
                        else 
                        D when WRn = '0' and VRAM_CS_INn = '1'
                        else (others => 'Z');
    D                <= VRAMD when RDn = '0' and VRAM_CS_INn = '0'
                        else
                        VDATA when RDn = '0' and VRAM_CS_INn = '1'
                        else (others => 'Z');
    VRAMD            <= VDATA when RDn = '0' and VRAM_CS_INn = '0'
                        else (others => 'Z');

    SRVIDEO_OUT      <= '1';
    HBLNK_OUTn       <= '1';
    HSY_OUT          <= '1';
    SYNCH_OUT        <= '1';
    VBLNK_OUTn       <= '1';

    -- Process to subdivide the video clock into the frequencies required by the main board.
    -- This logic was originally performed by the MB14298 Gate Array on the mainboard.
    --
    process(RESETn, VID_CLK, CLK2Mi, CLK1Mi, CLK31500i)
        variable counter2Mi        : unsigned(4 downto 0);                -- Binary divider to create 2Mi clock.
        variable counter1Mi        : unsigned(5 downto 0);                -- Binary divider to create 1Mi clock.
        variable counter31500i     : unsigned(10 downto 0);               -- Binary divider to create 31500i clock.
    begin

        if RESETn = '0' then
            counter2Mi             := (others => '0');
            counter1Mi             := (others => '0');
            counter31500i          := (others => '0');
            CLK2Mi                 <= '0';
            CLK1Mi                 <= '0';
            CLK31500i              <= '0';

        elsif rising_edge(VID_CLK) then

            -- 2000000Hz 
            if counter2Mi = 0 or counter2Mi = 8 then
                CLK2Mi             <= not CLK2Mi;
                if counter2Mi  = 8 then
                    counter2Mi     := (others => '0');
                else
                    counter2Mi     := counter2Mi + 1;
                end if;
            else
                counter2Mi         := counter2Mi + 1;
            end if;

            -- 1000000Hz 
            if counter1Mi = 0 or counter1Mi = 8 then
                CLK1Mi             <= not CLK1Mi;
                if counter1Mi  = 8 then
                    counter1Mi     := (others => '0');
                else
                    counter1Mi     := counter1Mi + 1;
                end if;
            else
                counter1Mi         := counter1Mi + 1;
            end if;

            -- 31500Hz 
            if counter31500i = 0 or counter31500i = 255 then
                CLK31500i          <= not CLK31500i;

                if counter31500i  = 255 then
                    counter31500i  := (others => '0');
                else
                    counter31500i  := counter31500i + 1;
                end if;
            else
                counter31500i      := counter31500i + 1;
            end if;
        end if;

        CLK_31_5K_OUT    <= CLK31500i;
        CLK_1MHZ_OUT     <= CLK1Mi;
        CLK_2MHZ_OUT     <= CLK2Mi;

    end process;

end architecture;
