EESchema Schematic File Version 4
LIBS:MZ80-80CLR-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "MZ-80A 40/80 Column Module"
Date "2019-10-01"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 "to run an 80 column output suitable for CPM use."
Comment4 "This design, based on the MZ-80B, enables the MZ-80A"
$EndDescr
$Comp
L Memory_RAM:MB14298_Socket SK4
U 1 1 68A811B6
P 9450 4850
F 0 "SK4" H 9500 5350 39  0000 C CNN
F 1 "IC20 Socket" H 9550 5250 39  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 9450 5850 39  0001 C CNN
F 3 "" H 9450 5850 39  0001 C CNN
	1    9450 4850
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:MB14299_Socket SK2
U 1 1 68A83B39
P 4250 4850
F 0 "SK2" H 4250 4650 39  0000 C CNN
F 1 "IC31 Socket" H 4250 4550 39  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 4250 5800 39  0001 C CNN
F 3 "" H 4250 5800 39  0001 C CNN
	1    4250 4850
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:MB14298 U18
U 1 1 68A852CB
P 9450 1950
F 0 "U18" H 9550 2550 39  0000 C CNN
F 1 "MB14298" H 9550 2450 39  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 9450 2950 39  0001 C CNN
F 3 "" H 9450 2950 39  0001 C CNN
	1    9450 1950
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:MB14299 U16
U 1 1 68A869EC
P 4250 1950
F 0 "U16" H 4250 1650 39  0000 C CNN
F 1 "MB14299" H 4250 1550 39  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 4250 2900 39  0001 C CNN
F 3 "" H 4250 2900 39  0001 C CNN
	1    4250 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U13
U 1 1 68A8D278
P 7550 2850
F 0 "U13" H 7500 2850 50  0000 C CNN
F 1 "74HCT04" H 7550 2650 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7550 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7550 2850 50  0001 C CNN
	1    7550 2850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U13
U 2 1 68A8E9A0
P 6900 3300
F 0 "U13" H 6850 3300 50  0000 C CNN
F 1 "74HCT04" H 6950 3150 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6900 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6900 3300 50  0001 C CNN
	2    6900 3300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U13
U 3 1 68A8F79F
P 5750 1500
F 0 "U13" H 5700 1500 50  0000 C CNN
F 1 "74HCT04" H 5750 1300 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5750 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5750 1500 50  0001 C CNN
	3    5750 1500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U13
U 4 1 68A908A5
P 5750 1950
F 0 "U13" H 5700 1950 50  0000 C CNN
F 1 "74HCT04" H 5750 1750 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5750 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5750 1950 50  0001 C CNN
	4    5750 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U13
U 5 1 68A916DB
P 6850 2600
F 0 "U13" H 6800 2600 50  0000 C CNN
F 1 "74HCT04" H 6850 2400 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6850 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6850 2600 50  0001 C CNN
	5    6850 2600
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U13
U 6 1 68A92386
P 5750 2600
F 0 "U13" H 5700 2600 50  0000 C CNN
F 1 "74HCT04" H 5750 2400 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5750 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5750 2600 50  0001 C CNN
	6    5750 2600
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U13
U 7 1 68A92E65
P 800 7050
F 0 "U13" H 700 7100 50  0000 L CNN
F 1 "74HCT04" H 650 7000 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 800 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 800 7050 50  0001 C CNN
	7    800  7050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U15
U 1 1 68A9BB66
P 6250 1250
F 0 "U15" H 6250 1250 50  0000 C CNN
F 1 "74HCT08" H 6250 1050 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6250 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6250 1250 50  0001 C CNN
	1    6250 1250
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U15
U 2 1 68A9DB35
P 7100 1350
F 0 "U15" H 7100 1350 50  0000 C CNN
F 1 "74HCT08" H 7100 1150 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7100 1350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 7100 1350 50  0001 C CNN
	2    7100 1350
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U15
U 4 1 68AA1817
P 2700 7350
F 0 "U15" H 2700 7350 50  0000 C CNN
F 1 "74HCT08" H 2700 7150 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2700 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2700 7350 50  0001 C CNN
	4    2700 7350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U15
U 5 1 68AA2FEE
P 1350 7050
F 0 "U15" H 1250 7100 50  0000 L CNN
F 1 "74HCT08" H 1200 7000 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1350 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 1350 7050 50  0001 C CNN
	5    1350 7050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U14
