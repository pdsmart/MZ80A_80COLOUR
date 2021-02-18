EESchema Schematic File Version 4
LIBS:MZ80-80CLR-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title "FPGA and CPLD Module"
Date "2020-06-25"
Rev "2.0"
Comp ""
Comment1 "FPGA acts as the video memory."
Comment2 "translation to the FPGA as the CPLD is 5V tolerant. The onboard RAM inside the "
Comment3 "logic replacement for the Sharp Gate Array interconnect and also as a voltage"
Comment4 "FPGA to add MZ80B graphics and MZ700/80A Colour attributes. CPLD is acting as the"
$EndDescr
Wire Wire Line
	750  6450 1350 6450
Entry Wire Line
	1350 6450 1450 6550
Text GLabel 750  6450 0    39   Input ~ 0
~RESET~
$Comp
L epm7128slc84:EP3C25E144C8N U?
U 1 1 6E23323D
P 5900 2400
AR Path="/689FAE6F/6E23323D" Ref="U?"  Part="1" 
AR Path="/600002AE/6E23323D" Ref="U?"  Part="1" 
AR Path="/6E14A406/6E23323D" Ref="U?"  Part="1" 
F 0 "U?" H 5900 4050 50  0000 C CNN
F 1 "EP3C25E144C8N" H 5900 700 50  0000 C CNN
F 2 "Package_QFP" H 6600 600 50  0001 L CNN
F 3 "https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/hb/max2/max2_mii5v1.pdf" H 7550 1600 50  0001 C CNN
	1    5900 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1300 1950 1300
Wire Wire Line
	1450 1200 1950 1200
Wire Wire Line
	1450 1100 1950 1100
Entry Wire Line
	1950 1300 2050 1400
Entry Wire Line
	1950 1200 2050 1300
Entry Wire Line
	1950 1100 2050 1200
Wire Wire Line
	900  5850 1350 5850
Wire Wire Line
	900  5950 1350 5950
Wire Wire Line
	950  6050 1350 6050
Wire Wire Line
	850  6150 1350 6150
Wire Wire Line
	850  6250 1350 6250
Entry Wire Line
	1350 6050 1450 6150
Entry Wire Line
	1350 5850 1450 5950
Entry Wire Line
	1350 5950 1450 6050
Entry Wire Line
	1350 6150 1450 6250
Entry Wire Line
	1350 6250 1450 6350
Entry Wire Line
	1350 6550 1450 6650
Entry Wire Line
	1350 6650 1450 6750
Entry Wire Line
	1350 6750 1450 6850
Entry Wire Line
	1350 6850 1450 6950
Wire Bus Line
	1550 4150 1950 4150
Entry Bus Bus
	1450 4250 1550 4150
Text GLabel 900  5850 0    39   Output ~ 0
~MB_HBLNK~
Text GLabel 900  5950 0    39   Output ~ 0
MB_SYNCH
Text GLabel 950  6050 0    39   Output ~ 0
~MB_V-HBLNK~
Text GLabel 850  6150 0    39   Output ~ 0
MB_VIDEO
Text GLabel 850  6250 0    39   Output ~ 0
MB_LOAD
Entry Bus Bus
	1950 4150 2050 4050
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
	1950 1600 2050 1700
Wire Bus Line
	750  1600 1950 1600
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
Text Label 1550 2800 0    31   ~ 0
MB_LOAD
Entry Wire Line
	1950 2800 2050 2900
Wire Wire Line
	1450 2300 1500 2300
Wire Wire Line
	1600 2200 1600 1900
Wire Wire Line
	1450 2200 1600 2200
$Comp
L power:+12V #PWR?
U 1 1 6E233520
P 1600 1900
AR Path="/6E233520" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/6E233520" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/6E233520" Ref="#PWR?"  Part="1" 
AR Path="/6E14A406/6E233520" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1600 1750 50  0001 C CNN
F 1 "+12V" H 1600 2050 50  0000 C CNN
F 2 "" H 1600 1900 50  0001 C CNN
F 3 "" H 1600 1900 50  0001 C CNN
	1    1600 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x17_Odd_Even J?
