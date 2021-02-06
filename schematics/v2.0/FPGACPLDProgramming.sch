EESchema Schematic File Version 4
LIBS:MZ80-80CLR-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title "FPGA and CPLD Support Circuits."
Date "2020-06-27"
Rev "2.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "FPGA and CPLD Programming and support circuits."
$EndDescr
$Comp
L epm7128slc84:EP3C25E144C8N U3
U 2 1 6D244DB7
P 2400 2000
F 0 "U3" H 2300 2800 50  0000 C CNN
F 1 "EP3C25E144C8N" H 2400 1050 50  0000 C CNN
F 2 "Package_QFP:EQFP-144-1EP_20x20mm_P0.5mm_EP6.61x5.615mm" H 3100 200 50  0001 L CNN
F 3 "https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/hb/max2/max2_mii5v1.pdf" H 4050 1200 50  0001 C CNN
	2    2400 2000
	1    0    0    -1  
$EndComp
$Comp
L epm7128slc84:EPCS16 U6
U 1 1 6D24AB29
P 2350 3900
F 0 "U6" H 2350 3900 39  0000 C CNN
F 1 "EPCS16" H 2350 3800 39  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2350 3900 39  0001 C CNN
F 3 "" H 2350 3900 39  0001 C CNN
	1    2350 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR025
U 1 1 6D254BE6
P 2350 4350
F 0 "#PWR025" H 2350 4150 50  0001 C CNN
F 1 "GNDPWR" H 2500 4350 50  0000 C CNN
F 2 "" H 2350 4300 50  0001 C CNN
F 3 "" H 2350 4300 50  0001 C CNN
	1    2350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3450 2200 3400
Wire Wire Line
	2200 3400 2350 3400
Wire Wire Line
	2500 3400 2500 3450
Wire Wire Line
	2350 3400 2350 3450
Connection ~ 2350 3400
Wire Wire Line
	2350 3400 2500 3400
$Comp
L Device:C C37
U 1 1 6D256B48
P 3050 3550
F 0 "C37" H 3165 3596 50  0000 L CNN
F 1 "100nF" H 3165 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3088 3400 50  0001 C CNN
F 3 "~" H 3050 3550 50  0001 C CNN
	1    3050 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3400 3050 3400
Connection ~ 2500 3400
$Comp
L power:GNDPWR #PWR026
U 1 1 6D257DA1
P 3050 3700
F 0 "#PWR026" H 3050 3500 50  0001 C CNN
F 1 "GNDPWR" H 3200 3700 50  0000 C CNN
F 2 "" H 3050 3650 50  0001 C CNN
F 3 "" H 3050 3650 50  0001 C CNN
	1    3050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3850 3450 2250
Wire Wire Line
	3450 2250 3000 2250
Wire Wire Line
	2750 3850 3450 3850
Wire Wire Line
	3500 3950 3500 2350
Wire Wire Line
	3500 2350 3000 2350
Wire Wire Line
	2750 3950 3500 3950
Wire Wire Line
	1950 3950 1850 3950
Wire Wire Line
	1850 3950 1850 4550
Wire Wire Line
	1850 4550 3550 4550
Wire Wire Line
	3550 4550 3550 2150
Wire Wire Line
	3550 2150 3000 2150
Wire Wire Line
	1950 3850 1800 3850
Wire Wire Line
	1800 3850 1800 4600
Wire Wire Line
	1800 4600 3600 4600
Wire Wire Line
	3600 4600 3600 2450
Wire Wire Line
	3600 2450 3000 2450
Wire Wire Line
	3000 1800 3750 1800
$Comp
L Device:R_Small R23
U 1 1 6D26CD8E
P 3300 1000
F 0 "R23" H 3350 1050 50  0000 L CNN
F 1 "10K" H 3350 950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3300 1000 50  0001 C CNN
F 3 "~" H 3300 1000 50  0001 C CNN
	1    3300 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R24
U 1 1 6D26E25E
P 3550 1000
F 0 "R24" H 3600 1050 50  0000 L CNN
F 1 "10K" H 3600 950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3550 1000 50  0001 C CNN
F 3 "~" H 3550 1000 50  0001 C CNN
	1    3550 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R25
U 1 1 6D26EE17
P 3800 1000
F 0 "R25" H 3850 1050 50  0000 L CNN
F 1 "10K" H 3850 950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3800 1000 50  0001 C CNN
F 3 "~" H 3800 1000 50  0001 C CNN
	1    3800 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1100 3300 1250
