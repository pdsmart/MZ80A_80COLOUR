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
        CLOCK_50                  : in    std_logic;                                     -- 50Hz base clock for system board, video timing and gate clocking.

        -- Z80 Address and Data. Address is muxed with video addressing, not direct.
     -- A                         : in    std_logic_vector(10 downto 0);                 -- Z80 Address bus, multiplexed with video address. 13..11 come from the tranZPUter board.
        D                         : inout std_logic_vector(7 downto 0);                  -- Z80 Data bus, from the Colour Card CN! connector.

        -- Z80 Control signals.
     -- WRn                       : in    std_logic;                                     -- Z80 Write signal from the Colour Card CN! connector.
        RDn                       : in    std_logic;                                     -- Z80 Read signal from the Colour Card CN! connector.
        RESETn                    : in    std_logic;                                     -- Z80 RESET signal from the tranZPUter board.
     -- IORQn                     : in    std_logic;                                     -- Z80 IORQ signal from the tranZPUter board.

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
     -- MEM_CSn                   : in    std_logic;                                     -- Extended memory select for region 0xE000 - 0xFFFF from the tranZPUter board.
        OUTCLK                    : out   std_logic;                                     -- CPU signal serialiser clock.
        INDATA                    : in    std_logic_vector(3 downto 0);                  -- Incoming serialised CPU signals.

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
end entity;

