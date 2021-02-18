EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "MZ-80A Colour Module"
Date "2021-02-12"
Rev "1.1"
Comp ""
Comment1 "multi-cgrom character sets to keep MZ-80A and MZ-700 compatibility."
Comment2 "This design uses the MZ-700 Colour module as reference and extends it by adding "
Comment3 "Original design intended a colour add on board but was never released. "
Comment4 "Module to add colour to the MZ-80A."
$EndDescr
$Comp
L Device:C_Small C?
U 1 1 68A65311
P 2400 6800
AR Path="/68A65311" Ref="C?"  Part="1" 
AR Path="/689FAE6F/68A65311" Ref="C5"  Part="1" 
F 0 "C5" H 2492 6831 50  0000 L CNN
F 1 "100nF" H 2492 6754 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2400 6800 50  0001 C CNN
F 3 "~" H 2400 6800 50  0001 C CNN
	1    2400 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 68A65318
P 2350 3700
AR Path="/68A65318" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A65318" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 2350 3500 50  0001 C CNN
F 1 "GNDPWR" H 2354 3546 50  0000 C CNN
F 2 "" H 2350 3650 50  0001 C CNN
F 3 "" H 2350 3650 50  0001 C CNN
	1    2350 3700
	1    0    0    -1  
$EndComp
Connection ~ 2350 3500
$Comp
L Device:C_Small C?
U 1 1 68A6531F
P 2350 3600
AR Path="/68A6531F" Ref="C?"  Part="1" 
AR Path="/689FAE6F/68A6531F" Ref="C4"  Part="1" 
F 0 "C4" H 2442 3631 50  0000 L CNN
F 1 "100nF" H 2442 3554 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2350 3600 50  0001 C CNN
F 3 "~" H 2350 3600 50  0001 C CNN
	1    2350 3600
	1    0    0    -1  
$EndComp
Text Label 11000 4800 0    39   ~ 0
5V
Text Label 11000 4900 0    39   ~ 0
GND
Text Label 11000 5000 0    39   ~ 0
BLUE
Text Label 11000 5100 0    39   ~ 0
RED
Text Label 11000 5200 0    39   ~ 0
GREEN
Text Label 11000 5300 0    39   ~ 0
HS
Text Label 11000 5400 0    39   ~ 0
VS
Text Label 11000 5500 0    39   ~ 0
~CSYNC~
Connection ~ 7450 5250
Wire Wire Line
	7450 6150 7450 5250
NoConn ~ 8600 4750
NoConn ~ 8600 4850
NoConn ~ 8600 4950
NoConn ~ 8600 5050
NoConn ~ 8600 5150
NoConn ~ 8800 3550
NoConn ~ 4900 7350
NoConn ~ 4900 7000
NoConn ~ 1550 3500
NoConn ~ 1550 3600
Wire Wire Line
	1300 3200 1600 3200
Connection ~ 1300 3200
$Comp
L power:+5V #PWR?
U 1 1 68A65356
P 1300 3200
AR Path="/68A65356" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A65356" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 1300 3050 50  0001 C CNN
F 1 "+5V" H 1315 3373 50  0000 C CNN
F 2 "" H 1300 3200 50  0001 C CNN
F 3 "" H 1300 3200 50  0001 C CNN
	1    1300 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3300 1550 3300
Wire Wire Line
	1600 3200 1600 3300
Wire Wire Line
	1000 3200 1300 3200
Wire Wire Line
	1000 3300 1000 3200
Wire Wire Line
	1050 3300 1000 3300
Text Label 7300 4100 1    31   ~ 0
~HBLNK~
Text Label 7300 4450 1    31   ~ 0
SYNCH
Entry Wire Line
	7000 4200 7100 4100
Text Label 3700 4050 1    31   ~ 0
~GT~
Text Label 3600 4050 1    31   ~ 0
~RD~
Wire Wire Line
	3700 4100 3700 4000
Wire Wire Line
	3600 4100 3600 4000
Entry Wire Line
	3600 4200 3700 4100
Entry Wire Line
	3500 4200 3600 4100
Text Label 1000 2850 1    31   ~ 0
~CSATTR~
Text Label 900  2850 1    31   ~ 0
~WR~
Text Label 1750 3700 2    31   ~ 0
~HBLNK~
Text Label 1750 3800 2    31   ~ 0
SYNCH
Text Label 1550 3900 0    31   ~ 0
~V-HBLNK~
Text Label 1750 4000 2    31   ~ 0
VIDEO
Text Label 1700 4200 0    31   ~ 0
D7
Text Label 1700 4300 0    31   ~ 0
D6
Text Label 1700 4400 0    31   ~ 0
D5
Text Label 1700 4500 0    31   ~ 0
D4
Text Label 1700 4600 0    31   ~ 0
D3
Text Label 1700 4700 0    31   ~ 0
D2
Text Label 1700 4800 0    31   ~ 0
D1
Text Label 1700 4900 0    31   ~ 0
D0
Text Label 850  3800 0    31   ~ 0
~WR~
Text Label 850  4900 0    31   ~ 0
A0
Text Label 850  4800 0    31   ~ 0
A1
Text Label 850  4700 0    31   ~ 0
A2
Text Label 850  4600 0    31   ~ 0
A3
Text Label 850  4500 0    31   ~ 0
A4
Text Label 850  4400 0    31   ~ 0
A5
Text Label 850  4300 0    31   ~ 0
A6
Text Label 850  4200 0    31   ~ 0
A7
Text Label 850  4100 0    31   ~ 0
A8
Text Label 850  4000 0    31   ~ 0
A9
Text Label 850  3900 0    31   ~ 0
A10
Text Label 850  3700 0    31   ~ 0
~GT~
Text Label 850  3600 0    31   ~ 0
~CS~
Text Label 850  3500 0    31   ~ 0
~RD~
Entry Bus Bus
	1750 2950 1850 3050
Entry Bus Bus
	500  3050 600  2950
Wire Wire Line
	1750 4000 1550 4000
Wire Wire Line
	1750 3900 1550 3900
Wire Wire Line
	1750 3800 1550 3800
Wire Wire Line
	1750 3700 1550 3700
Entry Wire Line
	1750 3700 1850 3800
Wire Wire Line
	1550 4900 1750 4900
Wire Wire Line
	1550 4800 1750 4800
Wire Wire Line
	1550 4700 1750 4700
Wire Wire Line
	1550 4600 1750 4600
Wire Wire Line
	1550 4500 1750 4500
Wire Wire Line
	1550 4400 1750 4400
Wire Wire Line
	1550 4300 1750 4300
Wire Wire Line
	1550 4200 1750 4200
Entry Wire Line
	1750 4000 1850 4100
Entry Wire Line
	1750 3900 1850 4000
Entry Wire Line
	1750 3800 1850 3900
$Comp
L Device:C_Small C?
U 1 1 68A653D3
P 3100 850
AR Path="/68A653D3" Ref="C?"  Part="1" 
AR Path="/689FAE6F/68A653D3" Ref="C7"  Part="1" 
F 0 "C7" H 2900 900 50  0000 L CNN
F 1 "100nF" H 2900 800 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3100 850 50  0001 C CNN
F 3 "~" H 3100 850 50  0001 C CNN
	1    3100 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 68A653DF
P 3350 750
AR Path="/68A653DF" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A653DF" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 3350 600 50  0001 C CNN
F 1 "+5V" H 3365 923 50  0000 C CNN
F 2 "" H 3350 750 50  0001 C CNN
F 3 "" H 3350 750 50  0001 C CNN
	1    3350 750 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 68A653E5
P 2350 3400
AR Path="/68A653E5" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A653E5" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 2350 3250 50  0001 C CNN
F 1 "+5V" H 2365 3573 50  0000 C CNN
F 2 "" H 2350 3400 50  0001 C CNN
F 3 "" H 2350 3400 50  0001 C CNN
	1    2350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3500 2350 3400
Wire Wire Line
	2400 3500 2350 3500
Connection ~ 3350 750 
Wire Wire Line
	3350 750  3350 800 
Wire Wire Line
	3350 2600 3350 2450
Connection ~ 2400 7700
Wire Wire Line
	2400 6900 2400 7700
Wire Wire Line
	1800 7700 2150 7700
Connection ~ 1800 7700
Wire Wire Line
	1800 6900 1800 7700
Wire Wire Line
	1150 7700 1550 7700
Connection ~ 1150 7700
Wire Wire Line
	1150 6900 1150 7700
Connection ~ 2150 6700
Wire Wire Line
	2150 6700 2400 6700
Wire Wire Line
	1800 6700 2150 6700
Connection ~ 1800 6700
$Comp
L Device:C_Small C?
U 1 1 68A65405
P 1800 6800
AR Path="/68A65405" Ref="C?"  Part="1" 
AR Path="/689FAE6F/68A65405" Ref="C2"  Part="1" 
F 0 "C2" H 1892 6831 50  0000 L CNN
F 1 "100nF" H 1892 6754 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1800 6800 50  0001 C CNN
F 3 "~" H 1800 6800 50  0001 C CNN
	1    1800 6800
	1    0    0    -1  
$EndComp
Connection ~ 1150 6700
$Comp
L Device:C_Small C?
U 1 1 68A6540D
P 1150 6800
AR Path="/68A6540D" Ref="C?"  Part="1" 
AR Path="/689FAE6F/68A6540D" Ref="C1"  Part="1" 
F 0 "C1" H 1242 6831 50  0000 L CNN
F 1 "100nF" H 1242 6754 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1150 6800 50  0001 C CNN
F 3 "~" H 1150 6800 50  0001 C CNN
	1    1150 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 68A65419
P 8250 4400
AR Path="/68A65419" Ref="C?"  Part="1" 
AR Path="/689FAE6F/68A65419" Ref="C14"  Part="1" 
F 0 "C14" H 8342 4431 50  0000 L CNN
F 1 "100nF" H 8342 4354 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8250 4400 50  0001 C CNN
F 3 "~" H 8250 4400 50  0001 C CNN
	1    8250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4650 10150 4650
Connection ~ 10050 4650
Wire Wire Line
	10050 4650 10050 4300
Wire Wire Line
	10150 4650 10150 4700
Wire Wire Line
	9950 4650 10050 4650
Wire Wire Line
	9950 4700 9950 4650
$Comp
L power:+5V #PWR?
U 1 1 68A65426
P 10700 4700
AR Path="/68A65426" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A65426" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 10700 4550 50  0001 C CNN
F 1 "+5V" H 10715 4873 50  0000 C CNN
F 2 "" H 10700 4700 50  0001 C CNN
F 3 "" H 10700 4700 50  0001 C CNN
	1    10700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 4900 10350 5750
Wire Wire Line
	10700 4900 10350 4900
Wire Wire Line
	10700 4800 10700 4700
$Comp
L power:+5V #PWR?
U 1 1 68A6543E
P 3000 6700
AR Path="/68A6543E" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A6543E" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 3000 6550 50  0001 C CNN
F 1 "+5V" H 3015 6873 50  0000 C CNN
F 2 "" H 3000 6700 50  0001 C CNN
F 3 "" H 3000 6700 50  0001 C CNN
	1    3000 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 6700 1800 6700
Connection ~ 1550 6700
Wire Wire Line
	900  6700 1150 6700
Wire Wire Line
	2150 7700 2400 7700
Connection ~ 2150 7700
Connection ~ 1550 7700
Wire Wire Line
	1550 7700 1800 7700
Wire Wire Line
	900  7700 1150 7700
$Comp
L power:GNDPWR #PWR?
U 1 1 68A6544E
P 2150 7700
AR Path="/68A6544E" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A6544E" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 2150 7500 50  0001 C CNN
F 1 "GNDPWR" H 2350 7650 50  0000 C CNN
F 2 "" H 2150 7650 50  0001 C CNN
F 3 "" H 2150 7650 50  0001 C CNN
	1    2150 7700
	1    0    0    -1  
