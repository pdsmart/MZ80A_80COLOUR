EESchema Schematic File Version 4
LIBS:MZ80-80CLR
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "MZ-80A Colour Module"
Date "2019-08-23"
Rev "1.0"
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
NoConn ~ 6850 7050
NoConn ~ 4800 7350
NoConn ~ 4800 6950
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
Text Label 7200 4500 1    31   ~ 0
~HBLNK~
Entry Wire Line
	7100 4250 7200 4350
Text Label 7300 4450 1    31   ~ 0
SYNCH
Entry Wire Line
	7050 4250 7150 4150
Text Label 3700 4050 1    31   ~ 0
~GT~
Text Label 3600 4050 1    31   ~ 0
~RD~
Wire Wire Line
	3700 4150 3700 4000
Wire Wire Line
	3600 4150 3600 4000
Entry Wire Line
	3600 4250 3700 4150
Entry Wire Line
	3500 4250 3600 4150
Text Label 1000 2850 1    31   ~ 0
~CS~
Text Label 900  2850 1    31   ~ 0
~WR~
Text Label 1700 3700 0    31   ~ 0
~HBLNK~
Text Label 1700 3800 0    31   ~ 0
SYNCH
Text Label 1700 3900 0    31   ~ 0
~V-HBLNK~
Text Label 1700 4000 0    31   ~ 0
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
	1900 2950 2000 3050
Entry Bus Bus
	500  3050 600  2950
Wire Wire Line
	1900 4000 1550 4000
Wire Wire Line
	1900 3900 1550 3900
Wire Wire Line
	1900 3800 1550 3800
Wire Wire Line
	1900 3700 1550 3700
Entry Wire Line
	1900 3700 2000 3800
Wire Wire Line
	1550 4900 1900 4900
Wire Wire Line
	1550 4800 1900 4800
Wire Wire Line
	1550 4700 1900 4700
Wire Wire Line
	1550 4600 1900 4600
Wire Wire Line
	1550 4500 1900 4500
Wire Wire Line
	1550 4400 1900 4400
Wire Wire Line
	1550 4300 1900 4300
Wire Wire Line
	1550 4200 1900 4200
Entry Wire Line
	1900 4000 2000 4100
Entry Wire Line
	1900 3900 2000 4000
Entry Wire Line
	1900 3800 2000 3900
Wire Wire Line
	600  3500 1050 3500
Wire Wire Line
	600  3600 1050 3600
Entry Wire Line
	500  3600 600  3500
Entry Wire Line
	500  3700 600  3600
Wire Wire Line
	3350 750  3500 750 
$Comp
L Device:C_Small C?
U 1 1 68A653D3
P 3500 850
AR Path="/68A653D3" Ref="C?"  Part="1" 
AR Path="/689FAE6F/68A653D3" Ref="C7"  Part="1" 
F 0 "C7" H 3592 881 50  0000 L CNN
F 1 "100nF" H 3592 804 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3500 850 50  0001 C CNN
F 3 "~" H 3500 850 50  0001 C CNN
	1    3500 850 
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
Wire Wire Line
	1150 6700 1300 6700
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
AR Path="/689FAE6F/68A65419" Ref="C12"  Part="1" 
F 0 "C12" H 8342 4431 50  0000 L CNN
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
AR Path="/689FAE6F/68A65426" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 10700 4550 50  0001 C CNN
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
Connection ~ 3750 7700
Connection ~ 3750 7350
Wire Wire Line
	4300 7700 4300 7650
Connection ~ 3750 7250
Wire Wire Line
	3750 7350 3800 7350
Wire Wire Line
	3750 7250 3750 7350
Connection ~ 3750 7050
Wire Wire Line
	3750 7250 3800 7250
Wire Wire Line
	3750 7050 3750 7250
Wire Wire Line
	3750 7050 3800 7050
Wire Wire Line
	3750 6950 3750 7050
Wire Wire Line
	3800 6950 3750 6950
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
AR Path="/689FAE6F/68A6549F" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 10050 4150 50  0001 C CNN
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
AR Path="/689FAE6F/68A654AC" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 8100 5700 50  0001 C CNN
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
	5800 6650 5850 6650
$Comp
L Device:C_Small C?
U 1 1 68A654C1
P 5700 6650
AR Path="/68A654C1" Ref="C?"  Part="1" 
AR Path="/689FAE6F/68A654C1" Ref="C11"  Part="1" 
F 0 "C11" H 5600 6750 50  0000 L CNN
F 1 "100nF" H 5550 6600 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5700 6650 50  0001 C CNN
F 3 "~" H 5700 6650 50  0001 C CNN
	1    5700 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 7600 5400 7600
$Comp
L Device:R_Variable R?
U 1 1 68A654CE
P 5400 7450
AR Path="/68A654CE" Ref="R?"  Part="1" 
AR Path="/689FAE6F/68A654CE" Ref="R6"  Part="1" 
F 0 "R6" V 5300 7450 50  0000 C CNN
F 1 "2K" V 5400 7500 31  0000 C CNN
F 2 "Potentiometer_SMD:Potentiometer_Bourns_3224W_Vertical" V 5330 7450 50  0001 C CNN
F 3 "~" H 5400 7450 50  0001 C CNN
	1    5400 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 68A654D4