U 1 1 68AA5D8A
P 1100 1550
F 0 "U14" H 1050 1550 50  0000 C CNN
F 1 "74ALS04" H 1050 1350 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1100 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1100 1550 50  0001 C CNN
	1    1100 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U14
U 2 1 68AA790B
P 2400 1550
F 0 "U14" H 2350 1550 50  0000 C CNN
F 1 "74ALS04" H 2350 1350 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2400 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2400 1550 50  0001 C CNN
	2    2400 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U14
U 3 1 68AA9A9D
P 3150 1100
F 0 "U14" H 3100 1100 50  0000 C CNN
F 1 "74ALS04" H 3100 900 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3150 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3150 1100 50  0001 C CNN
	3    3150 1100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U14
U 5 1 68AACE25
P 5800 900
F 0 "U14" H 5750 900 50  0000 C CNN
F 1 "74ALS04" H 5750 700 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5800 900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5800 900 50  0001 C CNN
	5    5800 900 
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U14
U 6 1 68AAEC0C
P 6600 900
F 0 "U14" H 6550 900 50  0000 C CNN
F 1 "74ALS04" H 6550 700 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6600 900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6600 900 50  0001 C CNN
	6    6600 900 
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U14
U 7 1 68AB1205
P 2000 7050
F 0 "U14" H 1900 7100 50  0000 L CNN
F 1 "74ALS04" H 1850 7000 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2000 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2000 7050 50  0001 C CNN
	7    2000 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal X1
U 1 1 68AB4E24
P 1750 1100
F 0 "X1" H 1750 1368 50  0000 C CNN
F 1 "16MHz" H 1750 1277 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 1750 1100 50  0001 C CNN
F 3 "~" H 1750 1100 50  0001 C CNN
	1    1750 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 68ABBD7F
P 1750 6450
F 0 "#PWR018" H 1750 6300 50  0001 C CNN
F 1 "+5V" H 1765 6623 50  0000 C CNN
F 2 "" H 1750 6450 50  0001 C CNN
F 3 "" H 1750 6450 50  0001 C CNN
	1    1750 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR019
U 1 1 68ABC883
P 1750 7600
F 0 "#PWR019" H 1750 7400 50  0001 C CNN
F 1 "GNDPWR" H 1754 7446 50  0000 C CNN
F 2 "" H 1750 7550 50  0001 C CNN
F 3 "" H 1750 7550 50  0001 C CNN
	1    1750 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R25
U 1 1 68AC2718
P 1100 1100
F 0 "R25" V 1000 1100 50  0000 C CNN
F 1 "100R" V 1100 1100 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1100 1100 50  0001 C CNN
F 3 "~" H 1100 1100 50  0001 C CNN
	1    1100 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R26
U 1 1 68AC38A4
P 1100 1300
F 0 "R26" V 1000 1300 50  0000 C CNN
F 1 "210R" V 1100 1300 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1100 1300 50  0001 C CNN
F 3 "~" H 1100 1300 50  0001 C CNN
	1    1100 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R27
U 1 1 68AC3C70
P 1750 1550
F 0 "R27" V 1650 1550 50  0000 C CNN
F 1 "220R" V 1750 1550 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1750 1550 50  0001 C CNN
F 3 "~" H 1750 1550 50  0001 C CNN
	1    1750 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R28
U 1 1 68AC425E
P 2400 1300
F 0 "R28" V 2300 1300 50  0000 C CNN
F 1 "330R" V 2400 1300 31  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2400 1300 50  0001 C CNN
F 3 "~" H 2400 1300 50  0001 C CNN
	1    2400 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 1550 1450 1550
Wire Wire Line
	1850 1550 2050 1550
Wire Wire Line
	1600 1100 1200 1100
Wire Wire Line
	1000 1100 650  1100
Wire Wire Line
	650  1100 650  1300
Wire Wire Line
	650  1550 800  1550
Wire Wire Line
	1000 1300 650  1300
Connection ~ 650  1300
Wire Wire Line
	650  1300 650  1550
Wire Wire Line
	1200 1300 1450 1300
Wire Wire Line
	1450 1300 1450 1550
Connection ~ 1450 1550
Wire Wire Line
	1450 1550 1650 1550
Wire Wire Line
	2300 1300 2050 1300
