---------------------------------------------------------------------------------------------------------
--
-- Name:            VideoInterface_Toplevel.vhd
-- Created:         June 2020
-- Author(s):       Philip Smart
-- Description:     MZ80A Video Module CPLD Top Level module.
--                                                     
--                  This module contains the basic pin definition of the CPLD<->logic<-->FPGA  needed in
--                  the project.
--
-- Credits:         
-- Copyright:       (c) 2018-20 Philip Smart <philip.smart@net2net.org>
--
-- History:         June 2020 - Initial creation.
--                  Sep 2020  - First release. 
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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.VideoInterface_pkg.all;
library altera;
use altera.altera_syn_attributes.all;

entity VideoInterfaceCPLD is
    port (
        -- Primary video clock.
        CLOCK_50                  : in    std_logic;                                     -- 50MHz base clock for system board, video timing and gate clocking.

        -- Z80 Address and Data. Address is muxed with video addressing, not direct.
        A                         : in    std_logic_vector(10 downto 0);                 -- Z80 Address bus, multiplexed with video address. 13..11 come from the tranZPUter board.
        D                         : inout std_logic_vector(7 downto 0);                  -- Z80 Data bus, from the Colour Card CN! connector.

        -- Z80 Control signals.
        WRn                       : in    std_logic;                                     -- Z80 Write signal from the Colour Card CN! connector.
        RDn                       : in    std_logic;                                     -- Z80 Read signal from the Colour Card CN! connector.
        RESETn                    : in    std_logic;                                     -- Z80 RESET signal from the tranZPUter board.
        MB_RESETn                 : in    std_logic;                                     -- Z80 RESET signal from the tranZPUter board.

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
        OUTCLK                    : out   std_logic;                                     -- CPU signal serialiser clock.
        INDATA                    : in    std_logic_vector(3 downto 0);                  -- Incoming serialised CPU signals.

        -- V[name] = Voltage translated signals which mirror the mainboard signals but at a lower voltage.
        VADDR                     : out   std_logic_vector(15 downto 0);                 -- Z80 Address bus, multiplexed with video address.
        VDATA                     : inout std_logic_vector(7 downto 0);                  -- Z80 Data bus from mainboard Colour Card CD connector..
        VRAMD                     : inout std_logic_vector(7 downto 0);                  -- Z80 Data bus from the VRAM chip, gated according to state signals.
      --VMEM_CSn                  : out   std_logic;                                     -- Extended memory select to FPGA.
        VZ80_IORQn                : out   std_logic;                                     -- IORQn to FPGA.
        VZ80_RDn                  : out   std_logic;                                     -- RDn to FPGA.
        VZ80_WRn                  : out   std_logic;                                     -- WRn to FPGA.
        VVRAM_CS_INn              : out   std_logic;                                     -- Chip Select for access to the Video RAM from the mainboard IC15 socket.
        VCSn                      : out   std_logic;                                     -- Video RAM Attribute Chip Select (CSn) to FPGA.
        VGTn                      : out   std_logic;                                     -- Video Gate (GTn) 
        VRESETn                   : out   std_logic;                                     -- Reset to FPGA.
        --
        VSRVIDEO_OUT              : in    std_logic;                                     -- Video out from 74LS165 on mainboard, pre-GATE.
        VHBLNK_OUTn               : in    std_logic;                                     -- Horizontal blanking.
        VHSY_OUT                  : in    std_logic;                                     -- Horizontal Sync.
        VSYNCH_OUT                : in    std_logic;                                     -- Veritcal Sync.
        VVBLNK_OUTn               : in    std_logic;                                     -- Vertical blanking.
                --
        VMB_HBLNKn                : out   std_logic;                                     -- Horizontal Blanking from the Colour Card CN! connector.
        VMB_SYNCH                 : out   std_logic;                                     -- Vertical sync from the Colour Card CN! connector.
        VMB_V_HBLNKn              : out   std_logic;                                     -- combined vertical/horizontal sync from the Colour Card CN! connector.
        VMB_VIDEO                 : out   std_logic;                                     -- Video (74LS165 output combined with GATE) from the Colour Card CN! connector.
        VMB_LOAD                  : out   std_logic                                      -- shift register load signal from the Colour Card CN! connector.

        -- Reserved.
      --TBA                       : in    std_logic_vector(4 downto 0)                   -- Reserved signals.
    );
END entity;

architecture rtl of VideoInterfaceCPLD is

    signal CPLDRESETn             :       std_logic;
    signal RESET_COUNTER          :       unsigned(2 downto 0);

