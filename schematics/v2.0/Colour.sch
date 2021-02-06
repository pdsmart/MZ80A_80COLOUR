EESchema Schematic File Version 4
LIBS:MZ80-80CLR-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title "MZ-80A Colour Output Module"
Date "2020-06-25"
Rev "2.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "by the FPGA based on the serialised video stream."
Comment4 "Output circuits to an RGB/Composite monitor. The RGB is generated"
$EndDescr
Text Label 5650 3500 0    39   ~ 0
Composite
Wire Wire Line
	5250 4650 5300 4650
Wire Wire Line
	4650 5200 4700 5200
Wire Wire Line
	4800 4250 4950 4250
Wire Wire Line
	4800 4250 4800 4050
Connection ~ 4800 4250
Wire Wire Line
	4650 4250 4800 4250
Wire Wire Line
	4950 4250 4950 4350
Wire Wire Line
	4650 4350 4650 4250
Wire Wire Line
	4650 4550 4650 4600
Wire Wire Line
	4950 5200 4900 5200
Wire Wire Line
	4950 5100 4950 5200
Wire Wire Line
	4950 4650 4950 4700
Wire Wire Line
	4950 4650 5050 4650
Connection ~ 4950 4650
Wire Wire Line
	4950 4550 4950 4650
$Comp
L Device:R_Small R?
U 1 1 6063CCC0
P 5150 4650
AR Path="/6063CCC0" Ref="R?"  Part="1" 
AR Path="/689FAE6F/6063CCC0" Ref="R22"  Part="1" 
AR Path="/600002AE/6063CCC0" Ref="R?"  Part="1" 
F 0 "R22" V 5250 4700 50  0000 R CNN
F 1 "68R" V 5150 4700 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5150 4650 50  0001 C CNN
F 3 "~" H 5150 4650 50  0001 C CNN
	1    5150 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6063C63F
P 4800 5200
AR Path="/6063C63F" Ref="R?"  Part="1" 
AR Path="/689FAE6F/6063C63F" Ref="R20"  Part="1" 
AR Path="/600002AE/6063C63F" Ref="R?"  Part="1" 
F 0 "R20" V 4700 5250 50  0000 R CNN
F 1 "220R" V 4800 5250 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4800 5200 50  0001 C CNN
F 3 "~" H 4800 5200 50  0001 C CNN
	1    4800 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60600D5F
P 4650 4450
AR Path="/60600D5F" Ref="R?"  Part="1" 
AR Path="/689FAE6F/60600D5F" Ref="R19"  Part="1" 
AR Path="/600002AE/60600D5F" Ref="R?"  Part="1" 
F 0 "R19" H 4850 4400 50  0000 R CNN
F 1 "1K" V 4650 4500 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4650 4450 50  0001 C CNN
F 3 "~" H 4650 4450 50  0001 C CNN
	1    4650 4450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 605FF538
P 4950 4450
AR Path="/605FF538" Ref="R?"  Part="1" 
AR Path="/689FAE6F/605FF538" Ref="R21"  Part="1" 
AR Path="/600002AE/605FF538" Ref="R?"  Part="1" 
F 0 "R21" H 5150 4400 50  0000 R CNN
F 1 "68R" V 4950 4500 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4950 4450 50  0001 C CNN
F 3 "~" H 4950 4450 50  0001 C CNN
	1    4950 4450
	-1   0    0    1   
$EndComp
Text Label 5650 3400 0    39   ~ 0
CSYNC
$Comp
L Connector_Generic:Conn_01x10 J1
U 1 1 5FA8230F
P 5550 3000
AR Path="/689FAE6F/5FA8230F" Ref="J1"  Part="1" 
AR Path="/600002AE/5FA8230F" Ref="J?"  Part="1" 
F 0 "J1" H 5500 2350 50  0000 L CNN
F 1 "RGB" H 5450 2250 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 5550 3000 50  0001 C CNN
F 3 "~" H 5550 3000 50  0001 C CNN
	1    5550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4800 4650 4800
