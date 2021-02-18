EESchema Schematic File Version 4
LIBS:MZ80-80CLR
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "FPGA and CPLD Module"
Date "2020-09-04"
Rev "2.0b"
Comp ""
Comment1 "FPGA acts as the video memory."
Comment2 "translation to the FPGA as the CPLD is 5V tolerant. The onboard RAM inside the "
Comment3 "logic replacement for the Sharp Gate Array interconnect and also as a voltage"
Comment4 "FPGA to add MZ80B graphics and MZ700/80A Colour attributes. CPLD is acting as the"
$EndDescr
Wire Wire Line
	1450 1000 1950 1000
Wire Wire Line
	1450 900  1950 900 
Wire Wire Line
	1450 800  1950 800 
Entry Wire Line
	1950 1000 2050 1100
Entry Wire Line
	1950 900  2050 1000
Entry Wire Line
	1950 800  2050 900 
Wire Bus Line
	1550 3550 1950 3550
Entry Bus Bus
	1450 3650 1550 3550
Entry Bus Bus
	1950 3550 2050 3450
Wire Wire Line
	3850 800  4400 800 
Text Label 4000 2200 0    31   ~ 0
VADDR0
Text Label 4000 2300 0    31   ~ 0
VADDR1
Text Label 4000 2400 0    31   ~ 0
VADDR2
Text Label 4000 2500 0    31   ~ 0
VADDR3
Text Label 4000 2600 0    31   ~ 0
VADDR4
Text Label 4000 2700 0    31   ~ 0
VADDR5
Text Label 4000 2800 0    31   ~ 0
VADDR6
Text Label 4000 2900 0    31   ~ 0
VADDR7
Text Label 4000 3000 0    31   ~ 0
VADDR8
Text Label 4000 3100 0    31   ~ 0
VADDR9
Text Label 4000 3200 0    31   ~ 0
VADDR10
Text Label 4000 3300 0    31   ~ 0
VADDR11
Text Label 4000 3400 0    31   ~ 0
VADDR12
Text Label 4000 3500 0    31   ~ 0
VADDR13
Entry Bus Bus
	1650 7750 1750 7650
Entry Bus Bus
	1950 1100 2050 1200
Wire Bus Line
	750  1100 1950 1100
Wire Wire Line
	3850 900  4400 900 
Wire Wire Line
	3850 1000 4400 1000
Wire Wire Line
	3850 1100 4400 1100
Wire Wire Line
	3850 1200 4400 1200
Wire Wire Line
	3850 1300 4400 1300
Wire Wire Line
	3850 1400 4400 1400
Wire Wire Line
	3850 1500 4400 1500
Wire Wire Line
	3850 1600 4400 1600
Wire Wire Line
	3850 1700 4400 1700
Wire Wire Line
	3850 1800 4400 1800
Wire Wire Line
	3850 1900 4400 1900
Wire Wire Line
	3850 2000 4400 2000
Wire Wire Line
	3850 2100 4400 2100
Text Label 1550 2300 0    31   ~ 0
MB_LOAD
Entry Wire Line
	1950 2300 2050 2400
Wire Wire Line
	1450 1800 1500 1800
$Comp
L Connector_Generic:Conn_02x17_Odd_Even J?
U 1 1 6E233526
P 1150 2300
AR Path="/6E233526" Ref="J?"  Part="1" 
AR Path="/689FAE6F/6E233526" Ref="J?"  Part="1" 
AR Path="/600002AE/6E233526" Ref="J2"  Part="1" 
AR Path="/6E14A406/6E233526" Ref="J?"  Part="1" 
F 0 "J2" H 1200 3200 50  0000 C CNN
F 1 "M/Board CN" H 1200 3300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x17_P2.54mm_Vertical" H 1150 2300 50  0001 C CNN
F 3 "~" H 1150 2300 50  0001 C CNN
	1    1150 2300
	1    0    0    1   
$EndComp
Entry Wire Line
	1650 2400 1750 2500
Entry Wire Line
	1650 2500 1750 2600
Entry Wire Line
	1650 2600 1750 2700
Entry Wire Line
	1650 2700 1750 2800
Entry Wire Line
	1650 2800 1750 2900
Entry Wire Line
	1650 2900 1750 3000
Entry Wire Line
	1650 3000 1750 3100
Entry Wire Line
	1650 3100 1750 3200
Wire Wire Line
	1450 2400 1650 2400
Wire Wire Line
	1450 2500 1650 2500
Wire Wire Line
	1450 2600 1650 2600
Wire Wire Line
	1450 2700 1650 2700
Wire Wire Line
	1450 2800 1650 2800
Wire Wire Line
	1450 2900 1650 2900
Wire Wire Line
	1450 3000 1650 3000
Wire Wire Line
	1450 3100 1650 3100
Entry Wire Line
	2050 2500 2150 2400
Entry Wire Line
	2050 1100 2150 1000
Entry Wire Line
	2050 1200 2150 1100
Entry Wire Line
	2050 1300 2150 1200
Entry Wire Line
	4650 4900 4550 4800
Entry Wire Line
	4650 5000 4550 4900
Entry Wire Line
	4650 5100 4550 5000
Entry Wire Line
	4650 5200 4550 5100
Entry Wire Line
	4650 5300 4550 5200
Entry Wire Line
	4650 5400 4550 5300
Entry Wire Line
	4650 5500 4550 5400
Entry Wire Line
	4650 5600 4550 5500
Entry Wire Line
	2050 900  2150 800 
Entry Wire Line
	2050 1000 2150 900 
Entry Wire Line
	2050 1400 2150 1300
Entry Wire Line
	2050 1500 2150 1400
Entry Wire Line
	2050 1600 2150 1500
Entry Wire Line
	2050 1700 2150 1600
Entry Wire Line
	2050 1900 2150 1800
Entry Wire Line
	2050 2000 2150 1900
Entry Wire Line
	2050 2100 2150 2000
Entry Wire Line
	2050 2200 2150 2100
Entry Wire Line
	550  800  650  900 
Entry Wire Line
	550  700  650  800 
Entry Wire Line
	550  900  650  1000
Wire Wire Line
	1450 1600 1500 1600
Wire Wire Line
	900  1600 900  3250
Wire Wire Line
	950  1600 900  1600
$Comp
L power:GNDPWR #PWR?
U 1 1 6E2335BB
P 900 3300
AR Path="/6E2335BB" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/6E2335BB" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/6E2335BB" Ref="#PWR017"  Part="1" 
AR Path="/6E14A406/6E2335BB" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 900 3100 50  0001 C CNN
F 1 "GNDPWR" H 904 3146 50  0000 C CNN
F 2 "" H 900 3250 50  0001 C CNN
F 3 "" H 900 3250 50  0001 C CNN
	1    900  3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  2800 950  2800
Wire Wire Line
	650  3100 950  3100
Wire Wire Line
	650  3000 950  3000
Wire Wire Line
	650  2900 950  2900
Wire Wire Line
	650  2700 950  2700
Wire Wire Line
	650  2600 950  2600
Wire Wire Line
	650  2500 950  2500
Wire Wire Line
	650  2400 950  2400
Wire Wire Line
	650  2300 950  2300
Wire Wire Line
	650  2200 950  2200
Wire Wire Line
	650  2100 950  2100
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 6E2335D4
P 1150 900
AR Path="/689FAE6F/6E2335D4" Ref="J?"  Part="1" 
AR Path="/600002AE/6E2335D4" Ref="J1"  Part="1" 
AR Path="/6E14A406/6E2335D4" Ref="J?"  Part="1" 
F 0 "J1" H 1200 1217 50  0000 C CNN
F 1 "IOEXT" H 1200 1126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 1150 900 50  0001 C CNN
F 3 "~" H 1150 900 50  0001 C CNN
	1    1150 900 
	1    0    0    -1  
$EndComp
Entry Wire Line
	4500 1000 4400 900 
Entry Wire Line
	4500 900  4400 800 
Entry Wire Line
	4500 2000 4400 1900
Entry Wire Line
	4500 2100 4400 2000
Entry Wire Line
	4500 1900 4400 1800
Entry Wire Line
	4500 1800 4400 1700
Entry Wire Line
	4500 1700 4400 1600
Entry Wire Line
	4500 1600 4400 1500