P 5400 7050
AR Path="/68A654D4" Ref="R?"  Part="1" 
AR Path="/689FAE6F/68A654D4" Ref="R5"  Part="1" 
F 0 "R5" V 5300 7050 50  0000 C CNN
F 1 "3K" V 5400 7050 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5400 7050 50  0001 C CNN
F 3 "~" H 5400 7050 50  0001 C CNN
	1    5400 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 7350 6350 7600
$Comp
L power:+5V #PWR?
U 1 1 68A654DB
P 5200 6700
AR Path="/68A654DB" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/68A654DB" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 5200 6550 50  0001 C CNN
F 1 "+5V" H 5215 6873 50  0000 C CNN
F 2 "" H 5200 6700 50  0001 C CNN
F 3 "" H 5200 6700 50  0001 C CNN
	1    5200 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 6950 5650 6950
Entry Wire Line
	1900 4900 2000 5000
Entry Wire Line
	1900 4800 2000 4900
Entry Wire Line
	1900 4700 2000 4800
Entry Wire Line
	1900 4600 2000 4700
Entry Wire Line
	1900 4500 2000 4600
Entry Wire Line
	1900 4400 2000 4500
Entry Wire Line
	1900 4300 2000 4400
Entry Wire Line
	1900 4200 2000 4300
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
F 1 "M/Board CN" H 1300 5100 50  0000 C CNN
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
AR Path="/689FAE6F/68A65603" Ref="U8"  Part="6" 
F 0 "U8" H 9600 5500 50  0000 C CNN
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
AR Path="/689FAE6F/68A65609" Ref="U8"  Part="5" 
F 0 "U8" H 9600 5150 50  0000 C CNN
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
AR Path="/689FAE6F/68A65627" Ref="U11"  Part="1" 
F 0 "U11" H 8100 5100 50  0000 C CNN
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
P 6350 6850
AR Path="/68A65633" Ref="U?"  Part="2" 
AR Path="/689FAE6F/68A65633" Ref="U3"  Part="2" 
F 0 "U3" H 6400 6900 50  0000 C CNN
F 1 "74HCT123" H 6350 6800 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 6350 6850 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT123.pdf" H 6350 6850 50  0001 C CNN
	2    6350 6850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC123 U?
U 1 1 68A65639
P 4300 7150
AR Path="/68A65639" Ref="U?"  Part="1" 
AR Path="/689FAE6F/68A65639" Ref="U3"  Part="1" 
F 0 "U3" H 4300 7200 50  0000 C CNN
F 1 "74HCT123" H 4300 7100 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4300 7150 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT123.pdf" H 4300 7150 50  0001 C CNN
	1    4300 7150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS373 U?
U 1 1 68A65645
P 3350 1600
AR Path="/68A65645" Ref="U?"  Part="1" 
AR Path="/689FAE6F/68A65645" Ref="U7"  Part="1" 
F 0 "U7" H 3350 1450 50  0000 C CNN
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
Wire Wire Line
	3750 7350 3750 7700
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
AR Path="/689FAE6F/68A6564B" Ref="U6"  Part="1" 
F 0 "U6" V 3250 3550 50  0000 R CNN
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
Wire Wire Line
	600  3700 1050 3700
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
Entry Wire Line
	500  3800 600  3700
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
	7200 4250 7300 4150
Text GLabel 4950 5350 2    39   Output ~ 0
~40~80-MODE
NoConn ~ 9050 2000
$Comp
L 74xx:74LS158 U?
U 1 1 68A6563F
P 8550 1700
AR Path="/68A6563F" Ref="U?"  Part="1" 
AR Path="/689FAE6F/68A6563F" Ref="U12"  Part="1" 
F 0 "U12" H 8550 1650 50  0000 C CNN
F 1 "74HCT158" H 8550 1500 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 8550 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS158" H 8550 1700 50  0001 C CNN
	1    8550 1700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS06 U?
U 1 1 68A65621
P 9450 1100
AR Path="/68A65621" Ref="U?"  Part="1" 
AR Path="/689FAE6F/68A65621" Ref="U8"  Part="1" 
F 0 "U8" H 9400 1100 50  0000 C CNN
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
AR Path="/689FAE6F/68A6561B" Ref="U8"  Part="2" 
F 0 "U8" H 9400 1400 50  0000 C CNN
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
AR Path="/689FAE6F/68A6560F" Ref="U8"  Part="4" 
F 0 "U8" H 7550 2900 50  0000 C CNN
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
AR Path="/689FAE6F/68A65525" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 8550 2500 50  0001 C CNN
F 1 "GNDPWR" H 8554 2546 50  0000 C CNN
F 2 "" H 8550 2650 50  0001 C CNN
F 3 "" H 8550 2650 50  0001 C CNN
	1    8550 2700
	1    0    0    -1  
$EndComp
Connection ~ 8550 2700
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
AR Path="/689FAE6F/68A654EC" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 9350 2700 50  0001 C CNN
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
AR Path="/689FAE6F/68A653C8" Ref="C13"  Part="1" 
F 0 "C13" V 8900 600 50  0000 L CNN
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
	7300 4150 7300 2900