Wire Wire Line
	2050 1300 2050 1550
Connection ~ 2050 1550
Wire Wire Line
	2050 1550 2100 1550
Wire Wire Line
	1900 1100 2800 1100
Wire Wire Line
	2500 1300 2800 1300
Wire Wire Line
	2800 1300 2800 1550
Wire Wire Line
	2800 1550 2700 1550
Wire Wire Line
	2800 1300 2800 1100
Connection ~ 2800 1300
Connection ~ 2800 1100
Wire Wire Line
	2800 1100 2850 1100
Wire Wire Line
	3450 1100 3800 1100
Wire Wire Line
	7200 3300 7250 3300
Wire Wire Line
	6050 1500 6850 1500
Wire Wire Line
	6850 1500 6850 2350
Wire Wire Line
	4700 1950 5450 1950
Wire Wire Line
	6050 1950 7600 1950
Wire Wire Line
	7600 1950 7600 2250
Wire Wire Line
	7600 2250 9050 2250
Wire Wire Line
	4700 1400 5450 1400
Wire Wire Line
	5450 1400 5450 900 
Wire Wire Line
	5450 900  5500 900 
Wire Wire Line
	6100 900  6300 900 
Wire Wire Line
	6900 900  7000 900 
Wire Wire Line
	7000 900  7000 1000
Wire Wire Line
	7000 1150 6550 1150
Wire Wire Line
	5950 1250 5500 1250
Wire Wire Line
	5500 1250 5500 1850
Wire Wire Line
	5500 1850 4700 1850
Wire Wire Line
	6550 1350 6800 1350
Wire Wire Line
	7400 1250 7450 1250
Wire Wire Line
	7450 1250 7450 1350
Wire Wire Line
	7450 1450 7400 1450
Wire Wire Line
	7000 1000 7600 1000
Wire Wire Line
	7600 1000 7600 1700
Wire Wire Line
	7600 1700 8800 1700
Connection ~ 7000 1000
Wire Wire Line
	7000 1000 7000 1150
Connection ~ 7450 1350
Wire Wire Line
	7450 1350 7450 1450
$Comp
L Device:C_Small C19
U 1 1 68B4E81C
P 6150 2800
F 0 "C19" H 6000 2850 50  0000 L CNN
F 1 "600pF" H 6000 2750 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6150 2800 50  0001 C CNN
F 3 "~" H 6150 2800 50  0001 C CNN
	1    6150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2600 5400 2600
Wire Wire Line
	5400 2600 5400 1650
Wire Wire Line
	5400 1650 4700 1650
$Comp
L power:GNDPWR #PWR024
U 1 1 68B65A2B
P 6300 2950
F 0 "#PWR024" H 6300 2750 50  0001 C CNN
F 1 "GNDPWR" H 6304 2796 50  0000 C CNN
F 2 "" H 6300 2900 50  0001 C CNN
F 3 "" H 6300 2900 50  0001 C CNN
	1    6300 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3300 3700 2000
Wire Wire Line
	3700 3300 6600 3300
Wire Wire Line
	3700 2000 3800 2000
NoConn ~ 3800 4000
Wire Wire Line
	3800 4200 3650 4200
Wire Wire Line
	3650 4200 3650 1300
Wire Wire Line
	3650 1300 3800 1300
Wire Wire Line
	3800 4400 3600 4400
Wire Wire Line
	3600 4400 3600 1500
Wire Wire Line
	3600 1500 3800 1500
Wire Wire Line
	3800 1400 3750 1400
Wire Wire Line
	3750 1400 3750 3700
Wire Wire Line
	3750 3700 6900 3700
Wire Wire Line
	6900 3700 6900 3500
Connection ~ 6900 3500
Wire Wire Line
	6900 3500 7250 3500
Wire Wire Line
	3800 4650 3550 4650
Wire Wire Line
	3550 4650 3550 1750
Wire Wire Line
	3550 1750 3800 1750
Wire Wire Line
	3500 2100 3800 2100
NoConn ~ 3800 4300
NoConn ~ 3800 4900
Wire Wire Line
	3800 5350 3400 5350
Wire Wire Line
	3400 5350 3400 2450
Wire Wire Line
	3400 2450 3800 2450
Wire Wire Line
	3800 5450 3350 5450
Wire Wire Line
	3350 5450 3350 2550