Entry Wire Line
	4500 1500 4400 1400
Entry Wire Line
	4500 1400 4400 1300
Entry Wire Line
	4500 1300 4400 1200
Entry Wire Line
	4500 1200 4400 1100
Entry Wire Line
	4500 1100 4400 1000
Wire Wire Line
	1200 1400 1500 1400
Connection ~ 1200 1400
$Comp
L power:+5V #PWR?
U 1 1 6E2335EA
P 1200 1400
AR Path="/6E2335EA" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/6E2335EA" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/6E2335EA" Ref="#PWR018"  Part="1" 
AR Path="/6E14A406/6E2335EA" Ref="#PWR?"  Part="1" 
F 0 "#PWR018" H 1200 1250 50  0001 C CNN
F 1 "+5V" H 1200 1550 50  0000 C CNN
F 2 "" H 1200 1400 50  0001 C CNN
F 3 "" H 1200 1400 50  0001 C CNN
	1    1200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1500 1450 1500
Wire Wire Line
	1500 1400 1500 1500
Wire Wire Line
	900  1400 1200 1400
Wire Wire Line
	900  1500 900  1400
Wire Wire Line
	950  1500 900  1500
Text Label 1550 1900 0    31   ~ 0
~MB_HBLNK~
Text Label 1550 2000 0    31   ~ 0
MB_SYNCH
Text Label 1550 2100 0    31   ~ 0
~MB_V-HBLNK~
Text Label 1550 2200 0    31   ~ 0
MB_VIDEO
Text Label 750  2000 0    31   ~ 0
~WR~
Text Label 750  3100 0    31   ~ 0
A0
Text Label 750  3000 0    31   ~ 0
A1
Text Label 750  2900 0    31   ~ 0
A2
Text Label 750  2800 0    31   ~ 0
A3
Text Label 750  2700 0    31   ~ 0
A4
Text Label 750  2600 0    31   ~ 0
A5
Text Label 750  2500 0    31   ~ 0
A6
Text Label 750  2400 0    31   ~ 0
A7
Text Label 750  2200 0    31   ~ 0
A9
Text Label 750  2100 0    31   ~ 0
A10
Text Label 750  1900 0    31   ~ 0
~GT~
Text Label 750  1800 0    31   ~ 0
~CS~
Text Label 750  1700 0    31   ~ 0
~RD~
Entry Bus Bus
	550  650  650  550 
Entry Wire Line
	1950 1900 2050 2000
Entry Wire Line
	1950 2200 2050 2300
Entry Wire Line
	1950 2100 2050 2200
Entry Wire Line
	1950 2000 2050 2100
Wire Wire Line
	750  1700 950  1700
Wire Wire Line
	750  1800 950  1800
Entry Wire Line
	650  1900 750  2000
Entry Wire Line
	650  1800 750  1900
Wire Wire Line
	750  1900 950  1900
Entry Wire Line
	550  2100 650  2200
Entry Wire Line
	550  2000 650  2100
Entry Wire Line
	550  2200 650  2300
Entry Wire Line
	550  2300 650  2400
Entry Wire Line
	550  2400 650  2500
Entry Wire Line
	550  2500 650  2600
Entry Wire Line
	550  2600 650  2700
Entry Wire Line
	550  2700 650  2800
Entry Wire Line
	550  2800 650  2900
Entry Wire Line
	550  2900 650  3000
Entry Wire Line
	550  3000 650  3100
Entry Wire Line
	650  1600 750  1700
Wire Wire Line
	750  2000 950  2000
Entry Wire Line
	650  1700 750  1800
Entry Bus Bus
	650  1200 750  1100
Entry Bus Bus
	4550 7750 4650 7650
Entry Bus Bus
	1750 7650 1850 7750
Wire Wire Line
	1500 1600 1500 1800
Wire Wire Line
	1450 1900 1500 1900
Wire Wire Line
	1450 2000 1500 2000
Wire Wire Line
	1450 2100 1500 2100
Wire Wire Line
	1450 2200 1500 2200
Wire Wire Line
	1450 2300 1500 2300
Connection ~ 1500 1800
Text Label 750  2300 0    31   ~ 0
A8
Wire Wire Line
	650  1000 950  1000
Wire Wire Line
	650  900  950  900 
Wire Wire Line
	650  800  950  800 
$Comp
L epm7128slc84:EPM7512AEQFP144-4 U5
U 1 1 6E46C742
P 3200 3700
F 0 "U5" H 3200 6600 50  0000 C CNN
F 1 "EPM7512AEQFP144-3" H 3200 950 50  0000 C CNN
F 2 "Package_QFP:TQFP-144_20x20mm_P0.5mm" H 4050 800 50  0001 L CNN
F 3 "https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/hb/max2/max2_mii5v1.pdf" H 3200 3700 50  0001 C CNN
	1    3200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2400 2550 2400
Wire Wire Line
	2150 2500 2550 2500
Entry Bus Bus
	4400 550  4500 650 
Text Label 4000 800  0    31   ~ 0
A0
Text Label 4000 900  0    31   ~ 0
A1
Text Label 4000 1000 0    31   ~ 0
A2
Text Label 4000 1100 0    31   ~ 0
A3
Text Label 4000 1200 0    31   ~ 0
A4
Text Label 4000 1300 0    31   ~ 0
A5
Text Label 4000 1400 0    31   ~ 0
A6
Text Label 4000 1500 0    31   ~ 0
A7
Text Label 4000 1700 0    31   ~ 0
A9
Text Label 4000 1800 0    31   ~ 0
A10
Text Label 4000 1600 0    31   ~ 0
A8
Entry Wire Line
	4400 2100 4500 2200
Wire Wire Line
	2150 2100 2550 2100
Wire Wire Line
	2150 2000 2550 2000
Wire Wire Line
	2150 1900 2550 1900
Wire Wire Line
	2150 1500 2550 1500
Wire Wire Line
	2150 800  2550 800 
Wire Wire Line
	2150 900  2550 900 
Wire Wire Line
	2150 1000 2550 1000
Wire Wire Line
	2150 1100 2550 1100
Wire Wire Line
	2150 1200 2550 1200
Wire Wire Line
	2150 1300 2550 1300
Wire Wire Line
	2150 1400 2550 1400
Wire Wire Line
	4550 4700 3850 4700
Wire Wire Line
	4550 4600 3850 4600
Wire Wire Line
	4550 4500 3850 4500
Wire Wire Line
	4550 4400 3850 4400
Wire Wire Line
	4550 4300 3850 4300
Wire Wire Line
	4550 4200 3850 4200
Wire Wire Line
	4550 4100 3850 4100
Wire Wire Line
	4550 4000 3850 4000
Text Label 1550 3100 0    31   ~ 0
D0
Text Label 1550 3000 0    31   ~ 0
D1
Text Label 1550 2900 0    31   ~ 0
D2
Text Label 1550 2800 0    31   ~ 0
D3
Text Label 1550 2700 0    31   ~ 0
D4
Text Label 1550 2600 0    31   ~ 0
D5
Text Label 1550 2500 0    31   ~ 0
D6
Text Label 1550 2400 0    31   ~ 0
D7
Wire Wire Line
	3850 3300 4400 3300
Wire Wire Line
	3850 3200 4400 3200
Wire Wire Line
	3850 3100 4400 3100
Wire Wire Line
	3850 3000 4400 3000
Wire Wire Line
	3850 2900 4400 2900
Wire Wire Line
	3850 2800 4400 2800
Wire Wire Line
	3850 2700 4400 2700
Wire Wire Line
	3850 2600 4400 2600
Wire Wire Line
	3850 2500 4400 2500
Wire Wire Line
	3850 2400 4400 2400
Wire Wire Line
	3850 2300 4400 2300
Wire Wire Line
	3850 2200 4400 2200
Entry Wire Line
	4500 2400 4400 2300
Entry Wire Line
	4500 2300 4400 2200
Entry Wire Line
	4500 3400 4400 3300
Entry Wire Line
	4500 3500 4400 3400
Entry Wire Line
	4500 3300 4400 3200
Entry Wire Line
	4500 3200 4400 3100
Entry Wire Line
	4500 3100 4400 3000
Entry Wire Line
	4500 3000 4400 2900
Entry Wire Line
	4500 2900 4400 2800