U 1 1 6E233526
P 1150 2800
AR Path="/6E233526" Ref="J?"  Part="1" 
AR Path="/689FAE6F/6E233526" Ref="J?"  Part="1" 
AR Path="/600002AE/6E233526" Ref="J?"  Part="1" 
AR Path="/6E14A406/6E233526" Ref="J?"  Part="1" 
F 0 "J?" H 1200 3700 50  0000 C CNN
F 1 "M/Board CN" H 1200 3800 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x17_P2.54mm_Vertical" H 1150 2800 50  0001 C CNN
F 3 "~" H 1150 2800 50  0001 C CNN
	1    1150 2800
	1    0    0    1   
$EndComp
Entry Wire Line
	1650 2900 1750 3000
Entry Wire Line
	1650 3000 1750 3100
Entry Wire Line
	1650 3100 1750 3200
Entry Wire Line
	1650 3200 1750 3300
Entry Wire Line
	1650 3300 1750 3400
Entry Wire Line
	1650 3400 1750 3500
Entry Wire Line
	1650 3500 1750 3600
Entry Wire Line
	1650 3600 1750 3700
Wire Wire Line
	1450 2900 1650 2900
Wire Wire Line
	1450 3000 1650 3000
Wire Wire Line
	1450 3100 1650 3100
Wire Wire Line
	1450 3200 1650 3200
Wire Wire Line
	1450 3300 1650 3300
Wire Wire Line
	1450 3400 1650 3400
Wire Wire Line
	1450 3500 1650 3500
Wire Wire Line
	1450 3600 1650 3600
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
	2050 1800 2150 1700
Entry Wire Line
	2050 1900 2150 1800
Entry Wire Line
	2050 2000 2150 1900
Entry Wire Line
	2050 2100 2150 2000
Entry Wire Line
	2050 2200 2150 2100
Entry Wire Line
	2050 2300 2150 2200
Entry Wire Line
	2050 2400 2150 2300
Text Label 750  1100 0    31   ~ 0
A11
Text Label 750  1200 0    31   ~ 0
A12
Text Label 750  1300 0    31   ~ 0
A13
Entry Wire Line
	550  1100 650  1200
Entry Wire Line
	550  1000 650  1100
Entry Wire Line
	550  1200 650  1300
Connection ~ 900  3850
Wire Wire Line
	1500 3850 900  3850
Wire Wire Line
	1450 2100 1500 2100
Wire Wire Line
	900  2100 900  3850
Wire Wire Line
	950  2100 900  2100
$Comp
L power:GNDPWR #PWR?
U 1 1 6E2335BB
P 900 3850
AR Path="/6E2335BB" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/6E2335BB" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/6E2335BB" Ref="#PWR?"  Part="1" 
AR Path="/6E14A406/6E2335BB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 900 3650 50  0001 C CNN
F 1 "GNDPWR" H 904 3696 50  0000 C CNN
F 2 "" H 900 3800 50  0001 C CNN
F 3 "" H 900 3800 50  0001 C CNN
	1    900  3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  3300 950  3300
Wire Wire Line
	650  3600 950  3600
Wire Wire Line
	650  3500 950  3500
Wire Wire Line
	650  3400 950  3400
Wire Wire Line
	650  3200 950  3200
Wire Wire Line
	650  3100 950  3100
Wire Wire Line
	650  3000 950  3000
Wire Wire Line
	650  2900 950  2900
Wire Wire Line
	650  2800 950  2800
Wire Wire Line
	650  2700 950  2700
Wire Wire Line
	650  2600 950  2600
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 6E2335D4
P 1150 1200
AR Path="/689FAE6F/6E2335D4" Ref="J?"  Part="1" 
AR Path="/600002AE/6E2335D4" Ref="J?"  Part="1" 
AR Path="/6E14A406/6E2335D4" Ref="J?"  Part="1" 
F 0 "J?" H 1200 1517 50  0000 C CNN
F 1 "Video" H 1200 1426 50  0000 C CNN
F 2 "" H 1150 1200 50  0001 C CNN
F 3 "~" H 1150 1200 50  0001 C CNN
	1    1150 1200
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
	1200 1900 1500 1900
