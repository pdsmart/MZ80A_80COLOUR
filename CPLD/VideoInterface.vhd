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
        A                         : in    std_logic_vector(10 downto 0);                 -- Z80 Address bus, multiplexed with video address. 13..11 come from the tranZPUter board.
        D                         : inout std_logic_vector(7 downto 0);                  -- Z80 Data bus, from the Colour Card CN! connector.

        -- Z80 Control signals.
        WRn                       : in    std_logic;                                     -- Z80 Write signal from the Colour Card CN! connector.
        RDn                       : in    std_logic;                                     -- Z80 Read signal from the Colour Card CN! connector.
        RESETn                    : in    std_logic;                                     -- Z80 RESET signal from the tranZPUter board.

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
        VVRAM_CS_INn              : out   std_logic;                                     -- Chip Select for access to the Video RAM from the mainboard IC15 socket.
        VZ80_IORQn                : out   std_logic;                                     -- IORQn to FPGA.
        VZ80_RDn                  : out   std_logic;                                     -- Z80_RDn from tranZPUter to FPGA.
        VCSn                      : out   std_logic;                                     -- Video RAM Attribute Chip Select (CSn) to FPGA.
        VGTn                      : out   std_logic;                                     -- Video Gate (GTn) 
        VZ80_WRn                  : out   std_logic;                                     -- WRn to FPGA.
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
    signal S_IORQn                :       std_logic;                                     -- Serialiser signal - IORQn
    signal S_VIDEO_RDn            :       std_logic;                                     -- Serialiser signal - Video FPGA RDn
    signal S_VIDEO_WRn            :       std_logic;                                     -- Serialiser signal - Video FPGA WRn
    signal INBUF                  :       std_logic_vector(11 downto 0);
    signal INCOUNT                :       integer range 0 to 3;
    signal VA                     :       std_logic_vector(15 downto 0);

    -- CPLD configuration signals.
    signal MODE_CPLD_MZ80K        :       std_logic;
    signal MODE_CPLD_MZ80C        :       std_logic;
    signal MODE_CPLD_MZ1200       :       std_logic;
    signal MODE_CPLD_MZ80A        :       std_logic;
    signal MODE_CPLD_MZ700        :       std_logic;
    signal MODE_CPLD_MZ800        :       std_logic;
    signal MODE_CPLD_MZ80B        :       std_logic;
    signal MODE_CPLD_MZ2000       :       std_logic;
    signal MODE_CPLD_SWITCH       :       std_logic;
    signal MODE_CPLD_MB_VIDEOn    :       std_logic;                                     -- Mainboard video, 0 = enabled, 1 = disabled. 
    signal CPLD_CFG_DATA          :       std_logic_vector(7 downto 0);                  -- CPLD Configuration register.

    -- IO Decode signals.
    signal CS_IO_6XXn             :       std_logic;                                     -- IO decode for the 0x60-0x6f region used by the CPLD.
    signal CS_IO_EXXn             :       std_logic;                                     -- Chip select for block E0:EF
    signal CS_IO_FXXn             :       std_logic;                                     -- Chip select for block F0:FF
    signal CS_CPLD_CFGn           :       std_logic;                                     -- Select to set the CPLD configuration register.
    signal CS_FB_VMn              :       std_logic;                                     -- Chip Select for the Video Mode register.
    signal CS_FB_PAGEn            :       std_logic;                                     -- Chip Select for the Page select register.
    signal CS_80B_PIOn            :       std_logic;                                     -- Chip select for MZ80B PIO when in MZ80B mode.
    signal CS_LAST_LEVEL          :       std_logic_vector(4 downto 0);                  -- Register to store the previous chip select level for edge detection.
    signal CS_DXXXn              :     std_logic;                            -- Chip select range for the VRAM/ARAM.
    signal CS_EXXXn              :     std_logic;                            -- Chip select range for the memory mapped I/O.
    signal CS_DVRAMn             :     std_logic;                            -- Chip select for the Video RAM.
    signal CS_DARAMn             :     std_logic;                            -- Chip select for the Attribute RAM.

    -- Video module signal mirrors.
    signal MODE_VIDEO_MZ80A       :       std_logic := '1';                              -- The machine is running in MZ80A mode.
    signal MODE_VIDEO_MZ700       :       std_logic := '0';                              -- The machine is running in MZ700 mode.
    signal MODE_VIDEO_MZ800       :       std_logic := '0';                              -- The machine is running in MZ800 mode.
    signal MODE_VIDEO_MZ80B       :       std_logic := '0';                              -- The machine is running in MZ80B mode.
    signal MODE_VIDEO_MZ80K       :       std_logic := '0';                              -- The machine is running in MZ80K mode.
    signal MODE_VIDEO_MZ80C       :       std_logic := '0';                              -- The machine is running in MZ80C mode.
    signal MODE_VIDEO_MZ1200      :       std_logic := '0';                              -- The machine is running in MZ1200 mode.
    signal MODE_VIDEO_MZ2000      :       std_logic := '0';                              -- The machine is running in MZ2000 mode.
    signal GRAM_PAGE_ENABLE       :       std_logic_vector(1 downto 0);                  -- Graphics mode page enable.
    signal GRAM_MZ80B_ENABLE      :       std_logic;                                     -- MZ80B Graphics memory enabled flag.
    signal MZ80B_VRAM_HI_ADDR     :       std_logic;                                     -- Video RAM located at D000:FFFF when high.
    signal MZ80B_VRAM_LO_ADDR     :       std_logic;                                     -- Video RAM located at 5000:7FFF when high.

    function to_std_logic(L: boolean) return std_logic is
    begin
        if L then
            return('1');
        else
            return('0');
        end if;
    end function to_std_logic;
