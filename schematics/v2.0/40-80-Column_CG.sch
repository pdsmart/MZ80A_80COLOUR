EESchema Schematic File Version 4
LIBS:MZ80-80CLR-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title "MZ-80A 40/80 Column & CG Module"
Date "2020-06-25"
Rev "2.0"
Comp ""
Comment1 "to allow the selection of different character sets."
Comment2 "columns. Additionally expand the character generation ROM"
Comment3 "create the ability to programmatically switch between 40/80."
Comment4 "Using original gate arrays with logic substituted with the CPLD"
$EndDescr
Entry Wire Line
	1300 650  1400 750 
Entry Wire Line
	1300 850  1400 950 
Entry Wire Line
	1300 950  1400 1050
Entry Wire Line
	1300 1050 1400 1150
Entry Wire Line
	1300 1150 1400 1250
Entry Wire Line
	1300 1250 1400 1350
Entry Wire Line
	1300 1350 1400 1450
Entry Bus Bus
	1400 650  1500 550 
NoConn ~ 4000 2350
NoConn ~ 4000 2250
NoConn ~ 4000 1800
Wire Wire Line
	4850 1100 4900 1100
Wire Wire Line
	4850 2350 5100 2350
Wire Wire Line
	4850 2550 5400 2550
Wire Wire Line
	4850 2650 5350 2650
$Comp
L power:+5V #PWR048
U 1 1 68ED3C76
P 5400 2500
F 0 "#PWR048" H 5400 2350 50  0001 C CNN
F 1 "+5V" H 5415 2673 50  0000 C CNN
F 2 "" H 5400 2500 50  0001 C CNN
F 3 "" H 5400 2500 50  0001 C CNN
	1    5400 2500
	1    0    0    -1  
$EndComp
Connection ~ 5400 2500
$Comp
L power:GNDPWR #PWR047
U 1 1 68ED479B
P 5350 2650
F 0 "#PWR047" H 5350 2450 50  0001 C CNN
F 1 "GNDPWR" H 5354 2496 50  0000 C CNN
F 2 "" H 5350 2600 50  0001 C CNN
F 3 "" H 5350 2600 50  0001 C CNN
	1    5350 2650
	1    0    0    -1  
$EndComp
Connection ~ 5350 2650
$Comp
L 74xx:74LS165_Socket SK3
U 1 1 68F3B395
P 2550 1850
F 0 "SK3" H 2550 1650 50  0000 C CNN
F 1 "IC8 Socket" H 2600 1550 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 2550 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS165" H 2550 1850 50  0001 C CNN
	1    2550 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2900 2550 2850
Wire Wire Line
	2550 900  2550 950 
$Comp
L power:GNDPWR #PWR041
U 1 1 690B70C3
P 2550 2900
F 0 "#PWR041" H 2550 2700 50  0001 C CNN
F 1 "GNDPWR" H 2554 2746 50  0000 C CNN
F 2 "" H 2550 2850 50  0001 C CNN
F 3 "" H 2550 2850 50  0001 C CNN
	1    2550 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR042
U 1 1 690B76CC
P 2550 900
F 0 "#PWR042" H 2550 750 50  0001 C CNN
F 1 "+5V" H 2565 1073 50  0000 C CNN
F 2 "" H 2550 900 50  0001 C CNN
F 3 "" H 2550 900 50  0001 C CNN
	1    2550 900 
	1    0    0    -1  
$EndComp
NoConn ~ 2050 2250
NoConn ~ 2050 2450
$Comp
L Device:C_Small C42
U 1 1 694D8E82
P 5500 2500
F 0 "C42" V 5400 2450 50  0000 L CNN
F 1 "100nF" V 5600 2450 31  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5500 2500 50  0001 C CNN
F 3 "~" H 5500 2500 50  0001 C CNN
	1    5500 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 2500 5600 2650
Wire Wire Line
	5400 2500 5400 2550
Wire Wire Line
	5600 2650 5350 2650
NoConn ~ 4000 2050
NoConn ~ 4000 1300
Entry Wire Line
	5000 550  5100 650 
Text Label 3650 650  3    31   ~ 0
2MHZ_OUT
Entry Wire Line
	3350 550  3450 650 
Entry Wire Line
	3450 550  3550 650 
Text Label 3450 650  3    31   ~ 0
1MHZ_OUT
Entry Wire Line
	4800 550  4900 650 