Wire Wire Line
	7150 4150 7150 2300
Wire Wire Line
	7150 2300 8050 2300
Text Label 7300 4100 1    31   ~ 0
~V-HBLNK~
Text Label 7150 4100 1    31   ~ 0
VIDEO
Entry Wire Line
	7200 4250 7300 4350
Wire Wire Line
	3350 750  1850 750 
Connection ~ 1850 750 
Wire Wire Line
	3500 950  2450 950 
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
Wire Bus Line
	4200 500  7700 500 
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
L MZ80-80CLR:2732_Socket-Memory_EEPROM SK1
U 1 1 5EF47976
P 5750 3300
AR Path="/5EF47976" Ref="SK1"  Part="1" 
AR Path="/689FAE6F/5EF47976" Ref="SK1"  Part="1" 
F 0 "SK1" H 5750 3000 50  0000 C CNN
F 1 "IC15 Socket" H 5750 2800 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 5750 3300 50  0001 C CNN
F 3 "" H 5750 3300 50  0001 C CNN
	1    5750 3300
	1    0    0    -1  
$EndComp
Entry Wire Line
	4800 950  4900 850 
Entry Wire Line
	4800 1050 4900 950 
Entry Wire Line
	4800 1150 4900 1050
Entry Wire Line
	4800 1250 4900 1150
Entry Wire Line
	4800 1350 4900 1250
Entry Wire Line
	4800 1450 4900 1350
Entry Wire Line
	4800 1550 4900 1450
Entry Wire Line
	4800 1650 4900 1550
Entry Wire Line
	4800 1750 4900 1650
Entry Wire Line
	4800 1850 4900 1750
Entry Wire Line
	4800 1950 4900 1850
Entry Wire Line
	4800 2050 4900 1950
Entry Wire Line
	4800 2250 4900 2150
Entry Wire Line
	4800 2350 4900 2250
Entry Wire Line
	4800 2700 4900 2600
Entry Wire Line
	4800 2800 4900 2700
Entry Wire Line
	4800 2900 4900 2800
Entry Wire Line
	4800 3000 4900 2900
Entry Wire Line
	4800 3100 4900 3000
Entry Wire Line
	4800 3200 4900 3100
Entry Wire Line
	4800 3300 4900 3200
Entry Wire Line
	4800 3400 4900 3300
Entry Wire Line
	4800 3500 4900 3400
Entry Wire Line
	4800 3600 4900 3500
Entry Wire Line
	4800 3700 4900 3600
Entry Wire Line
	4800 3800 4900 3700
Entry Wire Line
	4800 4000 4900 3900
Entry Wire Line
	4800 4100 4900 4000
Entry Wire Line
	6650 850  6750 950 
Entry Wire Line
	6650 950  6750 1050
Entry Wire Line
	6650 1050 6750 1150
Entry Wire Line
	6650 1150 6750 1250
Entry Wire Line
	6650 1250 6750 1350
Entry Wire Line
	6650 1350 6750 1450
Entry Wire Line
	6650 1450 6750 1550
Entry Wire Line
	6650 1550 6750 1650
Entry Wire Line
	6650 2600 6750 2700
Entry Wire Line
	6650 2700 6750 2800
Entry Wire Line
	6650 2800 6750 2900
Entry Wire Line
	6650 2900 6750 3000
Entry Wire Line
	6650 3000 6750 3100
Entry Wire Line
	6650 3100 6750 3200
Entry Wire Line
	6650 3200 6750 3300
Entry Wire Line
	6650 3300 6750 3400
Wire Wire Line
	4900 2600 5050 2600
Wire Wire Line
	4900 2700 5050 2700
Wire Wire Line
	4900 2800 5050 2800
Wire Wire Line
	4900 2900 5050 2900
Wire Wire Line
	4900 3000 5050 3000
Wire Wire Line
	4900 3100 5050 3100
Wire Wire Line
	4900 3200 5050 3200
Wire Wire Line
	4900 3300 5050 3300
Wire Wire Line
	4900 3400 5050 3400
Wire Wire Line
	4900 3500 5050 3500
Wire Wire Line
	4900 3600 5050 3600
Wire Wire Line
	4900 3700 5050 3700
Wire Wire Line
	4900 3900 5050 3900
Wire Wire Line
	4900 4000 5050 4000
Wire Wire Line
	6450 2600 6650 2600
Wire Wire Line
	6450 2700 6650 2700
Wire Wire Line
	6450 2800 6650 2800
Wire Wire Line
	6450 2900 6650 2900
Wire Wire Line
	6450 3000 6650 3000
Wire Wire Line
	6450 3100 6650 3100
Wire Wire Line
	6450 3200 6650 3200
Wire Wire Line
	6450 3300 6650 3300
NoConn ~ 4900 3700
Entry Wire Line
	4700 1800 4800 1900
Wire Wire Line
	3850 1800 4700 1800
