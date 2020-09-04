## Generated SDC file "VideoController.out.sdc"

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
## VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

## DATE    "Fri Jul  3 00:11:58 2020"

##
## DEVICE  "EP3C25E144C8"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {CLOCK_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50}]

#**************************************************************
# Create Generated Clock
#**************************************************************

derive_pll_clocks
#create_generated_clock -name {vcpll|altpll_component|auto_generated|pll1|clk[0]} -source [get_pins {vcpll|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50.000 -multiply_by 2 -master_clock {CLOCK_50} [get_pins {vcpll|altpll_component|auto_generated|pll1|clk[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

derive_clock_uncertainty


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {CLOCK_50}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRESETn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VWRn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VRDn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VIORQn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VMEM_CSn}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[13]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[12]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[11]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[10]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[9]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[8]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[7]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[6]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[5]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[4]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[3]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[2]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[1]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VADDR[0]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[0]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[1]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[2]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[3]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[4]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[5]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[6]}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[7]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {TBA[9]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {TBA[8]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {TBA[7]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {TBA[6]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {TBA[5]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {TBA[4]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {TBA[3]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {TBA[2]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {TBA[1]}]
#set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {TBA[0]}]
# Required for the Serial Flash Loader.
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {altera_reserved_tck}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {altera_reserved_tdi}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {altera_reserved_tms}]
set_input_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {SFL:sfl|altserial_flash_loader_component|\GEN_ASMI_TYPE_1:asmi_inst~ALTERA_DATA0}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[0]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[1]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[2]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[3]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[4]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[5]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[6]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VDATA[7]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGA_B[0]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGA_B[1]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGA_B[2]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGA_B[3]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGA_G[0]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGA_G[1]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGA_G[2]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGA_G[3]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGA_R[0]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGA_R[1]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGA_R[2]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGA_R[3]}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGA_VS}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VGA_HS}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {CSYNC}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {CSYNCn}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VSRVIDEO_OUT}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VHBLNK_OUTn}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VHSY_OUT}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VSYNCH_OUT}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {VVBLNK_OUTn}]
# Required for the Serial Flash Loader.
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {SFL:sfl|altserial_flash_loader_component|\GEN_ASMI_TYPE_1:asmi_inst~ALTERA_DCLK}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {SFL:sfl|altserial_flash_loader_component|\GEN_ASMI_TYPE_1:asmi_inst~ALTERA_SCE}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {SFL:sfl|altserial_flash_loader_component|\GEN_ASMI_TYPE_1:asmi_inst~ALTERA_SDO}]
set_output_delay -add_delay  -clock [get_clocks {CLOCK_50}]  1.000 [get_ports {altera_reserved_tdo}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



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