Entry Wire Line
	4500 2800 4400 2700
Entry Wire Line
	4500 2700 4400 2600
Entry Wire Line
	4500 2600 4400 2500
Entry Wire Line
	4500 2500 4400 2400
Entry Wire Line
	4400 3500 4500 3600
Entry Wire Line
	4550 6300 4650 6400
Entry Wire Line
	4550 6200 4650 6300
Entry Wire Line
	4550 6100 4650 6200
Entry Wire Line
	4550 6000 4650 6100
Entry Wire Line
	4550 5900 4650 6000
Entry Wire Line
	4550 5800 4650 5900
Entry Wire Line
	4550 5700 4650 5800
Entry Wire Line
	4550 5600 4650 5700
Wire Wire Line
	3850 6300 4550 6300
Wire Wire Line
	3850 6200 4550 6200
Wire Wire Line
	3850 6100 4550 6100
Wire Wire Line
	3850 6000 4550 6000
Wire Wire Line
	3850 5900 4550 5900
Wire Wire Line
	3850 5800 4550 5800
Wire Wire Line
	3850 5700 4550 5700
Wire Wire Line
	3850 5600 4550 5600
Wire Wire Line
	5150 2100 4600 2100
Wire Wire Line
	5150 2000 4600 2000
Wire Wire Line
	5150 1900 4600 1900
Wire Wire Line
	5150 1800 4600 1800
Wire Wire Line
	5150 1700 4600 1700
Wire Wire Line
	5150 1600 4600 1600
Wire Wire Line
	5150 1500 4600 1500
Wire Wire Line
	5150 1400 4600 1400
Wire Wire Line
	5150 1300 4600 1300
Wire Wire Line
	5150 1200 4600 1200
Wire Wire Line
	5150 1100 4600 1100
Wire Wire Line
	5150 1000 4600 1000
Wire Wire Line
	5150 900  4600 900 
Wire Wire Line
	5150 800  4600 800 
Entry Wire Line
	4500 1000 4600 900 
Entry Wire Line
	4500 900  4600 800 
Entry Wire Line
	4500 2000 4600 1900
Entry Wire Line
	4500 2100 4600 2000
Entry Wire Line
	4500 1900 4600 1800
Entry Wire Line
	4500 1800 4600 1700
Entry Wire Line
	4500 1700 4600 1600
Entry Wire Line
	4500 1600 4600 1500
Entry Wire Line
	4500 1500 4600 1400
Entry Wire Line
	4500 1400 4600 1300
Entry Wire Line
	4500 1300 4600 1200
Entry Wire Line
	4500 1200 4600 1100
Entry Wire Line
	4500 1100 4600 1000
Entry Wire Line
	4600 2100 4500 2200
Text Label 4800 2400 0    31   ~ 0
VDATA0
Text Label 4800 2500 0    31   ~ 0
VDATA1
Text Label 4800 2600 0    31   ~ 0
VDATA2
Text Label 4800 2700 0    31   ~ 0
VDATA3
Text Label 4800 2800 0    31   ~ 0
VDATA4
Text Label 4800 2900 0    31   ~ 0
VDATA5
Text Label 4800 3000 0    31   ~ 0
VDATA6
Text Label 4800 3100 0    31   ~ 0
VDATA7
Entry Wire Line
	4650 2500 4750 2400
Entry Wire Line
	4650 2600 4750 2500
Entry Wire Line
	4650 2700 4750 2600
Entry Wire Line
	4650 2800 4750 2700
Entry Wire Line
	4650 2900 4750 2800
Entry Wire Line
	4650 3000 4750 2900
Entry Wire Line
	4650 3100 4750 3000
Entry Wire Line
	4650 3200 4750 3100
Wire Wire Line
	4750 3000 5150 3000
Wire Wire Line
	4750 3100 5150 3100
Wire Wire Line
	4750 2900 5150 2900
Wire Wire Line
	4750 2800 5150 2800
Wire Wire Line
	4750 2700 5150 2700
Wire Wire Line
	4750 2600 5150 2600
Wire Wire Line
	4750 2500 5150 2500
Wire Wire Line
	4750 2400 5150 2400
Wire Bus Line
	1850 7750 4550 7750
Text Label 4800 800  0    31   ~ 0
VADDR0
Text Label 4800 900  0    31   ~ 0
VADDR1
Text Label 4800 1000 0    31   ~ 0
VADDR2
Text Label 4800 1100 0    31   ~ 0
VADDR3
Text Label 4800 1200 0    31   ~ 0
VADDR4
Text Label 4800 1300 0    31   ~ 0
VADDR5
Text Label 4800 1400 0    31   ~ 0
VADDR6
Text Label 4800 1500 0    31   ~ 0
VADDR7
Text Label 4800 1600 0    31   ~ 0
VADDR8
Text Label 4800 1700 0    31   ~ 0
VADDR9
Text Label 4800 1800 0    31   ~ 0
VADDR10
Text Label 4800 1900 0    31   ~ 0
VADDR11
Text Label 4800 2000 0    31   ~ 0
VADDR12
Text Label 4800 2100 0    31   ~ 0
VADDR13
Entry Wire Line
	7250 1200 7150 1100
Entry Wire Line
	7250 900  7150 800 
Entry Wire Line
	7250 1000 7150 900 
Entry Wire Line
	7250 1100 7150 1000
Wire Wire Line
	7150 800  6800 800 
Wire Wire Line
	7150 900  6800 900 
Wire Wire Line
	3850 3400 4400 3400
Wire Wire Line
	3850 3500 4400 3500
Text Label 4000 4700 0    31   ~ 0
D7
Text Label 4000 4600 0    31   ~ 0
D6
Text Label 4000 4500 0    31   ~ 0
D5
Text Label 4000 4400 0    31   ~ 0
D4
Text Label 4000 4300 0    31   ~ 0
D3
Text Label 4000 4200 0    31   ~ 0
D2
Text Label 4000 4100 0    31   ~ 0
D1
Text Label 4000 4000 0    31   ~ 0
D0
Text Label 4000 6300 0    31   ~ 0
VDATA7
Text Label 4000 6200 0    31   ~ 0
VDATA6
Text Label 4000 6100 0    31   ~ 0
VDATA5
Text Label 4000 6000 0    31   ~ 0
VDATA4
Text Label 4000 5900 0    31   ~ 0
VDATA3
Text Label 4000 5800 0    31   ~ 0
VDATA2
Text Label 4000 5700 0    31   ~ 0
VDATA1
Text Label 4000 5600 0    31   ~ 0
VDATA0
Text Label 6850 2700 0    31   ~ 0
~VRESET~
Entry Wire Line
	7250 3900 7150 3800
Entry Wire Line
	2050 6400 2150 6300
Wire Wire Line
	2150 6300 2550 6300
Entry Wire Line
	2050 2600 2150 2500
Text Label 2200 6300 0    31   ~ 0
~VRESET~
Entry Wire Line
	2050 2700 2150 2600
Entry Wire Line
	2050 2800 2150 2700
Wire Wire Line
	2150 2600 2550 2600
Wire Wire Line
	2150 2700 2550 2700
Wire Wire Line
	2150 2800 2550 2800
Text Label 2200 6200 0    31   ~ 0
~VWR~
Text Label 2200 5900 0    31   ~ 0
~VRD~
Wire Wire Line
	2150 5900 2550 5900
Entry Wire Line
	2050 6000 2150 5900
Entry Wire Line
	2050 6300 2150 6200
Wire Wire Line
	2150 6200 2550 6200
Wire Bus Line
	650  550  4400 550 
Entry Bus Bus
	2050 6950 2150 7050
Wire Bus Line
	2150 7050 4700 7050
Entry Bus Bus
	4700 7050 4800 6950
Entry Bus Bus
	7150 4400 7250 4300
Entry Bus Bus
	4800 4500 4900 4400
Wire Bus Line
	4900 4400 7150 4400
Text Label 1550 1000 0    31   ~ 0
~RESET~
Text GLabel 950  7750 0    39   BiDi ~ 0
VRAMD[7..0]
Entry Wire Line
	1350 3550 1450 3650
Entry Wire Line
	1350 3750 1450 3850
Entry Wire Line
	1350 3850 1450 3950
Entry Wire Line
	1350 3950 1450 4050