$EndComp
Connection ~ 9950 5150
Wire Wire Line
	10150 5500 10150 5400
Wire Wire Line
	9950 5500 10150 5500
Wire Wire Line
	9950 5150 9950 4900
$Comp
L Device:R_Small R?
U 1 1 68A65488
P 10150 4800
AR Path="/68A65488" Ref="R?"  Part="1" 
AR Path="/689FAE6F/68A65488" Ref="R16"  Part="1" 
F 0 "R16" H 10150 4700 50  0000 R CNN
F 1 "220R" V 10150 4850 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10150 4800 50  0001 C CNN
F 3 "~" H 10150 4800 50  0001 C CNN
	1    10150 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 68A6548E
P 9950 4800
AR Path="/68A6548E" Ref="R?"  Part="1" 
AR Path="/689FAE6F/68A6548E" Ref="R14"  Part="1" 
F 0 "R14" H 10050 4700 50  0000 R CNN
F 1 "220R" V 9950 4850 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9950 4800 50  0001 C CNN
F 3 "~" H 9950 4800 50  0001 C CNN
	1    9950 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 5350 8600 5350
Wire Wire Line
	8700 5500 8700 5350
Wire Wire Line
	9350 5500 8700 5500
Wire Wire Line
	8700 5050 8750 5050
Wire Wire Line
	8700 4650 8700 5050
Wire Wire Line
	8600 4650 8700 4650
Wire Wire Line
	8600 5250 8750 5250
Wire Wire Line
	7450 5250 7600 5250
Wire Wire Line
	7450 4650 7450 5250
Wire Wire Line
	7600 4650 7450 4650
$Comp
L power:+5V #PWR?
U 1 1 68A6549F
P 10050 4300
AR Path="/68A6549F" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A6549F" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 10050 4150 50  0001 C CNN
F 1 "+5V" H 10065 4473 50  0000 C CNN
F 2 "" H 10050 4300 50  0001 C CNN
F 3 "" H 10050 4300 50  0001 C CNN
	1    10050 4300
	1    0    0    -1  
$EndComp
Connection ~ 8100 5900
$Comp
L power:GNDPWR #PWR?
U 1 1 68A654AC
P 8100 5900
AR Path="/68A654AC" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A654AC" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 8100 5700 50  0001 C CNN
F 1 "GNDPWR" H 8104 5746 50  0000 C CNN
F 2 "" H 8100 5850 50  0001 C CNN
F 3 "" H 8100 5850 50  0001 C CNN
	1    8100 5900
	1    0    0    -1  
$EndComp
Connection ~ 7500 5050
Wire Wire Line
	8100 5900 8100 5850
Wire Wire Line
	7500 5900 8100 5900
Wire Wire Line
	7500 5050 7500 5900
Wire Wire Line
	7500 5050 7600 5050
Wire Wire Line
	7500 4850 7500 5050
Wire Wire Line
	7600 4850 7500 4850
Wire Wire Line
	7750 3150 7800 3150
$Comp
L Device:C_Small C?
U 1 1 68A654C1
P 7650 3150
AR Path="/68A654C1" Ref="C?"  Part="1" 
AR Path="/689FAE6F/68A654C1" Ref="C13"  Part="1" 
F 0 "C13" V 7750 2950 50  0000 L CNN
F 1 "100nF" V 7700 2950 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7650 3150 50  0001 C CNN
F 3 "~" H 7650 3150 50  0001 C CNN
	1    7650 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 68A654CE
P 7550 3650
AR Path="/68A654CE" Ref="R?"  Part="1" 
AR Path="/689FAE6F/68A654CE" Ref="R7"  Part="1" 
F 0 "R7" H 7450 3650 50  0000 C CNN
F 1 "2K" V 7550 3700 31  0000 C CNN
F 2 "Potentiometer_SMD:Potentiometer_Bourns_3224W_Vertical" V 7480 3650 50  0001 C CNN
F 3 "~" H 7550 3650 50  0001 C CNN
	1    7550 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 68A654D4
P 7550 3400
AR Path="/68A654D4" Ref="R?"  Part="1" 
AR Path="/689FAE6F/68A654D4" Ref="R6"  Part="1" 
F 0 "R6" H 7450 3400 50  0000 C CNN
F 1 "3K" V 7550 3400 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7550 3400 50  0001 C CNN
F 3 "~" H 7550 3400 50  0001 C CNN
	1    7550 3400
	1    0    0    -1  
$EndComp
Entry Wire Line
	1750 4900 1850 5000
Entry Wire Line
	1750 4800 1850 4900
Entry Wire Line
	1750 4700 1850 4800
Entry Wire Line
	1750 4600 1850 4700
Entry Wire Line
	1750 4500 1850 4600
Entry Wire Line
	1750 4400 1850 4500
Entry Wire Line
	1750 4300 1850 4400
Entry Wire Line
	1750 4200 1850 4300
Wire Wire Line
	3300 4000 3300 4500
Wire Wire Line
	3400 4000 3400 4500
Wire Wire Line
	3200 4000 3200 4500
Wire Wire Line
	3100 4000 3100 4500
Wire Wire Line
	3000 4000 3000 4500
Wire Wire Line
	2900 4000 2900 4500
Wire Wire Line
	2800 4000 2800 4500
Wire Wire Line
	2700 4500 2700 4000
Entry Wire Line
	3300 4600 3400 4500
Entry Wire Line
	3200 4600 3300 4500
Entry Wire Line
	3100 4600 3200 4500
Entry Wire Line
	3000 4600 3100 4500
Entry Wire Line
	2900 4600 3000 4500
Entry Wire Line
	2800 4600 2900 4500
Entry Wire Line
	2700 4600 2800 4500
Entry Wire Line
	2600 4600 2700 4500
Entry Bus Bus
	2600 2650 2700 2750
Wire Wire Line
	3400 2850 3400 3000
Wire Wire Line
	3300 2850 3300 3000
Wire Wire Line
	3200 2850 3200 3000
Wire Wire Line
	3100 2850 3100 3000
Wire Wire Line
	3000 2850 3000 3000
Wire Wire Line
	2900 2850 2900 3000
Wire Wire Line
	2800 2850 2800 3000
Wire Wire Line
	2700 2850 2700 3000
Entry Wire Line
	3300 2750 3400 2850
Entry Wire Line
	3200 2750 3300 2850
Entry Wire Line
	3100 2750 3200 2850
Entry Wire Line
	3000 2750 3100 2850
Entry Wire Line
	2900 2750 3000 2850
Entry Wire Line
	2800 2750 2900 2850
Entry Wire Line
	2700 2750 2800 2850
Entry Wire Line
	2600 2750 2700 2850
Entry Wire Line
	2600 1700 2700 1600
Entry Wire Line
	2600 1600 2700 1500
Entry Wire Line
	2600 1500 2700 1400
Entry Wire Line
	2600 1400 2700 1300
Entry Wire Line
	2600 1300 2700 1200
Entry Wire Line
	2600 1200 2700 1100
Entry Wire Line
	2500 1800 2600 1900
Entry Wire Line
	2500 1700 2600 1800
Entry Wire Line
	2500 1600 2600 1700
Entry Wire Line
	2500 1500 2600 1600
Entry Wire Line
	2500 1400 2600 1500
Entry Wire Line
	2500 1300 2600 1400
Entry Wire Line
	2500 1200 2600 1300
Entry Wire Line
	2500 1100 2600 1200
$Comp
L Connector_Generic:Conn_02x17_Odd_Even J?
U 1 1 68A655D9
P 1250 4100
AR Path="/68A655D9" Ref="J?"  Part="1" 
AR Path="/689FAE6F/68A655D9" Ref="J1"  Part="1" 
F 0 "J1" H 1300 5000 50  0000 C CNN
F 1 "Motherboard CN1" H 1300 5100 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x17_P2.54mm_Vertical" H 1250 4100 50  0001 C CNN
F 3 "~" H 1250 4100 50  0001 C CNN
	1    1250 4100
	1    0    0    1   
$EndComp
$Comp
L 74xx:74HC86 U?
U 5 1 68A655DF
P 2150 7200
AR Path="/68A655DF" Ref="U?"  Part="5" 
AR Path="/689FAE6F/68A655DF" Ref="U5"  Part="5" 
F 0 "U5" H 2100 7250 50  0000 L CNN
F 1 "74HCT86" H 2000 7150 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2150 7200 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 2150 7200 50  0001 C CNN
	5    2150 7200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U?
U 1 1 68A655F7
P 9050 5150
AR Path="/68A655F7" Ref="U?"  Part="1" 
AR Path="/689FAE6F/68A655F7" Ref="U5"  Part="1" 
F 0 "U5" H 9050 5150 50  0000 C CNN
F 1 "74HCT86" H 9050 4950 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9050 5150 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 9050 5150 50  0001 C CNN
	1    9050 5150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS06 U?
U 7 1 68A655FD
P 900 7200
AR Path="/68A655FD" Ref="U?"  Part="7" 
AR Path="/689FAE6F/68A655FD" Ref="U1"  Part="7" 
F 0 "U1" H 850 7250 50  0000 L CNN
F 1 "74HCT06" H 750 7150 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 900 7200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 900 7200 50  0001 C CNN
	7    900  7200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS06 U?
U 6 1 68A65603
P 9650 5500
AR Path="/68A65603" Ref="U?"  Part="6" 
AR Path="/689FAE6F/68A65603" Ref="U9"  Part="6" 
F 0 "U9" H 9600 5500 50  0000 C CNN
F 1 "74HCT06" H 9650 5300 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9650 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 9650 5500 50  0001 C CNN
	6    9650 5500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS06 U?
U 5 1 68A65609
P 9650 5150
AR Path="/68A65609" Ref="U?"  Part="5" 
AR Path="/689FAE6F/68A65609" Ref="U9"  Part="5" 
F 0 "U9" H 9600 5150 50  0000 C CNN
F 1 "74HCT06" H 9650 5350 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9650 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 9650 5150 50  0001 C CNN
	5    9650 5150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS375 U?
U 1 1 68A65627
P 8100 5050
AR Path="/68A65627" Ref="U?"  Part="1" 
AR Path="/689FAE6F/68A65627" Ref="U12"  Part="1" 
F 0 "U12" H 8100 5100 50  0000 C CNN
F 1 "74HCT375" H 8050 4950 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 8100 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS375" H 8100 5050 50  0001 C CNN
	1    8100 5050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC123 U?
U 3 1 68A6562D
P 1550 7200
AR Path="/68A6562D" Ref="U?"  Part="3" 
AR Path="/689FAE6F/68A6562D" Ref="U3"  Part="3" 
F 0 "U3" H 1500 7250 50  0000 L CNN
F 1 "74HCT123" H 1350 7150 50  0000 L CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 1550 7200 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT123.pdf" H 1550 7200 50  0001 C CNN
	3    1550 7200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC123 U?
U 2 1 68A65633
P 8300 3350
AR Path="/68A65633" Ref="U?"  Part="2" 
AR Path="/689FAE6F/68A65633" Ref="U3"  Part="2" 
F 0 "U3" H 8350 3400 50  0000 C CNN
F 1 "74HCT123" H 8300 3300 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 8300 3350 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT123.pdf" H 8300 3350 50  0001 C CNN
	2    8300 3350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC123 U?
U 1 1 68A65639
P 3850 5500
AR Path="/68A65639" Ref="U?"  Part="1" 
AR Path="/689FAE6F/68A65639" Ref="U3"  Part="1" 
F 0 "U3" H 3850 5550 50  0000 C CNN
F 1 "74HCT123" H 3850 5450 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 3850 5500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT123.pdf" H 3850 5500 50  0001 C CNN
	1    3850 5500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS373 U?