begin

    -- A tranZPUter signal serializer. Signals required by the Video Module but not accessible physically (without hardware hacks) are captured and serialised by the tranZPUter
    -- as a set of x 4 blocks, clocked by the video interace CPLD, As the mainboard can not run faster than 4MHz, a 24MHz serialiser clock should be sufficient to bring the
    -- signals across but can be increased as necessary.
    -- Reset synchronises the Video Module CPLD with the tranZPUter CPLD and the signals are sent during valid mainboard accesses. During tranZPUter accesses, both
    -- S_VIDEO_RDn and S_VIDEO_WRn are sent as 0, an invalid state, to indicate the signals are not valid.
    --
    SIGNALSERIALIZER: process(RESETn, CLK16Mi, ENASERCLK)
        variable RCV_CYCLE              : integer range 0 to 1;
    begin
        -- Each reset the FPGA and CPLD are in sync, set the signals to the starting level ready to commence serialization.
        if RESETn = '0' then
            ENASERCLK                   <= '0';
            RCV_CYCLE                   := 0;
            INCOUNT                     <= 1;
            INBUF                       <= "000000000000";
            VA(15 downto 11)            <= (others => '0');
            S_IORQn                     <= '1';
            S_VIDEO_RDn                 <= '1';
            S_VIDEO_WRn                 <= '1';

        elsif falling_edge(CLK16Mi) then

            case RCV_CYCLE is
                -- Cycle starts by enabling the clock which the tranZPUter sees the rising edge and captures the 16 signals and places the 
                -- first block of 4 onto the mux-bus.
                when 0 =>
                    ENASERCLK           <= '1';
                    RCV_CYCLE           := 1;

                -- Each clock period, a block of signals are placed on the bus with sufficient time for the signals to settle and to capture them.
                when 1 =>
                    if INCOUNT > 0 then
                        INBUF(3 downto 0) <= INDATA; --INBUF(7 downto 4);
                        --INBUF(7 downto 4) <= INDATA;
                        INCOUNT         <= INCOUNT - 1;
                    else
                        -- If S_VIDEO_WRn and S_VIDEO_RDn are both zero it indicates an invalid data set so dont act on it.
                        --
                        if INDATA(3 downto 1) /= "000" then
                            VA(15 downto 11) <= INDATA(0) & INBUF(3 downto 0);
                            S_VIDEO_RDn <= INDATA(1);
                            S_VIDEO_WRn <= INDATA(2);
                            S_IORQn     <= INDATA(3);
                        else
                            VA(15 downto 11) <= (others => '0');
                            S_VIDEO_RDn <= '1';
                            S_VIDEO_WRn <= '1';
                            S_IORQn     <= '1';
                        end if;
                        INCOUNT         <= 1;
                    end if;
                    RCV_CYCLE           := 1;
            end case;
        end if;

        -- Enable the clock directly onto the bus clock line when data required.
        if ENASERCLK = '1' then
            OUTCLK <= CLK16Mi;
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
    SYSCLOCKS: process(RESETn, CLOCK_48, CLK24Mi, CLK4_8Mi, CLK4Mi, CLK3_54Mi, CLK2Mi, CLK1Mi, CLK31500i, CPLD_CFG_DATA)
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
        case to_integer(unsigned(CPLD_CFG_DATA(6 downto 4))) is
            when MODE_FREQ_MZ80A =>
                CLK_2MHZ_OUT            <= CLK2Mi;

            when MODE_FREQ_MZ80B =>
                CLK_2MHZ_OUT            <= CLK4Mi;

            when MODE_FREQ_MZ700 =>
                CLK_2MHZ_OUT            <= CLK3_54Mi;

            when MODE_FREQ_CUSTOM =>
                CLK_2MHZ_OUT            <= CLK4_8Mi;

            when others =>
                CLK_2MHZ_OUT            <= CLK2Mi;
        end case;
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

    -- Control Registers - This mirrors the Video Module control registers as we need to know when video memory is to be mapped into main memory.
    --
    -- IO Range for Graphics enhancements is set by the Video Mode registers at 0xF8->.
    --   0xF8=<val> sets the mode that of the Video Module. [2:0] - 000 (default) = MZ80A, 001 = MZ-700, 010 = MZ800, 011 = MZ80B, 100 = MZ80K, 101 = MZ80C, 110 = MZ1200, 111 = MZ2000.
    --   0xFD=<val> memory page register. [1:0] switches in 1 16Kb page (3 pages) of graphics ram to C000 - FFFF. Bits [1:0] = page, 00 = off, 01 = Red, 10 = Green, 11 = Blue.
    --
    CTRLREGISTERS: process( RESETn, CLK16Mi, GRAM_PAGE_ENABLE, MZ80B_VRAM_HI_ADDR, MZ80B_VRAM_LO_ADDR )
    begin
        -- Ensure default values at reset.
        if RESETn = '0' then
            MODE_VIDEO_MZ80A      <= '0';
            MODE_VIDEO_MZ700      <= '1';
            MODE_VIDEO_MZ800      <= '0';
            MODE_VIDEO_MZ80B      <= '0';
            MODE_VIDEO_MZ80K      <= '0';
            MODE_VIDEO_MZ80C      <= '0';
            MODE_VIDEO_MZ1200     <= '0';
            MODE_VIDEO_MZ2000     <= '0';
            GRAM_PAGE_ENABLE      <= "00";
            MZ80B_VRAM_HI_ADDR    <= '0';
            MZ80B_VRAM_LO_ADDR    <= '0';
            MODE_CPLD_SWITCH      <= '0';
            CPLD_CFG_DATA         <= "00000011";
    
        elsif rising_edge(CLK16Mi) then

            -- Write to config register.
            -- CPLD Configuration register.
            --
            -- The mode can be changed by a Z80 transaction write into the register and it is acted upon if the mode switches between differing values. The Z80 write is typically used
            -- by host software such as RFS.
            --
            -- [2:0] - Mode/emulated machine.
            --         000 = MZ-80K
            --         001 = MZ-80C
            --         010 = MZ-1200
            --         011 = MZ-80A
            --         100 = MZ-700
            --         101 = MZ-800
            --         110 = MZ-80B
            --         111 = MZ-2000
            -- [3]   - Mainboard Video - 1 = Enable, 0 = Disable - This flag allows Z-80 transactions in the range D000:DFFF to be directed to the mainboard. When disabled all transactions
            --                                                     can only be seen by the FPGA video logic. The FPGA uses this flag to enable/disable it's functionality.
            -- [6:4] = Mainboard/CPU clock.
            --         000 = Sharp MZ80A 2MHz System Clock.
            --         001 = Sharp MZ80B 4MHz System Clock.
            --         010 = Sharp MZ700 3.54MHz System Clock.
            --         011 -111 = Reserved, defaults to 2MHz System Clock.
            --
            if(CS_CPLD_CFGn = '0' and CS_LAST_LEVEL(0) = '1' and S_VIDEO_WRn = '0') then

                -- Set the mode switch event flag if the mode changes.
                if CPLD_CFG_DATA(2 downto 0) /= D(2 downto 0) then
                    MODE_CPLD_SWITCH  <= '1';
                end if;

                -- Store the new value into the register, used for read operations.
                CPLD_CFG_DATA         <= D;
            else
                MODE_CPLD_SWITCH      <= '0';
            end if;

            -- Setup the video mode.
            if CS_FB_VMn = '0' and CS_LAST_LEVEL(1) = '1' and S_VIDEO_WRn = '0' then
                MODE_VIDEO_MZ80K  <= '0';
                MODE_VIDEO_MZ80C  <= '0';
                MODE_VIDEO_MZ1200 <= '0';
                MODE_VIDEO_MZ80A  <= '0';
                MODE_VIDEO_MZ700  <= '0';
                MODE_VIDEO_MZ800  <= '0';
                MODE_VIDEO_MZ80B  <= '0';
                MODE_VIDEO_MZ2000 <= '0';

                -- Bits [2:0] define the machine compatibility.
                --
                case to_integer(unsigned(D(2 downto 0))) is
                    when MODE_MZ80K =>
                        MODE_VIDEO_MZ80K  <= '1';
                    when MODE_MZ80C =>
                        MODE_VIDEO_MZ80C  <= '1';
                    when MODE_MZ1200 =>
                        MODE_VIDEO_MZ1200 <= '1';
                    when MODE_MZ80A =>
                        MODE_VIDEO_MZ80A  <= '1';
                    when MODE_MZ700 =>
                        MODE_VIDEO_MZ700  <= '1';
                    when MODE_MZ800 =>
                        MODE_VIDEO_MZ800  <= '1';
                    when MODE_MZ80B =>
                        MODE_VIDEO_MZ80B  <= '1';
                    when MODE_MZ2000 =>
                        MODE_VIDEO_MZ2000 <= '1';
                    when others =>
                end case;
            end if;

            -- memory page register. [1:0] switches in 1 16Kb page (3 pages) of graphics ram to C000 - FFFF. Bits [1:0] = page, 00 = off, 01 = Red, 10 = Green, 11 = Blue. This overrides all MZ700/MZ80B page switching functions. [7] 0 - normal, 1 - switches in CGROM for upload at D000:DFFF.
            if CS_FB_PAGEn = '0' and CS_LAST_LEVEL(2) = '1' then
                GRAM_PAGE_ENABLE          <= D(1 downto 0);
            end if;

            -- MZ80B Z80 PIO.
            if CS_80B_PIOn = '0' and CS_LAST_LEVEL(3) = '1' and MODE_VIDEO_MZ80B = '1' and S_VIDEO_WRn = '0' then

                -- Write to PIO A.
                -- 7 = Assigns addresses $DOOO-$FFFF to V-RAM.
                -- 6 = Assigns addresses $5000-$7FFF to V-RAM.
                -- 5 = Changes screen to 80-character mode (L: 40-character mode).
                if VA(1 downto 0) = "00" then
                    MZ80B_VRAM_HI_ADDR    <= D(7);
                    MZ80B_VRAM_LO_ADDR    <= D(6);
                end if;
            end if;

            -- Remember the previous level so we can detect the edge transition. As the clock of this process is not necessarily running at the clock of the CPU
            -- this step is important to guarantee transaction integrity.
            CS_LAST_LEVEL                 <= '0' & CS_80B_PIOn & CS_FB_PAGEn & CS_FB_VMn & CS_CPLD_CFGn; 

        end if;

        -- MZ80B Graphics RAM is enabled whenever one of the two control lines goes active.
        GRAM_MZ80B_ENABLE         <= MZ80B_VRAM_HI_ADDR or MZ80B_VRAM_LO_ADDR;
    end process;

    -- Voltage translation. The FPGA is max 3.3v tolerant (as are nearly all FPGA's) so the 5V signals from the mainboard would have to go through a diode clamp 
    -- or converter. Given the pricing of the MAX7000 series chips it is easier and cheaper to use a CPLD to perform the voltage translation as they are 5V tolerant
    -- and the mainboard accepts 3.3V output voltages.
    --
    VADDR                         <= VA(15 downto 11) & A(10 downto 0);

    -- Data bus is muxed between the Z80 data bus and VRAMD which is the gated data bus after the video buffers.
    -- The write signal WRn from the motherboard is actually a gated Write with video memory or I/O select. The read signal RDn from the motherboard is a gated Read with video memory or I/O select.
    -- The logic has been updated in the tranZPUter to combine the Video Select with Z80 RD/WR such that use of S_VIDEO_RDn = 0 for read and S_VIDEO_WRn = 0 for write works as intended for all memory/IO operations. To
    -- differentiate between memory and access, I/O operations use S_IORQn = 0.
    --
    VDATA                         <= D                           when S_VIDEO_WRn = '0'                            -- All memory write data sent to FPGA in region C000:FFFF
                                     else
                                     (others => 'Z');
    D                             <= VDATA                       when S_VIDEO_RDn = '0' and CS_EXXXn = '1'         -- C000:FFFF or FPGA IO Registers via data bus.
                                     else
                                     (others => 'Z');
    VRAMD                         <= (others => 'Z');
    VA(10 downto 0)               <= A(10 downto 0);                                                               -- Lower 11 address bits taken from address bus.
    VZ80_IORQn                    <= S_IORQn;
    VZ80_WRn                      <= S_VIDEO_WRn;                                                                  -- Write based on Z80_WRn and Video FPGA select signal from tranZPUter.
    VZ80_RDn                      <= S_VIDEO_RDn;                                                                  -- Read signal based on Z80_RDn and Video FPGA select from tranZPUter.
    VGTn                          <= GTn;
    VCSn                          <= CSn;
    VVRAM_CS_INn                  <= VRAM_CS_INn;

    -- Standard access to VRAM/ARAM.
    CS_DXXXn                      <= '0'                         when S_IORQn = '1'     and VA(15 downto 12) = "1101"
                                     else '1';
    CS_DVRAMn                     <= '0'                         when S_IORQn = '1'     and VA(15 downto 11) = "11010"
                                     else '1';
    CS_DARAMn                     <= '0'                         when S_IORQn = '1'     and VA(15 downto 11) = "11011"
                                     else '1';
    CS_EXXXn                      <= '0'                         when S_IORQn = '1'     and VA(15 downto 11) = "11100" and GRAM_PAGE_ENABLE = "00" and (MODE_VIDEO_MZ80B = '0' or (MODE_VIDEO_MZ80B = '1' and GRAM_MZ80B_ENABLE = '0')) -- Normal memory mapped I/O if Graphics Option not enabled.
                                     else '1';

    --
    -- CPU / RAM signals and selects.
    --
    CS_IO_6XXn                    <= '0'                         when S_IORQn = '0'     and VA(7 downto 4) = "0110"
                                      else '1';
    CS_IO_EXXn                    <= '0'                         when S_IORQn = '0'     and VA(7 downto 4) = "1110"
                                     else '1';
    CS_IO_FXXn                    <= '0'                         when S_IORQn = '0'     and VA(7 downto 4) = "1111"
                                      else '1';
    CS_CPLD_CFGn                  <= '0'                         when CS_IO_6XXn = '0'  and VA(3 downto 0) = "1110"                  -- IO 6E
                                      else '1';
    -- 0xF8 set the video mode. [2:0] = mode, 000 = MZ80A, 001 = MZ-700, 010 = MZ-80B, 011 = MZ-800, 111 = Pixel graphics.
    CS_FB_VMn                     <= '0'                         when CS_IO_FXXn = '0'  and VA(3 downto 0) = "1000"
                                      else '1';
    -- 0xFD set the Video memory page in block C000:FFFF bit 0, set the CGROM upload access in bit 7.
    CS_FB_PAGEn                   <= '0'                         when CS_IO_FXXn = '0'  and VA(3 downto 0) = "1101"
                                      else '1';
    -- MZ80B/MZ2000 I/O Registers E0-EB,
    CS_80B_PIOn                   <= '0'                         when CS_IO_EXXn = '0'  and VA(3 downto 2) = "10" and MODE_VIDEO_MZ80B = '1'
                                      else '1';


    -- Set the mainboard video state, 0 = enabled, 1 = disabled.
    MODE_CPLD_MB_VIDEOn           <= CPLD_CFG_DATA(3);
    -- Set CPLD mode flag according to value given in config 2:0 
    MODE_CPLD_MZ80K               <= '1'                         when to_integer(unsigned(CPLD_CFG_DATA(2 downto 0))) = MODE_MZ80K
                                     else '0';
    MODE_CPLD_MZ80C               <= '1'                         when to_integer(unsigned(CPLD_CFG_DATA(2 downto 0))) = MODE_MZ80C
                                     else '0';
    MODE_CPLD_MZ1200              <= '1'                         when to_integer(unsigned(CPLD_CFG_DATA(2 downto 0))) = MODE_MZ1200
                                     else '0';
    MODE_CPLD_MZ80A               <= '1'                         when to_integer(unsigned(CPLD_CFG_DATA(2 downto 0))) = MODE_MZ80A
                                     else '0';
    MODE_CPLD_MZ700               <= '1'                         when to_integer(unsigned(CPLD_CFG_DATA(2 downto 0))) = MODE_MZ700
                                     else '0';
    MODE_CPLD_MZ800               <= '1'                         when to_integer(unsigned(CPLD_CFG_DATA(2 downto 0))) = MODE_MZ800
                                     else '0';
    MODE_CPLD_MZ80B               <= '1'                         when to_integer(unsigned(CPLD_CFG_DATA(2 downto 0))) = MODE_MZ80B
                                     else '0';
    MODE_CPLD_MZ2000              <= '1'                         when to_integer(unsigned(CPLD_CFG_DATA(2 downto 0))) = MODE_MZ2000
                                     else '0';
end architecture;