Entry Wire Line
	1350 4050 1450 4150
Entry Wire Line
	1350 4150 1450 4250
Entry Wire Line
	1350 4250 1450 4350
Entry Wire Line
	1350 4350 1450 4450
Text Label 2250 800  0    31   ~ 0
SRVIDEO_OUT
Text Label 2250 1300 0    31   ~ 0
HSY_OUT
Text Label 2250 1000 0    31   ~ 0
~HBLNK_OUT~
Text Label 2250 1200 0    31   ~ 0
31.5K_OUT
Text Label 2250 1400 0    31   ~ 0
SYNCH_OUT
Text Label 2250 1500 0    31   ~ 0
~VBLNK_OUT~
Text Label 2250 1600 0    31   ~ 0
~VRAM_CS_IN~
Text Label 2250 1100 0    31   ~ 0
2MHZ_OUT
Text Label 2250 900  0    31   ~ 0
1MHZ_OUT
Text Label 2200 5100 0    31   ~ 0
~RESET~
Text Label 2250 1800 0    31   ~ 0
~GT~
Text Label 2250 1900 0    31   ~ 0
~CS~
Text Label 2250 2000 0    31   ~ 0
~WR~
Text Label 2250 2100 0    31   ~ 0
~RD~
Wire Wire Line
	2150 3400 2550 3400
Entry Wire Line
	2050 3500 2150 3400
Entry Wire Line
	2050 5900 2150 5800
Wire Wire Line
	2150 5800 2550 5800
Text Label 2200 5800 0    31   ~ 0
~VIORQ~
Text Label 2200 5700 0    31   ~ 0
~VMEM_CS~
Entry Wire Line
	2050 5800 2150 5700
Wire Wire Line
	2150 5700 2550 5700
Wire Wire Line
	2550 3500 2150 3500
Wire Wire Line
	2550 3600 2150 3600
Entry Wire Line
	2050 3600 2150 3500
Entry Wire Line
	2050 3700 2150 3600
Text Label 6850 2600 0    31   ~ 0
~VWR~
Text Label 6850 2300 0    31   ~ 0
~VRD~
Text Label 6850 2200 0    31   ~ 0
~VIORQ~
Text Label 6850 2100 0    31   ~ 0
~VMEM_CS~
Entry Wire Line
	7150 3700 7250 3800
Entry Wire Line
	7150 3600 7250 3700
Entry Wire Line
	7150 3500 7250 3600
Entry Wire Line
	7150 3400 7250 3500
Entry Wire Line
	7150 3300 7250 3400
Text GLabel 900  4450 0    39   Output ~ 0
VGA_R[3..0]
Text GLabel 900  4550 0    39   Output ~ 0
VGA_G[3..0]
Text GLabel 900  4650 0    39   Output ~ 0
VGA_B[3..0]
Text GLabel 750  4750 0    39   Output ~ 0
VGA_HS
Text GLabel 750  4850 0    39   Output ~ 0
VGA_VS
Text GLabel 750  4950 0    39   Output ~ 0
~CSYNC~
Text GLabel 750  5050 0    39   Output ~ 0
CSYNC
Wire Wire Line
	900  3250 1500 3250
Wire Wire Line
	1500 1900 1950 1900
Wire Wire Line
	1500 2000 1950 2000
Wire Wire Line
	1500 2100 1950 2100
Wire Wire Line
	1500 2200 1950 2200
Wire Wire Line
	1500 2300 1950 2300
Entry Bus Bus
	1350 4450 1450 4550
Entry Bus Bus
	1350 4550 1450 4650
Entry Bus Bus
	1350 4650 1450 4750
Entry Wire Line
	1350 4750 1450 4850
Entry Wire Line
	1350 4850 1450 4950
Entry Wire Line
	1350 4950 1450 5050
Entry Wire Line
	1350 5050 1450 5150
Wire Bus Line
	900  4450 1350 4450
Wire Bus Line
	900  4550 1350 4550
Wire Bus Line
	900  4650 1350 4650
Wire Wire Line
	750  4750 1350 4750
Wire Wire Line
	750  4850 1350 4850
Wire Wire Line
	750  4950 1350 4950
Wire Wire Line
	750  5050 1350 5050
Entry Wire Line
	7150 3000 7250 3100
Entry Wire Line
	7150 2900 7250 3000
Entry Wire Line
	7150 2800 7250 2900
Entry Wire Line
	7150 2700 7250 2800
Entry Wire Line
	7150 2600 7250 2700
Text Label 6850 2000 0    31   ~ 0
~CSYNC~
Text Label 6850 3000 0    31   ~ 0
CSYNC
Text Label 6850 2900 0    31   ~ 0
VGA_VS
Text Label 6850 2800 0    31   ~ 0
VGA_HS
Text Label 6850 1900 0    31   ~ 0
VGA_B3
Text Label 6850 1800 0    31   ~ 0
VGA_B2
Text Label 6850 1700 0    31   ~ 0
VGA_B1
Text Label 6850 1600 0    31   ~ 0
VGA_B0
Text Label 6850 1500 0    31   ~ 0
VGA_G3
Text Label 6850 1400 0    31   ~ 0
VGA_G2
Text Label 6850 1300 0    31   ~ 0
VGA_G1
Text Label 6850 1200 0    31   ~ 0
VGA_G0
Text Label 6850 1100 0    31   ~ 0
VGA_R3
Text Label 6850 1000 0    31   ~ 0
VGA_R2
Text Label 6850 900  0    31   ~ 0
VGA_R1
Text Label 6850 800  0    31   ~ 0
VGA_R0
Entry Wire Line
	7150 2300 7250 2400
Entry Wire Line
	7150 2300 7250 2400
Entry Wire Line
	7150 2200 7250 2300
Entry Wire Line
	7150 2100 7250 2200
Entry Wire Line
	7150 2000 7250 2100
Entry Wire Line
	7150 1900 7250 2000
Entry Wire Line
	7150 1800 7250 1900
Entry Wire Line
	7150 1700 7250 1800
Entry Wire Line
	7150 1600 7250 1700
Entry Wire Line
	7150 1500 7250 1600
Entry Wire Line
	7150 1400 7250 1500
Entry Wire Line
	7150 1300 7250 1400
Entry Wire Line
	7150 1200 7250 1300
NoConn ~ 3850 3800
NoConn ~ 3850 3900
NoConn ~ 2550 4900
NoConn ~ 2550 5000
NoConn ~ 2550 5400
Wire Wire Line
	1500 1800 1500 3250
Entry Wire Line
	2050 3800 2150 3700
Entry Wire Line
	2050 3900 2150 3800
Entry Wire Line
	2050 4200 2150 4100
Entry Wire Line
	2050 4300 2150 4200
Entry Wire Line
	2050 4400 2150 4300
Wire Wire Line
	2150 3800 2550 3800
Wire Wire Line
	2150 4100 2550 4100
Wire Wire Line
	2150 4200 2550 4200
Wire Wire Line
	2150 4300 2550 4300
Wire Wire Line
	2150 1600 2550 1600
Wire Wire Line
	2150 1800 2550 1800
Entry Wire Line
	1350 3650 1450 3750
$Comp
L epm7128slc84:EP3C25E144C8N U?
U 2 1 5FD2E773
P 8300 2800
AR Path="/6D237B68/5FD2E773" Ref="U?"  Part="2" 
AR Path="/600002AE/5FD2E773" Ref="U3"  Part="2" 
F 0 "U3" H 8200 3600 50  0000 C CNN
F 1 "EP3C25E144C8N" H 8300 1850 50  0000 C CNN
F 2 "Package_QFP:EQFP-144-1EP_20x20mm_P0.5mm_EP6.61x5.615mm" H 9000 1000 50  0001 L CNN
F 3 "https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/hb/max2/max2_mii5v1.pdf" H 9950 2000 50  0001 C CNN
	2    8300 2800
	1    0    0    -1  
$EndComp
$Comp
L epm7128slc84:EPCS16 U?
U 1 1 5FD2E779
P 8250 4700
AR Path="/6D237B68/5FD2E779" Ref="U?"  Part="1" 
AR Path="/600002AE/5FD2E779" Ref="U6"  Part="1" 
F 0 "U6" H 8250 4700 39  0000 C CNN
F 1 "EPCS16" H 8250 4600 39  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8250 4700 39  0001 C CNN
F 3 "" H 8250 4700 39  0001 C CNN
	1    8250 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 5FD2E77F