Wire Wire Line
	3350 2550 3800 2550
Wire Wire Line
	3800 5550 3300 5550
Wire Wire Line
	3300 5550 3300 2650
Wire Wire Line
	3300 2650 3800 2650
Wire Wire Line
	4700 4100 4800 4100
Wire Wire Line
	4800 4100 4800 1200
Wire Wire Line
	4800 1200 4700 1200
Wire Wire Line
	4700 4200 4850 4200
Wire Wire Line
	4850 4200 4850 1300
Wire Wire Line
	4850 1300 4700 1300
NoConn ~ 4700 4300
NoConn ~ 4700 4400
NoConn ~ 4700 4550
NoConn ~ 4700 4750
NoConn ~ 4700 4850
Wire Wire Line
	4700 4950 4950 4950
Wire Wire Line
	4950 4950 4950 2050
Wire Wire Line
	4950 2050 4700 2050
Wire Wire Line
	4700 5050 5000 5050
Wire Wire Line
	5000 5050 5000 2150
Wire Wire Line
	5000 2150 4700 2150
Wire Wire Line
	4700 5150 5050 5150
Wire Wire Line
	5050 5150 5050 2250
Wire Wire Line
	5050 2250 4700 2250
Wire Wire Line
	4700 5250 5100 5250
Wire Wire Line
	5100 5250 5100 2350
Wire Wire Line
	5100 2350 4700 2350
Wire Wire Line
	4700 5350 5150 5350
Wire Wire Line
	5150 5350 5150 2450
Wire Wire Line
	5150 2450 4700 2450
Wire Wire Line
	4700 5450 5200 5450
Wire Wire Line
	5200 5450 5200 2550
Wire Wire Line
	5200 2550 4700 2550
Wire Wire Line
	4700 5550 5250 5550
Wire Wire Line
	5250 5550 5250 2650
Wire Wire Line
	5250 2650 4700 2650
$Comp
L power:GNDPWR #PWR022
U 1 1 68C48A76
P 4350 3100
F 0 "#PWR022" H 4350 2900 50  0001 C CNN
F 1 "GNDPWR" H 4354 2946 50  0000 C CNN
F 2 "" H 4350 3050 50  0001 C CNN
F 3 "" H 4350 3050 50  0001 C CNN
	1    4350 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR023
U 1 1 68C494EE
P 4350 5850
F 0 "#PWR023" H 4350 5650 50  0001 C CNN
F 1 "GNDPWR" H 4354 5696 50  0000 C CNN
F 2 "" H 4350 5800 50  0001 C CNN
F 3 "" H 4350 5800 50  0001 C CNN
	1    4350 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 68C49CE8
P 3850 6000
F 0 "#PWR021" H 3850 5850 50  0001 C CNN
F 1 "+5V" H 3865 6173 50  0000 C CNN
F 2 "" H 3850 6000 50  0001 C CNN
F 3 "" H 3850 6000 50  0001 C CNN
	1    3850 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 68C4A15C
P 3850 3050
F 0 "#PWR020" H 3850 2900 50  0001 C CNN
F 1 "+5V" H 3865 3223 50  0000 C CNN
F 2 "" H 3850 3050 50  0001 C CNN
F 3 "" H 3850 3050 50  0001 C CNN
	1    3850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3050 4150 3050
Wire Wire Line
	4150 3050 4150 2950
Wire Wire Line
	3850 6000 4150 6000
Wire Wire Line
	4150 6000 4150 5850
Wire Wire Line
	800  7600 1050 7600
Wire Wire Line
	800  6550 800  6450
Wire Wire Line
	2000 6450 2000 6550
Wire Wire Line
	1350 6450 1350 6550
Connection ~ 1750 6450
Wire Wire Line
	1750 6450 2000 6450
Wire Wire Line
	2400 7250 2400 7450
Wire Wire Line
	2400 7450 2400 7600
Connection ~ 2400 7450
Wire Wire Line
	9050 4000 8900 4000
Wire Wire Line
	8900 4000 8900 1100
Wire Wire Line
	8900 1100 9050 1100
Wire Wire Line
	9050 4100 8850 4100
Wire Wire Line
	8850 4100 8850 1200
Wire Wire Line
	8850 1200 9050 1200
Wire Wire Line
	9050 4400 8750 4400
Wire Wire Line
	8750 4400 8750 1500