Wire Wire Line
	3300 1250 3000 1250
Wire Wire Line
	3550 1100 3550 1350
Wire Wire Line
	3550 1350 3000 1350
Wire Wire Line
	3800 1100 3800 1550
Wire Wire Line
	3800 1550 3000 1550
$Comp
L power:GNDPWR #PWR028
U 1 1 6D2718E1
P 3200 1450
F 0 "#PWR028" H 3200 1250 50  0001 C CNN
F 1 "GNDPWR" H 3350 1450 50  0000 C CNN
F 2 "" H 3200 1400 50  0001 C CNN
F 3 "" H 3200 1400 50  0001 C CNN
	1    3200 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1450 3200 1450
$Comp
L Device:R_Small R26
U 1 1 6D27313A
P 4550 3150
F 0 "R26" H 4600 3200 50  0000 L CNN
F 1 "10K" H 4600 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4550 3150 50  0001 C CNN
F 3 "~" H 4550 3150 50  0001 C CNN
	1    4550 3150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R27
U 1 1 6D27430F
P 4400 4100
F 0 "R27" H 4450 4150 50  0000 L CNN
F 1 "1K" H 4450 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4400 4100 50  0001 C CNN
F 3 "~" H 4400 4100 50  0001 C CNN
	1    4400 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4550 3250 4550 3650
Wire Wire Line
	3300 900  3300 850 
Wire Wire Line
	3300 850  3550 850 
Wire Wire Line
	3550 850  3550 900 
Wire Wire Line
	3550 850  3800 850 
Wire Wire Line
	3800 850  3800 900 
Connection ~ 3550 850 
Wire Wire Line
	4550 3050 4550 3000
$Comp
L power:+3.3V #PWR030
U 1 1 6D27A094
P 3550 850
F 0 "#PWR030" H 3550 700 50  0001 C CNN
F 1 "+3.3V" H 3565 1023 50  0000 C CNN
F 2 "" H 3550 850 50  0001 C CNN
F 3 "" H 3550 850 50  0001 C CNN
	1    3550 850 
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:ASE-xxxMHz X1
U 1 1 6D27DA45
P 950 1350
F 0 "X1" H 1200 1300 50  0000 L CNN
F 1 "ASE-50MHz" H 1200 1200 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_Abracon_ASE-4Pin_3.2x2.5mm" H 1650 1000 50  0001 C CNN
F 3 "http://www.abracon.com/Oscillators/ASV.pdf" H 850 1350 50  0001 C CNN
	1    950  1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1350 1800 1350
$Comp
L power:GNDPWR #PWR023
U 1 1 6D27FEA8
P 950 1650
F 0 "#PWR023" H 950 1450 50  0001 C CNN
F 1 "GNDPWR" H 1100 1650 50  0000 C CNN
F 2 "" H 950 1600 50  0001 C CNN
F 3 "" H 950 1600 50  0001 C CNN
	1    950  1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 6D280F33
P 950 900
F 0 "#PWR022" H 950 750 50  0001 C CNN
F 1 "+3.3V" H 965 1073 50  0000 C CNN
F 2 "" H 950 900 50  0001 C CNN
F 3 "" H 950 900 50  0001 C CNN
	1    950  900 
	1    0    0    -1  
$EndComp
NoConn ~ 650  1350
$Comp
L Device:C C36
U 1 1 6D283FE9
P 1300 1050
F 0 "C36" H 1415 1096 50  0000 L CNN
F 1 "100nF" H 1415 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1338 900 50  0001 C CNN
F 3 "~" H 1300 1050 50  0001 C CNN
	1    1300 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  900  1300 900 
$Comp
L power:GNDPWR #PWR024
U 1 1 6D283FF4
P 1300 1200
F 0 "#PWR024" H 1300 1000 50  0001 C CNN
F 1 "GNDPWR" H 1450 1200 50  0000 C CNN
F 2 "" H 1300 1150 50  0001 C CNN
F 3 "" H 1300 1150 50  0001 C CNN
	1    1300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  900  950  1050