P 8250 5150
AR Path="/6D237B68/5FD2E77F" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E77F" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 8250 4950 50  0001 C CNN
F 1 "GNDPWR" H 8400 5150 50  0000 C CNN
F 2 "" H 8250 5100 50  0001 C CNN
F 3 "" H 8250 5100 50  0001 C CNN
	1    8250 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4250 8100 4200
Wire Wire Line
	8100 4200 8250 4200
Wire Wire Line
	8400 4200 8400 4250
Wire Wire Line
	8250 4200 8250 4250
Connection ~ 8250 4200
Wire Wire Line
	8250 4200 8400 4200
$Comp
L Device:C C?
U 1 1 5FD2E78B
P 8950 4350
AR Path="/6D237B68/5FD2E78B" Ref="C?"  Part="1" 
AR Path="/600002AE/5FD2E78B" Ref="C38"  Part="1" 
F 0 "C38" H 9050 4350 39  0000 L CNN
F 1 "100nF" H 9050 4300 39  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8988 4200 50  0001 C CNN
F 3 "~" H 8950 4350 50  0001 C CNN
	1    8950 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4200 8950 4200
Connection ~ 8400 4200
$Comp
L power:GNDPWR #PWR?
U 1 1 5FD2E793
P 8950 4500
AR Path="/6D237B68/5FD2E793" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E793" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 8950 4300 50  0001 C CNN
F 1 "GNDPWR" H 9100 4500 50  0000 C CNN
F 2 "" H 8950 4450 50  0001 C CNN
F 3 "" H 8950 4450 50  0001 C CNN
	1    8950 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4650 9350 3050
Wire Wire Line
	9350 3050 8900 3050
Wire Wire Line
	8650 4650 9350 4650
Wire Wire Line
	9400 4750 9400 3150
Wire Wire Line
	9400 3150 8900 3150
Wire Wire Line
	8650 4750 9400 4750
Wire Wire Line
	7850 4750 7750 4750
Wire Wire Line
	7750 4750 7750 5350
Wire Wire Line
	7750 5350 9450 5350
Wire Wire Line
	9450 5350 9450 2950
Wire Wire Line
	9450 2950 8900 2950
Wire Wire Line
	7850 4650 7700 4650
Wire Wire Line
	7700 4650 7700 5400
Wire Wire Line
	7700 5400 9500 5400
Wire Wire Line
	9500 5400 9500 3250
Wire Wire Line
	9500 3250 8900 3250
Wire Wire Line
	8900 2600 9650 2600
$Comp
L Device:R_Small R?
U 1 1 5FD2E7AA
P 9200 1800
AR Path="/6D237B68/5FD2E7AA" Ref="R?"  Part="1" 
AR Path="/600002AE/5FD2E7AA" Ref="R1"  Part="1" 
F 0 "R1" H 9250 1850 50  0000 L CNN
F 1 "10K" H 9250 1750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9200 1800 50  0001 C CNN
F 3 "~" H 9200 1800 50  0001 C CNN
	1    9200 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FD2E7B0
P 9450 1800
AR Path="/6D237B68/5FD2E7B0" Ref="R?"  Part="1" 
AR Path="/600002AE/5FD2E7B0" Ref="R2"  Part="1" 
F 0 "R2" H 9500 1850 50  0000 L CNN
F 1 "10K" H 9500 1750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9450 1800 50  0001 C CNN
F 3 "~" H 9450 1800 50  0001 C CNN
	1    9450 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FD2E7B6
P 9700 1800
AR Path="/6D237B68/5FD2E7B6" Ref="R?"  Part="1" 
AR Path="/600002AE/5FD2E7B6" Ref="R3"  Part="1" 
F 0 "R3" H 9750 1850 50  0000 L CNN
F 1 "10K" H 9750 1750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9700 1800 50  0001 C CNN
F 3 "~" H 9700 1800 50  0001 C CNN
	1    9700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1900 9200 2050
Wire Wire Line
	9200 2050 8900 2050
Wire Wire Line
	9450 1900 9450 2150
Wire Wire Line
	9450 2150 8900 2150
Wire Wire Line
	9700 1900 9700 2350
Wire Wire Line
	9700 2350 8900 2350
$Comp
L power:GNDPWR #PWR?
U 1 1 5FD2E7C2
P 9100 2250
AR Path="/6D237B68/5FD2E7C2" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E7C2" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 9100 2050 50  0001 C CNN
F 1 "GNDPWR" H 9250 2250 50  0000 C CNN
F 2 "" H 9100 2200 50  0001 C CNN
F 3 "" H 9100 2200 50  0001 C CNN
	1    9100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2250 9100 2250
$Comp
L Device:R_Small R?
U 1 1 5FD2E7C9
P 10050 3950
AR Path="/6D237B68/5FD2E7C9" Ref="R?"  Part="1" 
AR Path="/600002AE/5FD2E7C9" Ref="R5"  Part="1" 
F 0 "R5" H 10100 4000 50  0000 L CNN
F 1 "10K" H 10100 3900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10050 3950 50  0001 C CNN
F 3 "~" H 10050 3950 50  0001 C CNN
	1    10050 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10050 4050 10050 4450
Wire Wire Line
	9200 1700 9200 1650
Wire Wire Line
	9200 1650 9450 1650
Wire Wire Line
	9450 1650 9450 1700
Wire Wire Line
	9450 1650 9700 1650
Wire Wire Line
	9700 1650 9700 1700
Connection ~ 9450 1650
Wire Wire Line
	10050 3850 10050 3800
$Comp
L power:+3.3V #PWR?
U 1 1 5FD2E7DD
P 9450 1650
AR Path="/6D237B68/5FD2E7DD" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E7DD" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 9450 1500 50  0001 C CNN
F 1 "+3.3V" H 9465 1823 50  0000 C CNN
F 2 "" H 9450 1650 50  0001 C CNN
F 3 "" H 9450 1650 50  0001 C CNN
	1    9450 1650
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:ASE-xxxMHz X?
U 1 1 5FD2E7E3
P 7800 1200
AR Path="/6D237B68/5FD2E7E3" Ref="X?"  Part="1" 
AR Path="/600002AE/5FD2E7E3" Ref="X2"  Part="1" 
F 0 "X2" H 8050 1150 50  0000 L CNN
F 1 "50MHz" H 8050 1050 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_Abracon_ASE-4Pin_3.2x2.5mm" H 8500 850 50  0001 C CNN
F 3 "http://www.abracon.com/Oscillators/ASV.pdf" H 7700 1200 50  0001 C CNN
	1    7800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1200 8150 1200
$Comp
L power:GNDPWR #PWR?
U 1 1 5FD2E7EA
P 7800 1500
AR Path="/6D237B68/5FD2E7EA" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E7EA" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 7800 1300 50  0001 C CNN
F 1 "GNDPWR" H 7950 1500 50  0000 C CNN
F 2 "" H 7800 1450 50  0001 C CNN
F 3 "" H 7800 1450 50  0001 C CNN
	1    7800 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FD2E7F0
P 7800 750
AR Path="/6D237B68/5FD2E7F0" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E7F0" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 7800 600 50  0001 C CNN
F 1 "+3.3V" H 7815 923 50  0000 C CNN
F 2 "" H 7800 750 50  0001 C CNN
F 3 "" H 7800 750 50  0001 C CNN
	1    7800 750 
	1    0    0    -1  
$EndComp
NoConn ~ 7500 1200
$Comp
L Device:C C?
U 1 1 5FD2E7F7
P 8150 900
AR Path="/6D237B68/5FD2E7F7" Ref="C?"  Part="1" 
AR Path="/600002AE/5FD2E7F7" Ref="C37"  Part="1" 
F 0 "C37" H 8250 900 39  0000 L CNN
F 1 "100nF" H 8250 850 39  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8188 750 50  0001 C CNN
F 3 "~" H 8150 900 50  0001 C CNN
	1    8150 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 750  8150 750 