Connection ~ 1200 1900
$Comp
L power:+5V #PWR?
U 1 1 6E2335EA
P 1200 1900
AR Path="/6E2335EA" Ref="#PWR?"  Part="1" 
AR Path="/689FAE6F/6E2335EA" Ref="#PWR?"  Part="1" 
AR Path="/600002AE/6E2335EA" Ref="#PWR?"  Part="1" 
AR Path="/6E14A406/6E2335EA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1200 1750 50  0001 C CNN
F 1 "+5V" H 1200 2050 50  0000 C CNN
F 2 "" H 1200 1900 50  0001 C CNN
F 3 "" H 1200 1900 50  0001 C CNN
	1    1200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2000 1450 2000
Wire Wire Line
	1500 1900 1500 2000
Wire Wire Line
	900  1900 1200 1900
Wire Wire Line
	900  2000 900  1900
Wire Wire Line
	950  2000 900  2000
Text Label 1550 2400 0    31   ~ 0
~MB_HBLNK~
Text Label 1550 2500 0    31   ~ 0
MB_SYNCH
Text Label 1550 2600 0    31   ~ 0
~MB_V-HBLNK~
Text Label 1550 2700 0    31   ~ 0
MB_VIDEO
Text Label 750  2500 0    31   ~ 0
~WR~
Text Label 750  3600 0    31   ~ 0
A0
Text Label 750  3500 0    31   ~ 0
A1
Text Label 750  3400 0    31   ~ 0
A2
Text Label 750  3300 0    31   ~ 0
A3
Text Label 750  3200 0    31   ~ 0
A4
Text Label 750  3100 0    31   ~ 0
A5
Text Label 750  3000 0    31   ~ 0
A6
Text Label 750  2900 0    31   ~ 0
A7
Text Label 750  2700 0    31   ~ 0
A9
Text Label 750  2600 0    31   ~ 0
A10
Text Label 750  2400 0    31   ~ 0
~GT~
Text Label 750  2300 0    31   ~ 0
~CS~
Text Label 750  2200 0    31   ~ 0
~RD~
Entry Bus Bus
	550  650  650  550 
Entry Wire Line
	1950 2400 2050 2500
Entry Wire Line
	1950 2700 2050 2800
Entry Wire Line
	1950 2600 2050 2700
Entry Wire Line
	1950 2500 2050 2600
Wire Wire Line
	750  2200 950  2200
Wire Wire Line
	750  2300 950  2300
Entry Wire Line
	650  2400 750  2500
Entry Wire Line
	650  2300 750  2400
Wire Wire Line
	750  2400 950  2400
Entry Wire Line
	550  2600 650  2700
Entry Wire Line
	550  2500 650  2600
Entry Wire Line
	550  2700 650  2800
Entry Wire Line
	550  2800 650  2900
Entry Wire Line
	550  2900 650  3000
Entry Wire Line
	550  3000 650  3100
Entry Wire Line
	550  3100 650  3200
Entry Wire Line
	550  3200 650  3300
Entry Wire Line
	550  3300 650  3400
Entry Wire Line
	550  3400 650  3500
Entry Wire Line
	550  3500 650  3600
Entry Wire Line
	650  2100 750  2200
Wire Wire Line
	750  2500 950  2500
Entry Wire Line
	650  2200 750  2300
Entry Bus Bus
	650  1700 750  1600
Text GLabel 800  7750 0    39   BiDi ~ 0
D[7..0]
Entry Bus Bus
	4550 7750 4650 7650
Entry Bus Bus
	1750 7650 1850 7750
Wire Wire Line
	1500 2400 1500 2500
Wire Wire Line
	1500 2500 1500 2600
Wire Wire Line
	1500 2600 1500 2700
Wire Wire Line
	1500 2700 1500 2800
Wire Wire Line
	1500 2800 1500 3850
Wire Wire Line
	1500 2100 1500 2300
Wire Wire Line
	1450 2400 1950 2400