Wire Wire Line
	8750 1500 9050 1500
Wire Wire Line
	9050 4500 8700 4500
Wire Wire Line
	8700 4500 8700 1600
Wire Wire Line
	8700 1600 9050 1600
Wire Wire Line
	9050 4850 8650 4850
Wire Wire Line
	8650 4850 8650 2600
Wire Wire Line
	8650 2600 7150 2600
Wire Wire Line
	9050 5350 8550 5350
Wire Wire Line
	8550 5350 8550 2450
Wire Wire Line
	8550 2450 9050 2450
Wire Wire Line
	9050 5450 8500 5450
Wire Wire Line
	8500 2550 9050 2550
Wire Wire Line
	9050 5550 8950 5550
Wire Wire Line
	8950 5550 8950 2650
Wire Wire Line
	8950 2650 9050 2650
NoConn ~ 9050 5250
NoConn ~ 9050 5150
NoConn ~ 9050 4700
Wire Wire Line
	8500 2550 8500 5450
Wire Wire Line
	9900 4000 9950 4000
Wire Wire Line
	9950 4000 9950 1100
Wire Wire Line
	9950 1100 9900 1100
Wire Wire Line
	9900 4600 10000 4600
Wire Wire Line
	10000 4600 10000 1700
Wire Wire Line
	10000 1700 9900 1700
Wire Wire Line
	9900 4750 10050 4750
Wire Wire Line
	10050 4750 10050 1850
Wire Wire Line
	10050 1850 9900 1850
Wire Wire Line
	9900 4850 10100 4850
Wire Wire Line
	10100 1950 9900 1950
Wire Wire Line
	10100 4850 10100 1950
Wire Wire Line
	9900 4950 10150 4950
Wire Wire Line
	10150 4950 10150 2050
Wire Wire Line
	10150 2050 9900 2050
Wire Wire Line
	9900 5150 10200 5150
Wire Wire Line
	10200 5150 10200 2250
Wire Wire Line
	10200 2250 9900 2250
Wire Wire Line
	9900 5250 10250 5250
Wire Wire Line
	10250 5250 10250 2350
Wire Wire Line
	10250 2350 9900 2350
Wire Wire Line
	9900 5350 10300 5350
Wire Wire Line
	10300 5350 10300 2450
Wire Wire Line
	10300 2450 9900 2450
Wire Wire Line
	9900 5450 10450 5450
Wire Wire Line
	10450 2550 9900 2550
Wire Wire Line
	9900 5550 10400 5550
Wire Wire Line
	10400 5550 10400 2700
$Comp
L power:+5V #PWR028
U 1 1 68ED3C76
P 10450 2550
F 0 "#PWR028" H 10450 2400 50  0001 C CNN
F 1 "+5V" H 10465 2723 50  0000 C CNN
F 2 "" H 10450 2550 50  0001 C CNN
F 3 "" H 10450 2550 50  0001 C CNN
	1    10450 2550
	1    0    0    -1  
$EndComp
Connection ~ 10450 2550
$Comp
L power:GNDPWR #PWR027
U 1 1 68ED479B
P 10400 5550
F 0 "#PWR027" H 10400 5350 50  0001 C CNN
F 1 "GNDPWR" H 10404 5396 50  0000 C CNN
F 2 "" H 10400 5500 50  0001 C CNN
F 3 "" H 10400 5500 50  0001 C CNN
	1    10400 5550
	1    0    0    -1  
$EndComp
Connection ~ 10400 5550
Wire Wire Line
	9550 5850 9550 6000
Wire Wire Line
	9550 6000 8450 6000
Wire Wire Line
	8450 6000 8450 3300
Wire Wire Line
	8450 3300 9550 3300
Wire Wire Line
	9550 3300 9550 2950
Wire Wire Line
	9450 5850 9450 5950
Wire Wire Line
	9450 5950 8400 5950
Wire Wire Line
	8400 5950 8400 3250
Wire Wire Line
	8400 3250 9450 3250
Wire Wire Line
	9450 3250 9450 2950
Wire Wire Line
	9350 5850 9350 5900
Wire Wire Line
	9350 5900 8350 5900
Wire Wire Line
	8350 5900 8350 3200
Wire Wire Line
	8350 3200 9350 3200
Wire Wire Line
	9350 3200 9350 2950