$Comp
L power:GNDPWR #PWR?
U 1 1 5FD2E7FE
P 8150 1050
AR Path="/6D237B68/5FD2E7FE" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E7FE" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 8150 850 50  0001 C CNN
F 1 "GNDPWR" H 8300 1050 50  0000 C CNN
F 2 "" H 8150 1000 50  0001 C CNN
F 3 "" H 8150 1000 50  0001 C CNN
	1    8150 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 750  7800 900 
Connection ~ 7800 750 
NoConn ~ 7700 2250
NoConn ~ 7700 2350
NoConn ~ 7700 2450
NoConn ~ 7700 2550
NoConn ~ 7700 2650
NoConn ~ 7700 2750
NoConn ~ 7700 2850
NoConn ~ 7700 2950
NoConn ~ 7700 3050
NoConn ~ 7700 3250
NoConn ~ 7700 3350
NoConn ~ 7700 3450
NoConn ~ 7700 3550
Wire Wire Line
	8900 3400 9000 3400
Wire Wire Line
	9000 3600 8900 3600
$Comp
L power:GNDPWR #PWR?
U 1 1 5FD2E816
P 9000 3750
AR Path="/6D237B68/5FD2E816" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E816" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 9000 3550 50  0001 C CNN
F 1 "GNDPWR" H 9150 3750 50  0000 C CNN
F 2 "" H 9000 3700 50  0001 C CNN
F 3 "" H 9000 3700 50  0001 C CNN
	1    9000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3400 9000 3600
Wire Wire Line
	9000 3600 9000 3750
Connection ~ 9000 3600
$Comp
L power:+2V5 #PWR?
U 1 1 5FD2E81F
P 9100 3500
AR Path="/6D237B68/5FD2E81F" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E81F" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 9100 3350 50  0001 C CNN
F 1 "+2V5" H 9115 3673 50  0000 C CNN
F 2 "" H 9100 3500 50  0001 C CNN
F 3 "" H 9100 3500 50  0001 C CNN
	1    9100 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3500 9100 3500
$Comp
L Switch:SW_Push SW?
U 1 1 5FD2E826
P 10150 2150
AR Path="/6D237B68/5FD2E826" Ref="SW?"  Part="1" 
AR Path="/600002AE/5FD2E826" Ref="SW1"  Part="1" 
F 0 "SW1" H 10150 2435 50  0000 C CNN
F 1 "CONFIG" H 10150 2344 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS645" H 10150 2350 50  0001 C CNN
F 3 "~" H 10150 2350 50  0001 C CNN
	1    10150 2150
	1    0    0    -1  
$EndComp
Connection ~ 9450 2150
Wire Wire Line
	9450 2150 9950 2150
$Comp
L Oscillator:ASE-xxxMHz X?
U 1 1 5FD2E82F
P 6850 5850
AR Path="/6D237B68/5FD2E82F" Ref="X?"  Part="1" 
AR Path="/600002AE/5FD2E82F" Ref="X1"  Part="1" 
F 0 "X1" H 7100 5800 50  0000 L CNN
F 1 "50MHz" H 7100 5700 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_Abracon_ASE-4Pin_3.2x2.5mm" H 7550 5500 50  0001 C CNN
F 3 "http://www.abracon.com/Oscillators/ASV.pdf" H 6750 5850 50  0001 C CNN
	1    6850 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5850 7550 5850
$Comp
L power:GNDPWR #PWR?
U 1 1 5FD2E836
P 6850 6150
AR Path="/6D237B68/5FD2E836" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E836" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 6850 5950 50  0001 C CNN
F 1 "GNDPWR" H 7000 6150 50  0000 C CNN
F 2 "" H 6850 6100 50  0001 C CNN
F 3 "" H 6850 6100 50  0001 C CNN
	1    6850 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FD2E83C
P 6850 5400
AR Path="/6D237B68/5FD2E83C" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E83C" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 6850 5250 50  0001 C CNN
F 1 "+3.3V" H 6865 5573 50  0000 C CNN
F 2 "" H 6850 5400 50  0001 C CNN
F 3 "" H 6850 5400 50  0001 C CNN
	1    6850 5400
	1    0    0    -1  
$EndComp
NoConn ~ 6550 5850
$Comp
L Device:C C?
U 1 1 5FD2E843
P 7200 5550
AR Path="/6D237B68/5FD2E843" Ref="C?"  Part="1" 
AR Path="/600002AE/5FD2E843" Ref="C36"  Part="1" 
F 0 "C36" H 7300 5550 39  0000 L CNN
F 1 "100nF" H 7300 5500 39  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7238 5400 50  0001 C CNN
F 3 "~" H 7200 5550 50  0001 C CNN
	1    7200 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5400 7200 5400
$Comp
L power:GNDPWR #PWR?
U 1 1 5FD2E84A
P 7200 5700
AR Path="/6D237B68/5FD2E84A" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E84A" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 7200 5500 50  0001 C CNN
F 1 "GNDPWR" H 7350 5700 50  0000 C CNN
F 2 "" H 7200 5650 50  0001 C CNN
F 3 "" H 7200 5650 50  0001 C CNN
	1    7200 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5400 6850 5550
Connection ~ 6850 5400
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 5FD2E852
P 10400 4450
AR Path="/6D237B68/5FD2E852" Ref="J?"  Part="1" 
AR Path="/600002AE/5FD2E852" Ref="J3"  Part="1" 
F 0 "J3" H 10450 4867 50  0000 C CNN
F 1 "JTAG" H 10450 4776 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 10400 4450 50  0001 C CNN
F 3 "~" H 10400 4450 50  0001 C CNN
	1    10400 4450
	1    0    0    -1  
$EndComp
NoConn ~ 10200 4550
NoConn ~ 10700 4550
NoConn ~ 10700 4450
Wire Wire Line
	10700 4250 10800 4250
Wire Wire Line
	10800 4650 10700 4650
$Comp
L power:GNDPWR #PWR?
U 1 1 5FD2E85D
P 10800 4800
AR Path="/6D237B68/5FD2E85D" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E85D" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 10800 4600 50  0001 C CNN
F 1 "GNDPWR" H 10800 4650 50  0000 C CNN
F 2 "" H 10800 4750 50  0001 C CNN
F 3 "" H 10800 4750 50  0001 C CNN
	1    10800 4800
	1    0    0    -1  
$EndComp
Connection ~ 10800 4650
Wire Wire Line
	10700 4350 11000 4350
Wire Wire Line
	11000 4350 11000 3800
Wire Wire Line
	9100 5750 9650 5750
$Comp
L power:+3.3V #PWR?
U 1 1 5FD2E867
P 11000 3750
AR Path="/6D237B68/5FD2E867" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E867" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 11000 3600 50  0001 C CNN
F 1 "+3.3V" H 11015 3923 50  0000 C CNN
F 2 "" H 11000 3750 50  0001 C CNN
F 3 "" H 11000 3750 50  0001 C CNN
	1    11000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5750 7700 5750
NoConn ~ 7700 5950
NoConn ~ 7700 6050
$Comp
L power:+3.3V #PWR?
U 1 1 5FD2E872
P 8250 4200
AR Path="/6D237B68/5FD2E872" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E872" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 8250 4050 50  0001 C CNN
F 1 "+3.3V" H 8265 4373 50  0000 C CNN
F 2 "" H 8250 4200 50  0001 C CNN
F 3 "" H 8250 4200 50  0001 C CNN
	1    8250 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4450 10200 4450
$Comp
L epm7128slc84:EPM7512AEQFP144-3 U?
U 2 1 5FD2E879
P 8400 5900
AR Path="/6D237B68/5FD2E879" Ref="U?"  Part="2" 
AR Path="/600002AE/5FD2E879" Ref="U5"  Part="2" 
F 0 "U5" H 8400 6200 50  0000 C CNN
F 1 "EPM7512AEQFP144-3" H 8400 5500 50  0000 C CNN
F 2 "Package_QFP:TQFP-144_20x20mm_P0.5mm" H 9250 3000 50  0001 L CNN
F 3 "https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/hb/max2/max2_mii5v1.pdf" H 8400 5900 50  0001 C CNN
	2    8400 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 4250 10800 4650
$Comp
L power:GNDPWR #PWR?
U 1 1 5FD2E880
P 10500 2250
AR Path="/6D237B68/5FD2E880" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/5FD2E880" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 10500 2050 50  0001 C CNN
F 1 "GNDPWR" H 10500 2100 50  0000 C CNN
F 2 "" H 10500 2200 50  0001 C CNN
F 3 "" H 10500 2200 50  0001 C CNN
	1    10500 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10500 2250 10500 2150