Wire Wire Line
	4650 4600 4550 4600
Connection ~ 4650 4600
Wire Wire Line
	4650 4900 4650 4800
Connection ~ 4650 4900
Connection ~ 4650 5200
Wire Wire Line
	4650 5200 4650 5000
Wire Wire Line
	4550 5200 4650 5200
$Comp
L Device:R_Small R?
U 1 1 5F6ECB08
P 4450 5000
AR Path="/5F6ECB08" Ref="R?"  Part="1" 
AR Path="/689FAE6F/5F6ECB08" Ref="R17"  Part="1" 
AR Path="/600002AE/5F6ECB08" Ref="R?"  Part="1" 
F 0 "R17" V 4350 5050 50  0000 R CNN
F 1 "1K" V 4450 5000 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4450 5000 50  0001 C CNN
F 3 "~" H 4450 5000 50  0001 C CNN
	1    4450 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F6EC67F
P 4450 4600
AR Path="/5F6EC67F" Ref="R?"  Part="1" 
AR Path="/689FAE6F/5F6EC67F" Ref="R15"  Part="1" 
AR Path="/600002AE/5F6EC67F" Ref="R?"  Part="1" 
F 0 "R15" V 4350 4650 50  0000 R CNN
F 1 "3K9" V 4450 4650 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4450 4600 50  0001 C CNN
F 3 "~" H 4450 4600 50  0001 C CNN
	1    4450 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F6EB43F
P 4450 4800
AR Path="/5F6EB43F" Ref="R?"  Part="1" 
AR Path="/689FAE6F/5F6EB43F" Ref="R16"  Part="1" 
AR Path="/600002AE/5F6EB43F" Ref="R?"  Part="1" 
F 0 "R16" V 4350 4850 50  0000 R CNN
F 1 "2K2" V 4450 4850 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4450 4800 50  0001 C CNN
F 3 "~" H 4450 4800 50  0001 C CNN
	1    4450 4800
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC307 Q1
U 1 1 5F6E5CFD
P 4850 4900
AR Path="/689FAE6F/5F6E5CFD" Ref="Q1"  Part="1" 
AR Path="/600002AE/5F6E5CFD" Ref="Q?"  Part="1" 
F 0 "Q1" H 4800 4650 50  0000 L CNN
F 1 "BC309" H 4700 4750 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5050 4825 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC307-D.PDF" H 4850 4900 50  0001 L CNN
	1    4850 4900
	1    0    0    1   
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 68A6544E
P 4950 2700
AR Path="/68A6544E" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A6544E" Ref="#PWR017"  Part="1" 
AR Path="/600002AE/68A6544E" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 4950 2500 50  0001 C CNN
F 1 "GNDPWR" H 5150 2650 50  0000 C CNN
F 2 "" H 4950 2650 50  0001 C CNN
F 3 "" H 4950 2650 50  0001 C CNN
	1    4950 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2600 5350 2500
$Comp
L power:+5V #PWR?
U 1 1 68A65426
P 5350 2500
AR Path="/68A65426" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A65426" Ref="#PWR018"  Part="1" 
AR Path="/600002AE/68A65426" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 5350 2350 50  0001 C CNN
F 1 "+5V" H 5365 2673 50  0000 C CNN
F 2 "" H 5350 2500 50  0001 C CNN
F 3 "" H 5350 2500 50  0001 C CNN
	1    5350 2500
	1    0    0    -1  
