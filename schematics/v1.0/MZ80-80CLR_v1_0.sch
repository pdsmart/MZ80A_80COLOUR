EESchema Schematic File Version 4
LIBS:MZ80-80CLR
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "Sharp MZ-80A 40/80 Column Colour Adapter"
Date "2019-08-23"
Rev "1.0"
Comp ""
Comment1 "display."
Comment2 "specification to allow colour output and selectable 40/80 column"
Comment3 "along with the colour board connector CN1 extends the MZ-80A"
Comment4 "An add on board, located as an extender in sockets of IC20, 31 and 8"
$EndDescr
$Sheet
S 950  800  2600 1800
U 689FAE6F
F0 "Colour" 39
F1 "Colour_v1_0.sch" 39
$EndSheet
$Sheet
S 1000 3250 2500 1750
U 68A807E5
F0 "40-80Column" 39
F1 "40-80Column_v1_0.sch" 39
$EndSheet
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 6B339D40
P 1000 7150
F 0 "H3" H 1100 7153 50  0000 L CNN
F 1 "MountingHole_Pad" H 1100 7108 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_ISO7380" H 1000 7150 50  0001 C CNN
F 3 "~" H 1000 7150 50  0001 C CNN
	1    1000 7150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 6B339F6D
P 1350 7150
F 0 "H4" H 1450 7153 50  0000 L CNN
F 1 "MountingHole_Pad" H 1450 7108 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_ISO7380" H 1350 7150 50  0001 C CNN
F 3 "~" H 1350 7150 50  0001 C CNN
	1    1350 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR01
U 1 1 6BE70104
P 1000 7450
F 0 "#PWR01" H 1000 7250 50  0001 C CNN
F 1 "GNDPWR" H 1004 7296 50  0000 C CNN
F 2 "" H 1000 7400 50  0001 C CNN
F 3 "" H 1000 7400 50  0001 C CNN
	1    1000 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 7400 1350 7250
Wire Wire Line
	1000 7250 1000 7400
Wire Wire Line
	1000 7400 1350 7400
Wire Wire Line
	1000 7400 1000 7450
Connection ~ 1000 7400
$EndSCHEMATC