Text Label 3850 1400 0    31   ~ 0
CGA11
Text Label 4950 850  0    31   ~ 0
CGA0
Text Label 4950 950  0    31   ~ 0
CGA1
Text Label 4950 1050 0    31   ~ 0
CGA2
Text Label 4950 1150 0    31   ~ 0
CGA3
Text Label 4950 1250 0    31   ~ 0
CGA4
Text Label 4950 1350 0    31   ~ 0
CGA5
Text Label 4950 1450 0    31   ~ 0
CGA6
Text Label 4950 1550 0    31   ~ 0
CGA7
Text Label 4950 1650 0    31   ~ 0
CGA8
Text Label 4950 1750 0    31   ~ 0
CGA9
Text Label 4950 1850 0    31   ~ 0
CGA10
Text Label 4950 1950 0    31   ~ 0
CGA11
Text Label 4950 2150 0    31   ~ 0
CGA13
Text Label 4950 2250 0    31   ~ 0
CGA14
Text Label 4950 2600 0    31   ~ 0
CGA0
Text Label 4950 2700 0    31   ~ 0
CGA1
Text Label 4950 2800 0    31   ~ 0
CGA2
Text Label 4950 2900 0    31   ~ 0
CGA3
Text Label 4950 3000 0    31   ~ 0
CGA4
Text Label 4950 3100 0    31   ~ 0
CGA5
Text Label 4950 3200 0    31   ~ 0
CGA6
Text Label 4950 3300 0    31   ~ 0
CGA7
Text Label 4950 3400 0    31   ~ 0
CGA8
Text Label 4950 3500 0    31   ~ 0
CGA9
Text Label 4950 3600 0    31   ~ 0
CGA10
Text Label 4950 3900 0    31   ~ 0
~CGCS1~
Text Label 4950 4000 0    31   ~ 0
~CGCS2~
Text Label 6450 850  0    31   ~ 0
CGD0
Text Label 6450 950  0    31   ~ 0
CGD1
Text Label 6450 1050 0    31   ~ 0
CGD2
Text Label 6450 1150 0    31   ~ 0
CGD3
Text Label 6450 1250 0    31   ~ 0
CGD4
Text Label 6450 1350 0    31   ~ 0
CGD5
Text Label 6450 1450 0    31   ~ 0
CGD6
Text Label 6450 1550 0    31   ~ 0
CGD7
Text Label 6450 2600 0    31   ~ 0
CGD0
Text Label 6450 2700 0    31   ~ 0
CGD1
Text Label 6450 2800 0    31   ~ 0
CGD2
Text Label 6450 2900 0    31   ~ 0
CGD3
Text Label 6450 3000 0    31   ~ 0
CGD4
Text Label 6450 3100 0    31   ~ 0
CGD5
Text Label 6450 3200 0    31   ~ 0
CGD6
Text Label 6450 3300 0    31   ~ 0
CGD7
Connection ~ 3500 750 
Wire Wire Line
	4500 750  3500 750 
Wire Wire Line
	5750 4100 5750 4150
Wire Wire Line
	5800 700  5800 750 
Connection ~ 4500 750 
Wire Wire Line
	6850 6650 6900 6650
Wire Wire Line
	7550 5550 7600 5550
Wire Wire Line
	7600 5450 7550 5450
Wire Wire Line
	7550 5450 7550 4300
Wire Wire Line
	7550 4300 8100 4300
Connection ~ 8100 4300
Connection ~ 8250 4300
Wire Wire Line
	8250 4300 9350 4300
Wire Wire Line
	8250 4500 8800 4500
Connection ~ 5400 7600
Wire Wire Line
	5400 7600 5200 7600
Wire Wire Line
	5200 6700 5200 7600
Wire Wire Line
	5600 6650 5400 6650
Wire Wire Line
	5400 6650 5400 6750
Wire Wire Line
	5400 7150 5400 7300
Wire Wire Line
	5400 6750 5850 6750
Connection ~ 5400 6750
Wire Wire Line
	5400 6750 5400 6950
Wire Wire Line
	7300 4350 7300 4650
Wire Wire Line
	7300 4650 7450 4650
Connection ~ 7450 4650
Wire Wire Line
	6900 6650 6900 6500
Wire Wire Line
	6900 6500 7550 6500
Wire Wire Line
	7550 5550 7550 6500
Wire Wire Line
	7200 4350 7200 6450
Wire Wire Line
	5850 6450 7200 6450
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
P 1200 5850
F 0 "U2" H 1200 5850 50  0000 C CIN
F 1 "74ALS133" H 1250 6050 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 1200 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS133" H 1200 5850 50  0001 C CNN
	1    1200 5850
	1    0    0    -1  
$EndComp
Entry Bus Bus
	2000 4150 2100 4250
Entry Bus Bus
	2000 4500 2100 4600
Entry Wire Line
	650  5350 750  5250
Entry Wire Line
	650  5450 750  5350
Entry Wire Line
	650  5550 750  5450
Entry Wire Line
	650  5650 750  5550
Entry Wire Line
	650  5750 750  5650
Entry Wire Line
	650  5850 750  5750
Entry Wire Line
	650  5950 750  5850
Entry Wire Line
	650  6050 750  5950
Entry Wire Line
	650  6150 750  6050