Text Label 3750 650  3    31   ~ 0
31.5K_OUT
Entry Wire Line
	3550 550  3650 650 
Entry Wire Line
	3650 550  3750 650 
Text Label 5100 650  3    31   ~ 0
~VBLNK_OUT~
Entry Wire Line
	4900 550  5000 650 
NoConn ~ 3050 1350
Entry Wire Line
	3000 550  3100 650 
Text Label 3100 650  3    31   ~ 0
SRVIDEO_OUT
Wire Wire Line
	3100 650  3100 1250
Wire Wire Line
	950  650  1300 650 
Text GLabel 900  1350 0    39   Input ~ 0
~VBLNK_OUT~
Text GLabel 900  850  0    39   Input ~ 0
~HBLNK_OUT~
Text GLabel 900  1450 0    39   Output ~ 0
~VRAM_CS_IN~
Text GLabel 800  1150 0    39   Input ~ 0
HSY_OUT
Text GLabel 950  650  0    39   Input ~ 0
SRVIDEO_OUT
Text GLabel 900  1250 0    39   Input ~ 0
SYNCH_OUT
Text GLabel 850  1050 0    39   Input ~ 0
31.5K_OUT
Text GLabel 850  950  0    39   Input ~ 0
2MHZ_OUT
Wire Wire Line
	3050 1250 3100 1250
NoConn ~ 2050 2550
NoConn ~ 2050 1250
Text GLabel 950  3350 0    39   BiDi ~ 0
VRAMD0[7..0]
Entry Bus Bus
	3100 3450 3000 3350
Entry Wire Line
	1300 750  1400 850 
Text GLabel 850  750  0    39   Input ~ 0
1MHZ_OUT
$Comp
L power:+5V #PWR?
U 1 1 76370325
P 2250 3650
AR Path="/76370325" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/76370325" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/76370325" Ref="#PWR?"  Part="1" 
AR Path="/6E14A406/76370325" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 2250 3500 50  0001 C CNN
F 1 "+5V" H 2250 3800 50  0000 C CNN
F 2 "" H 2250 3650 50  0001 C CNN
F 3 "" H 2250 3650 50  0001 C CNN
	1    2250 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR039
U 1 1 742271BF
P 2250 5350
F 0 "#PWR039" H 2250 5150 50  0001 C CNN
F 1 "GNDPWR" H 2254 5196 50  0000 C CNN
F 2 "" H 2250 5300 50  0001 C CNN
F 3 "" H 2250 5300 50  0001 C CNN
	1    2250 5350
	1    0    0    -1  
$EndComp
$Comp
L MZ80-80CLR-rescue:2016_Socket SK?
U 1 1 66246898
P 2250 4500
AR Path="/66246898" Ref="SK?"  Part="1" 
AR Path="/689FAE6F/66246898" Ref="SK?"  Part="1" 
AR Path="/600002AE/66246898" Ref="SK?"  Part="1" 
AR Path="/6E14A406/66246898" Ref="SK1"  Part="1" 
F 0 "SK1" H 2250 4200 50  0000 C CNN
F 1 "IC15 Socket" H 2250 4100 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 2250 4500 50  0001 C CNN
F 3 "" H 2250 4500 50  0001 C CNN
	1    2250 4500
	1    0    0    -1  
$EndComp
Entry Wire Line
	3000 4250 3100 4350
Entry Wire Line
	3000 4350 3100 4450
Entry Wire Line
	3000 4450 3100 4550
Entry Wire Line
	3000 4550 3100 4650
Text Label 2700 4250 0    31   ~ 0
VRAMD4
Text Label 2700 4350 0    31   ~ 0
VRAMD5
Text Label 2700 4450 0    31   ~ 0
VRAMD6
Text Label 2700 4550 0    31   ~ 0
VRAMD7
Entry Wire Line
	3000 3850 3100 3950
Entry Wire Line
	3000 3950 3100 4050
Entry Wire Line
	3000 4050 3100 4150
Entry Wire Line
	3000 4150 3100 4250
Text Label 2700 3850 0    31   ~ 0
VRAMD0
Text Label 2700 3950 0    31   ~ 0
VRAMD1
Text Label 2700 4050 0    31   ~ 0
VRAMD2
Text Label 2700 4150 0    31   ~ 0
VRAMD3
Wire Wire Line
	2650 3850 3000 3850
Wire Wire Line
	2650 3950 3000 3950
Wire Wire Line
	2650 4050 3000 4050