Connection ~ 950  900 
NoConn ~ 1800 1450
NoConn ~ 1800 1550
NoConn ~ 1800 1650
NoConn ~ 1800 1750
NoConn ~ 1800 1850
NoConn ~ 1800 1950
NoConn ~ 1800 2050
NoConn ~ 1800 2150
NoConn ~ 1800 2250
NoConn ~ 1800 2350
NoConn ~ 1800 2450
NoConn ~ 1800 2550
NoConn ~ 1800 2650
NoConn ~ 1800 2750
Wire Wire Line
	3000 2600 3100 2600
Wire Wire Line
	3100 2800 3000 2800
$Comp
L power:GNDPWR #PWR027
U 1 1 6D2A5329
P 3100 2950
F 0 "#PWR027" H 3100 2750 50  0001 C CNN
F 1 "GNDPWR" H 3250 2950 50  0000 C CNN
F 2 "" H 3100 2900 50  0001 C CNN
F 3 "" H 3100 2900 50  0001 C CNN
	1    3100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2600 3100 2800
Wire Wire Line
	3100 2800 3100 2950
Connection ~ 3100 2800
$Comp
L power:+2V5 #PWR029
U 1 1 6D2A86F7
P 3200 2700
F 0 "#PWR029" H 3200 2550 50  0001 C CNN
F 1 "+2V5" H 3215 2873 50  0000 C CNN
F 2 "" H 3200 2700 50  0001 C CNN
F 3 "" H 3200 2700 50  0001 C CNN
	1    3200 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2700 3200 2700
$Comp
L Switch:SW_Push SW1
U 1 1 6D2AF935
P 4250 1350
F 0 "SW1" H 4250 1635 50  0000 C CNN
F 1 "CONFIG" H 4250 1544 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1000" H 4250 1550 50  0001 C CNN
F 3 "~" H 4250 1550 50  0001 C CNN
	1    4250 1350
	1    0    0    -1  
$EndComp
Connection ~ 3550 1350
Wire Wire Line
	3550 1350 4050 1350
Text GLabel 800  4950 0    39   Input ~ 0
~RESET~
$Comp
L Oscillator:ASE-xxxMHz X2
U 1 1 6F9BB54A
P 950 5750
F 0 "X2" H 1200 5700 50  0000 L CNN
F 1 "ASE-16MHz" H 1200 5600 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_Abracon_ASE-4Pin_3.2x2.5mm" H 1650 5400 50  0001 C CNN
F 3 "http://www.abracon.com/Oscillators/ASV.pdf" H 850 5750 50  0001 C CNN
	1    950  5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5750 1800 5750
$Comp
L power:GNDPWR #PWR035
U 1 1 6F9BB551
P 950 6050
F 0 "#PWR035" H 950 5850 50  0001 C CNN
F 1 "GNDPWR" H 1100 6050 50  0000 C CNN
F 2 "" H 950 6000 50  0001 C CNN
F 3 "" H 950 6000 50  0001 C CNN
	1    950  6050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR034
U 1 1 6F9BB557
P 950 5300
F 0 "#PWR034" H 950 5150 50  0001 C CNN
F 1 "+3.3V" H 965 5473 50  0000 C CNN
F 2 "" H 950 5300 50  0001 C CNN
F 3 "" H 950 5300 50  0001 C CNN
	1    950  5300
	1    0    0    -1  
$EndComp
NoConn ~ 650  5750
$Comp
L Device:C C38
U 1 1 6F9BB55E
P 1300 5450
F 0 "C38" H 1415 5496 50  0000 L CNN
F 1 "100nF" H 1415 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1338 5300 50  0001 C CNN
F 3 "~" H 1300 5450 50  0001 C CNN
	1    1300 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5300 1300 5300
$Comp
L power:GNDPWR #PWR036
U 1 1 6F9BB565
P 1300 5600
F 0 "#PWR036" H 1300 5400 50  0001 C CNN
F 1 "GNDPWR" H 1450 5600 50  0000 C CNN
F 2 "" H 1300 5550 50  0001 C CNN
F 3 "" H 1300 5550 50  0001 C CNN
	1    1300 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5300 950  5450
Connection ~ 950  5300
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J5
U 1 1 6F9F2008
P 4900 3650
F 0 "J5" H 4950 4067 50  0000 C CNN
F 1 "JTAG" H 4950 3976 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Vertical" H 4900 3650 50  0001 C CNN
F 3 "~" H 4900 3650 50  0001 C CNN
	1    4900 3650
	1    0    0    -1  
$EndComp
NoConn ~ 4700 3750
NoConn ~ 5200 3750
NoConn ~ 5200 3650
Wire Wire Line
	5200 3450 5300 3450