Wire Wire Line
	1450 2500 1950 2500
Wire Wire Line
	1450 2600 1950 2600
Wire Wire Line
	1450 2700 1950 2700
Wire Wire Line
	1450 2800 1950 2800
Connection ~ 1500 2300
Wire Wire Line
	1500 2300 1500 2400
Text Label 750  2800 0    31   ~ 0
A8
Wire Wire Line
	650  1300 950  1300
Wire Wire Line
	650  1200 950  1200
Wire Wire Line
	650  1100 950  1100
$Comp
L epm7128slc84:EPM7512AEQFP144-3 U?
U 1 1 6E46C742
P 3200 3700
F 0 "U?" H 3200 6600 50  0000 C CNN
F 1 "EPM7512AEQFP144-3" H 3200 950 50  0000 C CNN
F 2 "Package_QFP" H 4050 800 50  0001 L CNN
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
Text Label 4000 1900 0    31   ~ 0
A11
Text Label 4000 2000 0    31   ~ 0
A12
Text Label 4000 2100 0    31   ~ 0
A13
Entry Wire Line
	4400 2100 4500 2200
Wire Wire Line
	2150 2300 2550 2300
Wire Wire Line
	2150 2200 2550 2200
Wire Wire Line
	2150 2100 2550 2100
Wire Wire Line
	2150 2000 2550 2000
Wire Wire Line
	2150 1900 2550 1900
Wire Wire Line
	2150 1800 2550 1800
Wire Wire Line
	2150 1700 2550 1700
Wire Wire Line
	2150 1600 2550 1600
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
Text Label 1550 3600 0    31   ~ 0
D0
Text Label 1550 3500 0    31   ~ 0
D1
Text Label 1550 3400 0    31   ~ 0
D2
Text Label 1550 3300 0    31   ~ 0
D3
Text Label 1550 3200 0    31   ~ 0
D4
Text Label 1550 3100 0    31   ~ 0
D5
Text Label 1550 3000 0    31   ~ 0
D6
Text Label 1550 2900 0    31   ~ 0
D7
Wire Bus Line
	800  7750 1650 7750
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
Text Label 4800 3200 0    31   ~ 0
VDATA0
Text Label 4800 3300 0    31   ~ 0
VDATA1
Text Label 4800 3400 0    31   ~ 0
VDATA2
Text Label 4800 3500 0    31   ~ 0
VDATA3
Text Label 4800 3600 0    31   ~ 0
VDATA4
Text Label 4800 3700 0    31   ~ 0
VDATA5
Text Label 4800 3800 0    31   ~ 0
VDATA6
Text Label 4800 3900 0    31   ~ 0
VDATA7
Entry Wire Line
	4650 3300 4750 3200
Entry Wire Line
	4650 3400 4750 3300
Entry Wire Line
	4650 3500 4750 3400
Entry Wire Line
	4650 3600 4750 3500
Entry Wire Line
	4650 3700 4750 3600
Entry Wire Line
	4650 3800 4750 3700
Entry Wire Line
	4650 3900 4750 3800
Entry Wire Line
	4650 4000 4750 3900
Wire Wire Line
	4750 3900 5150 3900
Wire Wire Line
	4750 3800 5150 3800
Wire Wire Line
	4750 3700 5150 3700
Wire Wire Line
	4750 3600 5150 3600
Wire Wire Line
	4750 3500 5150 3500
Wire Wire Line
	4750 3400 5150 3400
Wire Wire Line
	4750 3300 5150 3300
Wire Wire Line
	4750 3200 5150 3200
Wire Bus Line
	1850 7750 4550 7750
Entry Bus Bus
	1650 7650 1750 7550
Text GLabel 900  7650 0    39   BiDi ~ 0
VDATA[7..0]
Wire Bus Line
	900  7650 1650 7650
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
Text Label 7100 800  2    31   ~ 0
CGA11
Text Label 7100 1000 2    31   ~ 0
CGA13
Text Label 7100 1100 2    31   ~ 0
CGA14
Text Label 7100 900  2    31   ~ 0
CGA12
Entry Wire Line
	7250 1200 7150 1100