Entry Wire Line
	650  6250 750  6150
Entry Wire Line
	650  6350 750  6250
Wire Wire Line
	750  5250 900  5250
Wire Wire Line
	750  5350 900  5350
Wire Wire Line
	750  5450 900  5450
Wire Wire Line
	750  5550 900  5550
Wire Wire Line
	750  5650 900  5650
Wire Wire Line
	750  5750 900  5750
Wire Wire Line
	750  5850 900  5850
Wire Wire Line
	750  5950 900  5950
Wire Wire Line
	750  6050 900  6050
Wire Wire Line
	750  6150 900  6150
Wire Wire Line
	750  6250 900  6250
Text Label 850  5250 0    31   ~ 0
A10
Text Label 850  5350 0    31   ~ 0
A9
Text Label 850  5450 0    31   ~ 0
A8
Text Label 850  5550 0    31   ~ 0
A7
Text Label 850  5650 0    31   ~ 0
A6
Text Label 850  5750 0    31   ~ 0
A5
Text Label 850  5850 0    31   ~ 0
A4
Text Label 850  5950 0    31   ~ 0
A3
Text Label 850  6050 0    31   ~ 0
A2
Text Label 850  6150 0    31   ~ 0
A1
Text Label 850  6250 0    31   ~ 0
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
Wire Wire Line
	2400 6700 2600 6700
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
	750  6350 900  6350
Wire Wire Line
	800  6550 800  6450
Wire Wire Line
	800  6450 900  6450
$Comp
L Device:R_Small R?
U 1 1 60AF0739
P 3600 6550
AR Path="/60AF0739" Ref="R?"  Part="1" 
AR Path="/689FAE6F/60AF0739" Ref="R4"  Part="1" 
F 0 "R4" H 3500 6550 50  0000 C CNN
F 1 "10K" V 3600 6550 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3600 6550 50  0001 C CNN
F 3 "~" H 3600 6550 50  0001 C CNN
	1    3600 6550
	1    0    0    -1  
$EndComp
Entry Wire Line
	2200 4350 2300 4250
Entry Wire Line
	2250 4350 2350 4250
Text Label 2200 4450 1    31   ~ 0
~CS~
Text Label 2250 4450 1    31   ~ 0
~WR~
Wire Wire Line
	3750 6700 3750 6950
Connection ~ 3750 6950
Wire Wire Line
	5650 6950 5650 7700
Wire Wire Line
	3750 7700 4300 7700
Wire Wire Line
	5850 6450 5850 7050
$Comp
L Memory_EEPROM:28C256T2 U10
U 1 1 60FF7C1B
P 5800 1750
F 0 "U10" H 5800 1900 50  0000 C CNN
F 1 "28C256T2" H 5850 1750 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 5800 1750 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 5800 1750 50  0001 C CNN
	1    5800 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 850  5400 850 
Wire Wire Line
	4900 950  5400 950 
Wire Wire Line
	4900 1050 5400 1050
Wire Wire Line
	4900 1150 5400 1150
Wire Wire Line
	4900 1250 5400 1250
Wire Wire Line
	4900 1350 5400 1350
Wire Wire Line
	4900 1450 5400 1450
Wire Wire Line
	4900 1550 5400 1550
Wire Wire Line
	4900 1650 5400 1650
Wire Wire Line
	4900 1750 5400 1750
Wire Wire Line
	4900 1850 5400 1850
Wire Wire Line
	4900 1950 5400 1950
Wire Wire Line
	6200 850  6650 850 
Wire Wire Line
	6200 950  6650 950 
Wire Wire Line
	6200 1050 6650 1050
Wire Wire Line
	6200 1150 6650 1150
Wire Wire Line
	6200 1250 6650 1250
Wire Wire Line
	6200 1350 6650 1350
Wire Wire Line
	6200 1450 6650 1450
Wire Wire Line
	6200 1550 6650 1550
Wire Wire Line
	5750 2500 4500 2500
Wire Wire Line
	4500 750  4500 2500
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
Wire Wire Line
	3350 2450 4350 2450
$Comp
L Device:R_Small R?
U 1 1 617682DC
P 6300 1750
AR Path="/617682DC" Ref="R?"  Part="1" 
AR Path="/689FAE6F/617682DC" Ref="R7"  Part="1" 
F 0 "R7" H 6200 1750 50  0000 C CNN
F 1 "10K" V 6300 1750 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6300 1750 50  0001 C CNN
F 3 "~" H 6300 1750 50  0001 C CNN
	1    6300 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1850 6300 2050
Wire Wire Line
	6300 2050 6200 2050
$Comp
L Device:C_Small C?
U 1 1 617C771B
P 5400 650
AR Path="/617C771B" Ref="C?"  Part="1" 
AR Path="/689FAE6F/617C771B" Ref="C10"  Part="1" 
F 0 "C10" H 5492 681 50  0000 L CNN
F 1 "100nF" H 5492 604 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5400 650 50  0001 C CNN
F 3 "~" H 5400 650 50  0001 C CNN
	1    5400 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 650  5800 550 
Wire Wire Line
	5800 550  5400 550 
Wire Wire Line
	4500 550  4500 750 
