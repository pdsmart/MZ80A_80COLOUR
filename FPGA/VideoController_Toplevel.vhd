---------------------------------------------------------------------------------------------------------
--
-- Name:            VideoController_Toplevel.vhd
-- Created:         June 2020
-- Author(s):       Philip Smart
-- Description:     MZ80A Video Module FPGA Top Level module.
--                                                     
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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.VideoController_pkg.all;
library altera;
use altera.altera_syn_attributes.all;

entity VideoControllerFPGA is
    port (
        -- Primary and video clocks.
        CLOCK_50                  : in    std_logic;                                     -- 50MHz base clock for video timing and gate clocking.

        -- V[name] = Voltage translated signals which mirror the mainboard signals but at a lower voltage.
        -- Addres Bus
        VADDR                     : in    std_logic_vector(15 downto 0);                 -- Z80 Address bus, multiplexed with video address.

        -- Data Bus
        VDATA                     : inout std_logic_vector(7 downto 0);                  -- Z80 Data bus from mainboard Colour Card CD connector..

        -- Control signals.
        VZ80_IORQn                : in    std_logic;                                     -- IORQn to FPGA.
        VZ80_RDn                  : in    std_logic;                                     -- RDn to FPGA.
        VZ80_WRn                  : in    std_logic;                                     -- WRn to FPGA.
        VWAITn                    : out   std_logic;                                     -- WAIT signal to CPU when accessing video RAM when busy.

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

        -- Reset.
        VRESETn                   : in    std_logic                                      -- Reset to FPGA.
        -- Reserved.
      --TBA                       : in    std_logic_vector(4 downto 0)                   -- Reserved signal paths to the CPLD.
    );
END entity;

architecture rtl of VideoControllerFPGA is

    signal SYS_CLK                :       std_logic;
    signal IF_CLK                 :       std_logic;
    signal VIDCLK_8MHZ            :       std_logic;
    signal VIDCLK_16MHZ           :       std_logic;
    signal VIDCLK_25_175MHZ       :       std_logic;
    signal VIDCLK_40MHZ           :       std_logic;
    signal VIDCLK_65MHZ           :       std_logic;
    signal VIDCLK_8_86719MHZ      :       std_logic;
    signal VIDCLK_17_7344MHZ      :       std_logic;
    signal VIDCLK_PSEUDO          :       std_logic;
    signal PLL_LOCKED             :       std_logic;
    signal PLL_LOCKED2            :       std_logic;
    signal PLL_LOCKED3            :       std_logic;
    signal PLL_LOCKED4            :       std_logic;
    signal RESETn                 :       std_logic;
    signal RESET_COUNTER          :       unsigned(5 downto 0);