Entry Wire Line
	7250 900  7150 800 
Entry Wire Line
	7250 1000 7150 900 
Entry Wire Line
	7250 1100 7150 1000
Wire Wire Line
	7150 800  6750 800 
Wire Wire Line
	7150 900  6750 900 
Wire Wire Line
	7150 1000 6750 1000
Wire Wire Line
	7150 1100 6750 1100
Wire Wire Line
	3850 3400 4400 3400
Wire Wire Line
	3850 3500 4400 3500
Text Label 4000 5500 0    31   ~ 0
D7
Text Label 4000 5400 0    31   ~ 0
D6
Text Label 4000 5300 0    31   ~ 0
D5
Text Label 4000 5200 0    31   ~ 0
D4
Text Label 4000 5100 0    31   ~ 0
D3
Text Label 4000 5000 0    31   ~ 0
D2
Text Label 4000 4900 0    31   ~ 0
D1
Text Label 4000 4800 0    31   ~ 0
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
Text Label 6950 3800 0    31   ~ 0
~VRESET~
Wire Wire Line
	7150 3800 6750 3800
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
Entry Wire Line
	2050 2900 2150 2800
Entry Wire Line
	2050 3000 2150 2900
Wire Wire Line
	2150 2800 2550 2800
Wire Wire Line
	2150 2900 2550 2900
Text Label 2200 6200 0    31   ~ 0
~VWR~
Text Label 2200 6100 0    31   ~ 0
~VGT~
Text Label 2200 6000 0    31   ~ 0
~VCS~
Text Label 2200 5900 0    31   ~ 0
~VRD~
Entry Wire Line
	2050 6100 2150 6000
Wire Wire Line
	2150 6000 2550 6000
Wire Wire Line
	2150 5900 2550 5900
Entry Wire Line
	2050 6000 2150 5900
Entry Wire Line
	2050 6300 2150 6200
Wire Wire Line
	2150 6200 2550 6200
Wire Wire Line
	2150 6100 2550 6100
Entry Wire Line
	2050 6200 2150 6100
Wire Bus Line
	650  550  4400 550 
Entry Bus Bus
	2050 6950 2150 7050
Wire Bus Line
	2150 7050 4900 7050
Entry Bus Bus
	4900 7050 5000 6950
Entry Bus Bus
	7150 4400 7250 4300
Entry Bus Bus
	5000 4500 5100 4400
Wire Bus Line
	5100 4400 7150 4400
Wire Bus Line
	5000 4500 5000 6950
Text Label 1550 1100 0    31   ~ 0
~MEM_CS~
Text Label 1550 1200 0    31   ~ 0
~IORQ~
Text Label 1550 1300 0    31   ~ 0
~RESET~
Wire Wire Line
	2150 3000 2550 3000
Wire Wire Line
	2150 3100 2550 3100
Entry Wire Line
	2050 3100 2150 3000
Entry Wire Line
	2050 3200 2150 3100
Entry Wire Line
	2050 3300 2150 3200
Text GLabel 950  7350 0    39   Output ~ 0
VADDR[13..0]
Text GLabel 800  7450 0    39   Output ~ 0
A[13:0]
Wire Bus Line
	950  7350 1850 7350
Entry Bus Bus
	4400 7450 4500 7350
Entry Bus Bus
	1850 7350 1950 7450
Text GLabel 1000 4150 0    39   Input ~ 0
SRCLOCK_OUT
Wire Wire Line
	1000 4150 1350 4150
Text GLabel 800  4250 0    39   Input ~ 0
~SRLOAD~
Wire Wire Line
	800  4250 1350 4250
Text GLabel 950  4350 0    39   Output ~ 0
~40~80-MODE
Wire Wire Line
	950  4350 1350 4350
Text GLabel 800  4450 0    39   Output ~ 0
16MHZ
Wire Wire Line
	800  4450 1350 4450
Text GLabel 1000 4550 0    39   Output ~ 0
2MHZ_DLY_IN
Wire Wire Line
	1000 4550 1350 4550