U 1 1 68A65645
P 3350 1600
AR Path="/68A65645" Ref="U?"  Part="1" 
AR Path="/689FAE6F/68A65645" Ref="U8"  Part="1" 
F 0 "U8" H 3350 1450 50  0000 C CNN
F 1 "74HCT373" H 3350 1300 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 3350 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS373" H 3350 1600 50  0001 C CNN
	1    3350 1600
	1    0    0    -1  
$EndComp
Text Label 2700 4050 1    31   ~ 0
D0
Text Label 2800 4050 1    31   ~ 0
D1
Text Label 2900 4050 1    31   ~ 0
D2
Text Label 3000 4050 1    31   ~ 0
D3
Text Label 3100 4050 1    31   ~ 0
D4
Text Label 3200 4050 1    31   ~ 0
D5
Text Label 3300 4050 1    31   ~ 0
D6
Text Label 3400 4050 1    31   ~ 0
D7
Text Label 2800 1100 0    31   ~ 0
MD0
Text Label 2800 1200 0    31   ~ 0
MD1
Text Label 2800 1300 0    31   ~ 0
MD2
Text Label 2800 1400 0    31   ~ 0
MD3
Text Label 2800 1500 0    31   ~ 0
MD4
Text Label 2800 1600 0    31   ~ 0
MD5
Text Label 2700 3000 1    31   ~ 0
MD0
Text Label 2800 3000 1    31   ~ 0
MD1
Text Label 2900 3000 1    31   ~ 0
MD2
Text Label 3000 3000 1    31   ~ 0
MD3
Text Label 3100 3000 1    31   ~ 0
MD4
Text Label 3200 3000 1    31   ~ 0
MD5
Text Label 3300 3000 1    31   ~ 0
MD6
Text Label 3400 3000 1    31   ~ 0
MD7
Connection ~ 10050 4300
Wire Wire Line
	2850 2000 2850 2050
Wire Wire Line
	8100 4350 8100 4300
Wire Wire Line
	8100 4300 8250 4300
$Comp
L 74xx:74HC245 U?
U 1 1 68A6564B
P 3200 3500
AR Path="/68A6564B" Ref="U?"  Part="1" 
AR Path="/689FAE6F/68A6564B" Ref="U7"  Part="1" 
F 0 "U7" V 3250 3550 50  0000 R CNN
F 1 "74HCT245" V 3100 3700 50  0000 R CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 3200 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 3200 3500 50  0001 C CNN
	1    3200 3500
	0    -1   -1   0   
$EndComp
Entry Wire Line
	2600 1800 2700 1700
Entry Wire Line
	2600 1900 2700 1800
Text Label 2800 1700 0    31   ~ 0
MD6
Text Label 2800 1800 0    31   ~ 0
MD7
Wire Wire Line
	2400 7700 2750 7700
Text Label 1050 2100 0    31   ~ 0
A10
Text Label 1050 2000 0    31   ~ 0
A9
Text Label 1050 1900 0    31   ~ 0
A8
Text Label 1050 1800 0    31   ~ 0
A7
Text Label 1050 1700 0    31   ~ 0
A6
Text Label 1050 1600 0    31   ~ 0
A5
Text Label 1050 1500 0    31   ~ 0
A4
Text Label 1050 1400 0    31   ~ 0
A3
Text Label 1050 1300 0    31   ~ 0
A2
Text Label 1050 1200 0    31   ~ 0
A1
Text Label 1050 1100 0    31   ~ 0
A0
Text Label 2300 1800 0    31   ~ 0
MD7
Text Label 2300 1700 0    31   ~ 0
MD6
Text Label 2300 1600 0    31   ~ 0
MD5
Text Label 2300 1500 0    31   ~ 0
MD4
Text Label 2300 1400 0    31   ~ 0
MD3
Text Label 2300 1300 0    31   ~ 0
MD2
Text Label 2300 1200 0    31   ~ 0
MD1
Text Label 2300 1100 0    31   ~ 0
MD0
Wire Wire Line
	2300 1100 2500 1100
Wire Wire Line
	2300 1200 2500 1200
Wire Wire Line
	2300 1300 2500 1300
Wire Wire Line
	2300 1400 2500 1400
Wire Wire Line
	2300 1500 2500 1500
Wire Wire Line
	2300 1600 2500 1600
Wire Wire Line
	2300 1700 2500 1700
Wire Wire Line
	2300 1800 2500 1800
Entry Wire Line
	650  1200 750  1100
Entry Wire Line
	650  1300 750  1200
Entry Wire Line
	650  1400 750  1300
Entry Wire Line
	650  1500 750  1400
Entry Wire Line
	650  1600 750  1500
Entry Wire Line
	650  1700 750  1600
Entry Wire Line
	650  1800 750  1700
Entry Wire Line
	650  1900 750  1800
Entry Wire Line
	650  2000 750  1900
Entry Wire Line
	650  2100 750  2000
Entry Wire Line
	650  2200 750  2100
Wire Wire Line
	750  1100 1100 1100
Wire Wire Line
	750  1200 1100 1200
Wire Wire Line
	750  1300 1100 1300
Wire Wire Line
	750  1400 1100 1400
Wire Wire Line
	750  1500 1100 1500
Wire Wire Line
	750  1600 1100 1600
Wire Wire Line
	750  1700 1100 1700
Wire Wire Line
	750  1800 1100 1800
Wire Wire Line
	750  1900 1100 1900
Wire Wire Line
	750  2000 1100 2000
Wire Wire Line
	750  2100 1100 2100
Wire Wire Line
	1100 2300 1050 2300
Wire Wire Line
	1700 2600 2050 2600
Wire Wire Line
	1700 1000 1700 750 
Wire Wire Line
	1700 750  1850 750 
$Comp
L Device:C_Small C?
U 1 1 68A653D9
P 1850 850
AR Path="/68A653D9" Ref="C?"  Part="1" 
AR Path="/689FAE6F/68A653D9" Ref="C3"  Part="1" 
F 0 "C3" H 1942 881 50  0000 L CNN
F 1 "100nF" H 1942 804 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1850 850 50  0001 C CNN
F 3 "~" H 1850 850 50  0001 C CNN
	1    1850 850 
	1    0    0    -1  
$EndComp
Entry Wire Line
	650  4900 750  4800
Entry Wire Line
	650  5000 750  4900
Entry Wire Line
	650  4800 750  4700
Entry Wire Line
	650  4700 750  4600
Entry Wire Line
	650  4600 750  4500
Entry Wire Line
	650  4500 750  4400
Entry Wire Line
	650  4400 750  4300
Entry Wire Line
	650  4300 750  4200
Entry Wire Line
	650  4200 750  4100
Entry Wire Line
	650  4100 750  4000
Entry Wire Line
	650  4000 750  3900
Entry Wire Line
	650  3900 750  3800
Wire Wire Line
	750  3800 1050 3800
Wire Wire Line
	750  3900 1050 3900
Wire Wire Line
	750  4000 1050 4000
Wire Wire Line
	750  4100 1050 4100
Wire Wire Line
	750  4200 1050 4200
Wire Wire Line
	750  4300 1050 4300
Wire Wire Line
	750  4400 1050 4400
Wire Wire Line
	750  4500 1050 4500
Wire Wire Line
	750  4700 1050 4700
Wire Wire Line
	750  4800 1050 4800
Wire Wire Line
	750  4900 1050 4900
Wire Wire Line
	750  4600 1050 4600
Entry Wire Line
	800  2950 900  2850
Entry Wire Line
	900  2950 1000 2850
$Comp
L power:GNDPWR #PWR?
U 1 1 68A65532
P 1700 2700
AR Path="/68A65532" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A65532" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 1700 2500 50  0001 C CNN
F 1 "GNDPWR" H 1704 2546 50  0000 C CNN
F 2 "" H 1700 2650 50  0001 C CNN
F 3 "" H 1700 2650 50  0001 C CNN
	1    1700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2300 1050 2600
$Comp
L Memory_RAM:6116 U?
U 1 1 68A655CB
P 1700 1800
AR Path="/68A655CB" Ref="U?"  Part="1" 
AR Path="/689FAE6F/68A655CB" Ref="U4"  Part="1" 
F 0 "U4" H 1700 1850 50  0000 C CNN
F 1 "6116" H 1700 1700 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 1700 1800 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/31579.pdf" H 1700 1800 50  0001 C CNN
	1    1700 1800
	1    0    0    -1  
$EndComp
Connection ~ 1700 2600
Wire Wire Line
	1700 2600 1050 2600
Wire Wire Line
	1100 2500 1000 2500
Wire Wire Line
	1000 2500 1000 2850
Wire Wire Line
	1700 2600 1700 2700
Wire Wire Line
	1100 2400 900  2400
Wire Wire Line
	900  2400 900  2850
Wire Wire Line
	1850 950  2450 950 
Wire Wire Line
	2700 1100 2850 1100
Wire Wire Line
	2700 1200 2850 1200
Wire Wire Line
	2700 1300 2850 1300
Wire Wire Line
	2700 1400 2850 1400
Wire Wire Line
	2700 1500 2850 1500
Wire Wire Line
	2700 1600 2850 1600
Wire Wire Line
	2700 1700 2850 1700
Wire Wire Line
	2700 1800 2850 1800
Wire Wire Line
	4000 3500 4000 2600
Wire Wire Line
	4000 2600 3350 2600
Entry Wire Line
	7200 4200 7300 4100
Text GLabel 6850 5600 2    39   Output ~ 0
~40~80-MODE
NoConn ~ 9050 2000
$Comp
L 74xx:74LS06 U?
U 1 1 68A65621
P 9450 1100
AR Path="/68A65621" Ref="U?"  Part="1" 
AR Path="/689FAE6F/68A65621" Ref="U9"  Part="1" 
F 0 "U9" H 9400 1100 50  0000 C CNN
F 1 "74HCT06" H 9450 1300 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9450 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 9450 1100 50  0001 C CNN
	1    9450 1100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS06 U?
U 2 1 68A6561B
P 9450 1400
AR Path="/68A6561B" Ref="U?"  Part="2" 
AR Path="/689FAE6F/68A6561B" Ref="U9"  Part="2" 
F 0 "U9" H 9400 1400 50  0000 C CNN
F 1 "74HCT06" H 9450 1626 50  0001 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9450 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 9450 1400 50  0001 C CNN
	2    9450 1400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS06 U?
U 3 1 68A65615
P 9450 1700
AR Path="/68A65615" Ref="U?"  Part="3" 
AR Path="/689FAE6F/68A65615" Ref="U1"  Part="3" 
F 0 "U1" H 9400 1700 50  0000 C CNN
F 1 "74HCT06" H 9450 1500 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9450 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 9450 1700 50  0001 C CNN
	3    9450 1700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS06 U?
U 4 1 68A6560F
P 7600 2900
AR Path="/68A6560F" Ref="U?"  Part="4" 
AR Path="/689FAE6F/68A6560F" Ref="U9"  Part="4" 
F 0 "U9" H 7550 2900 50  0000 C CNN
F 1 "74HCT06" H 7550 3100 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7600 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 7600 2900 50  0001 C CNN
	4    7600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2650 8550 2650
Wire Wire Line
	8550 2650 8550 2700
$Comp
L power:GNDPWR #PWR?
U 1 1 68A65525
P 8550 2700
AR Path="/68A65525" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A65525" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 8550 2500 50  0001 C CNN
F 1 "GNDPWR" H 8554 2546 50  0000 C CNN
F 2 "" H 8550 2650 50  0001 C CNN
F 3 "" H 8550 2650 50  0001 C CNN
	1    8550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1100 9150 1100
