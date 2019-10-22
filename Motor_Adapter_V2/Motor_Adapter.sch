EESchema Schematic File Version 4
LIBS:Motor_Adapter-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6300 1200 6500 1200
Wire Wire Line
	6500 1300 6300 1300
Wire Wire Line
	6300 1400 6500 1400
Wire Wire Line
	6500 1500 6300 1500
Wire Wire Line
	6300 1600 6400 1600
$Comp
L Connector_Generic:Conn_01x05 J5
U 1 1 5CD14839
P 6100 3400
F 0 "J5" H 6100 3100 50  0000 C CNN
F 1 "Hall_Sensor" V 6200 3400 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 6100 3400 50  0001 C CNN
F 3 "~" H 6100 3400 50  0001 C CNN
	1    6100 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 3200 6500 3200
Wire Wire Line
	6500 3300 6300 3300
Wire Wire Line
	6300 3400 6500 3400
Wire Wire Line
	6500 3500 6300 3500
Wire Wire Line
	6300 3600 6400 3600
Wire Wire Line
	6500 1800 6500 1900
Wire Wire Line
	6500 2100 6500 2150
Wire Wire Line
	6500 2400 6500 2450
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 5CD0D843
P 6100 1400
F 0 "J4" H 6100 1100 50  0000 C CNN
F 1 "Hall_Sensor" V 6200 1400 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 6100 1400 50  0001 C CNN
F 3 "~" H 6100 1400 50  0001 C CNN
	1    6100 1400
	-1   0    0    1   
$EndComp
$Comp
L Molex_FFC-FPC:Maxon-200142 K2
U 1 1 5CD0CD02
P 7100 3400
F 0 "K2" H 7550 3100 60  0000 L CNN
F 1 "Maxon-200142" H 7550 2950 60  0000 L CNN
F 2 "Molex_FFC-FPC:Molex-52610-1133" H 7550 2850 60  0000 L CNN
F 3 "" H 6600 3500 60  0000 C CNN
	1    7100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3800 6500 3900
Wire Wire Line
	6500 4100 6500 4200
Wire Wire Line
	6500 4400 6500 4500
Connection ~ 6500 3900
Connection ~ 6500 4400
$Comp
L Molex_FFC-FPC:Maxon-200142 K1
U 1 1 5CD10FED
P 7100 1400
F 0 "K1" H 7550 1100 60  0000 L CNN
F 1 "Maxon-200142" H 7550 950 60  0000 L CNN
F 2 "Molex_FFC-FPC:Molex-52610-1133" H 7550 850 60  0000 L CNN
F 3 "" H 6600 1500 60  0000 C CNN
	1    7100 1400
	1    0    0    -1  
$EndComp
Connection ~ 6500 1900
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5D960175
P 4000 1350
F 0 "H4" H 4100 1401 50  0000 L CNN
F 1 "MountingHole_Pad" H 4100 1310 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 4000 1350 50  0001 C CNN
F 3 "~" H 4000 1350 50  0001 C CNN
	1    4000 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5D96024A
P 3150 1350
F 0 "H3" H 3250 1401 50  0000 L CNN
F 1 "MountingHole_Pad" H 3250 1310 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 3150 1350 50  0001 C CNN
F 3 "~" H 3150 1350 50  0001 C CNN
	1    3150 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5D960320
P 2300 1350
F 0 "H2" H 2400 1401 50  0000 L CNN
F 1 "MountingHole_Pad" H 2400 1310 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 2300 1350 50  0001 C CNN
F 3 "~" H 2300 1350 50  0001 C CNN
	1    2300 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5D960370
P 1450 1350
F 0 "H1" H 1550 1401 50  0000 L CNN
F 1 "MountingHole_Pad" H 1550 1310 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1450 1350 50  0001 C CNN
F 3 "~" H 1450 1350 50  0001 C CNN
	1    1450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1450 3150 1450
Connection ~ 2300 1450
Wire Wire Line
	2300 1450 1450 1450
Connection ~ 3150 1450
Wire Wire Line
	3150 1450 2800 1450
$Comp
L power:GND #PWR0101
U 1 1 5D9607C3
P 2800 1700
F 0 "#PWR0101" H 2800 1450 50  0001 C CNN
F 1 "GND" H 2805 1527 50  0000 C CNN
F 2 "" H 2800 1700 50  0001 C CNN
F 3 "" H 2800 1700 50  0001 C CNN
	1    2800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1700 2800 1450
Connection ~ 2800 1450
Wire Wire Line
	2800 1450 2300 1450
$Comp
L power:GND #PWR0102
U 1 1 5D960CFA
P 5800 1850
F 0 "#PWR0102" H 5800 1600 50  0001 C CNN
F 1 "GND" H 5805 1677 50  0000 C CNN
F 2 "" H 5800 1850 50  0001 C CNN
F 3 "" H 5800 1850 50  0001 C CNN
	1    5800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1850 5800 1750
Wire Wire Line
	5800 1750 6400 1750
Wire Wire Line
	6400 1750 6400 1600
Connection ~ 6400 1600
Wire Wire Line
	6400 1600 6500 1600
Wire Wire Line
	6400 3750 6400 3600
Connection ~ 6400 3600
Wire Wire Line
	6400 3600 6500 3600
$Comp
L power:GND #PWR0103
U 1 1 5D9D1B9F
P 6150 3750
F 0 "#PWR0103" H 6150 3500 50  0001 C CNN
F 1 "GND" H 6155 3577 50  0000 C CNN
F 2 "" H 6150 3750 50  0001 C CNN
F 3 "" H 6150 3750 50  0001 C CNN
	1    6150 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3750 6400 3750
Wire Wire Line
	5700 4400 6500 4400
Wire Wire Line
	6000 1900 6500 1900
Wire Wire Line
	6100 2350 6100 2150
Wire Wire Line
	6100 2150 6500 2150
Connection ~ 6500 2150
Wire Wire Line
	6500 2150 6500 2200
Connection ~ 6500 2450
Wire Wire Line
	6500 2450 6500 2500
$Comp
L Connector:Conn_01x03_Female J6
U 1 1 5DA18DF3
P 5400 2350
F 0 "J6" H 5294 2025 50  0000 C CNN
F 1 "Conn_01x03_Female" H 5294 2116 50  0000 C CNN
F 2 "Connector_JST:JST_NV_B03P-NV_1x03_P5.00mm_Vertical" H 5400 2350 50  0001 C CNN
F 3 "~" H 5400 2350 50  0001 C CNN
	1    5400 2350
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Female J7
U 1 1 5DA18EAB
P 5500 4300
F 0 "J7" H 5394 3975 50  0000 C CNN
F 1 "Conn_01x03_Female" H 5394 4066 50  0000 C CNN
F 2 "Connector_JST:JST_NV_B03P-NV_1x03_P5.00mm_Vertical" H 5500 4300 50  0001 C CNN
F 3 "~" H 5500 4300 50  0001 C CNN
	1    5500 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 2350 6100 2350
Wire Wire Line
	5600 2250 6000 2250
Wire Wire Line
	6000 2250 6000 1900
Wire Wire Line
	5600 2450 6500 2450
Wire Wire Line
	5700 4300 6350 4300
Wire Wire Line
	6350 4300 6350 4100
Wire Wire Line
	6350 4100 6500 4100
Connection ~ 6500 4100
Wire Wire Line
	6250 3900 6250 4200
Wire Wire Line
	6250 4200 5700 4200
Wire Wire Line
	6250 3900 6500 3900
$EndSCHEMATC