Text GLabel 1200 4650 0    39   Output ~ 0
1MHZ_IN_AND_2MHZ
Wire Wire Line
	1200 4650 1350 4650
Text GLabel 900  4750 0    39   Input ~ 0
8MHZ_OUT
Wire Wire Line
	900  4750 1350 4750
Text GLabel 800  4850 0    39   Output ~ 0
C-L_IN
Wire Wire Line
	800  4850 1350 4850
Text GLabel 1000 4950 0    39   Input ~ 0
SRVIDEO_OUT
Wire Wire Line
	1000 4950 1350 4950
Text GLabel 800  5050 0    39   Input ~ 0
~SRLOAD~
Wire Wire Line
	800  5050 1350 5050
Text GLabel 950  5150 0    39   Output ~ 0
SRCLOCK_IN
Wire Wire Line
	950  5150 1350 5150
Text GLabel 950  5250 0    39   Output ~ 0
SRVIDEO_IN
Wire Wire Line
	950  5250 1350 5250
Text GLabel 850  5350 0    39   Input ~ 0
C-L_OUT
Wire Wire Line
	850  5350 1350 5350
Text GLabel 850  5450 0    39   Output ~ 0
8MHZ_IN
Wire Wire Line
	850  5450 1350 5450
Text GLabel 800  5550 0    39   Output ~ 0
SRLOAD
Wire Wire Line
	800  5550 1350 5550
Text GLabel 900  5650 0    39   Input ~ 0
2MHZ_OUT
Wire Wire Line
	900  5650 1350 5650
Text GLabel 900  5750 0    39   Input ~ 0
1MHZ_OUT
Wire Wire Line
	900  5750 1350 5750
Text GLabel 950  6350 0    39   Output ~ 0
CGA[14..11]
Entry Wire Line
	1350 4150 1450 4250
Entry Wire Line
	1350 4250 1450 4350
Entry Wire Line
	1350 4350 1450 4450
Entry Wire Line
	1350 4450 1450 4550
Entry Wire Line
	1350 4550 1450 4650
Entry Wire Line
	1350 4650 1450 4750
Entry Wire Line
	1350 4750 1450 4850
Entry Wire Line
	1350 4850 1450 4950
Entry Wire Line
	1350 4950 1450 5050
Entry Wire Line
	1350 5050 1450 5150
Entry Wire Line
	1350 5150 1450 5250
Entry Wire Line
	1350 5250 1450 5350
Entry Wire Line
	1350 5350 1450 5450
Entry Wire Line
	1350 5450 1450 5550
Entry Wire Line
	1350 5550 1450 5650
Entry Wire Line
	1350 5650 1450 5750
Entry Wire Line
	1350 5750 1450 5850
Text GLabel 650  6850 0    39   Output ~ 0
~RD~
Text GLabel 650  6750 0    39   Output ~ 0
~WR~
Text GLabel 650  6650 0    39   Output ~ 0
~CS~
Text GLabel 650  6550 0    39   Output ~ 0
~GT~
Wire Wire Line
	650  6850 1350 6850
Wire Wire Line
	650  6750 1350 6750
Wire Wire Line
	650  6650 1350 6650
Wire Wire Line
	650  6550 1350 6550
Entry Bus Bus
	1350 6350 1450 6450
Wire Bus Line
	950  6350 1350 6350