$Comp
L 74xx:74LS165 U17
U 1 1 68F336AD
P 6100 5200
F 0 "U17" H 6100 5000 50  0000 L CNN
F 1 "74HCT165" H 6000 4900 50  0000 L CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 6100 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS165" H 6100 5200 50  0001 C CNN
	1    6100 5200
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS165_Socket SK3
U 1 1 68F3B395
P 7500 5200
F 0 "SK3" H 7500 5000 50  0000 C CNN
F 1 "IC8 Socket" H 7550 4900 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 7500 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS165" H 7500 5200 50  0001 C CNN
	1    7500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4600 7000 4600
Wire Wire Line
	6600 4700 7000 4700
Wire Wire Line
	6600 4800 7000 4800
Wire Wire Line
	6600 4900 7000 4900
Wire Wire Line
	6600 5000 7000 5000
Wire Wire Line
	6600 5100 7000 5100
Wire Wire Line
	6600 5200 7000 5200
Wire Wire Line
	6600 5300 7000 5300
Wire Wire Line
	6600 5400 7000 5400
Wire Wire Line
	6600 5900 7000 5900
Wire Wire Line
	6100 6200 6100 6250
Wire Wire Line
	6100 6250 6800 6250
Wire Wire Line
	7500 6250 7500 6200
Wire Wire Line
	6100 4300 6100 4250
Wire Wire Line
	6100 4250 6800 4250
Wire Wire Line
	7500 4250 7500 4300
$Comp
L power:GNDPWR #PWR026
U 1 1 690B70C3
P 6800 6250
F 0 "#PWR026" H 6800 6050 50  0001 C CNN
F 1 "GNDPWR" H 6804 6096 50  0000 C CNN
F 2 "" H 6800 6200 50  0001 C CNN
F 3 "" H 6800 6200 50  0001 C CNN
	1    6800 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 690B76CC
P 6800 4250
F 0 "#PWR025" H 6800 4100 50  0001 C CNN
F 1 "+5V" H 6815 4423 50  0000 C CNN
F 2 "" H 6800 4250 50  0001 C CNN
F 3 "" H 6800 4250 50  0001 C CNN
	1    6800 4250
	1    0    0    -1  
$EndComp
Connection ~ 6800 4250
Wire Wire Line
	6800 4250 7500 4250
Connection ~ 6800 6250
Wire Wire Line
	6800 6250 7500 6250
Wire Wire Line
	5600 4600 5550 4600
Wire Wire Line
	5550 4600 5550 4000
Wire Wire Line
	5550 4000 8050 4000
Wire Wire Line
	8050 4000 8050 4600
Wire Wire Line
	8050 4600 8000 4600
Wire Wire Line
	5600 4700 5500 4700
Wire Wire Line
	5500 4700 5500 3950
Wire Wire Line
	5500 3950 8100 3950
Wire Wire Line
	8100 3950 8100 4700
Wire Wire Line
	8100 4700 8000 4700
Wire Wire Line
	7850 3400 7900 3400
Wire Wire Line
	7900 3400 7900 3900
Wire Wire Line
	7900 3900 6700 3900
Wire Wire Line
	6700 5800 6600 5800
Wire Wire Line
	6650 3850 6650 5600
Wire Wire Line
	6650 5600 6600 5600
NoConn ~ 7000 5600
NoConn ~ 7000 5800
NoConn ~ 3000 7350
Wire Wire Line
	9900 2650 10400 2650
Wire Wire Line
	800  7550 800  7600
Connection ~ 4350 3050
Connection ~ 4150 3050
Wire Wire Line
	4350 3050 4350 3100
Wire Wire Line
	4350 2950 4350 3050