$EndComp
Text Label 5650 3300 0    39   ~ 0
~CSYNC~
Text Label 5650 3200 0    39   ~ 0
VS
Text Label 5650 3100 0    39   ~ 0
HS
Text Label 5650 3000 0    39   ~ 0
GREEN
Text Label 5650 2900 0    39   ~ 0
RED
Text Label 5650 2800 0    39   ~ 0
BLUE
Text Label 5650 2700 0    39   ~ 0
GND
Text Label 5650 2600 0    39   ~ 0
5V
Text GLabel 2000 2450 0    39   Input ~ 0
VGA_R[3..0]
Text GLabel 2000 3200 0    39   Input ~ 0
VGA_G[3..0]
Text GLabel 2000 1700 0    39   Input ~ 0
VGA_B[3..0]
Text GLabel 1900 4000 0    39   Input ~ 0
VGA_HS
Text GLabel 1900 4100 0    39   Input ~ 0
VGA_VS
$Comp
L Device:R_Small R?
U 1 1 74A3EA3C
P 3200 2650
AR Path="/74A3EA3C" Ref="R?"  Part="1" 
AR Path="/689FAE6F/74A3EA3C" Ref="R5"  Part="1" 
AR Path="/600002AE/74A3EA3C" Ref="R?"  Part="1" 
F 0 "R5" V 3150 2800 50  0000 C CNN
F 1 "500R" V 3200 2650 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 2650 50  0001 C CNN
F 3 "~" H 3200 2650 50  0001 C CNN
	1    3200 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 74A70F1C
P 3200 2950
AR Path="/74A70F1C" Ref="R?"  Part="1" 
AR Path="/689FAE6F/74A70F1C" Ref="R7"  Part="1" 
AR Path="/600002AE/74A70F1C" Ref="R?"  Part="1" 
F 0 "R7" V 3150 3100 50  0000 C CNN
F 1 "2K" V 3200 2950 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 2950 50  0001 C CNN
F 3 "~" H 3200 2950 50  0001 C CNN
	1    3200 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 74A9DCF3
P 3200 2800
AR Path="/74A9DCF3" Ref="R?"  Part="1" 
AR Path="/689FAE6F/74A9DCF3" Ref="R6"  Part="1" 
AR Path="/600002AE/74A9DCF3" Ref="R?"  Part="1" 
F 0 "R6" V 3150 2950 50  0000 C CNN
F 1 "1K" V 3200 2800 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 2800 50  0001 C CNN
F 3 "~" H 3200 2800 50  0001 C CNN
	1    3200 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 74ACA98C
P 3200 3100
AR Path="/74ACA98C" Ref="R?"  Part="1" 
AR Path="/689FAE6F/74ACA98C" Ref="R8"  Part="1" 
AR Path="/600002AE/74ACA98C" Ref="R?"  Part="1" 
F 0 "R8" V 3150 3250 50  0000 C CNN
F 1 "4K" V 3200 3100 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 3100 50  0001 C CNN
F 3 "~" H 3200 3100 50  0001 C CNN
	1    3200 3100
	0    1    1    0   
$EndComp
Entry Bus Bus
	2650 2450 2750 2550
Wire Bus Line
	2000 2450 2650 2450
Entry Wire Line
	2750 2550 2850 2650
Entry Wire Line
	2750 2700 2850 2800
Entry Wire Line
	2750 2850 2850 2950
Entry Wire Line
	2750 3000 2850 3100
Wire Wire Line
	2850 2650 3100 2650
Wire Wire Line
	2850 2800 3100 2800
Wire Wire Line
	2850 2950 3100 2950
Wire Wire Line
	2850 3100 3100 3100
$Comp
L Device:R_Small R?
U 1 1 74F65B1E
P 3200 3400
AR Path="/74F65B1E" Ref="R?"  Part="1" 
AR Path="/689FAE6F/74F65B1E" Ref="R9"  Part="1" 
AR Path="/600002AE/74F65B1E" Ref="R?"  Part="1" 
F 0 "R9" V 3150 3550 50  0000 C CNN
F 1 "500R" V 3200 3400 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 3400 50  0001 C CNN
F 3 "~" H 3200 3400 50  0001 C CNN
	1    3200 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 74F65B28