Wire Wire Line
	5800 550  6300 550 
Wire Wire Line
	6300 550  6300 1650
Connection ~ 5800 550 
Connection ~ 5400 550 
Wire Wire Line
	5400 550  4500 550 
Wire Wire Line
	5400 750  5300 750 
Wire Wire Line
	5300 750  5300 2450
Connection ~ 5300 2450
Wire Wire Line
	5300 2450 5800 2450
NoConn ~ 4900 3900
NoConn ~ 4900 4000
Wire Wire Line
	4350 4150 4350 2450
Wire Wire Line
	4350 4150 5750 4150
Connection ~ 4350 2450
Wire Wire Line
	4350 2450 5300 2450
Wire Wire Line
	6200 2150 6300 2150
Wire Wire Line
	6300 2150 6300 2250
Wire Wire Line
	6300 2450 5800 2450
Connection ~ 5800 2450
Wire Wire Line
	6200 2250 6300 2250
Connection ~ 6300 2250
Wire Wire Line
	6300 2250 6300 2450
Entry Bus Bus
	3300 4600 3400 4700
$Comp
L 74xx:74LS273 U9
U 1 1 6088C6F2
P 4150 5100
F 0 "U9" H 4150 5200 50  0000 C CNN
F 1 "74HCT273" H 4150 4800 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 4150 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 4150 5100 50  0001 C CNN
	1    4150 5100
	1    0    0    -1  
$EndComp
Entry Wire Line
	3400 4700 3500 4600
Entry Wire Line
	3400 4700 3500 4600
Entry Wire Line
	3400 4800 3500 4700
Entry Wire Line
	3400 4900 3500 4800
Entry Wire Line
	3400 5000 3500 4900
Entry Wire Line
	3400 5100 3500 5000
Entry Wire Line
	3400 5200 3500 5100
Entry Wire Line
	3400 5300 3500 5200
Entry Wire Line
	3400 5400 3500 5300
Wire Wire Line
	3500 4600 3650 4600
Wire Wire Line
	3500 4700 3650 4700
Wire Wire Line
	3500 4800 3650 4800
Wire Wire Line
	3500 4900 3650 4900
Wire Wire Line
	3500 5000 3650 5000
Wire Wire Line
	3500 5100 3650 5100
Wire Wire Line
	3500 5200 3650 5200
Wire Wire Line
	3500 5300 3650 5300
Text Label 3550 4600 0    31   ~ 0
D0
Text Label 3550 4700 0    31   ~ 0
D1
Text Label 3550 4800 0    31   ~ 0
D2
Text Label 3550 4900 0    31   ~ 0
D3
Text Label 3550 5000 0    31   ~ 0
D4
Text Label 3550 5100 0    31   ~ 0
D5
Text Label 3550 5200 0    31   ~ 0
D6
Text Label 3550 5300 0    31   ~ 0
D7
Wire Wire Line
	4650 5350 4950 5350
$Comp
L Device:C_Small C?
U 1 1 60DE092C
P 4250 4150
AR Path="/60DE092C" Ref="C?"  Part="1" 
AR Path="/689FAE6F/60DE092C" Ref="C9"  Part="1" 
F 0 "C9" V 4350 4150 50  0000 L CNN
F 1 "100nF" V 4200 3950 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4250 4150 50  0001 C CNN
F 3 "~" H 4250 4150 50  0001 C CNN
	1    4250 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 4250 4300 4250
Connection ~ 4350 4150
Wire Wire Line
	4150 4150 4150 4300
$Comp
L power:+5V #PWR?
U 1 1 61F2FB6C
P 4150 3950
AR Path="/61F2FB6C" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/61F2FB6C" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 4150 3800 50  0001 C CNN
F 1 "+5V" H 4165 4123 50  0000 C CNN
F 2 "" H 4150 3950 50  0001 C CNN
F 3 "" H 4150 3950 50  0001 C CNN
	1    4150 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4150 4150 3950
Connection ~ 4150 4150
Entry Wire Line
	4700 4600 4800 4700
Entry Wire Line
	4700 4700 4800 4800
Entry Wire Line
	4700 4800 4800 4900
Wire Wire Line
	4650 4600 4700 4600
Wire Wire Line
	4650 4700 4700 4700
Wire Wire Line
	4650 4800 4700 4800
Text Label 3850 1800 0    31   ~ 0
CGA12
Text Label 4650 4600 0    31   ~ 0
CGA13
Wire Wire Line
	3600 5600 3650 5600
Text Label 4650 4700 0    31   ~ 0
CGA14
Entry Wire Line
	4800 2150 4900 2050
Wire Wire Line
	4900 2050 5400 2050
Wire Wire Line
	4900 2150 5400 2150
Wire Wire Line
	4900 2250 5400 2250
Text Label 4950 2050 0    31   ~ 0
CGA12
Wire Wire Line
	8550 750  8550 550 
Wire Wire Line
	8550 550  6300 550 
