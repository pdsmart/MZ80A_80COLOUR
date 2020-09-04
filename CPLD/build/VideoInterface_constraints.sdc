## Generated SDC file "VideoInterface.out.sdc"

## Copyright (C) 1991-2013 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

## DATE    "Mon Aug 17 12:55:02 2020"

##
## DEVICE  "EPM7512AETC144-12"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {CLOCK_50} -period 62.500 -waveform { 0.000 31.250 } [get_ports { CLOCK_50 }]


#**************************************************************
# Create Generated Clock
#**************************************************************
create_clock -name {VideoInterface:myVirtualToplevel|CLK16Mi} -period 62.5 [get_keepers {VideoInterface:myVirtualToplevel|CLK16Mi}]


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {CLOCK_50}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {A[13]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {A[12]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {A[11]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {A[10]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {A[9]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {A[8]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {A[7]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {A[6]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {A[5]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {A[4]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {A[3]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {A[2]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {A[1]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {A[0]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {IORQn}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {MEM_CSn}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {WRn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {CSn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {GTn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {RESETn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {RDn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {INDATA[3]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {INDATA[2]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {INDATA[1]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {INDATA[0]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAM_CS_INn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[7]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[6]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[5]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[4]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[3]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[2]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[1]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[0]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[7]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[6]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[5]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[4]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[3]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[2]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[1]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[0]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[7]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[6]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[5]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[4]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[3]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[2]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[1]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[0]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {MB_RESETn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {MB_HBLNKn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {MB_LOAD}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {MB_SYNCH}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {MB_V_HBLNKn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {MB_VIDEO}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VSRVIDEO_OUT}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VSYNCH_OUT}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VVBLNK_OUTn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VHBLNK_OUTn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VHSY_OUT}]

#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[7]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[6]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[5]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[4]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[3]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[2]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[1]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {D[0]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[13]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[12]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[11]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[10]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[9]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[8]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[7]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[6]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[5]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[4]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[3]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[2]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[1]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[0]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[7]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[7]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[6]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[5]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[4]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[3]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[2]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[1]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[0]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[6]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[5]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[4]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[3]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[2]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[1]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRAMD[0]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {HBLNK_OUTn}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {HSY_OUT}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {SRVIDEO_OUT}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {SYNCH_OUT}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VBLNK_OUTn}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VCSn}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGTn}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VIORQn}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VMEM_CSn}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRDn}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRESETn}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VVRAM_CS_INn}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VWRn}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VMB_HBLNKn}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VMB_LOAD}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VMB_SYNCH}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VMB_V_HBLNKn}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VMB_VIDEO}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {CLK_1MHZ_OUT}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {CLK_2MHZ_OUT}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {CLK_31_5K_OUT}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {OUTCLK}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_clocks {VideoInterface:myVirtualToplevel|CLK16Mi}] -to [get_clocks {CLOCK_50}]

#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