P 3200 3700
AR Path="/74F65B28" Ref="R?"  Part="1" 
AR Path="/689FAE6F/74F65B28" Ref="R11"  Part="1" 
AR Path="/600002AE/74F65B28" Ref="R?"  Part="1" 
F 0 "R11" V 3150 3850 50  0000 C CNN
F 1 "2K" V 3200 3700 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 3700 50  0001 C CNN
F 3 "~" H 3200 3700 50  0001 C CNN
	1    3200 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 74F65B32
P 3200 3550
AR Path="/74F65B32" Ref="R?"  Part="1" 
AR Path="/689FAE6F/74F65B32" Ref="R10"  Part="1" 
AR Path="/600002AE/74F65B32" Ref="R?"  Part="1" 
F 0 "R10" V 3150 3700 50  0000 C CNN
F 1 "1K" V 3200 3550 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 3550 50  0001 C CNN
F 3 "~" H 3200 3550 50  0001 C CNN
	1    3200 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 74F65B3C
P 3200 3850
AR Path="/74F65B3C" Ref="R?"  Part="1" 
AR Path="/689FAE6F/74F65B3C" Ref="R12"  Part="1" 
AR Path="/600002AE/74F65B3C" Ref="R?"  Part="1" 
F 0 "R12" V 3150 4000 50  0000 C CNN
F 1 "4K" V 3200 3850 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 3850 50  0001 C CNN
F 3 "~" H 3200 3850 50  0001 C CNN
	1    3200 3850
	0    1    1    0   
$EndComp
Entry Bus Bus
	2650 3200 2750 3300
Entry Wire Line
	2750 3300 2850 3400
Entry Wire Line
	2750 3450 2850 3550
Entry Wire Line
	2750 3600 2850 3700
Entry Wire Line
	2750 3750 2850 3850
Wire Wire Line
	2850 3400 3100 3400
Wire Wire Line
	2850 3550 3100 3550
Wire Wire Line
	2850 3700 3100 3700
Wire Wire Line
	2850 3850 3100 3850
$Comp
L Device:R_Small R?
U 1 1 74F975F6
P 3200 1900
AR Path="/74F975F6" Ref="R?"  Part="1" 
AR Path="/689FAE6F/74F975F6" Ref="R1"  Part="1" 
AR Path="/600002AE/74F975F6" Ref="R?"  Part="1" 
F 0 "R1" V 3150 2050 50  0000 C CNN
F 1 "500R" V 3200 1900 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 1900 50  0001 C CNN
F 3 "~" H 3200 1900 50  0001 C CNN
	1    3200 1900
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 74F97600
P 3200 2200
AR Path="/74F97600" Ref="R?"  Part="1" 
AR Path="/689FAE6F/74F97600" Ref="R3"  Part="1" 
AR Path="/600002AE/74F97600" Ref="R?"  Part="1" 
F 0 "R3" V 3150 2350 50  0000 C CNN
F 1 "2K" V 3200 2200 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 2200 50  0001 C CNN
F 3 "~" H 3200 2200 50  0001 C CNN
	1    3200 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 74F9760A
P 3200 2050
AR Path="/74F9760A" Ref="R?"  Part="1" 
AR Path="/689FAE6F/74F9760A" Ref="R2"  Part="1" 
AR Path="/600002AE/74F9760A" Ref="R?"  Part="1" 
F 0 "R2" V 3150 2200 50  0000 C CNN
F 1 "1K" V 3200 2050 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 2050 50  0001 C CNN
F 3 "~" H 3200 2050 50  0001 C CNN
	1    3200 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 74F97614
P 3200 2350
AR Path="/74F97614" Ref="R?"  Part="1" 
AR Path="/689FAE6F/74F97614" Ref="R4"  Part="1" 
AR Path="/600002AE/74F97614" Ref="R?"  Part="1" 
F 0 "R4" V 3150 2500 50  0000 C CNN
F 1 "4K" V 3200 2350 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 2350 50  0001 C CNN
F 3 "~" H 3200 2350 50  0001 C CNN
	1    3200 2350
	0    1    1    0   
$EndComp
Entry Bus Bus
	2650 1700 2750 1800