Wire Wire Line
	2650 4150 3000 4150
Wire Wire Line
	2650 4250 3000 4250
Wire Wire Line
	2650 4350 3000 4350
Wire Wire Line
	2650 4450 3000 4450
Wire Wire Line
	2650 4550 3000 4550
NoConn ~ 1850 5100
NoConn ~ 2050 1350
NoConn ~ 2050 1450
NoConn ~ 2050 1550
NoConn ~ 2050 1650
NoConn ~ 2050 1750
NoConn ~ 2050 1850
NoConn ~ 2050 1950
NoConn ~ 2050 2050
Wire Bus Line
	950  3350 3000 3350
NoConn ~ 1850 3800
NoConn ~ 1850 3900
NoConn ~ 1850 4000
NoConn ~ 1850 4100
NoConn ~ 1850 4200
NoConn ~ 1850 4300
NoConn ~ 1850 4400
NoConn ~ 1850 4500
NoConn ~ 1850 4600
NoConn ~ 1850 4700
NoConn ~ 1850 4800
NoConn ~ 1850 5000
NoConn ~ 4300 2950
NoConn ~ 4400 2950
NoConn ~ 4500 2950
Wire Wire Line
	4000 2450 3950 2450
Wire Wire Line
	3950 2450 3950 2550
Wire Wire Line
	3950 2550 4000 2550
Wire Wire Line
	3950 2550 3950 2650
Wire Wire Line
	3950 2650 4000 2650
Connection ~ 3950 2550
Wire Wire Line
	3950 2650 3950 2700
Connection ~ 3950 2650
$Comp
L power:GNDPWR #PWR?
U 1 1 5FB6960C
P 3950 2700
F 0 "#PWR?" H 3950 2500 50  0001 C CNN
F 1 "GNDPWR" H 3954 2546 50  0000 C CNN
F 2 "" H 3950 2650 50  0001 C CNN
F 3 "" H 3950 2650 50  0001 C CNN
	1    3950 2700
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:MB14298_Socket SK4
U 1 1 68A811B6
P 4400 1950
F 0 "SK4" H 4450 2450 39  0000 C CNN
F 1 "IC20 Socket" H 4500 2350 39  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 4400 2950 39  0001 C CNN
F 3 "" H 4400 2950 39  0001 C CNN
	1    4400 1950
	1    0    0    -1  
$EndComp
NoConn ~ 4000 1600
NoConn ~ 4000 1500
NoConn ~ 4000 1200
NoConn ~ 4850 1850
NoConn ~ 4850 1950
NoConn ~ 4850 2050
NoConn ~ 4850 2250
NoConn ~ 4850 2450
Wire Wire Line
	4900 1100 4900 650 
Wire Wire Line
	5000 1700 5000 650 
Wire Wire Line
	4850 1700 5000 1700
Wire Wire Line
	5100 2350 5100 650 
Text Label 4900 650  3    31   ~ 0
HSY_OUT
Text Label 5000 650  3    31   ~ 0
SYNCH_OUT
Wire Wire Line
	3750 1100 3750 650 
Wire Wire Line
	3750 1100 4000 1100
Wire Wire Line
	3650 1700 3650 650 
Wire Wire Line
	3650 1700 4000 1700
Wire Wire Line
	3550 1950 3550 650 
Wire Wire Line
	3550 1950 4000 1950
Text Label 3550 650  3    31   ~ 0
~HBLNK_OUT~
Wire Wire Line
	3450 2150 3450 650 
Wire Wire Line
	3450 2150 4000 2150
Wire Wire Line
	1850 5200 1700 5200
Wire Wire Line
	1700 5200 1700 650 
Entry Wire Line
	1600 550  1700 650 
Text Label 1700 650  3    31   ~ 0
~VRAM_CS_IN~
Wire Wire Line
	850  750  1300 750 
Wire Wire Line
	900  850  1300 850 
Wire Wire Line
	850  950  1300 950 
Wire Wire Line
	850  1050 1300 1050
Wire Wire Line
	800  1150 1300 1150
Wire Wire Line
	900  1250 1300 1250
Wire Wire Line
	900  1350 1300 1350
Wire Wire Line
	900  1450 1300 1450
Entry Wire Line
	1300 1450 1400 1550
Wire Bus Line
	1500 550  5000 550 
Wire Bus Line
	1400 650  1400 1550
Wire Bus Line
	3100 3450 3100 4650
$EndSCHEMATC