Wire Wire Line
	9050 1400 9150 1400
Wire Wire Line
	9050 1700 9150 1700
Wire Wire Line
	7900 2900 7900 2400
Wire Wire Line
	7900 2400 8050 2400
$Comp
L Device:R_Small R?
U 1 1 68A65514
P 8100 2900
AR Path="/68A65514" Ref="R?"  Part="1" 
AR Path="/689FAE6F/68A65514" Ref="R8"  Part="1" 
F 0 "R8" V 8000 2900 50  0000 C CNN
F 1 "1K" V 8100 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8100 2900 50  0001 C CNN
F 3 "~" H 8100 2900 50  0001 C CNN
	1    8100 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 2900 8000 2900
Connection ~ 7900 2900
$Comp
L Device:R_Small R?
U 1 1 68A6550C
P 9750 2700
AR Path="/68A6550C" Ref="R?"  Part="1" 
AR Path="/689FAE6F/68A6550C" Ref="R11"  Part="1" 
F 0 "R11" H 9900 2600 50  0000 R CNN
F 1 "220R" V 9750 2750 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9750 2700 50  0001 C CNN
F 3 "~" H 9750 2700 50  0001 C CNN
	1    9750 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 68A65506
P 9900 2700
AR Path="/68A65506" Ref="R?"  Part="1" 
AR Path="/689FAE6F/68A65506" Ref="R13"  Part="1" 
F 0 "R13" H 10050 2600 50  0000 R CNN
F 1 "220R" V 9900 2750 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9900 2700 50  0001 C CNN
F 3 "~" H 9900 2700 50  0001 C CNN
	1    9900 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 68A65500
P 10050 2700
AR Path="/68A65500" Ref="R?"  Part="1" 
AR Path="/689FAE6F/68A65500" Ref="R15"  Part="1" 
F 0 "R15" H 10200 2600 50  0000 R CNN
F 1 "220R" V 10050 2750 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10050 2700 50  0001 C CNN
F 3 "~" H 10050 2700 50  0001 C CNN
	1    10050 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9750 2600 9750 2550
$Comp
L power:+5V #PWR?
U 1 1 68A654EC
P 9350 2850
AR Path="/68A654EC" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A654EC" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 9350 2700 50  0001 C CNN
F 1 "+5V" H 9365 3023 50  0000 C CNN
F 2 "" H 9350 2850 50  0001 C CNN
F 3 "" H 9350 2850 50  0001 C CNN
	1    9350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 750  8550 800 
$Comp
L Device:C_Small C?
U 1 1 68A653C8
P 8800 750
AR Path="/68A653C8" Ref="C?"  Part="1" 
AR Path="/689FAE6F/68A653C8" Ref="C15"  Part="1" 
F 0 "C15" V 8900 600 50  0000 L CNN
F 1 "100nF" V 8750 550 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8800 750 50  0001 C CNN
F 3 "~" H 8800 750 50  0001 C CNN
	1    8800 750 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8550 750  8700 750 
Wire Wire Line
	9100 2650 8550 2650
Connection ~ 8550 2650
Wire Wire Line
	7200 4100 7200 2900
Wire Wire Line
	7100 4100 7100 2300
Text Label 7200 4100 1    31   ~ 0
~V-HBLNK~
Text Label 7100 4100 1    31   ~ 0
VIDEO
Entry Wire Line
	7200 4200 7300 4300
Wire Wire Line
	3350 750  3100 750 
Connection ~ 1850 750 
Connection ~ 2450 950 
Entry Wire Line
	4000 1100 4100 1000
Entry Wire Line
	4000 1200 4100 1100
Entry Wire Line
	4000 1300 4100 1200
Entry Wire Line
	4000 1500 4100 1400
Entry Wire Line
	4000 1600 4100 1500
Entry Wire Line
	4000 1700 4100 1600
Entry Bus Bus
	4100 600  4200 500 
Entry Wire Line
	7800 1200 7900 1100
Entry Wire Line
	7800 1300 7900 1200
Entry Wire Line
	7800 1500 7900 1400
Entry Wire Line
	7800 1600 7900 1500
Entry Wire Line
	7800 1800 7900 1700
Entry Wire Line
	7800 1900 7900 1800
Entry Bus Bus
	7700 500  7800 600 
Wire Wire Line
	7900 1100 8050 1100
Wire Wire Line
	7900 1200 8050 1200
Wire Wire Line
	7900 1400 8050 1400
Wire Wire Line
	7900 1500 8050 1500
Wire Wire Line
	7900 1700 8050 1700
Wire Wire Line
	7900 1800 8050 1800
Wire Wire Line
	3850 1100 4000 1100
Wire Wire Line
	3850 1200 4000 1200
Wire Wire Line
	3850 1300 4000 1300
Wire Wire Line
	3850 1500 4000 1500
Wire Wire Line
	3850 1600 4000 1600
Wire Wire Line
	3850 1700 4000 1700
Text Label 3850 1100 0    31   ~ 0
BkB
Text Label 3850 1200 0    31   ~ 0
BkR
Text Label 3850 1300 0    31   ~ 0
BkG
Text Label 3850 1500 0    31   ~ 0
FrB
Text Label 3850 1600 0    31   ~ 0
FrR
Text Label 3850 1700 0    31   ~ 0
FrG
Text Label 7950 1200 0    31   ~ 0
FrB
Text Label 7950 1500 0    31   ~ 0
FrR
Text Label 7950 1800 0    31   ~ 0
FrG
Text Label 7950 1100 0    31   ~ 0
BkB
Text Label 7950 1400 0    31   ~ 0
BkR
Text Label 7950 1700 0    31   ~ 0
BkG
Wire Wire Line
	8050 2000 8000 2000
Wire Wire Line
	8000 2000 8000 2100
Wire Wire Line
	8000 2100 8050 2100
Wire Wire Line
	8000 2100 8000 2650
Connection ~ 8000 2100
$Comp
L MZ80-80CLR:2732_Socket-Memory_EEPROM SK?
U 1 1 5EF47976
P 6100 3300
AR Path="/5EF47976" Ref="SK?"  Part="1" 
AR Path="/689FAE6F/5EF47976" Ref="SK1"  Part="1" 
F 0 "SK1" H 6100 3000 50  0000 C CNN
F 1 "IC15 Socket" H 6100 2800 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 6100 3300 50  0001 C CNN
F 3 "" H 6100 3300 50  0001 C CNN
	1    6100 3300
	1    0    0    -1  
$EndComp
Entry Wire Line
	5100 950  5200 850 
Entry Wire Line
	5100 1050 5200 950 
Entry Wire Line
	5100 1150 5200 1050
Entry Wire Line
	5100 1250 5200 1150
Entry Wire Line
	5100 1350 5200 1250
Entry Wire Line
	5100 1450 5200 1350
Entry Wire Line
	5100 1550 5200 1450
Entry Wire Line
	5100 1650 5200 1550
Entry Wire Line
	5100 1750 5200 1650
Entry Wire Line
	5100 1850 5200 1750
Entry Wire Line
	5100 1950 5200 1850
Entry Wire Line
	5100 2050 5200 1950
Entry Wire Line
	5100 2250 5200 2150
Entry Wire Line
	5100 2350 5200 2250
Entry Wire Line
	5100 2700 5200 2600
Entry Wire Line
	5100 2800 5200 2700
Entry Wire Line
	5100 2900 5200 2800
Entry Wire Line
	5100 3000 5200 2900
Entry Wire Line
	5100 3100 5200 3000
Entry Wire Line
	5100 3200 5200 3100
Entry Wire Line
	5100 3300 5200 3200
Entry Wire Line
	5100 3400 5200 3300
Entry Wire Line
	5100 3500 5200 3400
Entry Wire Line
	5100 3600 5200 3500
Entry Wire Line
	5100 3700 5200 3600
Entry Wire Line
	5100 3800 5200 3700
Entry Wire Line
	5100 4000 5200 3900
Entry Wire Line
	5100 4100 5200 4000
Wire Wire Line
	5200 3700 5400 3700
NoConn ~ 5200 3700
Entry Wire Line
	5000 1800 5100 1900
Text Label 3850 1400 0    31   ~ 0
CGA11
Text Label 5250 850  0    31   ~ 0
CGA0
Text Label 5250 950  0    31   ~ 0
CGA1
Text Label 5250 1050 0    31   ~ 0
CGA2
Text Label 5250 1150 0    31   ~ 0
CGA3
Text Label 5250 1250 0    31   ~ 0
CGA4
Text Label 5250 1350 0    31   ~ 0
CGA5
Text Label 5250 1450 0    31   ~ 0
CGA6
Text Label 5250 1550 0    31   ~ 0
CGA7
Text Label 5250 1650 0    31   ~ 0
CGA8
Text Label 5250 1750 0    31   ~ 0
CGA9
Text Label 5250 1850 0    31   ~ 0
CGA10
Text Label 5250 1950 0    31   ~ 0
CGA11
Text Label 5250 2150 0    31   ~ 0
CGA13
Text Label 5250 2250 0    31   ~ 0
CGA14
Text Label 5250 2600 0    31   ~ 0
CGA0
Text Label 5250 2700 0    31   ~ 0
CGA1
Text Label 5250 2800 0    31   ~ 0
CGA2
Text Label 5250 2900 0    31   ~ 0
CGA3
Text Label 5250 3000 0    31   ~ 0
CGA4
Text Label 5250 3100 0    31   ~ 0
CGA5
Text Label 5250 3200 0    31   ~ 0
CGA6
Text Label 5250 3300 0    31   ~ 0
CGA7
Text Label 5250 3400 0    31   ~ 0
CGA8
Text Label 5250 3500 0    31   ~ 0
CGA9
Text Label 5250 3600 0    31   ~ 0
CGA10
Text Label 5250 3900 0    31   ~ 0
~CGCS1~
Text Label 5250 4000 0    31   ~ 0
~CGCS2~
Wire Wire Line
	6100 4100 6100 4150
Wire Wire Line
	6150 700  6150 750 
Wire Wire Line
	7600 5450 7550 5450
Wire Wire Line
	7550 5450 7550 4300
Wire Wire Line
	7550 4300 8100 4300
Connection ~ 8100 4300
Connection ~ 8250 4300
Wire Wire Line
	8250 4300 8300 4300
Wire Wire Line
	8250 4500 8800 4500
Wire Wire Line
	7550 3250 7550 3300
Wire Wire Line
	7300 4300 7300 4650
Connection ~ 7450 4650
Wire Wire Line
	900  3400 900  3000
Wire Wire Line
	900  3000 1050 3000
Wire Wire Line
	1050 3000 1050 2600
Wire Wire Line
	900  3400 1050 3400
Connection ~ 1050 2600
$Comp
L 74xx:74LS133 U2
U 1 1 600E5B08
P 1200 5900
F 0 "U2" H 1200 5900 50  0000 C CIN
F 1 "74ALS133" H 1250 5700 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 1200 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS133" H 1200 5900 50  0001 C CNN
	1    1200 5900
	1    0    0    -1  
$EndComp
Entry Bus Bus
	1850 4100 1950 4200
Entry Bus Bus
	1850 4500 1950 4600
Entry Wire Line
	650  5400 750  5300
Entry Wire Line
	650  5500 750  5400
Entry Wire Line
	650  5600 750  5500
Entry Wire Line
	650  5700 750  5600
Entry Wire Line
	650  5800 750  5700
Entry Wire Line
	650  5900 750  5800
Entry Wire Line
	650  6000 750  5900
Entry Wire Line
	650  6100 750  6000
Entry Wire Line
	650  6200 750  6100
Entry Wire Line
	650  6300 750  6200