Entry Wire Line
	2750 1800 2850 1900
Entry Wire Line
	2750 1950 2850 2050
Entry Wire Line
	2750 2100 2850 2200
Entry Wire Line
	2750 2250 2850 2350
Wire Wire Line
	2850 1900 3100 1900
Wire Wire Line
	2850 2050 3100 2050
Wire Wire Line
	2850 2200 3100 2200
Wire Wire Line
	2850 2350 3100 2350
Wire Bus Line
	2000 1700 2650 1700
Wire Bus Line
	2000 3200 2650 3200
$Comp
L Device:R_Small R?
U 1 1 750ECD27
P 3200 4000
AR Path="/750ECD27" Ref="R?"  Part="1" 
AR Path="/689FAE6F/750ECD27" Ref="R13"  Part="1" 
AR Path="/600002AE/750ECD27" Ref="R?"  Part="1" 
F 0 "R13" V 3150 4150 50  0000 C CNN
F 1 "120R" V 3200 4000 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 4000 50  0001 C CNN
F 3 "~" H 3200 4000 50  0001 C CNN
	1    3200 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 750F0A65
P 3200 4100
AR Path="/750F0A65" Ref="R?"  Part="1" 
AR Path="/689FAE6F/750F0A65" Ref="R14"  Part="1" 
AR Path="/600002AE/750F0A65" Ref="R?"  Part="1" 
F 0 "R14" V 3150 4250 50  0000 C CNN
F 1 "120R" V 3200 4100 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3200 4100 50  0001 C CNN
F 3 "~" H 3200 4100 50  0001 C CNN
	1    3200 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 4000 3100 4000
Wire Wire Line
	1900 4100 3100 4100
Text Label 2850 2650 0    31   ~ 0
VGA_R3
Text Label 2850 2800 0    31   ~ 0
VGA_R2
Text Label 2850 2950 0    31   ~ 0
VGA_R1
Text Label 2850 3100 0    31   ~ 0
VGA_R0
Text Label 2850 3400 0    31   ~ 0
VGA_G3
Text Label 2850 3550 0    31   ~ 0
VGA_G2
Text Label 2850 3700 0    31   ~ 0
VGA_G1
Text Label 2850 3850 0    31   ~ 0
VGA_G0
Text Label 2850 1900 0    31   ~ 0
VGA_B3
Text Label 2850 2050 0    31   ~ 0
VGA_B2
Text Label 2850 2200 0    31   ~ 0
VGA_B1
Text Label 2850 2350 0    31   ~ 0
VGA_B0
Wire Wire Line
	3300 1900 3450 1900
Wire Wire Line
	3450 1900 3450 2050
Wire Wire Line
	3450 2350 3300 2350
Wire Wire Line
	3300 2200 3450 2200
Connection ~ 3450 2200
Wire Wire Line
	3450 2200 3450 2350
Wire Wire Line
	3300 2050 3450 2050
Connection ~ 3450 2050
Wire Wire Line
	3450 2050 3450 2200
Wire Wire Line
	3300 2650 3450 2650
Wire Wire Line
	3450 2650 3450 2800
Wire Wire Line
	3450 3100 3300 3100
Wire Wire Line
	3300 2950 3450 2950
Connection ~ 3450 2950
Wire Wire Line
	3450 2950 3450 3100
Wire Wire Line
	3300 2800 3450 2800
Connection ~ 3450 2800
Wire Wire Line
	3450 2800 3450 2900
Wire Wire Line
	3300 3400 3450 3400
Wire Wire Line
	3450 3400 3450 3550
Wire Wire Line
	3450 3850 3300 3850
Wire Wire Line
	3300 3700 3450 3700
Connection ~ 3450 3700
Wire Wire Line
	3450 3700 3450 3850
Wire Wire Line
	3300 3550 3450 3550
Connection ~ 3450 3550
Wire Wire Line
	3450 3550 3450 3700