Connection ~ 8550 750 
Connection ~ 6300 550 
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
L Connector_Generic:Conn_01x10 J3
U 1 1 5FA8230F
P 10900 5200
F 0 "J3" H 10850 4550 50  0000 L CNN
F 1 "RGB" H 10800 4450 50  0000 L CNN
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
L 74xx:74LS06 U8
U 3 1 5FC8E463
P 9550 6350
F 0 "U8" H 9500 6350 50  0000 C CNN
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
	9050 5900 9050 5800
Wire Wire Line
	9350 5800 9350 5900
Wire Wire Line
	9850 5800 9850 5900
Connection ~ 9350 5800
Wire Wire Line
	9350 5800 9850 5800
Connection ~ 9350 6150
Wire Wire Line
	9350 6150 10400 6150
Wire Wire Line
	9050 5800 9350 5800
Wire Wire Line
	8950 6150 9350 6150
Connection ~ 9350 4300
Wire Wire Line
	9350 4300 10050 4300
Wire Wire Line
	9350 4300 9350 5800
Connection ~ 4300 7700
Wire Wire Line
	4300 7700 5650 7700
Wire Wire Line
	3000 7700 3350 7700
$Comp
L 74xx:74LS06 U?
U 7 1 601FD9B5
P 3350 7200
AR Path="/601FD9B5" Ref="U?"  Part="7" 
AR Path="/689FAE6F/601FD9B5" Ref="U8"  Part="7" 
F 0 "U8" H 3250 7250 50  0000 L CNN
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
AR Path="/689FAE6F/601FEDC1" Ref="C8"  Part="1" 
F 0 "C8" H 3650 6850 50  0000 L CNN
F 1 "100nF" H 3650 6750 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3600 6800 50  0001 C CNN
F 3 "~" H 3600 6800 50  0001 C CNN
	1    3600 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6700 3350 6700
Connection ~ 3000 6700
Connection ~ 3350 6700
Wire Wire Line
	3350 6700 3600 6700
Wire Wire Line
	3600 6900 3600 7700
Connection ~ 3600 7700
Wire Wire Line
	3600 7700 3750 7700
Wire Wire Line
	3750 6700 4150 6700
Wire Wire Line
	4150 6700 4150 6500
$Comp
L Jumper:Jumper_3_Open JP1
U 1 1 6050B6A1
P 10450 2200
F 0 "JP1" H 10550 2150 50  0000 C CNN
F 1 "Sync Polarity" H 10450 2350 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 10450 2200 50  0001 C CNN
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
P 1850 6050
F 0 "U1" H 1800 6050 50  0000 C CIN
F 1 "74HCT06" H 1900 5900 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1850 6050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 1850 6050 50  0001 C CNN
	4    1850 6050
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS06 U1
U 5 1 60E58A37
P 1850 6400
F 0 "U1" H 1800 6400 50  0000 C CIN
F 1 "74HCT06" H 1900 6250 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1850 6400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 1850 6400 50  0001 C CNN
	5    1850 6400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	750  6600 1150 6600
Wire Wire Line
	750  6350 750  6600
Wire Wire Line
	3600 5600 3600 6450
Wire Wire Line
	3600 6650 3600 6700
Connection ~ 3600 6700
Wire Wire Line
	2250 6400 2150 6400
Wire Wire Line
	2250 4350 2250 6400
$Comp
L Device:R_Small R?
U 1 1 615661D1
P 1300 6550
AR Path="/615661D1" Ref="R?"  Part="1" 
AR Path="/689FAE6F/615661D1" Ref="R1"  Part="1" 
F 0 "R1" H 1200 6550 50  0000 C CIN
F 1 "1K" V 1300 6550 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1300 6550 50  0001 C CNN
F 3 "~" H 1300 6550 50  0001 C CNN
	1    1300 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61566F4B
P 1500 6550
AR Path="/61566F4B" Ref="R?"  Part="1" 
AR Path="/689FAE6F/61566F4B" Ref="R2"  Part="1" 
F 0 "R2" H 1400 6550 50  0000 C CIN
F 1 "1K" V 1500 6550 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1500 6550 50  0001 C CNN
F 3 "~" H 1500 6550 50  0001 C CNN
	1    1500 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6050 1100 6550
Wire Wire Line
	1100 6050 1300 6050
Wire Wire Line
	1100 6550 800  6550
Wire Wire Line
	1150 6400 1150 6600
Wire Wire Line
	1150 6400 1500 6400
Wire Wire Line
	1300 6450 1300 6050
Connection ~ 1300 6050
Wire Wire Line
	1300 6050 1550 6050
Wire Wire Line
	1300 6650 1300 6700
Connection ~ 1300 6700
Wire Wire Line
	1300 6700 1500 6700
Wire Wire Line
	1500 6450 1500 6400
Connection ~ 1500 6400
Wire Wire Line
	1500 6400 1550 6400
Wire Wire Line
	1500 6650 1500 6700
Connection ~ 1500 6700
Wire Wire Line
	1500 6700 1550 6700
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
$Comp
L 74xx:74LS06 U1
U 6 1 61A93269
P 1800 5850
F 0 "U1" H 1750 5850 50  0000 C CIN
F 1 "74HCT06" H 1800 6050 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1800 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 1800 5850 50  0001 C CNN
	6    1800 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61B5F00B