Entry Wire Line
	650  6400 750  6300
Wire Wire Line
	750  5300 900  5300
Wire Wire Line
	750  5400 900  5400
Wire Wire Line
	750  5500 900  5500
Wire Wire Line
	750  5600 900  5600
Wire Wire Line
	750  5700 900  5700
Wire Wire Line
	750  5800 900  5800
Wire Wire Line
	750  5900 900  5900
Wire Wire Line
	750  6000 900  6000
Wire Wire Line
	750  6100 900  6100
Wire Wire Line
	750  6200 900  6200
Wire Wire Line
	750  6300 900  6300
Text Label 850  5300 0    31   ~ 0
A10
Text Label 850  5400 0    31   ~ 0
A9
Text Label 850  5500 0    31   ~ 0
A8
Text Label 850  5600 0    31   ~ 0
A7
Text Label 850  5700 0    31   ~ 0
A6
Text Label 850  5800 0    31   ~ 0
A5
Text Label 850  5900 0    31   ~ 0
A4
Text Label 850  6000 0    31   ~ 0
A3
Text Label 850  6100 0    31   ~ 0
A2
Text Label 850  6200 0    31   ~ 0
A1
Text Label 850  6300 0    31   ~ 0
A0
$Comp
L 74xx:74LS133 U2
U 2 1 6048CCA9
P 2750 7200
F 0 "U2" H 2700 7250 50  0000 L CNN
F 1 "74ALS133" H 2550 7150 50  0000 L CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2750 7200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS133" H 2750 7200 50  0001 C CNN
	2    2750 7200
	1    0    0    -1  
$EndComp
Connection ~ 2750 7700
Wire Wire Line
	2750 7700 3000 7700
Connection ~ 2400 6700
$Comp
L Device:C_Small C?
U 1 1 6052E88B
P 3000 6800
AR Path="/6052E88B" Ref="C?"  Part="1" 
AR Path="/689FAE6F/6052E88B" Ref="C6"  Part="1" 
F 0 "C6" H 3050 6850 50  0000 L CNN
F 1 "100nF" H 3050 6750 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3000 6800 50  0001 C CNN
F 3 "~" H 3000 6800 50  0001 C CNN
	1    3000 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6700 3000 6700
Connection ~ 2750 6700
Wire Wire Line
	3000 6900 3000 7700
Connection ~ 3000 7700
Wire Wire Line
	750  6400 900  6400
$Comp
L Device:R_Small R?
U 1 1 60AF0739
P 5400 6050
AR Path="/60AF0739" Ref="R?"  Part="1" 
AR Path="/689FAE6F/60AF0739" Ref="R4"  Part="1" 
F 0 "R4" H 5300 6050 50  0000 C CNN
F 1 "10K" V 5400 6050 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5400 6050 50  0001 C CNN
F 3 "~" H 5400 6050 50  0001 C CNN
	1    5400 6050
	1    0    0    -1  
$EndComp
Entry Wire Line
	2150 4300 2250 4200
Entry Wire Line
	2550 4300 2650 4200
Text Label 2150 4350 2    31   ~ 0
~CS~
Text Label 2550 4350 2    31   ~ 0
~WR~
$Comp
L Memory_EEPROM:28C256T2 U10
U 1 1 60FF7C1B
P 6150 1750
F 0 "U10" H 6150 1900 50  0000 C CNN
F 1 "28C256T2" H 6200 1750 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 6150 1750 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 6150 1750 50  0001 C CNN
	1    6150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 850  5750 850 
Wire Wire Line
	5200 950  5750 950 
Wire Wire Line
	5200 1050 5750 1050
Wire Wire Line
	5200 1150 5750 1150
Wire Wire Line
	5200 1250 5750 1250
Wire Wire Line
	5200 1350 5750 1350
Wire Wire Line
	5200 1450 5750 1450
Wire Wire Line
	5200 1550 5750 1550
Wire Wire Line
	5200 1650 5750 1650
Wire Wire Line
	5200 1750 5750 1750
Wire Wire Line
	5200 1850 5750 1850
Wire Wire Line
	5200 1950 5750 1950
Wire Wire Line
	2450 950  2450 2450
Wire Wire Line
	2450 2450 3350 2450
Connection ~ 2450 2450
Wire Wire Line
	2450 2450 2450 2600
Connection ~ 3350 2450
Wire Wire Line
	3350 2450 3350 2400
$Comp
L Device:R_Small R?
U 1 1 617682DC
P 6650 1750
AR Path="/617682DC" Ref="R?"  Part="1" 
AR Path="/689FAE6F/617682DC" Ref="R5"  Part="1" 
F 0 "R5" H 6550 1750 50  0000 C CNN
F 1 "10K" V 6650 1750 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6650 1750 50  0001 C CNN
F 3 "~" H 6650 1750 50  0001 C CNN
	1    6650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1850 6650 2050
Wire Wire Line
	6650 2050 6550 2050
$Comp
L Device:C_Small C?
U 1 1 617C771B
P 5650 650
AR Path="/617C771B" Ref="C?"  Part="1" 
AR Path="/689FAE6F/617C771B" Ref="C11"  Part="1" 
F 0 "C11" H 5400 700 50  0000 L CNN
F 1 "100nF" H 5400 650 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5650 650 50  0001 C CNN
F 3 "~" H 5650 650 50  0001 C CNN
	1    5650 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 650  6150 550 
Wire Wire Line
	6150 550  6650 550 
Wire Wire Line
	6650 550  6650 1650
Connection ~ 6150 550 
Wire Wire Line
	5650 750  5650 2450
NoConn ~ 5200 3900
NoConn ~ 5200 4000
Wire Wire Line
	6550 2150 6650 2150
Wire Wire Line
	6650 2150 6650 2250
Wire Wire Line
	6650 2450 6150 2450
Connection ~ 6150 2450
Wire Wire Line
	6550 2250 6650 2250
Connection ~ 6650 2250
Wire Wire Line
	6650 2250 6650 2450
Entry Bus Bus
	5400 4600 5500 4700
Entry Wire Line
	5600 4900 5500 4800
Entry Wire Line
	5600 4900 5500 4800
Entry Wire Line
	5600 5000 5500 4900
Entry Wire Line
	5600 5100 5500 5000
Entry Wire Line
	5600 5200 5500 5100
Entry Wire Line
	5600 5300 5500 5200
Entry Wire Line
	5600 5400 5500 5300
Entry Wire Line
	5600 5500 5500 5400
Entry Wire Line
	5600 5600 5500 5500
Wire Wire Line
	5600 4900 5650 4900
Wire Wire Line
	5600 5000 5650 5000
Wire Wire Line
	5600 5100 5650 5100
Wire Wire Line
	5600 5200 5650 5200
Wire Wire Line
	5600 5300 5650 5300
Wire Wire Line
	5600 5400 5650 5400
Wire Wire Line
	5600 5500 5650 5500
Wire Wire Line
	5600 5600 5650 5600
Text Label 5600 4900 0    31   ~ 0
D0
Text Label 5600 5000 0    31   ~ 0
D1
Text Label 5600 5100 0    31   ~ 0
D2
Text Label 5600 5200 0    31   ~ 0
D3
Text Label 5600 5300 0    31   ~ 0
D4
Text Label 5600 5400 0    31   ~ 0
D5
Text Label 5600 5500 0    31   ~ 0
D6
Text Label 5600 5600 0    31   ~ 0
D7
$Comp
L Device:C_Small C?
U 1 1 60DE092C
P 6000 6250
AR Path="/60DE092C" Ref="C?"  Part="1" 
AR Path="/689FAE6F/60DE092C" Ref="C12"  Part="1" 
F 0 "C12" V 5900 6150 50  0000 L CNN
F 1 "100nF" V 6100 6150 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6000 6250 50  0001 C CNN
F 3 "~" H 6000 6250 50  0001 C CNN
	1    6000 6250
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61F2FB6C
P 6150 4550
AR Path="/61F2FB6C" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/61F2FB6C" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 6150 4400 50  0001 C CNN
F 1 "+5V" H 6250 4600 50  0000 C CNN
F 2 "" H 6150 4550 50  0001 C CNN
F 3 "" H 6150 4550 50  0001 C CNN
	1    6150 4550
	1    0    0    -1  
$EndComp
Entry Wire Line
	6800 5500 6900 5400
Entry Wire Line
	6800 5400 6900 5300
Entry Wire Line
	6800 5300 6900 5200
Wire Wire Line
	6650 4900 6800 4900
Wire Wire Line
	6650 5000 6800 5000
Wire Wire Line
	6650 5100 6800 5100
Text Label 3850 1800 0    31   ~ 0
CGA12
Text Label 6650 4900 0    31   ~ 0
CGA13
Text Label 6650 5000 0    31   ~ 0
CGA14
Entry Wire Line
	5100 2150 5200 2050
Wire Wire Line
	5200 2050 5750 2050
Wire Wire Line
	5200 2150 5750 2150
Wire Wire Line
	5200 2250 5750 2250
Text Label 5250 2050 0    31   ~ 0
CGA12
Wire Wire Line
	8550 750  8550 550 
Wire Wire Line
	8550 550  6650 550 
Connection ~ 8550 750 
Connection ~ 6650 550 
Wire Wire Line
	8900 750  9100 750 
Wire Wire Line
	9100 750  9100 2050
Wire Wire Line
	1550 3400 2050 3400
Wire Wire Line
	2050 3400 2050 2600
Connection ~ 2050 2600
Wire Wire Line
	2050 2600 2450 2600
Wire Wire Line
	9750 2800 9750 2900
Wire Wire Line
	9900 2800 9900 2900
Wire Wire Line
	10050 2800 10050 2900
Connection ~ 9750 2900
Wire Wire Line
	9750 2900 9900 2900
Wire Wire Line
	9900 1400 9750 1400
Connection ~ 9900 2900
Wire Wire Line
	10050 1100 9750 1100
Wire Wire Line
	9900 2900 10050 2900
Text Label 9750 1050 0    39   ~ 0
B
Text Label 9750 1350 0    39   ~ 0
R
Text Label 9750 1650 0    39   ~ 0
G
$Comp
L Transistor_BJT:BC307 Q1
U 1 1 5F6E5CFD
P 10650 1400
F 0 "Q1" H 10600 1150 50  0000 L CNN
F 1 "BC307" H 10500 1250 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10850 1325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/BC307-D.PDF" H 10650 1400 50  0001 L CNN
	1    10650 1400
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F6EB43F
P 10250 1400
AR Path="/5F6EB43F" Ref="R?"  Part="1" 
AR Path="/689FAE6F/5F6EB43F" Ref="R18"  Part="1" 
F 0 "R18" V 10150 1450 50  0000 R CNN
F 1 "2K2" V 10250 1450 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10250 1400 50  0001 C CNN
F 3 "~" H 10250 1400 50  0001 C CNN
	1    10250 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F6EC67F
P 10250 1100
AR Path="/5F6EC67F" Ref="R?"  Part="1" 
AR Path="/689FAE6F/5F6EC67F" Ref="R17"  Part="1" 
F 0 "R17" V 10150 1150 50  0000 R CNN
F 1 "3K9" V 10250 1150 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10250 1100 50  0001 C CNN
F 3 "~" H 10250 1100 50  0001 C CNN
	1    10250 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F6ECB08
P 10250 1700
AR Path="/5F6ECB08" Ref="R?"  Part="1" 
AR Path="/689FAE6F/5F6ECB08" Ref="R19"  Part="1" 
F 0 "R19" V 10150 1750 50  0000 R CNN
F 1 "1K" V 10250 1700 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10250 1700 50  0001 C CNN
F 3 "~" H 10250 1700 50  0001 C CNN
	1    10250 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 1100 10150 1100