Wire Wire Line
	3850 2800 4300 2800
Wire Wire Line
	3450 2900 4200 2900
Connection ~ 3450 2900
Wire Wire Line
	3450 2900 3450 2950
Wire Wire Line
	3450 3400 3850 3400
Wire Wire Line
	3850 3400 3850 3000
Wire Wire Line
	3850 3000 4100 3000
Connection ~ 3450 3400
Wire Wire Line
	3450 2350 3850 2350
Connection ~ 3450 2350
Wire Wire Line
	3850 2350 3850 2800
Wire Wire Line
	3300 4000 3950 4000
Wire Wire Line
	3950 4000 3950 3100
Wire Wire Line
	3950 3100 5350 3100
Wire Wire Line
	3300 4100 4050 4100
Wire Wire Line
	4050 4100 4050 3200
Wire Wire Line
	4050 3200 5350 3200
Wire Wire Line
	5350 2700 4950 2700
Connection ~ 4650 4800
Wire Wire Line
	4650 4800 4650 4600
$Comp
L Device:R_Small R?
U 1 1 75924817
P 4450 5200
AR Path="/75924817" Ref="R?"  Part="1" 
AR Path="/689FAE6F/75924817" Ref="R18"  Part="1" 
AR Path="/600002AE/75924817" Ref="R?"  Part="1" 
F 0 "R18" V 4350 5250 50  0000 R CNN
F 1 "1K" V 4450 5200 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4450 5200 50  0001 C CNN
F 3 "~" H 4450 5200 50  0001 C CNN
	1    4450 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 5000 4650 5000
Connection ~ 4650 5000
Wire Wire Line
	4650 5000 4650 4900
Wire Wire Line
	4300 4600 4300 2800
Wire Wire Line
	4300 4600 4350 4600
Connection ~ 4300 2800
Wire Wire Line
	4300 2800 5350 2800
Wire Wire Line
	4200 4800 4200 2900
Wire Wire Line
	4200 4800 4350 4800
Connection ~ 4200 2900
Wire Wire Line
	4200 2900 5350 2900
Wire Wire Line
	4100 5000 4100 3000
Wire Wire Line
	4100 5000 4350 5000
Connection ~ 4100 3000
Wire Wire Line
	4100 3000 5350 3000
Text GLabel 1850 4450 0    39   Input ~ 0
~CSYNC~
Wire Wire Line
	1850 5200 3600 5200
Text GLabel 1850 5200 0    39   Input ~ 0
CSYNC
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 7595AC8F
P 3850 4800
F 0 "JP1" V 3896 4867 50  0000 L CNN
F 1 "Jumper_3_Bridged12" V 3805 4867 50  0000 L CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x03_P2.00mm_Vertical" H 3850 4800 50  0001 C CNN
F 3 "~" H 3850 4800 50  0001 C CNN
	1    3850 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 4450 3850 4450
Wire Wire Line
	3850 4450 3850 4550
Wire Wire Line
	3850 5050 3850 5200
Wire Wire Line
	4000 4800 4000 5200
Wire Wire Line
	4000 5200 4350 5200
Wire Wire Line
	5300 4650 5300 3500
Wire Wire Line
	5300 3500 5350 3500
Wire Wire Line
	4400 4150 4400 3300
Wire Wire Line
	4400 3300 5350 3300
Wire Wire Line
	3850 4450 3850 4150
Connection ~ 3850 4450
Wire Wire Line
	3850 4150 4400 4150
Wire Wire Line
	3600 5200 3600 4250
Wire Wire Line
	3600 4250 4500 4250
Wire Wire Line
	4500 4250 4500 3400
Wire Wire Line
	4500 3400 5350 3400
Connection ~ 3600 5200
Wire Wire Line
	3600 5200 3850 5200
Wire Bus Line
	2750 2550 2750 3000
Wire Bus Line
	2750 3300 2750 3750
Wire Bus Line
	2750 1800 2750 2250
$EndSCHEMATC