Wire Wire Line
	5300 3850 5200 3850
$Comp
L power:GNDPWR #PWR037
U 1 1 6F9F2017
P 5300 4300
F 0 "#PWR037" H 5300 4100 50  0001 C CNN
F 1 "GNDPWR" H 5450 4300 50  0000 C CNN
F 2 "" H 5300 4250 50  0001 C CNN
F 3 "" H 5300 4250 50  0001 C CNN
	1    5300 4300
	1    0    0    -1  
$EndComp
Connection ~ 5300 3850
Wire Wire Line
	5200 3550 5500 3550
Wire Wire Line
	5500 3550 5500 3000
Wire Wire Line
	3200 5650 3750 5650
$Comp
L power:+3.3V #PWR038
U 1 1 6FA01A74
P 5500 2950
F 0 "#PWR038" H 5500 2800 50  0001 C CNN
F 1 "+3.3V" H 5515 3123 50  0000 C CNN
F 2 "" H 5500 2950 50  0001 C CNN
F 3 "" H 5500 2950 50  0001 C CNN
	1    5500 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  4950 1700 4950
Wire Wire Line
	1700 4950 1700 5650
Wire Wire Line
	1700 5650 1800 5650
NoConn ~ 1800 5850
NoConn ~ 1800 5950
$Comp
L power:+3.3V #PWR0101
U 1 1 762F7371
P 2350 3400
F 0 "#PWR0101" H 2350 3250 50  0001 C CNN
F 1 "+3.3V" H 2365 3573 50  0000 C CNN
F 2 "" H 2350 3400 50  0001 C CNN
F 3 "" H 2350 3400 50  0001 C CNN
	1    2350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3650 4700 3650
$Comp
L epm7128slc84:EPM7512AEQFP144-3 U5
U 2 1 6F9A374D
P 2500 5800
F 0 "U5" H 2500 6100 50  0000 C CNN
F 1 "EPM7512AEQFP144-3" H 2500 5400 50  0000 C CNN
F 2 "Package_QFP:TQFP-144_20x20mm_P0.5mm" H 3350 2900 50  0001 L CNN
F 3 "https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/hb/max2/max2_mii5v1.pdf" H 2500 5800 50  0001 C CNN
	2    2500 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3450 5300 3850
$Comp
L power:GNDPWR #PWR0103
U 1 1 5F753790
P 4600 1450
F 0 "#PWR0103" H 4600 1250 50  0001 C CNN
F 1 "GNDPWR" H 4600 1300 50  0000 C CNN
F 2 "" H 4600 1400 50  0001 C CNN
F 3 "" H 4600 1400 50  0001 C CNN
	1    4600 1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4600 1450 4600 1350
Wire Wire Line
	4600 1350 4450 1350
Wire Wire Line
	3200 5750 3650 5750
Wire Wire Line
	3650 5750 3650 1700
Wire Wire Line
	3650 1700 3000 1700
Wire Wire Line
	3000 1900 3700 1900
Wire Wire Line
	3700 1900 3700 3650
Wire Wire Line
	3700 5850 3200 5850
Wire Wire Line
	3750 1800 3750 3450
Wire Wire Line
	4700 3450 4400 3450
Connection ~ 3750 3450
Wire Wire Line
	3750 3450 3750 5650
Wire Wire Line
	4700 3550 3950 3550
Wire Wire Line
	3950 3550 3950 2000
Wire Wire Line
	3950 2000 3000 2000
Wire Wire Line
	3950 3850 3950 5950
Wire Wire Line
	3950 5950 3200 5950
Wire Wire Line
	4550 3650 3700 3650
Connection ~ 4550 3650
Connection ~ 3700 3650
Wire Wire Line
	3700 3650 3700 5850
Wire Wire Line
	3950 3850 4700 3850
Wire Wire Line
	4400 4000 4400 3450
Connection ~ 4400 3450
Wire Wire Line
	4400 3450 3750 3450
Wire Wire Line
	4400 4200 4400 4250
Wire Wire Line
	4400 4250 5300 4250
Wire Wire Line
	5300 4250 5300 4300
Wire Wire Line
	5300 3850 5300 4250
Connection ~ 5300 4250
Wire Wire Line
	4550 3000 5500 3000
Connection ~ 5500 3000
Wire Wire Line
	5500 3000 5500 2950
$EndSCHEMATC