architecture rtl of VideoInterface is

    -- Clock generation wires.
    signal CLOCK_48               :       std_logic;                                     -- 16MHz used for the Video main frequency.
    signal CLK24Mi                :       std_logic;                                     -- 24MHz used for internal clocking.
    signal CLK16Mi                :       std_logic;                                     -- 16MHz used for internal clocking.
    signal CLK4_8Mi               :       std_logic;                                     -- 4.8MHz used for the CPU main frequency in custom mode.
    signal CLK4Mi                 :       std_logic;                                     -- 4MHz used for the CPU main frequency in MZ80B mode.
    signal CLK3_54Mi              :       std_logic;                                     -- 3.54MHz used for the CPU main frequency in MZ700 mode.
    signal CLK2Mi                 :       std_logic;                                     -- 2MHz used for the CPU main frequency.
    signal CLK1Mi                 :       std_logic;                                     -- 1MHz used for video timing.
    signal CLK31500i              :       std_logic;                                     -- 8253 Clock base frequency used for RTC,

    signal ENASERCLK              :       std_logic;                                     -- Enable serializer clock.
    signal IORQn                  :       std_logic;
    signal MEM_CSn                :       std_logic;
    signal INBUF                  :       std_logic_vector(11 downto 0);
    signal RCV_CYCLE              :       integer range 0 to 1;
    signal INCOUNT                :       integer range 0 to 3;
    signal VA                     :       std_logic_vector(13 downto 0);
    signal CS_LAST_LEVEL          :       std_logic_vector(1 downto 0);                  -- Register to store the previous chip select level for edge detection.
    signal CS_IO_FXX_n            :       std_logic;                                     -- Chip select for block F0:FF
    signal CS_CPLD_CTRL_n         :       std_logic;                                     -- Chip select for the CPLD Control Register at 0xF0

    signal MODE_MZ80A             :       std_logic := '1';                              -- The System board is running in MZ80A mode.
    signal MODE_MZ700             :       std_logic := '0';                              -- The System board is running in MZ700 mode.
    signal MODE_MZ80B             :       std_logic := '0';                              -- The System board is running in MZ80B mode.
    signal MODE_CUSTOM            :       std_logic := '0';                              -- The System board is running in custom mode.
    signal CPLD_CTRL_REG          :       std_logic_vector(7 downto 0);                  -- Current value of the CPLD control register.

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
    VADDR                         <= VA;

    -- Data bus is muxed between the Z80 data bus and VRAMD which is the gated data bus after the video buffers.
    -- The write signal WRn from the motherboard is actually a gated Write for the Video and Attribute RAM. The logic has been updated in the tranZPUter to
    -- combine MEM_CSn with Z80 RD/WR such that use of RDn = 0 for read and RDn = 1 for write works as intended for all memory/IO operations.
    --
    VDATA                         <= D     when RDn = '1' and MEM_CSn = '0'                                        -- All memory write data sent to FPGA in region D000:FFFF
                                     else
                                     D     when RDn = '1' and IORQn = '0'                                          -- All I/O write data sent to FPGA.
                                     else
                                     (others => 'Z');
    D                             <= VDATA when RDn = '0' and MEM_CSn = '0' and VA(13 downto 11) = "011"           -- D800:DFFF via data bus.
                                     else
                                     VDATA when RDn = '0' and IORQn = '0'  and ((VA(7 downto 4) = "1111" and VA(3 downto 0) > 3 and VA(3 downto 0) < 14) or VA(7 downto 5) = "000") -- I/O region F4:FD or 00:1F
                                     else
                                     CPLD_CTRL_REG when CS_CPLD_CTRL_n = '0' and RDn = '0'                         -- CPLD Control register at 0xF0
                                     else
                                     (others => 'Z');
    VRAMD                         <= VDATA when RDn = '0' and MEM_CSn = '0' and VA(13 downto 11) = "010"           -- D000:D7FF via IC16 74LS245.
                                     else
                                     (others => 'Z');
    VIORQn                        <= IORQn;
    VRDn                          <= RDn;
    VWRn                          <= '0'   when RDn = '1' and (MEM_CSn = '0' or IORQn = '0')
                                     else '1';
    VGTn                          <= GTn;
    VCSn                          <= CSn;
    VMEM_CSn                      <= MEM_CSn;
    VVRAM_CS_INn                  <= VRAM_CS_INn;

    --
    -- CPU / RAM signals and selects.
    --
    CS_IO_FXX_n                   <= '0'   when IORQn = '0'        and VA(7 downto 4) = "1111"
                                     else '1';
    -- CPLD Control Register, 0xF0
    CS_CPLD_CTRL_n                <= '0'   when CS_IO_FXX_n = '0'  and VA(3 downto 0) = "0000"
                                     else '1';


    -- A tranZPUter signal serializer. Signals required by the Video Module but not accessible physically (without hardware hacks) are captured and serialised by the tranZPUter
    -- as a set of 4 x 4 blocks, clocked by the video interace CPLD, As the mainboard can not run faster than 4MHz, a 24MHz serialiser clock should be sufficient to bring the
    -- signals across but can be increased as necessary.
    -- Reset synchronises the Video Module CPLD with the tranZPUter CPLD and the signals are sent during valid mainboard accesses. During tranZPUter accesses, both
    -- IORQn and MEM_CSn are sent as 0, an invalid state, to indicate the signals are not valid.
    --
    SIGNALSERIALIZER: process(RESETn, CLK24Mi, ENASERCLK)
    begin
        -- Each reset the FPGA and CPLD are in sync, set the signals to the starting level ready to commence serialization.
        if RESETn = '0' then
            ENASERCLK                   <= '0';
            RCV_CYCLE                   <= 0;
            INCOUNT                     <= 3;
            INBUF                       <= "000000000000";
            VA                          <= (others => '0');
            IORQn                       <= '1';
            MEM_CSn                     <= '1';

        elsif falling_edge(CLK24Mi) then

            case RCV_CYCLE is
                -- Cycle starts by enabling the clock which the tranZPUter sees the rising edge and captures the 16 signals and places the 
                -- first block of 4 onto the mux-bus.
                when 0 =>
                    ENASERCLK           <= '1';
                    RCV_CYCLE           <= 1;

                -- Each clock period, a block of signals are placed on the bus with sufficient time for the signals to settle and to capture them.
                when 1 =>
                    if INCOUNT > 0 then
                        INBUF(7 downto 0) <= INBUF(11 downto 4);
                        INBUF(11 downto 8) <= INDATA;
                        INCOUNT         <= INCOUNT - 1;
                    else
                        -- If MEM_CSn and IORQn are both zero it indicates an invalid data set so dont act on it.
                        --
                        if INDATA(3 downto 2) /= "00" then
                            VA(13 downto 0) <= INDATA(1 downto 0) & INBUF(11 downto 0);
                            MEM_CSn     <= INDATA(2);
                            IORQn       <= INDATA(3);
                        else
                            VA(13 downto 0) <= (others => '0');
                            MEM_CSn     <= '1';
                            IORQn       <= '1';
                        end if;
                        INCOUNT         <= 3;
                    end if;
                    RCV_CYCLE           <= 1;
            end case;
        end if;

        -- Enable the clock directly onto the bus clock line when data required.
        if ENASERCLK = '1' then
            OUTCLK <= CLK24Mi;
        else
            OUTCLK <= '0';
        end if;

    end process;


    -- Signals originating on the mainboard or the FPGA are brougnt into the clock domain of the CPLD, which is also the clock domain of the mainboard
    -- as the CPLD provides the mainboard clocks.
    --
    VIDEOSIGNALS: process(RESETn, CLOCK_50)
    begin
        if RESETn = '0' then
            SRVIDEO_OUT                 <= '0';
            HBLNK_OUTn                  <= '0';
            HSY_OUT                     <= '0';
            SYNCH_OUT                   <= '0';
            VBLNK_OUTn                  <= '0';
            VMB_HBLNKn                  <= '0';
            VMB_LOAD                    <= '0';
            VMB_SYNCH                   <= '0';
            VMB_V_HBLNKn                <= '0';
            VMB_VIDEO                   <= '0';

        elsif rising_edge(CLOCK_50) then
            SRVIDEO_OUT                 <= VSRVIDEO_OUT;
            HBLNK_OUTn                  <= VHBLNK_OUTn;
            HSY_OUT                     <= VHSY_OUT;
            SYNCH_OUT                   <= VSYNCH_OUT;
            VBLNK_OUTn                  <= VVBLNK_OUTn;

            VMB_HBLNKn                  <= MB_HBLNKn;
            VMB_LOAD                    <= MB_LOAD;
            VMB_SYNCH                   <= MB_SYNCH;
            VMB_V_HBLNKn                <= MB_V_HBLNKn;
            VMB_VIDEO                   <= MB_VIDEO;
        end if;
    end process;

    -- The main crystal runs at 50MHz but most of the system board signals are in binary 2 values (except for MZ700 mode). We thus create a 48MHz
    -- clock by skipping 2 out of 50 clock periods, 1 on each level, to create the desired clock.
    --
    CLOCK48MHZ: process(RESETn, CLOCK_50)
        variable counter48Mi            : unsigned(6 downto 0);                -- Binary divider to create 48Mi clock.
    begin
        if RESETn = '0' then
            counter48Mi                 := (others => '0');

        elsif rising_edge(CLOCK_50) then

            counter48Mi := counter48Mi + 1;

            if counter48Mi = 50 then
                counter48Mi             := (others => '0');
            end if;
        end if;

        if counter48Mi /= 25 and counter48Mi /= 49 then
            CLOCK_48                    <= CLOCK_50;
        else
            CLOCK_48                    <= '1';
        end if;
    end process;

    -- The 48MHz clock is used to create the base system clocks, 16MHz being the original machine base clock along with 4, 2 and 1MHz.
    -- This logic was originally performed by the MB14298 Gate Array on the mainboard.
    --
    SYSCLOCKS: process(RESETn, CLOCK_48, CLK24Mi, CLK4_8Mi, CLK4Mi, CLK3_54Mi, CLK2Mi, CLK1Mi, CLK31500i, MODE_MZ80A, MODE_MZ80B, MODE_MZ700, MODE_CUSTOM)
        variable counter24Mi            : unsigned(1 downto 0);                -- Binary divider to create 24Mi clock.
        variable counter16Mi            : unsigned(1 downto 0);                -- Binary divider to create 16Mi clock.
        variable counter4_8Mi           : unsigned(2 downto 0);                -- Binary divider to create 4_8Mi clock.
        variable counter4Mi             : unsigned(3 downto 0);                -- Binary divider to create 4Mi clock.
        variable counter2Mi             : unsigned(3 downto 0);                -- Binary divider to create 2Mi clock.
        variable counter1Mi             : unsigned(4 downto 0);                -- Binary divider to create 1Mi clock.
        variable counter31500i          : unsigned(10 downto 0);               -- Binary divider to create 31500i clock.
    begin
        if RESETn = '0' then
            counter24Mi                 := (others => '0');
            counter16Mi                 := (others => '0');
            counter4_8Mi                := (others => '0');
            counter4Mi                  := (others => '0');
            counter2Mi                  := (others => '0');
            counter1Mi                  := (others => '0');
            counter31500i               := (others => '0');
            CLK24Mi                     <= '0';
            CLK16Mi                     <= '0';
            CLK4_8Mi                    <= '0';
            CLK4Mi                      <= '0';
            CLK2Mi                      <= '0';
            CLK1Mi                      <= '0';
            CLK31500i                   <= '0';

        elsif rising_edge(CLOCK_48) then

            counter24Mi                 := counter24Mi + 1;
            counter16Mi                 := counter16Mi + 1;
            counter4_8Mi                := counter4_8Mi + 1;
            counter4Mi                  := counter4Mi + 1;
            counter2Mi                  := counter2Mi + 1;
            counter1Mi                  := counter1Mi + 1;
            counter31500i               := counter31500i + 1;

            -- 24000000Hz 
            if counter24Mi = 1 then
                CLK24Mi                 <= not CLK24Mi;
                counter24Mi             := (others => '0');
            end if;

            -- 16000000Hz 
            if counter16Mi = 2 or counter16Mi = 3 then
                CLK16Mi                 <= not CLK16Mi;
                if counter16Mi = 3 then
                    counter16Mi         := (others => '0');
                end if;
            end if;

            -- 4800000Hz 
            if counter4_8Mi = 5 then
                CLK4_8Mi                <= not CLK4_8Mi;
                counter4_8Mi            := (others => '0');
            end if;

            -- 4000000Hz 
            if counter4Mi = 6 then
                CLK4Mi                  <= not CLK4Mi;
                counter4Mi              := (others => '0');
            end if;

            -- 2000000Hz 
            if counter2Mi = 12 then 
                CLK2Mi                  <= not CLK2Mi;
                counter2Mi              := (others => '0');
            end if;

            -- 1000000Hz 
            if counter1Mi = 24 then
                CLK1Mi                  <= not CLK1Mi;
                counter1Mi              := (others => '0');
            end if;

            -- 31500Hz 
            if counter31500i = 761 or counter31500i = 1523 then
                CLK31500i               <= not CLK31500i;
                if counter31500i = 1523 then
                    counter31500i       := (others => '0');
                end if;
            end if;
        end if;

        -- Setup board speeds according to mode.
        --
        CLK_31_5K_OUT                   <= CLK31500i;
        CLK_1MHZ_OUT                    <= CLK1Mi;
        if MODE_MZ80A = '1' then
            CLK_2MHZ_OUT                <= CLK2Mi;
        elsif MODE_MZ80B = '1' then
            CLK_2MHZ_OUT                <= CLK4Mi;
        elsif MODE_MZ700 = '1' then
            CLK_2MHZ_OUT                <= CLK3_54Mi;
        elsif MODE_CUSTOM = '1' then
            CLK_2MHZ_OUT                <= CLK4_8Mi;
        else -- Additional modes go here.
            CLK_2MHZ_OUT                <= CLK2Mi;
        end if;
    end process;

    -- Process to subdivide the main 50MHz clock to obtain the MZ700 frequencies.
    --
    MZ700CLOCKS: process(RESETn, CLOCK_50, CLK3_54Mi)
        variable counter3_54Mi          : unsigned(4 downto 0);                -- Binary divider to create the 3.54Mi clock.
    begin

        if RESETn = '0' then
            counter3_54Mi               := (others => '0');
            CLK3_54Mi                   <= '0';

        elsif rising_edge(CLOCK_50) then

            counter3_54Mi               := counter3_54Mi + 1;

            -- 3540000Hz 
            if counter3_54Mi = 7 then
                CLK3_54Mi               <= not CLK3_54Mi;
                counter3_54Mi           := (others => '0');
            end if;
        end if;
    end process;

    -- Control Registers.
    --
    -- I/O Port:
    -- 0xF0 - [2;0] = Mainboard/CPU clock.
    --        000 = Sharp MZ80A 2MHz System Clock.
    --        001 = Sharp MZ80B 4MHz System Clock.
    --        010 = Sharp MZ700 3.54MHz System Clock.
    --   011 -111 = Reserved, defaults to 2MHz System Clock.
    CTRLREGISTERS: process(RESETn, CLK16Mi)
    begin
        if RESETn = '0' then
            MODE_MZ80A                  <= '1';
            MODE_MZ80B                  <= '0';
            MODE_MZ700                  <= '0';
            MODE_CUSTOM                 <= '0';
            CPLD_CTRL_REG               <= "00000000";

        elsif rising_edge(CLK16Mi) then

            -- Write to the CPLD Control Register?
            if CS_CPLD_CTRL_n = '0' and CS_LAST_LEVEL(0) = '1' and RDn = '1' then
                CPLD_CTRL_REG           <= D;
                MODE_MZ80A              <= '0';
                MODE_MZ80B              <= '0';
                MODE_MZ700              <= '0';
                MODE_CUSTOM             <= '0';

                -- Bits 2:0 select the system clock which drives the mainboard/CPU.
                --
                case D(2 downto 0) is
                    when "000" =>
                        MODE_MZ80A      <= '1';
                    when "001" =>
                        MODE_MZ80B      <= '1';
                    when "010" =>
                        MODE_MZ700      <= '1';
                    when "011" =>
                        MODE_CUSTOM     <= '1';

                    when others =>
                        MODE_MZ80A      <= '1';
                end case;
            end if;

            -- Remember the previous level so we can detect the edge transition. As the clock of this process is not necessarily running at the clock of the CPU
            -- this step is important to guarantee transaction integrity.
            CS_LAST_LEVEL                 <= '0' & CS_IO_FXX_n; 
        end if;
    end process;
 
end architecture;