$Comp
L Device:C_Small C17
U 1 1 6947CFC2
P 4250 3050
F 0 "C17" V 4150 3000 50  0000 L CNN
F 1 "100nF" V 4350 2900 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4250 3050 50  0001 C CNN
F 3 "~" H 4250 3050 50  0001 C CNN
	1    4250 3050
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C20
U 1 1 694D8E82
P 10550 2550
F 0 "C20" V 10450 2500 50  0000 L CNN
F 1 "100nF" V 10650 2500 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10550 2550 50  0001 C CNN
F 3 "~" H 10550 2550 50  0001 C CNN
	1    10550 2550
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C15
U 1 1 69519745
P 1500 6550
F 0 "C15" V 1350 6500 50  0000 L CNN
F 1 "100nF" V 1600 6450 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1500 6550 50  0001 C CNN
F 3 "~" H 1500 6550 50  0001 C CNN
	1    1500 6550
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C16
U 1 1 69550FBF
P 2150 6550
F 0 "C16" V 2050 6500 50  0000 L CNN
F 1 "100nF" V 2250 6450 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2150 6550 50  0001 C CNN
F 3 "~" H 2150 6550 50  0001 C CNN
	1    2150 6550
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C14
U 1 1 695516CD
P 950 6550
F 0 "C14" V 800 6500 50  0000 L CNN
F 1 "100nF" V 1050 6450 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 950 6550 50  0001 C CNN
F 3 "~" H 950 6550 50  0001 C CNN
	1    950  6550
	0    1    1    0   
$EndComp
Wire Wire Line
	800  6550 850  6550
Connection ~ 800  6550
Wire Wire Line
	1350 6550 1400 6550
Connection ~ 1350 6550
Wire Wire Line
	2000 6550 2050 6550
Connection ~ 2000 6550
Wire Wire Line
	1050 6550 1050 7600
Connection ~ 1050 7600
Wire Wire Line
	1600 6550 1600 7600
Wire Wire Line
	2250 6550 2400 6550
Wire Wire Line
	10650 2550 10650 2700
$Comp
L Device:C_Small C18
U 1 1 69676916
P 6000 4250
F 0 "C18" V 5900 4200 50  0000 L CNN
F 1 "100nF" V 6100 4150 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6000 4250 50  0001 C CNN
F 3 "~" H 6000 4250 50  0001 C CNN
	1    6000 4250
	0    1    1    0   
$EndComp
Connection ~ 6100 4250
Wire Wire Line
	6700 3900 6700 5800
Wire Wire Line
	5900 4250 5600 4250
Wire Wire Line
	5600 6250 6100 6250
Connection ~ 6100 6250
Wire Wire Line
	5600 4250 5600 6250
Wire Wire Line
	10450 2550 10450 5450
Wire Wire Line
	10650 2700 10400 2700
Connection ~ 10400 2700
Wire Wire Line
	10400 2700 10400 2650
$Comp
L 74xx:74HC86 U?
U 3 1 6A1F798B
P 7550 3400
AR Path="/6A1F798B" Ref="U?"  Part="3" 
AR Path="/689FAE6F/6A1F798B" Ref="U?"  Part="3" 
AR Path="/68A807E5/6A1F798B" Ref="U5"  Part="3" 
F 0 "U5" H 7550 3400 50  0000 C CNN
F 1 "74HCT86" H 7500 3200 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7550 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 7550 3400 50  0001 C CNN
	3    7550 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 7600 1350 7600
Wire Wire Line
	800  6450 1350 6450
Connection ~ 1350 6450
Wire Wire Line
	1350 6450 1750 6450
Connection ~ 1600 7600
Wire Wire Line
	1600 7600 1750 7600
Wire Wire Line
	1350 7550 1350 7600
Connection ~ 1350 7600
Wire Wire Line
	1350 7600 1600 7600
Wire Wire Line
	1750 7600 2000 7600
Connection ~ 1750 7600
Connection ~ 2400 7250
Wire Wire Line
	2000 7550 2000 7600
Connection ~ 2000 7600
Wire Wire Line
	2000 7600 2400 7600
Text GLabel 6100 3500 0    39   Input ~ 0
~40~80-MODE
Wire Wire Line
	6100 3500 6900 3500
Wire Wire Line
	2400 6550 2400 6900
$Comp
L 74xx:74LS04 U14
U 4 1 61F80807
P 2700 6900
F 0 "U14" H 2650 6900 50  0000 C CNN
F 1 "74ALS04" H 2650 6700 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2700 6900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2700 6900 50  0001 C CNN
	4    2700 6900
	1    0    0    -1  
$EndComp
Connection ~ 2400 6900
Wire Wire Line
	2400 6900 2400 7250