Connection ~ 10050 1100
Wire Wire Line
	9900 1400 10150 1400
Connection ~ 9900 1400
Wire Wire Line
	9750 1700 10150 1700
Connection ~ 9750 1700
Wire Wire Line
	10350 1700 10450 1700
Wire Wire Line
	10450 1700 10450 1400
Wire Wire Line
	10450 1400 10450 1100
Wire Wire Line
	10450 1100 10350 1100
Connection ~ 10450 1400
Wire Wire Line
	10350 1400 10450 1400
$Comp
L Device:R_Small R?
U 1 1 5F830F65
P 10450 1900
AR Path="/5F830F65" Ref="R?"  Part="1" 
AR Path="/689FAE6F/5F830F65" Ref="R21"  Part="1" 
F 0 "R21" H 10650 1900 50  0000 R CNN
F 1 "220R" V 10450 1950 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10450 1900 50  0001 C CNN
F 3 "~" H 10450 1900 50  0001 C CNN
	1    10450 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	10450 1800 10450 1700
Connection ~ 10450 1700
Wire Wire Line
	7450 6150 8350 6150
Wire Wire Line
	7450 6150 7450 6350
Connection ~ 7450 6150
$Comp
L Connector_Generic:Conn_01x10 J2
U 1 1 5FA8230F
P 10900 5200
F 0 "J2" H 10850 5700 50  0000 L CNN
F 1 "Video Out" H 10750 4600 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 10900 5200 50  0001 C CNN
F 3 "~" H 10900 5200 50  0001 C CNN
	1    10900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 6150 10400 5500
Wire Wire Line
	10400 5500 10700 5500
Wire Wire Line
	10450 6350 10450 5600
Wire Wire Line
	10450 5600 10700 5600
$Comp
L 74xx:74LS06 U1
U 1 1 5F99AD70
P 8650 6150
F 0 "U1" H 8600 6150 50  0000 C CNN
F 1 "74HCT06" H 8750 6000 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8650 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 8650 6150 50  0001 C CNN
	1    8650 6150
	1    0    0    -1  
$EndComp
Text Label 11000 5600 0    39   ~ 0
CSYNC
$Comp
L 74xx:74LS06 U1
U 2 1 5FC8C94D
P 8000 6350
F 0 "U1" H 7950 6350 50  0000 C CNN
F 1 "74HCT06" H 8100 6200 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8000 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 8000 6350 50  0001 C CNN
	2    8000 6350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS06 U9
U 3 1 5FC8E463
P 9550 6350
F 0 "U9" H 9500 6350 50  0000 C CNN
F 1 "74HCT06" H 9650 6200 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9550 6350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 9550 6350 50  0001 C CNN
	3    9550 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 6350 7700 6350
Wire Wire Line
	8300 6350 9050 6350
Wire Wire Line
	9850 6350 10450 6350
$Comp
L Device:R_Small R?
U 1 1 5FE55BD5
P 9050 6000
AR Path="/5FE55BD5" Ref="R?"  Part="1" 
AR Path="/689FAE6F/5FE55BD5" Ref="R9"  Part="1" 
F 0 "R9" H 9150 5900 50  0000 R CNN
F 1 "220R" V 9050 6050 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9050 6000 50  0001 C CNN
F 3 "~" H 9050 6000 50  0001 C CNN
	1    9050 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FE568FB
P 9350 6000
AR Path="/5FE568FB" Ref="R?"  Part="1" 
AR Path="/689FAE6F/5FE568FB" Ref="R10"  Part="1" 
F 0 "R10" H 9450 5900 50  0000 R CNN
F 1 "220R" V 9350 6050 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9350 6000 50  0001 C CNN
F 3 "~" H 9350 6000 50  0001 C CNN
	1    9350 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FE56AE4
P 9850 6000
AR Path="/5FE56AE4" Ref="R?"  Part="1" 
AR Path="/689FAE6F/5FE56AE4" Ref="R12"  Part="1" 
F 0 "R12" H 9950 5900 50  0000 R CNN
F 1 "220R" V 9850 6050 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9850 6000 50  0001 C CNN
F 3 "~" H 9850 6000 50  0001 C CNN
	1    9850 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9050 6100 9050 6350
Connection ~ 9050 6350
Wire Wire Line
	9050 6350 9250 6350
Wire Wire Line
	9350 6100 9350 6150
Wire Wire Line
	9850 6100 9850 6350
Connection ~ 9850 6350
Wire Wire Line
	8100 5900 8200 5900
Wire Wire Line
	8200 5900 8200 5750
Wire Wire Line
	8200 5750 8800 5750
Wire Wire Line
	9050 5900 9050 5850
Wire Wire Line
	9350 5850 9350 5900
Wire Wire Line
	9850 5850 9850 5900
Connection ~ 9350 5850
Wire Wire Line
	9350 5850 9850 5850
Connection ~ 9350 6150
Wire Wire Line
	9350 6150 10400 6150
Wire Wire Line
	9050 5850 9350 5850
Wire Wire Line
	8950 6150 9350 6150
Connection ~ 9350 4300
Wire Wire Line
	9350 4300 10050 4300
Wire Wire Line
	3000 7700 3350 7700
$Comp
L 74xx:74LS06 U?
U 7 1 601FD9B5
P 3350 7200
AR Path="/601FD9B5" Ref="U?"  Part="7" 
AR Path="/689FAE6F/601FD9B5" Ref="U9"  Part="7" 
F 0 "U9" H 3250 7250 50  0000 L CNN
F 1 "74HCT06" H 3200 7150 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3350 7200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 3350 7200 50  0001 C CNN
	7    3350 7200
	1    0    0    -1  
$EndComp
Connection ~ 3350 7700
Wire Wire Line
	3350 7700 3600 7700
$Comp
L Device:C_Small C?
U 1 1 601FEDC1
P 3600 6800
AR Path="/601FEDC1" Ref="C?"  Part="1" 
AR Path="/689FAE6F/601FEDC1" Ref="C9"  Part="1" 
F 0 "C9" H 3400 6850 50  0000 L CNN
F 1 "100nF" H 3400 6750 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3600 6800 50  0001 C CNN
F 3 "~" H 3600 6800 50  0001 C CNN
	1    3600 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6700 3250 6700
Connection ~ 3000 6700
Connection ~ 3350 6700
Wire Wire Line
	3350 6700 3600 6700
Wire Wire Line
	3600 6900 3600 7700
Connection ~ 3600 7700
$Comp
L Jumper:Jumper_3_Open JP1
U 1 1 6050B6A1
P 10450 2200
F 0 "JP1" H 10550 2150 50  0000 C CNN
F 1 "C Sync" H 10450 2300 50  0000 C CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_1x03_P2.00mm_Vertical" H 10450 2200 50  0001 C CNN
F 3 "~" H 10450 2200 50  0001 C CNN
	1    10450 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	10450 2000 10450 2050
Wire Wire Line
	10400 5500 10400 2400
Wire Wire Line
	10400 2400 10150 2400
Wire Wire Line
	10150 2400 10150 2200
Wire Wire Line
	10150 2200 10200 2200
Connection ~ 10400 5500
Wire Wire Line
	10450 5600 10450 2400
Wire Wire Line
	10450 2400 10750 2400
Wire Wire Line
	10750 2400 10750 2200
Wire Wire Line
	10750 2200 10700 2200
Connection ~ 10450 5600
$Comp
L Device:R_Small R?
U 1 1 605FF538
P 10750 950
AR Path="/605FF538" Ref="R?"  Part="1" 
AR Path="/689FAE6F/605FF538" Ref="R23"  Part="1" 
F 0 "R23" H 10950 900 50  0000 R CNN
F 1 "68R" V 10750 1000 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10750 950 50  0001 C CNN
F 3 "~" H 10750 950 50  0001 C CNN
	1    10750 950 
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60600D5F
P 10450 950
AR Path="/60600D5F" Ref="R?"  Part="1" 
AR Path="/689FAE6F/60600D5F" Ref="R20"  Part="1" 
F 0 "R20" H 10650 900 50  0000 R CNN
F 1 "1K" V 10450 1000 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10450 950 50  0001 C CNN
F 3 "~" H 10450 950 50  0001 C CNN
	1    10450 950 
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6063C63F
P 10600 1700
AR Path="/6063C63F" Ref="R?"  Part="1" 
AR Path="/689FAE6F/6063C63F" Ref="R22"  Part="1" 
F 0 "R22" V 10500 1750 50  0000 R CNN
F 1 "220R" V 10600 1750 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10600 1700 50  0001 C CNN
F 3 "~" H 10600 1700 50  0001 C CNN
	1    10600 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6063CCC0
P 10950 1150
AR Path="/6063CCC0" Ref="R?"  Part="1" 
AR Path="/689FAE6F/6063CCC0" Ref="R24"  Part="1" 
F 0 "R24" V 11050 1200 50  0000 R CNN
F 1 "68R" V 10950 1200 31  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10950 1150 50  0001 C CNN
F 3 "~" H 10950 1150 50  0001 C CNN
	1    10950 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10750 1050 10750 1150
Wire Wire Line
	10750 1150 10850 1150
Connection ~ 10750 1150
Wire Wire Line
	10750 1150 10750 1200
Wire Wire Line
	10750 1600 10750 1700
Wire Wire Line
	10750 1700 10700 1700
Wire Wire Line
	10450 1050 10450 1100
Connection ~ 10450 1100
Wire Wire Line
	10450 850  10450 750 
Wire Wire Line
	10750 750  10750 850 
Wire Wire Line
	10450 750  10600 750 
Wire Wire Line
	10600 750  10600 550 
Wire Wire Line
	10600 550  8550 550 
Connection ~ 10600 750 
Wire Wire Line
	10600 750  10750 750 
Connection ~ 8550 550 
Wire Wire Line
	10750 2050 10750 1700
Connection ~ 10750 1700
Wire Wire Line
	10450 1700 10500 1700
Wire Wire Line
	10650 5000 10700 5000
Wire Wire Line
	10600 5100 10700 5100
Wire Wire Line
	10050 1100 10050 2450
Wire Wire Line
	10650 2450 10050 2450
Wire Wire Line
	10650 2450 10650 5000
Connection ~ 10050 2450
Wire Wire Line
	10050 2450 10050 2600
Wire Wire Line
	9900 1400 9900 2500
Wire Wire Line
	10600 2500 9900 2500
Wire Wire Line
	10600 2500 10600 5100
Connection ~ 9900 2500
Wire Wire Line
	9900 2500 9900 2600
Wire Wire Line
	9750 2550 10550 2550
Wire Wire Line
	10550 2550 10550 5200
Wire Wire Line
	10550 5200 10700 5200
Connection ~ 9750 2550
Wire Wire Line
	9750 2550 9750 1700
Wire Wire Line
	10500 5150 10500 5300
Wire Wire Line
	10500 5300 10700 5300
Wire Wire Line
	9950 5150 10500 5150
Wire Wire Line
	10150 5400 10700 5400
Connection ~ 10150 5400
Wire Wire Line
	10150 5400 10150 4900
Wire Wire Line
	11050 1150 11100 1150
Wire Wire Line
	11100 1150 11100 4400
Wire Wire Line
	11100 4400 10300 4400
Wire Wire Line
	10300 4400 10300 5700
Wire Wire Line
	10300 5700 10700 5700
Text Label 11000 5700 0    39   ~ 0
Composite
$Comp
L 74xx:74LS06 U1
U 4 1 60D91AA8
P 1850 5500
F 0 "U1" H 1800 5500 50  0000 C CIN
F 1 "74HCT06" H 1900 5700 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1850 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 1850 5500 50  0001 C CNN
	4    1850 5500
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS06 U1
U 5 1 60E58A37
P 4600 7350
F 0 "U1" H 4550 7350 50  0000 C CIN
F 1 "74HCT06" H 4750 7500 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4600 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 4600 7350 50  0001 C CNN
	5    4600 7350
	1    0    0    1   