Text Label 2250 800  0    31   ~ 0
SRCLOCK_OUT
Text Label 2250 900  0    31   ~ 0
~SRLOAD~
Text Label 2250 1000 0    31   ~ 0
~40~80-MODE
Text Label 2250 1100 0    31   ~ 0
16MHZ
Text Label 2250 1200 0    31   ~ 0
2MHZ_DLY_IN
Text Label 2250 1300 0    31   ~ 0
1MHZ_IN_AND_2MHZ
Text Label 2250 1400 0    31   ~ 0
8MHZ_OUT
Text Label 2250 1600 0    31   ~ 0
SRVIDEO_OUT
Text Label 2250 1500 0    31   ~ 0
C-L_IN
Text Label 2250 1700 0    31   ~ 0
~SRLOAD~
Text Label 2250 1800 0    31   ~ 0
SRCLOCK_IN
Text Label 2250 1900 0    31   ~ 0
SRVIDEO_IN
Text Label 2250 2000 0    31   ~ 0
C-L_OUT
Text Label 2250 2100 0    31   ~ 0
8MHZ_IN
Text Label 2250 2200 0    31   ~ 0
SRLOAD
Text Label 2250 2300 0    31   ~ 0
2MHZ_OUT
Text Label 2250 2400 0    31   ~ 0
1MHZ_OUT
Text Label 2250 2500 0    31   ~ 0
~MB_HBLNK~
Text Label 2250 2600 0    31   ~ 0
MB_SYNCH
Text Label 2250 2700 0    31   ~ 0
~MB_V-HBLNK~
Text Label 2250 2800 0    31   ~ 0
MB_VIDEO
Text Label 2250 2900 0    31   ~ 0
MB_LOAD
Text Label 2250 3000 0    31   ~ 0
~RESET~
Text Label 2250 3100 0    31   ~ 0
~GT~
Text Label 2250 3200 0    31   ~ 0
~CS~
Text Label 2250 3300 0    31   ~ 0
~WR~
Text Label 2250 3400 0    31   ~ 0
~RD~
Wire Wire Line
	2150 3200 2550 3200
Wire Wire Line
	2550 3300 2150 3300
Wire Wire Line
	2150 3400 2550 3400
Entry Wire Line
	2050 3400 2150 3300
Entry Wire Line
	2050 3500 2150 3400
Text Label 2250 3500 0    31   ~ 0
~MEM_CS~
Text Label 2250 3600 0    31   ~ 0
~IORQ~
Entry Wire Line
	2050 5900 2150 5800
Wire Wire Line
	2150 5800 2550 5800
Text Label 2200 5800 0    31   ~ 0
~VIORQ~
Text Label 2200 5700 0    31   ~ 0
~VMEM_CS~
Entry Wire Line
	2050 5600 2150 5500
Wire Wire Line
	2150 5500 2550 5500
Wire Wire Line
	2150 5400 2550 5400
Entry Wire Line
	2050 5500 2150 5400
Entry Wire Line
	2050 5800 2150 5700
Wire Wire Line
	2150 5700 2550 5700
Wire Wire Line
	2150 5600 2550 5600
Entry Wire Line
	2050 5700 2150 5600
Wire Wire Line
	2550 3500 2150 3500
Wire Wire Line
	2550 3600 2150 3600
Entry Wire Line
	2050 3600 2150 3500
Entry Wire Line
	2050 3700 2150 3600
Wire Wire Line
	6750 3700 7150 3700
Text Label 6950 3700 0    31   ~ 0
~VWR~
Text Label 6950 3600 0    31   ~ 0
~VGT~
Text Label 6950 3500 0    31   ~ 0
~VCS~
Text Label 6950 3400 0    31   ~ 0
~VRD~
Wire Wire Line
	6750 3400 7150 3400
Wire Wire Line
	6750 3300 7150 3300
Wire Wire Line
	6750 3600 7150 3600
Wire Wire Line
	6750 3500 7150 3500
Wire Wire Line
	6750 3200 7150 3200
Text Label 6950 3300 0    31   ~ 0
~VIORQ~
Text Label 6950 3200 0    31   ~ 0
~VMEM_CS~
Wire Wire Line
	6750 3100 7150 3100
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
Entry Wire Line
	7150 3200 7250 3300
Entry Wire Line
	7150 3100 7250 3200
Wire Bus Line
	800  7450 4400 7450
Wire Bus Line
	650  1700 650  2400
Wire Bus Line
	1750 3000 1750 7650
Wire Bus Line
	550  650  550  3500
Wire Bus Line
	7250 900  7250 4300
Wire Bus Line
	4500 650  4500 7350
Wire Bus Line
	4650 3300 4650 7650
Wire Bus Line
	1450 4250 1450 6950
Wire Bus Line
	2050 900  2050 6950
$EndSCHEMATC