P 2600 6550
AR Path="/61B5F00B" Ref="R?"  Part="1" 
AR Path="/689FAE6F/61B5F00B" Ref="R3"  Part="1" 
F 0 "R3" H 2500 6550 50  0000 C CNN
F 1 "1K" V 2600 6550 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2600 6550 50  0001 C CNN
F 3 "~" H 2600 6550 50  0001 C CNN
	1    2600 6550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U5
U 2 1 61CECE02
P 4550 6150
F 0 "U5" H 4550 6150 50  0000 C CNN
F 1 "74HCT86" H 4500 5950 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4550 6150 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4550 6150 50  0001 C CNN
	2    4550 6150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U5
U 4 1 61CEF893
P 4550 6600
F 0 "U5" H 4550 6600 50  0000 C CNN
F 1 "74HCT86" H 4500 6400 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4550 6600 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4550 6600 50  0001 C CNN
	4    4550 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6050 4150 6050
Connection ~ 4150 6050
Wire Wire Line
	4150 6050 4150 5900
Wire Wire Line
	4250 6250 4150 6250
Connection ~ 4150 6250
Wire Wire Line
	4150 6250 4150 6050
Wire Wire Line
	4250 6500 4150 6500
Connection ~ 4150 6500
Wire Wire Line
	4150 6500 4150 6250
Wire Wire Line
	4250 6700 4150 6700
Connection ~ 4150 6700
NoConn ~ 4850 6150
NoConn ~ 4850 6600
Entry Wire Line
	4700 1700 4800 1800
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
	4050 1700 4700 1700
Wire Wire Line
	3850 1400 4050 1400
$Comp
L Jumper:Jumper_3_Open JP?
U 1 1 5F638B5A
P 2600 5850
F 0 "JP?" H 2700 5800 50  0000 C CNN
F 1 "Attr Mem Range" H 2250 6000 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 2600 5850 50  0001 C CNN
F 3 "~" H 2600 5850 50  0001 C CNN
	1    2600 5850
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5F63BB58
P 3000 6250
F 0 "J?" V 3000 6150 50  0000 L CNN
F 1 "Video Attr Select" V 3100 5900 50  0000 L CNN
F 2 "" H 3000 6250 50  0001 C CNN
F 3 "~" H 3000 6250 50  0001 C CNN
	1    3000 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 4350 2200 6050
Wire Wire Line
	2100 5850 2350 5850
Wire Wire Line
	2150 6050 2200 6050
Wire Wire Line
	2600 6650 2600 6700
Connection ~ 2600 6700
Wire Wire Line
	2600 6700 2750 6700
$Comp
L power:GNDPWR #PWR?
U 1 1 601DCDC0
P 3150 6050
AR Path="/601DCDC0" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/601DCDC0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3150 5850 50  0001 C CNN
F 1 "GNDPWR" H 3250 5900 50  0000 C CNN
F 2 "" H 3150 6000 50  0001 C CNN
F 3 "" H 3150 6000 50  0001 C CNN
	1    3150 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5850 2900 5850
Wire Wire Line
	2900 5850 2900 6050
Wire Wire Line
	3150 5850 3150 6050
Wire Wire Line
	3000 6050 3000 5850
Wire Wire Line
	3000 5850 3150 5850
Wire Wire Line
	2600 5500 3650 5500
Wire Wire Line
	2600 5500 2600 6000
Connection ~ 2600 6000
Wire Wire Line
	2600 6000 2600 6450
Wire Wire Line
	4650 5300 4650 5350
Entry Wire Line
	4700 4900 4800 5000
Entry Wire Line
	4700 5000 4800 5100
Entry Wire Line
	4700 5100 4800 5200
Entry Wire Line
	4700 5200 4800 5300
Wire Wire Line
	4650 4900 4700 4900
Wire Wire Line
	4650 5000 4700 5000
Wire Wire Line
	4650 5100 4700 5100
Wire Wire Line
	4650 5200 4700 5200
Text Notes 5550 4600 0    39   ~ 0
MZ80A was Foreground D0=B, D1=G, D2=R\nBackground D3=B, D4=G, D5=R\nD6:D7 = 00 = light, 11 = dark\nNeed mux for the different modes.
Text Notes 5600 4850 0    39   ~ 0
MZ700 D7, D3=unused\nBackground D0=B, D1=R, D2 = G\nForeground D4=B, D5=R, D6 = G\n
Wire Bus Line
	500  3050 500  3800
Wire Bus Line
	600  2950 1900 2950
Wire Bus Line
	2000 3050 2000 4150
Wire Bus Line
	2000 4300 2000 5000
Wire Bus Line
	2600 2750 3300 2750
Wire Bus Line
	4100 600  4100 1600
Wire Bus Line
	7800 600  7800 1900
Wire Bus Line
	2100 4250 7200 4250
Wire Bus Line
	3400 4700 3400 5400
Wire Bus Line
	2600 1200 2600 2650
Wire Bus Line
	2100 4600 3300 4600
Wire Bus Line
	6750 950  6750 3400
Wire Bus Line
	650  1200 650  6350
Wire Bus Line
	4800 950  4800 5300
$EndSCHEMATC