$EndComp
Wire Wire Line
	750  6400 750  6500
Connection ~ 3600 6700
$Comp
L Device:R_Small R?
U 1 1 615661D1
P 2150 6550
AR Path="/615661D1" Ref="R?"  Part="1" 
AR Path="/689FAE6F/615661D1" Ref="R1"  Part="1" 
F 0 "R1" H 2050 6550 50  0000 C CIN
F 1 "1K" V 2150 6550 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2150 6550 50  0001 C CNN
F 3 "~" H 2150 6550 50  0001 C CNN
	1    2150 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2900 9350 2900
Wire Wire Line
	9100 2050 10750 2050
Connection ~ 9100 2050
Wire Wire Line
	9100 2050 9100 2650
Wire Wire Line
	9350 2850 9350 2900
Connection ~ 9350 2900
Wire Wire Line
	9350 2900 9750 2900
Wire Wire Line
	8800 4500 8800 5750
Connection ~ 8800 5750
Wire Wire Line
	8800 5750 10350 5750
Entry Wire Line
	5000 1700 5100 1800
Text GLabel 2800 2050 0    39   Input ~ 0
Load
Wire Wire Line
	2800 2050 2850 2050
Connection ~ 2850 2050
Wire Wire Line
	2850 2050 2850 2100
NoConn ~ 1550 4100
Wire Wire Line
	4050 1400 4050 1700
Wire Wire Line
	3850 1400 4050 1400
Entry Wire Line
	6800 5200 6900 5100
Entry Wire Line
	6800 5100 6900 5000
Entry Wire Line
	6800 5000 6900 4900
Entry Wire Line
	6800 4900 6900 4800
Wire Wire Line
	6650 5200 6800 5200
Wire Wire Line
	6650 5300 6800 5300
Wire Wire Line
	6650 5400 6800 5400
Wire Wire Line
	6650 5500 6800 5500
Text Notes 3700 2100 0    31   ~ 0
MZ80A was Foreground D0=B, D1=G, D2=R\nBackground D3=B, D4=G, D5=R\nD6:D7 = 00 = light, 11 = dark\nNeed mux for the different modes.
Text Notes 3700 2350 0    31   ~ 0
MZ700 D7 = Upper CGROM, D3=unused\nBackground D0=B, D1=R, D2 = G\nForeground D4=B, D5=R, D6 = G\n
Wire Wire Line
	600  3700 1050 3700
Wire Wire Line
	600  3600 1050 3600
Wire Wire Line
	600  3500 1050 3500
Entry Wire Line
	500  3800 600  3700
Entry Wire Line
	500  3700 600  3600
Entry Wire Line
	500  3600 600  3500
Connection ~ 3100 750 
Wire Wire Line
	3100 750  1850 750 
Wire Wire Line
	3100 950  2450 950 
Wire Wire Line
	3350 750  4500 750 
NoConn ~ 6650 5100
NoConn ~ 6650 5200
NoConn ~ 6650 5300
NoConn ~ 6650 5400
NoConn ~ 6650 5500
Connection ~ 8550 2700
$Comp
L 74xx:74LS158 U?
U 1 1 68A6563F
P 8550 1700
AR Path="/68A6563F" Ref="U?"  Part="1" 
AR Path="/689FAE6F/68A6563F" Ref="U13"  Part="1" 
F 0 "U13" H 8550 1650 50  0000 C CNN
F 1 "74HCT158" H 8550 1500 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 8550 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS158" H 8550 1700 50  0001 C CNN
	1    8550 1700
	1    0    0    -1  
$EndComp
Wire Bus Line
	4200 500  7700 500 
Connection ~ 5650 550 
Wire Wire Line
	5650 550  6150 550 
Wire Wire Line
	4500 550  4800 550 
Connection ~ 5650 2450
Wire Wire Line
	5650 2450 6150 2450
Wire Wire Line
	3850 1800 5000 1800
Wire Wire Line
	4050 1700 5000 1700
Wire Wire Line
	5400 5900 5650 5900
Wire Wire Line
	7700 3450 7800 3450
Wire Wire Line
	7800 3550 7800 3850
Wire Wire Line
	7400 5550 7600 5550
Wire Wire Line
	3350 2450 4750 2450
Wire Wire Line
	4800 2500 6100 2500
Wire Wire Line
	4800 2500 4800 550 
Connection ~ 4800 550 
Wire Wire Line
	4800 550  5650 550 
Wire Wire Line
	4500 750  4500 550 
Wire Wire Line
	5200 3600 5400 3600
Wire Wire Line
	5200 3500 5400 3500
Wire Wire Line
	5200 3400 5400 3400
Wire Wire Line
	5200 3300 5400 3300
Wire Wire Line
	5200 3200 5400 3200
Wire Wire Line
	5200 3100 5400 3100
Wire Wire Line
	5200 3000 5400 3000
Wire Wire Line
	5200 2900 5400 2900
Wire Wire Line
	5200 2800 5400 2800
Wire Wire Line
	5200 2700 5400 2700
Wire Wire Line
	5200 2600 5400 2600
Wire Wire Line
	5200 3900 5400 3900
Wire Wire Line
	5200 4000 5400 4000
Wire Wire Line
	4750 2450 4750 4150
Connection ~ 4750 2450
Wire Wire Line
	4750 2450 5650 2450
Wire Wire Line
	4750 4150 6100 4150
$Comp
L 74xx:74LS273 U11
U 1 1 6088C6F2
P 6150 5400
F 0 "U11" H 6150 5500 50  0000 C CNN
F 1 "74HCT273" H 6150 5100 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 6150 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 6150 5400 50  0001 C CNN
	1    6150 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 6200 6150 6250
Wire Wire Line
	6150 6250 6100 6250
Wire Wire Line
	6150 6250 6150 7700
Connection ~ 6150 6250
Wire Wire Line
	6150 4600 6150 4550
Connection ~ 7550 3250
Wire Wire Line
	7550 3250 7800 3250
Wire Wire Line
	7550 3250 7550 3150
Connection ~ 8300 4300
Wire Wire Line
	8300 4300 9350 4300
Wire Wire Line
	8300 3850 8300 4300
Wire Wire Line
	7550 3800 7550 4300
Connection ~ 7550 4300
Wire Wire Line
	7400 3950 8950 3950
Wire Wire Line
	8950 3150 8800 3150
Wire Wire Line
	7500 4850 7500 4200
Wire Wire Line
	7500 4200 7700 4200
Wire Wire Line
	7700 4200 7700 3450
Connection ~ 7500 4850
Entry Wire Line
	6950 850  7050 950 
Entry Wire Line
	6950 950  7050 1050
Entry Wire Line
	6950 1050 7050 1150
Entry Wire Line
	6950 1150 7050 1250
Entry Wire Line
	6950 1250 7050 1350
Entry Wire Line
	6950 1350 7050 1450
Entry Wire Line
	6950 1450 7050 1550
Entry Wire Line
	6950 1550 7050 1650
Entry Wire Line
	6950 2600 7050 2700
Entry Wire Line
	6950 2700 7050 2800
Entry Wire Line
	6950 2800 7050 2900
Entry Wire Line
	6950 2900 7050 3000
Entry Wire Line
	6950 3000 7050 3100
Entry Wire Line
	6950 3100 7050 3200
Entry Wire Line
	6950 3200 7050 3300
Entry Wire Line
	6950 3300 7050 3400
Wire Wire Line
	6800 2600 6950 2600
Wire Wire Line
	6800 2700 6950 2700
Wire Wire Line
	6800 2800 6950 2800
Wire Wire Line
	6800 2900 6950 2900
Wire Wire Line
	6800 3000 6950 3000
Wire Wire Line
	6800 3100 6950 3100
Wire Wire Line
	6800 3200 6950 3200
Wire Wire Line
	6800 3300 6950 3300
Text Label 6800 850  0    31   ~ 0
CGD0
Text Label 6800 950  0    31   ~ 0
CGD1
Text Label 6800 1050 0    31   ~ 0
CGD2
Text Label 6800 1150 0    31   ~ 0
CGD3
Text Label 6800 1250 0    31   ~ 0
CGD4
Text Label 6800 1350 0    31   ~ 0
CGD5
Text Label 6800 1450 0    31   ~ 0
CGD6
Text Label 6800 1550 0    31   ~ 0
CGD7
Text Label 6800 2600 0    31   ~ 0
CGD0
Text Label 6800 2700 0    31   ~ 0
CGD1
Text Label 6800 2800 0    31   ~ 0
CGD2
Text Label 6800 2900 0    31   ~ 0
CGD3
Text Label 6800 3000 0    31   ~ 0
CGD4
Text Label 6800 3100 0    31   ~ 0
CGD5
Text Label 6800 3200 0    31   ~ 0
CGD6
Text Label 6800 3300 0    31   ~ 0
CGD7
Wire Wire Line
	6550 850  6950 850 
Wire Wire Line
	6550 950  6950 950 
Wire Wire Line
	6550 1050 6950 1050
Wire Wire Line
	6550 1150 6950 1150
Wire Wire Line
	6550 1250 6950 1250
Wire Wire Line
	6550 1350 6950 1350
Wire Wire Line
	6550 1450 6950 1450
Wire Wire Line
	6550 1550 6950 1550
Entry Wire Line
	7100 4200 7200 4100
Wire Wire Line
	7200 2900 7300 2900
Wire Wire Line
	7100 2300 8050 2300
Wire Wire Line
	7300 4100 7300 3850
Wire Wire Line
	7300 3850 7800 3850
Wire Wire Line
	8950 3950 8950 3150
Wire Wire Line
	7400 3950 7400 5550
Wire Wire Line
	7300 4650 7450 4650
Entry Bus Bus
	5100 4250 5200 4350
Entry Bus Bus
	6800 4350 6900 4450
Wire Bus Line
	5200 4350 6800 4350
Wire Wire Line
	5400 6700 5400 6250
Wire Wire Line
	3600 6700 3950 6700
Wire Wire Line
	5900 6250 5400 6250
Connection ~ 5400 6250
Wire Wire Line
	5400 6250 5400 6150
Wire Wire Line
	5400 5900 5400 5950
Wire Wire Line
	2150 6450 2150 6050
Wire Wire Line
	1150 6700 1550 6700
$Comp
L 74xx:74LS06 U1
U 6 1 61A93269
P 4600 7000
F 0 "U1" H 4550 7000 50  0000 C CIN
F 1 "74HCT06" H 4750 6850 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4600 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 4600 7000 50  0001 C CNN
	6    4600 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  6500 900  6500
Wire Wire Line
	750  6500 750  6600
Wire Wire Line
	750  6600 1900 6600
Wire Wire Line
	1900 6600 1900 6050
Wire Wire Line
	1900 6050 2150 6050
Connection ~ 750  6500
$Comp
L 74xx:74LS32 U6
U 1 1 649E4FDD
P 2900 6150
F 0 "U6" H 2900 6150 50  0000 C CNN
F 1 "74HCT32" H 2900 5950 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2900 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2900 6150 50  0001 C CNN
	1    2900 6150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U6
U 2 1 649E7110
P 4700 5800
F 0 "U6" H 4700 5800 50  0000 C CNN
F 1 "74HCT32" H 4700 5600 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4700 5800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4700 5800 50  0001 C CNN
	2    4700 5800
	1    0    0    -1  
$EndComp
Entry Wire Line
	2350 4300 2450 4200
Text Label 2350 4350 2    31   ~ 0
~RD~
Wire Wire Line
	2400 5900 2400 5700