begin

    myVirtualToplevel : entity work.VideoInterface
    --generic map
    --(
    --)
    port map
    (    
        -- Primary video clock.
        CLOCK_50        => CLOCK_50,                                                     -- 50MHz base clock for system board, video timing and gate clocking.

        -- Z80 Address and Data. Address is muxed with video addressing, not direct.
        A               => A,                                                            -- Z80 Address bus, multiplexed with video address. 13..11 come from the tranZPUter board.
        D               => D,                                                            -- Z80 Data bus, from the Colour Card CN! connector.

        -- Z80 Control signals.
        WRn             => WRn,                                                          -- Z80 Write signal from the Colour Card CN! connector.
        RDn             => RDn,                                                          -- Z80 Read signal from the Colour Card CN! connector.
        RESETn          => CPLDRESETn,                                                   -- Z80 RESET signal from the tranZPUter board.
     -- IORQn           => IORQn,                                                        -- Z80 IORQ signal from the tranZPUter board.

        -- Video and Mainboard signals.
        SRVIDEO_OUT     => SRVIDEO_OUT,                                                  -- Shift Register 74LS165 Video Output onto mainboard.
        CLK_31_5K_OUT   => CLK_31_5K_OUT,                                                -- 31.5KHz time base for the 8253 on mainboard. Signal was from the MB14298.
        CLK_1MHZ_OUT    => CLK_1MHZ_OUT,                                                 -- 1MHZ video timing clock output to mainboard. Signal was from the MB14298.
        CLK_2MHZ_OUT    => CLK_2MHZ_OUT,                                                 -- 2MHZ main CPU clock output to mainboard. Signal was from the MB14298.
        HBLNK_OUTn      => HBLNK_OUTn,                                                   -- Horizontal Blanking output. Signal was from the MB14298.
        HSY_OUT         => HSY_OUT,                                                      -- Horizontal sync output. Signal was from the MB14298.
        SYNCH_OUT       => SYNCH_OUT,                                                    -- Vertical sync output. Signal was from the MB14298.
        VBLNK_OUTn      => VBLNK_OUTn,                                                   -- Vertical blanking output. Signal was from the MB14298.
        MB_HBLNKn       => MB_HBLNKn,                                                    -- Mainboard Horizontal Blanking from the Colour Card CN! connector.
        MB_SYNCH        => MB_SYNCH,                                                     -- Mainboard Vertical sync from the Colour Card CN! connector.
        MB_V_HBLNKn     => MB_V_HBLNKn,                                                  -- Mainboard combined vertical/horizontal sync from the Colour Card CN! connector.
        MB_VIDEO        => MB_VIDEO,                                                     -- Mainboard Video (74LS165 output combined with GATE) from the Colour Card CN! connector.
        MB_LOAD         => MB_LOAD,                                                      -- Mainboard shift register load signal from the Colour Card CN! connector.
        VRAM_CS_INn     => VRAM_CS_INn,                                                  -- Chip Select for access to the Video RAM from the mainboard IC15 socket.
        GTn             => GTn,                                                          -- GATE signal from the Colour Card CN! connector.
        CSn             => CSn,                                                          -- Chip Select for the Video Attribute RAM from the Colour Card CN! connector.
     -- MEM_CSn         => MEM_CSn,                                                      -- Extended memory select for region 0xE000 - 0xFFFF from the tranZPUter board.
        OUTCLK          => OUTCLK,                                                       -- CPU signal serialiser clock.
        INDATA          => INDATA,                                                       -- Incoming serialised CPU signals.

        -- V[name] = Voltage translated signals which mirror the mainboard signals but at a lower voltage.
        VADDR           => VADDR,                                                        -- Z80 Address bus, multiplexed with video address.
        VDATA           => VDATA,                                                        -- Z80 Data bus from mainboard Colour Card CD connector..
        VRAMD           => VRAMD,                                                        -- Z80 Data bus from the VRAM chip, gated according to state signals.
      --VMEM_CSn        => VMEM_CSn,                                                     -- Extended memory select to FPGA.
        VZ80_IORQn      => VZ80_IORQn,                                                   -- IORQn to FPGA.
        VZ80_RDn        => VZ80_RDn,                                                     -- RDn to FPGA.
        VZ80_WRn        => VZ80_WRn,                                                     -- WRn to FPGA.
        VVRAM_CS_INn    => VVRAM_CS_INn,                                                 -- Chip Select for access to the Video RAM from the mainboard IC15 socket.
        VCSn            => VCSn,                                                         -- Video RAM Attribute Chip Select (CSn) to FPGA.
        VGTn            => VGTn,                                                         -- Video Gate (GTn) 

        VSRVIDEO_OUT    => VSRVIDEO_OUT,                                                 -- Video out from 74LS165 on mainboard, pre-GATE.
        VHBLNK_OUTn     => VHBLNK_OUTn,                                                  -- Horizontal blanking.
        VHSY_OUT        => VHSY_OUT,                                                     -- Horizontal Sync.
        VSYNCH_OUT      => VSYNCH_OUT,                                                   -- Veritcal Sync.
        VVBLNK_OUTn     => VVBLNK_OUTn,                                                  -- Vertical blanking.

        VMB_HBLNKn      => VMB_HBLNKn,                                                   -- Horizontal Blanking from the Colour Card CN! connector.
        VMB_SYNCH       => VMB_SYNCH,                                                    -- Vertical sync from the Colour Card CN! connector.
        VMB_V_HBLNKn    => VMB_V_HBLNKn,                                                 -- combined vertical/horizontal sync from the Colour Card CN! connector.
        VMB_VIDEO       => VMB_VIDEO,                                                    -- Video (74LS165 output combined with GATE) from the Colour Card CN! connector.
        VMB_LOAD        => VMB_LOAD                                                      -- shift register load signal from the Colour Card CN! connector.

        -- Reserved.
      --TBA             => TBA                                                           -- Reserved signals.
    );

    -- Process to reset the CPLD based on a minimum number of clock cycles to tie in with the FPGA. We dont want the
    -- CPU starting up until the FPGA is ready.
    --
    CPLDRESET: process(RESETn, MB_RESETn, CLOCK_50)
    begin
        if RESETn = '0' or MB_RESETn = '0' then
            RESET_COUNTER        <= (others => '1');
            CPLDRESETn           <= '0';
        elsif rising_edge(CLOCK_50) then
            if RESET_COUNTER /= 0 then
                RESET_COUNTER    <= RESET_COUNTER - 1;
            else
                CPLDRESETn       <= '1';
            end if;
        end if;
    end process;

    -- Reset to FPGA uses the mainboard reset.
    VRESETn             <= RESETn;


end architecture;