begin

    -- Instantiate a PLL to generate the system clock and base video clocks.
    --
    VCPLL1 : entity work.Video_Clock
    port map
    (
         inclk0                  => CLOCK_50,
         areset                  => '0',
         c0                      => SYS_CLK,
         c1                      => IF_CLK,
         c2                      => VIDCLK_8MHZ,
         c3                      => VIDCLK_16MHZ,
         c4                      => VIDCLK_40MHZ,
         locked                  => PLL_LOCKED
    );

    -- Instantiate a 2nd PLL to generate additional video clocks for VGA and Sharp MZ700 modes.
    VCPLL2 : entity work.Video_Clock_II
    port map
    (
         inclk0                  => CLOCK_50,
         areset                  => not VRESETn,
         c0                      => VIDCLK_65MHZ,
         c1                      => VIDCLK_25_175MHZ,
         locked                  => PLL_LOCKED2
    );

    -- Instantiate a 3rd PLL to generate clock for pseudo monochrome generation on internal monitor.
    VCPLL3 : entity work.Video_Clock_III
    port map
    (
         inclk0                  => CLOCK_50,
         areset                  => not VRESETn,
         c0                      => VIDCLK_PSEUDO,
         locked                  => PLL_LOCKED3
    );

    -- Instantiate a 4th PLL to generate clocks for MZ-700 video modes.
    VCPLL4 : entity work.Video_Clock_IV
    port map
    (
         inclk0                  => CLOCK_50,
         areset                  => not VRESETn,
         c0                      => VIDCLK_8_86719MHZ,
         c1                      => VIDCLK_17_7344MHZ,
         locked                  => PLL_LOCKED4
    );

    -- Add the Serial Flash Loader megafunction to enable in-situ programming of the EPCS16 configuration memory.
    --
    SFL : entity work.sfl
    port map
    (
        noe_in                      => '0' 
    );

    vcToplevel : entity work.VideoController
    --generic map
    --(
    --)
    port map
    (    
        -- Primary and video clocks.
        SYS_CLK                  => SYS_CLK,                                             -- 120MHz main FPGA clock.
        IF_CLK                   => IF_CLK,                                              -- 16MHz interface clock.
        VIDCLK_8MHZ              => VIDCLK_8MHZ,                                         -- 2x 8MHz base clock for video timing and gate clocking.
        VIDCLK_16MHZ             => VIDCLK_16MHZ,                                        -- 2x 16MHz base clock for video timing and gate clocking.
        VIDCLK_65MHZ             => VIDCLK_65MHZ,                                        -- 2x 65MHz base clock for video timing and gate clocking.
        VIDCLK_25_175MHZ         => VIDCLK_25_175MHZ,                                    -- 2x 25.175MHz base clock for video timing and gate clocking.
        VIDCLK_40MHZ             => VIDCLK_40MHZ,                                        -- 2x 40MHz base clock for video timing and gate clocking.
        VIDCLK_8_86719MHZ        => VIDCLK_8_86719MHZ,                                   -- 2x original MZ700 video clock.
        VIDCLK_17_7344MHZ        => VIDCLK_17_7344MHZ,                                   -- 2x original MZ700 colour modulator clock.        
        VIDCLK_PSEUDO            => VIDCLK_PSEUDO,                                       -- Clock to create pixel slicing to generate pseudo monochrome.

        -- V[name] = Voltage translated signals which mirror the mainboard signals but at a lower voltage.
        -- Addres Bus
        VADDR                    => VADDR,                                               -- Z80 Address bus, multiplexed with video address.

        -- Data Bus
        VDATA                    => VDATA,                                               -- Z80 Data bus from mainboard Colour Card CD connector..

        -- Control signals.
        VZ80_IORQn               => VZ80_IORQn,                                          -- IORQn to FPGA.
        VZ80_RDn                 => VZ80_RDn,                                            -- RDn to FPGA.
        VZ80_WRn                 => VZ80_WRn,                                            -- WRn to FPGA.
        VWAITn                   => VWAITn,                                              -- WAIT signal to CPU when accessing video RAM when busy.

        -- VGA signals.
        VGA_R                    => VGA_R,                                               -- 16 level Red output.
        VGA_G                    => VGA_G,                                               -- 16 level Green output.
        VGA_B                    => VGA_B,                                               -- 16 level Blue output.
        VGA_HS                   => VGA_HS,                                              -- Horizontal sync.
        VGA_VS                   => VGA_VS,                                              -- Vertical sync.

        -- Composite signals.
        CSYNCn                   => CSYNCn,                                              -- Composite sync negative polarity.
        CSYNC                    => CSYNC,                                               -- Comnposite sync.
        VSRVIDEO_OUT             => VSRVIDEO_OUT,                                        -- Video out from 74LS165 on mainboard, pre-GATE.
        VHBLNK_OUTn              => VHBLNK_OUTn,                                         -- Horizontal blanking.
        VHSY_OUT                 => VHSY_OUT,                                            -- Horizontal Sync.
        VSYNCH_OUT               => VSYNCH_OUT,                                          -- Veritcal Sync.
        VVBLNK_OUTn              => VVBLNK_OUTn,                                         -- Vertical blanking.

        -- Reset.
        VRESETn                  => RESETn                                               -- Reset to FPGA.

        -- Reserved.
      --TBA                      => TBA                                                  -- Reserved signals.        
    );

    -- Process to reset the FPGA based on the external RESET trigger, PLL's being locked
    -- and a counter to set minimum width.
    --
    FPGARESET: process(VRESETn, CLOCK_50, PLL_LOCKED, PLL_LOCKED2, PLL_LOCKED3, PLL_LOCKED4)
    begin
        if VRESETn = '0' then
            RESET_COUNTER        <= (others => '1');
            RESETn               <= '0';
        elsif PLL_LOCKED = '1' and PLL_LOCKED2 = '1' and PLL_LOCKED3 = '1' and PLL_LOCKED4 = '1' then
            if rising_edge(CLOCK_50) then
                if RESET_COUNTER /= 0 then
                    RESET_COUNTER <= RESET_COUNTER - 1;
                else
                    RESETn        <= '1';
                end if;
            end if;
        end if;
    end process;

end architecture;