Connection ~ 2400 5900
Wire Wire Line
	2400 6050 2600 6050
Wire Wire Line
	2400 5900 2400 6050
Wire Wire Line
	2550 6250 2600 6250
Wire Wire Line
	2550 4300 2550 6250
$Comp
L 74xx:74LS32 U6
U 3 1 64F5AE72
P 2900 5600
F 0 "U6" H 2900 5600 50  0000 C CNN
F 1 "74HCT32" H 2900 5400 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2900 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2900 5600 50  0001 C CNN
	3    2900 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5700 2600 5700
Wire Wire Line
	3200 5600 3350 5600
Wire Wire Line
	1500 5900 2400 5900
Wire Wire Line
	2350 4300 2350 5500
$Comp
L 74xx:74LS32 U6
U 4 1 65197AD3
P 4700 5200
F 0 "U6" H 4700 5200 50  0000 C CNN
F 1 "74HCT32" H 4700 5000 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4700 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4700 5200 50  0001 C CNN
	4    4700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6150 4300 6150
Wire Wire Line
	4300 6150 4300 5900
Wire Wire Line
	4300 5900 4400 5900
Wire Wire Line
	4400 5700 4350 5700
Wire Wire Line
	4400 5300 4350 5300
Wire Wire Line
	2150 4300 2150 5100
Connection ~ 2150 6050
Wire Wire Line
	4400 5100 2150 5100
Entry Wire Line
	4600 4300 4700 4200
Wire Wire Line
	5000 5200 5050 5200
Wire Wire Line
	5050 5200 5050 4800
Wire Wire Line
	5050 4800 4600 4800
Wire Wire Line
	4600 4800 4600 4300
Text Label 4600 4350 2    31   ~ 0
~CSATTR~
Wire Wire Line
	5000 5800 5650 5800
Wire Wire Line
	3350 5700 3350 6000
Wire Wire Line
	3850 6000 3350 6000
Connection ~ 3350 6000
Wire Wire Line
	3350 6000 3350 6700
$Comp
L Device:C_Small C?
U 1 1 658736F7
P 3250 5400
AR Path="/658736F7" Ref="C?"  Part="1" 
AR Path="/689FAE6F/658736F7" Ref="C8"  Part="1" 
F 0 "C8" V 3400 5350 50  0000 L CNN
F 1 "1nF" V 3200 5200 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3250 5400 50  0001 C CNN
F 3 "~" H 3250 5400 50  0001 C CNN
	1    3250 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Variable R?
U 1 1 658C1F22
P 3250 6400
AR Path="/658C1F22" Ref="R?"  Part="1" 
AR Path="/689FAE6F/658C1F22" Ref="R3"  Part="1" 
F 0 "R3" H 3150 6400 50  0000 C CNN
F 1 "10K" V 3250 6450 31  0000 C CNN
F 2 "Potentiometer_SMD:Potentiometer_Bourns_3224W_Vertical" V 3180 6400 50  0001 C CNN
F 3 "~" H 3250 6400 50  0001 C CNN
	1    3250 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 658C1F2C
P 3250 5800
AR Path="/658C1F2C" Ref="R?"  Part="1" 
AR Path="/689FAE6F/658C1F2C" Ref="R2"  Part="1" 
F 0 "R2" H 3150 5800 50  0000 C CNN
F 1 "20K" V 3250 5800 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3250 5800 50  0001 C CNN
F 3 "~" H 3250 5800 50  0001 C CNN
	1    3250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 8250 2500 8300
Wire Wire Line
	3250 6700 3250 6550
Connection ~ 3250 6700
Wire Wire Line
	3250 6700 3350 6700
Wire Wire Line
	3250 6250 3250 5900
Wire Wire Line
	3350 5300 3150 5300
Wire Wire Line
	3150 5300 3150 5400
Wire Wire Line
	3150 5400 3150 5500
Wire Wire Line
	3150 5500 3250 5500
Wire Wire Line
	3250 5500 3250 5700
Connection ~ 3150 5400
Text Notes 2650 5050 0    31   ~ 0
The Video Mode and CGROM Hi-Addr latch share the address 0xDFFF\nwith the attribute RAM. In order not to corrupt the attribute RAM this\nmonostable, after a read from 0xDFFF enables a latch write and disables\nattribute RAM write for t = 0.28 * Rt * 1nF, where Rt = 20K+10Kvar. This\nshould be set for the maximum time a Z80 Read + Z80 Write will take.
$Comp
L 74xx:74LS32 U6
U 5 1 65F6860F
P 3950 7200
F 0 "U6" H 3850 7250 50  0000 L CNN
F 1 "74HCT32" H 3800 7150 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3950 7200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3950 7200 50  0001 C CNN
	5    3950 7200
	1    0    0    -1  
$EndComp
Connection ~ 3950 6700
Wire Wire Line
	3950 6700 4250 6700
$Comp
L Device:C_Small C?
U 1 1 65F6CECC
P 4250 6800
AR Path="/65F6CECC" Ref="C?"  Part="1" 
AR Path="/689FAE6F/65F6CECC" Ref="C10"  Part="1" 
F 0 "C10" H 4050 6850 50  0000 L CNN
F 1 "100nF" H 4050 6750 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4250 6800 50  0001 C CNN
F 3 "~" H 4250 6800 50  0001 C CNN
	1    4250 6800
	1    0    0    -1  
$EndComp
Connection ~ 4250 6700
Wire Wire Line
	4250 6700 5400 6700
Wire Wire Line
	3600 7700 3950 7700
Wire Wire Line
	3950 7700 4250 7700
Wire Wire Line
	4250 7700 4250 7350
Connection ~ 3950 7700
Connection ~ 4250 7700
Wire Wire Line
	4300 7000 4250 7000
Connection ~ 4250 7000
Wire Wire Line
	4250 7000 4250 6900
Wire Wire Line
	4300 7350 4250 7350
Connection ~ 4250 7350
Wire Wire Line
	4250 7350 4250 7000
Wire Wire Line
	5000 7700 6150 7700
Wire Wire Line
	4250 7700 5000 7700
Wire Wire Line
	2350 5500 2600 5500
Wire Wire Line
	2150 5500 2150 6050
Wire Wire Line
	1550 5500 1550 5250
Wire Wire Line
	1550 5250 2150 5250
Wire Wire Line
	2400 6700 2750 6700
Wire Wire Line
	2150 6650 2150 6700
Wire Wire Line
	9350 4300 9350 5850
$Bitmap
Pos 800  800 
Scale 3.000000
Data
89 50 4E 47 0D 0A 1A 0A 00 00 00 0D 49 48 44 52 00 00 00 2D 00 00 00 2D 08 03 00 00 00 0D C4 12 
A8 00 00 00 03 73 42 49 54 08 08 08 DB E1 4F E0 00 00 00 30 50 4C 54 45 FF 00 FF 10 00 00 42 00 
00 BD 00 00 8C 00 00 FF 00 00 21 00 00 73 00 00 DE 00 00 EF 00 00 31 00 00 52 00 00 9C 00 00 AD 
00 00 63 00 00 CE 00 00 27 2E 5E 64 00 00 00 01 74 52 4E 53 00 40 E6 D8 66 00 00 02 31 49 44 41 
54 48 89 95 95 E1 B6 A5 20 08 85 15 41 50 51 DE FF 6D 07 AD 33 77 2A 5B 73 2E 3F EA 2C FB A2 ED 
06 39 21 3C 22 3E 97 DE 03 D2 6F 68 A4 FC 3D CC 44 F2 3D 2E 44 C4 CF E5 08 2F 42 A8 D4 CB 4A 6E 
10 9B 50 DB E2 4A B7 34 9D 46 64 B2 BD 55 8D EA 6D 21 01 A4 BA 57 E2 B9 F5 5F BD F3 62 94 5F 8A 
10 0B FD 18 1E 53 81 8C 01 53 E6 3D 0E A5 E3 DF 27 D9 37 D7 A7 FF 42 7B DA 7A 85 8F C6 84 C0 11 
2A 8C 30 64 4F 23 46 3E E9 48 E6 DF 8A BE 93 B7 72 8D 81 71 F0 F9 B4 D5 90 48 20 EC AD 9E A9 07 
06 E5 D3 43 8E BD A0 15 78 A3 2B 36 A7 2B 9E AF 72 12 2F EE 9B D7 A1 A1 62 EC A1 9F C2 23 50 21 
7C D3 11 12 A4 11 2C A6 25 9C 5D 41 D3 4D 8B 9D 11 53 B0 1A A5 2E 64 CC A4 B5 8F 57 5A 2D 78 21 
09 72 9F 56 CE D7 85 DE 8F 52 1F 43 9C 46 26 D0 09 67 23 EA 6F 70 A5 AC 84 89 8A AD 94 11 0A 3D 
E9 CC 63 ED 2A 77 77 80 12 CE 5A 8A 0D F4 C4 1E 77 B3 FD B8 90 58 32 47 CB 00 AF 4C 1E BD D0 27 
6E 0D 92 9D 5D 4F CB BA 18 5D E3 6E 04 59 8E AE 02 73 45 2A 2D D7 44 1D 00 4F D8 EE 46 50 65 D2 
AA 55 24 0B B7 A2 20 B5 4B EC 07 7D B7 5B A9 1A A5 C8 3E 49 5A 6A 46 05 B0 12 E1 91 BC DC 9B 95 
89 AB 74 96 E8 A7 BD 60 4E 02 54 D5 F4 A0 1F 4D D2 7C 0D 3C 55 6A EA 63 03 1B B3 59 CB 98 64 63 
F6 AC 09 91 AE 0F A3 8E 75 75 4D 85 BB FA 16 9F 87 26 4F 79 8C 9E 2A 31 A7 F9 5B 75 6E CF 54 37 
87 71 E6 2E 8D A7 CF D8 79 7E 5E 35 CD DF DB 0E 39 68 9B B4 E0 E4 0A 8A 1B CF 70 1F 71 3F 4A 1A 
8D D5 14 EB 36 CC 86 93 69 7B D6 41 AD 03 35 29 6E 35 B9 95 56 DB 72 6E 5C 66 DC E5 0D 6F D1 E6 
A3 B7 AF 99 19 65 4D 65 DC 4D F2 83 96 75 C7 E3 AC 0C 5A C3 C9 EE 3D F5 11 5F 0A 1C F7 63 6F 7D 
69 81 37 29 7A 16 59 8F AE CB 8F 56 BD 04 9E 5B CA 67 DB 8D F7 C9 B0 72 9E ED 86 2F FF 30 97 18 
9F 7F 96 58 FF 43 2E 48 BF 48 F9 BB F8 03 46 6A 13 C0 29 E6 4E 60 00 00 00 00 49 45 4E 44 AE 42 
60 82 
EndData
$EndBitmap
Wire Wire Line
	2150 5100 2150 5250
Connection ~ 2150 5100
Wire Wire Line
	6650 5600 6850 5600
Wire Bus Line
	600  2950 1750 2950
Wire Bus Line
	500  3050 500  3800
Wire Bus Line
	1850 3050 1850 4100
Wire Bus Line
	1850 4300 1850 5000
Wire Bus Line
	2600 2750 3300 2750
Wire Bus Line
	4100 600  4100 1600
Wire Bus Line
	7800 600  7800 1900
Wire Bus Line
	6900 4450 6900 5400
Wire Bus Line
	1950 4200 7200 4200
Wire Bus Line
	5500 4700 5500 5500
Wire Bus Line
	2600 1200 2600 2650
Wire Bus Line
	1950 4600 5400 4600
Wire Bus Line
	7050 950  7050 3400
Wire Bus Line
	650  1200 650  6400
Wire Bus Line
	5100 950  5100 4250
$EndSCHEMATC