Wire Wire Line
	10500 2150 10350 2150
Wire Wire Line
	9100 5850 9550 5850
Wire Wire Line
	9550 5850 9550 2500
Wire Wire Line
	9550 2500 8900 2500
Wire Wire Line
	8900 2700 9600 2700
Wire Wire Line
	9600 2700 9600 4450
Wire Wire Line
	9600 5950 9100 5950
Wire Wire Line
	9650 2600 9650 4250
Connection ~ 9650 4250
Wire Wire Line
	9650 4250 9650 4800
Wire Wire Line
	10200 4350 9700 4350
Wire Wire Line
	9700 4350 9700 2800
Wire Wire Line
	9700 2800 8900 2800
Wire Wire Line
	9700 4650 9700 6050
Wire Wire Line
	9700 6050 9100 6050
Wire Wire Line
	10050 4450 9600 4450
Connection ~ 10050 4450
Connection ~ 9600 4450
Wire Wire Line
	9600 4450 9600 5950
Wire Wire Line
	9700 4650 10200 4650
Wire Wire Line
	10050 3800 11000 3800
Connection ~ 11000 3800
Wire Wire Line
	11000 3800 11000 3750
$Comp
L Device:R_Small R?
U 1 1 5FD2E7CF
P 9900 4800
AR Path="/6D237B68/5FD2E7CF" Ref="R?"  Part="1" 
AR Path="/600002AE/5FD2E7CF" Ref="R4"  Part="1" 
F 0 "R4" H 9950 4850 50  0000 L CNN
F 1 "1K" H 9950 4750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9900 4800 50  0001 C CNN
F 3 "~" H 9900 4800 50  0001 C CNN
	1    9900 4800
	0    1    -1   0   
$EndComp
Wire Wire Line
	10800 4650 10800 4800
Wire Wire Line
	9800 4800 9650 4800
Wire Wire Line
	10000 4800 10800 4800
Wire Wire Line
	9650 4250 10200 4250
Connection ~ 9650 4800
Wire Wire Line
	9650 4800 9650 5750
Connection ~ 10800 4800
Wire Wire Line
	7650 1750 8150 1750
Wire Wire Line
	8150 1750 8150 1200
Text GLabel 900  4250 0    39   Output ~ 0
~VBLNK_OUT~
Text GLabel 900  3750 0    39   Output ~ 0
~HBLNK_OUT~
Text GLabel 900  4350 0    39   Input ~ 0
~VRAM_CS_IN~
Text GLabel 800  4050 0    39   Output ~ 0
HSY_OUT
Text GLabel 950  3550 0    39   Output ~ 0
SRVIDEO_OUT
Text GLabel 900  4150 0    39   Output ~ 0
SYNCH_OUT
Text GLabel 850  3950 0    39   Output ~ 0
31.5K_OUT
Text GLabel 850  3850 0    39   Output ~ 0
2MHZ_OUT
Text GLabel 850  3650 0    39   Output ~ 0
1MHZ_OUT
Wire Wire Line
	850  3650 1350 3650
Wire Wire Line
	950  3550 1350 3550
Wire Wire Line
	900  3750 1350 3750
Wire Wire Line
	850  3850 1350 3850
Wire Wire Line
	850  3950 1350 3950
Wire Wire Line
	800  4050 1350 4050
Wire Wire Line
	900  4150 1350 4150
Wire Wire Line
	900  4250 1350 4250
Wire Wire Line
	900  4350 1350 4350
Wire Bus Line
	950  7750 1650 7750
Entry Wire Line
	7250 4100 7350 4200
Text Label 7350 4200 0    31   ~ 0
~RESET~
Wire Wire Line
	2150 3700 2550 3700
NoConn ~ 2550 3300
NoConn ~ 2550 3200
NoConn ~ 2550 3100
NoConn ~ 2550 3000
NoConn ~ 2550 2900
Wire Wire Line
	900  3250 900  3300
Connection ~ 900  3250
Text Label 2250 2400 0    31   ~ 0
~MB_HBLNK~
Text Label 2250 2500 0    31   ~ 0
MB_SYNCH
Text Label 2250 2600 0    31   ~ 0
~MB_V-HBLNK~
Text Label 2250 2700 0    31   ~ 0
MB_VIDEO
Text Label 2250 2800 0    31   ~ 0
MB_LOAD
Wire Wire Line
	4550 5500 3850 5500
Wire Wire Line
	4550 5400 3850 5400
Wire Wire Line
	4550 5300 3850 5300
Wire Wire Line
	4550 5200 3850 5200
Wire Wire Line
	4550 5100 3850 5100
Wire Wire Line
	4550 5000 3850 5000
Wire Wire Line
	4550 4900 3850 4900
Wire Wire Line
	4550 4800 3850 4800
Text Label 4000 5500 0    31   ~ 0
VRAMD7
Text Label 4000 5400 0    31   ~ 0
VRAMD6
Text Label 4000 5300 0    31   ~ 0
VRAMD5
Text Label 4000 5200 0    31   ~ 0
VRAMD4
Text Label 4000 5100 0    31   ~ 0
VRAMD3
Text Label 4000 5000 0    31   ~ 0
VRAMD2
Text Label 4000 4900 0    31   ~ 0
VRAMD1
Text Label 4000 4800 0    31   ~ 0
VRAMD0
Entry Wire Line
	4650 4100 4550 4000
Entry Wire Line
	4650 4200 4550 4100
Entry Wire Line
	4650 4300 4550 4200
Entry Wire Line
	4650 4400 4550 4300
Entry Wire Line
	4650 4500 4550 4400
Entry Wire Line
	4650 4600 4550 4500
Entry Wire Line
	4650 4700 4550 4600
Entry Wire Line
	4650 4800 4550 4700
Wire Wire Line
	7650 2050 7700 2050
Wire Wire Line
	7650 2050 7650 1750
Entry Wire Line
	2050 4700 2150 4600
Entry Wire Line
	2050 4800 2150 4700
Entry Wire Line
	2050 4900 2150 4800
Entry Wire Line
	2050 5200 2150 5100
Entry Wire Line
	2050 5300 2150 5200
Entry Wire Line
	2050 5400 2150 5300
Wire Wire Line
	2150 4700 2550 4700
Wire Wire Line
	2150 4800 2550 4800
Wire Wire Line
	2150 5100 2550 5100
Wire Wire Line
	2150 5200 2550 5200
Wire Wire Line
	2150 5300 2550 5300
Wire Wire Line
	2150 4600 2550 4600
Wire Wire Line
	7150 1000 6800 1000
Wire Wire Line
	7150 1100 6800 1100
Wire Wire Line
	6800 1200 7150 1200
Wire Wire Line
	6800 1300 7150 1300
Wire Wire Line
	6800 1400 7150 1400
Wire Wire Line
	6800 1500 7150 1500
Wire Wire Line
	6800 1600 7150 1600
Wire Wire Line
	6800 1700 7150 1700
Wire Wire Line
	6800 1800 7150 1800
Wire Wire Line
	6800 1900 7150 1900
Wire Wire Line
	6800 2000 7150 2000
Wire Wire Line
	6800 2100 7150 2100
Wire Wire Line
	6800 2200 7150 2200
Wire Wire Line
	6800 2300 7150 2300
Wire Wire Line
	6800 2600 7150 2600
Wire Wire Line
	6800 2700 7150 2700
Wire Wire Line
	6800 2800 7150 2800
Wire Wire Line
	6800 2900 7150 2900
Wire Wire Line
	6800 3000 7150 3000
$Comp
L MZ80-80CLR:EP3C25E144C8N-1-epm7128slc84 U?
U 1 1 6E23323D
P 5950 2400
AR Path="/689FAE6F/6E23323D" Ref="U?"  Part="1" 
AR Path="/600002AE/6E23323D" Ref="U3"  Part="1" 
AR Path="/6E14A406/6E23323D" Ref="U?"  Part="1" 
AR Path="/6E23323D" Ref="U3"  Part="1" 
F 0 "U3" H 5950 4050 50  0000 C CNN
F 1 "EP3C25E144C8N" H 5950 700 50  0000 C CNN
F 2 "Package_QFP:EQFP-144-1EP_20x20mm_P0.5mm_EP6.61x5.615mm" H 6650 600 50  0001 L CNN
F 3 "https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/hb/max2/max2_mii5v1.pdf" H 7600 1600 50  0001 C CNN
	1    5950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3300 6800 3300
