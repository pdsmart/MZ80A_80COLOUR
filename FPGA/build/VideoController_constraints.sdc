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

create_clock -name {CLOCK_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports { CLOCK_50 }]
create_clock -name {CLOCK_16} -period 62.500 -waveform { 0.000 31.250 } [get_ports {CLOCK_16}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {vcpll|altpll_component|auto_generated|pll1|clk[0]} -source [get_pins {vcpll|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50.000 -multiply_by 2 -master_clock {CLOCK_50} [get_pins {vcpll|altpll_component|auto_generated|pll1|clk[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {CLOCK_16}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {CLOCK_16}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {CLOCK_16}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {CLOCK_16}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {CLOCK_16}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {CLOCK_16}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {CLOCK_16}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {vcpll|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {CLOCK_16}] -hold 0.080  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



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