NoConn ~ 3000 6900
$Comp
L Device:C_Small C?
U 1 1 5EA7CD9C
P 2800 1800
F 0 "C?" H 2700 1700 50  0000 L CNN
F 1 "100pF" H 2650 1900 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2800 1800 50  0001 C CNN
F 3 "~" H 2800 1800 50  0001 C CNN
	1    2800 1800
	-1   0    0    1   
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 5EA7F54E
P 2800 2050
F 0 "#PWR?" H 2800 1850 50  0001 C CNN
F 1 "GNDPWR" H 2804 1896 50  0000 C CNN
F 2 "" H 2800 2000 50  0001 C CNN
F 3 "" H 2800 2000 50  0001 C CNN
	1    2800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1700 2800 1550
Connection ~ 2800 1550
Wire Wire Line
	2800 2050 2800 1900
Wire Wire Line
	7850 1300 7850 700 
Wire Wire Line
	7850 700  5300 700 
Wire Wire Line
	5300 700  5300 1100
Wire Wire Line
	4700 1100 5300 1100
Wire Wire Line
	7850 1300 9050 1300
Wire Wire Line
	4700 1500 5250 1500
Wire Wire Line
	5250 1500 5250 650 
Wire Wire Line
	5250 650  7900 650 
Wire Wire Line
	7900 650  7900 1800
Wire Wire Line
	7900 1800 9050 1800
Wire Wire Line
	3500 2100 3500 900 
Wire Wire Line
	3500 900  5350 900 
Wire Wire Line
	5350 900  5350 1500
Wire Wire Line
	5350 1500 5450 1500
NoConn ~ 3800 5000
$Comp
L Device:C_Small C?
U 1 1 5EC029C9
P 6300 2800
F 0 "C?" H 6150 2850 50  0000 L CNN
F 1 "300pF" H 6150 2750 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6300 2800 50  0001 C CNN
F 3 "~" H 6300 2800 50  0001 C CNN
	1    6300 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EC038AD
P 6450 2800
F 0 "C?" H 6300 2850 50  0000 L CNN
F 1 "200pF" H 6300 2750 31  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6450 2800 50  0001 C CNN
F 3 "~" H 6450 2800 50  0001 C CNN
	1    6450 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2900 6150 2950
Wire Wire Line
	6150 2950 6300 2950
Wire Wire Line
	6450 2950 6450 2900
Connection ~ 6300 2950
Wire Wire Line
	6300 2950 6450 2950
Wire Wire Line
	6300 2900 6300 2950
Wire Wire Line
	6050 2600 6150 2600
Wire Wire Line
	6150 2700 6150 2600
Connection ~ 6150 2600
Wire Wire Line
	6150 2600 6300 2600
Wire Wire Line
	6300 2700 6300 2600
Connection ~ 6300 2600
Wire Wire Line
	6300 2600 6450 2600
Wire Wire Line
	6450 2700 6450 2600
Connection ~ 6450 2600
Wire Wire Line
	6450 2600 6550 2600
Wire Wire Line
	9050 4600 8800 4600
Wire Wire Line
	8800 4600 8800 1700
Connection ~ 8800 1700
Wire Wire Line
	8800 1700 9050 1700
Wire Wire Line
	8650 1950 8650 2600
Wire Wire Line
	8650 1950 9050 1950
Connection ~ 8650 2600
Wire Wire Line
	9050 2150 9000 2150
Wire Wire Line
	9000 2150 9000 1350
Wire Wire Line
	7450 1350 9000 1350
Wire Wire Line
	9050 5050 9000 5050
Wire Wire Line
	9000 5050 9000 2150
Connection ~ 9000 2150
NoConn ~ 4700 4650
NoConn ~ 9050 4950
NoConn ~ 9050 4200
NoConn ~ 4700 4000
Wire Wire Line
	7850 1750 7850 2050
Wire Wire Line
	4700 1750 7850 1750
Wire Wire Line
	7850 2050 9050 2050
Wire Wire Line
	6850 2350 7200 2350
Wire Wire Line
	7250 2850 7200 2850
Wire Wire Line
	7200 2850 7200 2350
Connection ~ 7200 2350
Wire Wire Line
	7200 2350 9050 2350
Text GLabel 7300 2200 2    39   Output ~ 0
Load
Wire Wire Line
	7850 2850 7950 2850
Wire Wire Line
	6650 3850 7950 3850
Wire Wire Line
	7950 3850 7950 2850
Wire Wire Line
	7300 2200 7200 2200
Wire Wire Line
	7200 2200 7200 2350
$EndSCHEMATC