Wire Wire Line
	7150 3400 6800 3400
Wire Wire Line
	7150 3500 6800 3500
Wire Wire Line
	7150 3600 6800 3600
Wire Wire Line
	7150 3700 6800 3700
Wire Wire Line
	7500 4200 7350 4200
Wire Wire Line
	7500 4200 7500 5750
Wire Wire Line
	7550 5850 7550 3150
Connection ~ 7550 5850
Wire Wire Line
	7550 5850 7700 5850
NoConn ~ 2550 2300
NoConn ~ 2550 2200
NoConn ~ 2550 1700
Text Label 6850 3300 0    31   ~ 0
VMB_HBLNKn
Text Label 2200 4800 0    31   ~ 0
TBA0
Text Label 2200 4700 0    31   ~ 0
TBA1
Text Label 2200 4600 0    31   ~ 0
TBA2
Text Label 4900 3900 0    31   ~ 0
TBA1
Text Label 4900 3800 0    31   ~ 0
TBA0
Text Label 2200 4300 0    31   ~ 0
VMB_VIDEO
Text Label 2200 4200 0    31   ~ 0
VMB_V_HBLNKn
Text Label 2200 4100 0    31   ~ 0
VMB_SYNCH
Entry Wire Line
	4800 4000 4900 3900
Wire Wire Line
	4900 3900 5150 3900
Text Label 6850 3700 0    31   ~ 0
VMB_VIDEO
Text Label 6850 3600 0    31   ~ 0
VMB_V_HBLNKn
Text Label 6850 3500 0    31   ~ 0
VMB_SYNCH
Text Label 6850 3400 0    31   ~ 0
VMB_LOAD
Text Label 4900 3700 0    31   ~ 0
~VVBLNK_OUT~
Text Label 4900 3600 0    31   ~ 0
VSYNCH_OUT
Entry Wire Line
	4800 3700 4900 3600
Entry Wire Line
	4800 3800 4900 3700
Entry Wire Line
	4800 3900 4900 3800
Wire Wire Line
	4900 3800 5150 3800
Wire Wire Line
	4900 3700 5150 3700
Wire Wire Line
	4900 3600 5150 3600
Entry Wire Line
	4800 3400 4900 3300
Entry Wire Line
	4800 3500 4900 3400
Entry Wire Line
	4800 3600 4900 3500
Wire Wire Line
	4900 3400 5150 3400
Wire Wire Line
	4900 3300 5150 3300
Text Label 2200 3800 0    31   ~ 0
~VVBLNK_OUT~
Text Label 2200 3700 0    31   ~ 0
VSYNCH_OUT
Text Label 2200 3600 0    31   ~ 0
VHSY_OUT
Text Label 2200 3500 0    31   ~ 0
~VHBLNK_OUT~
Text Label 2200 3400 0    31   ~ 0
VSRVIDEO_OUT
Text Label 4900 3500 0    31   ~ 0
VHSY_OUT
Text Label 4900 3400 0    31   ~ 0
~VHBLNK_OUT~
Text Label 4900 3300 0    31   ~ 0
VSRVIDEO_OUT
Wire Wire Line
	4900 3500 5150 3500
NoConn ~ 6800 3200
NoConn ~ 2550 5500
Entry Wire Line
	2050 2900 2150 2800
$Bitmap
Pos 10900 800 
Scale 2.000000
Data
89 50 4E 47 0D 0A 1A 0A 00 00 00 0D 49 48 44 52 00 00 00 2D 00 00 00 2D 08 03 00 00 00 0D C4 12 
A8 00 00 00 03 73 42 49 54 08 08 08 DB E1 4F E0 00 00 00 30 50 4C 54 45 02 00 00 10 00 00 42 00 
00 BD 00 00 8C 00 00 FF 00 00 21 00 00 73 00 00 DE 00 00 EF 00 00 31 00 00 52 00 00 9C 00 00 AD 
00 00 63 00 00 CE 00 00 24 3F 4B FE 00 00 00 01 74 52 4E 53 00 40 E6 D8 66 00 00 02 31 49 44 41 
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
NoConn ~ 1450 1700
NoConn ~ 450  8750
Wire Wire Line
	7550 3150 7700 3150
NoConn ~ 7700 2150
Entry Wire Line
	7150 2500 7250 2600
Text Label 6850 2500 0    31   ~ 0
~VGT~
Wire Wire Line
	6800 2500 7150 2500
Entry Wire Line
	7150 2400 7250 2500
Text Label 6850 2400 0    31   ~ 0
~VCS~
Wire Wire Line
	6800 2400 7150 2400
Entry Wire Line
	2050 6100 2150 6000
Wire Wire Line
	2150 6000 2550 6000
Text Label 2200 6000 0    31   ~ 0
~VCS~
Entry Wire Line
	2050 6200 2150 6100
Text Label 2200 6100 0    31   ~ 0
~VGT~
Wire Wire Line
	2150 6100 2550 6100
Entry Wire Line
	2050 5700 2150 5600
Text Label 2200 5600 0    31   ~ 0
~VVRAM_CS_IN~
Wire Wire Line
	2150 5600 2550 5600
Entry Wire Line
	7150 3100 7250 3200
Entry Wire Line
	7150 3100 7250 3200
Wire Wire Line
	7150 3100 6800 3100
Text Label 750  800  0    31   ~ 0
INDATA3
Text Label 750  900  0    31   ~ 0
INDATA2
Text Label 750  1000 0    31   ~ 0
INDATA1
Text Label 1550 900  0    31   ~ 0
INDATA0
Text Label 1550 800  0    31   ~ 0
OUTCLK
Text Label 2200 5200 0    31   ~ 0
INDATA0
Text Label 2200 5300 0    31   ~ 0
OUTCLK
Text Label 4000 1900 0    31   ~ 0
INDATA1
Text Label 4000 2000 0    31   ~ 0
INDATA2
Text Label 4000 2100 0    31   ~ 0
INDATA3
Text Label 6850 3100 0    31   ~ 0
~VVRAM_CS_IN~
Text Notes 7600 1700 0    39   Italic 8
DNP X2, C37
Text Notes 10000 2300 0    39   Italic 8
DNP SW1
Text Label 4000 3600 0    31   ~ 0
VADDR14
Text Label 4000 3700 0    31   ~ 0
VADDR15
Entry Wire Line
	4500 3700 4400 3600
Entry Wire Line
	4400 3700 4500 3800
Wire Wire Line
	3850 3600 4400 3600
Wire Wire Line
	3850 3700 4400 3700
Wire Wire Line
	2150 3900 2550 3900
Wire Wire Line
	2150 4000 2550 4000
Text Label 2200 4000 0    31   ~ 0
VMB_LOAD
Text Label 2200 3900 0    31   ~ 0
VMB_HBLNKn
Entry Wire Line
	2050 4000 2150 3900
Entry Wire Line
	2050 4100 2150 4000
Wire Wire Line
	7150 3800 6800 3800
Text Label 6850 3800 0    31   ~ 0
TBA2
NoConn ~ 5150 3200
Wire Wire Line
	5150 2300 4600 2300
Wire Wire Line
	5150 2200 4600 2200
Entry Wire Line
	4500 2300 4600 2200
Entry Wire Line
	4600 2300 4500 2400
Text Label 4800 2200 0    31   ~ 0
VADDR14
Text Label 4800 2300 0    31   ~ 0
VADDR15
NoConn ~ 2550 4400
NoConn ~ 2550 4500
Wire Bus Line
	650  1200 650  1900
Wire Bus Line
	4800 3400 4800 6950
Wire Bus Line
	1750 2500 1750 7650
Wire Bus Line
	550  650  550  3000
Wire Bus Line
	1450 3650 1450 5150
Wire Bus Line
	4500 650  4500 3800
Wire Bus Line
	7250 900  7250 4300
Wire Bus Line
	4650 2500 4650 7650
Wire Bus Line
	2050 900  2050 6950
NoConn ~ -6850 2650
$EndSCHEMATC
