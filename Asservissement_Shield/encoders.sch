EESchema Schematic File Version 5
LIBS:Asservissement_Shield-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4850 2500 0    60   Output ~ 0
Ch_A1
Text HLabel 4850 2600 0    60   Output ~ 0
Ch_B1
$Comp
L power:+5V #PWR06
U 1 1 5C1AF6A1
P 7050 2300
F 0 "#PWR06" H 7050 2150 50  0001 C CNN
F 1 "+5V" H 7050 2440 50  0000 C CNN
F 2 "" H 7050 2300 50  0001 C CNN
F 3 "" H 7050 2300 50  0001 C CNN
	1    7050 2300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5C1AF6A7
P 7050 2500
F 0 "#PWR07" H 7050 2250 50  0001 C CNN
F 1 "GND" V 7050 2300 50  0000 C CNN
F 2 "" H 7050 2500 50  0001 C CNN
F 3 "" H 7050 2500 50  0001 C CNN
	1    7050 2500
	0    1    -1   0   
$EndComp
Text Notes 6950 1750 0    50   ~ 0
Connecteurs arrivant des encodeurs\n
Text Label 7500 2600 2    50   ~ 0
Ch_B1(+5V)
Text Label 7500 2400 2    50   ~ 0
Ch_A1(+5V)
Text Label 4850 2500 0    50   ~ 0
Ch_A1(+3V3)
Text Label 4850 2600 0    50   ~ 0
Ch_B1(+3V3)
Text Label 4850 2800 0    50   ~ 0
Ch_B2(+3V3)
Text Notes 3350 1700 0    50   ~ 0
Signaux allant vers le STM32f3\n
$Comp
L Device:C C1
U 1 1 5CD02C5A
P 5350 1700
F 0 "C1" V 5300 1600 50  0000 C CNN
F 1 "100n" V 5300 1850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5388 1550 50  0001 C CNN
F 3 "~" H 5350 1700 50  0001 C CNN
	1    5350 1700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5CD03696
P 5200 1700
F 0 "#PWR01" H 5200 1450 50  0001 C CNN
F 1 "GND" V 5200 1550 50  0000 R CNN
F 2 "" H 5200 1700 50  0001 C CNN
F 3 "" H 5200 1700 50  0001 C CNN
	1    5200 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 1700 5800 1600
$Comp
L Device:C C2
U 1 1 5CD03B01
P 6250 1700
F 0 "C2" V 6200 1600 50  0000 C CNN
F 1 "100n" V 6200 1850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6288 1550 50  0001 C CNN
F 3 "~" H 6250 1700 50  0001 C CNN
	1    6250 1700
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5CD03B0C
P 6400 1700
F 0 "#PWR05" H 6400 1450 50  0001 C CNN
F 1 "GND" V 6400 1550 50  0000 R CNN
F 2 "" H 6400 1700 50  0001 C CNN
F 3 "" H 6400 1700 50  0001 C CNN
	1    6400 1700
	0    -1   1    0   
$EndComp
Wire Wire Line
	6100 1700 6000 1700
Wire Wire Line
	6000 1700 6000 1600
$Comp
L Logic_LevelTranslator:TXS0108EPW U1
U 1 1 5CD09B9C
P 5900 2400
F 0 "U1" H 5650 1750 50  0000 C CNN
F 1 "TXS0108EPW" H 6150 1750 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5900 1650 50  0001 C CNN
F 3 "www.ti.com/lit/ds/symlink/txs0108e.pdf" H 5900 2300 50  0001 C CNN
	1    5900 2400
	1    0    0    -1  
$EndComp
Connection ~ 6000 1700
Connection ~ 5800 1700
Wire Wire Line
	5500 1700 5800 1700
Wire Wire Line
	5500 1700 5500 2000
Connection ~ 5500 1700
$Comp
L power:+3V3 #PWR02
U 1 1 5CD0FDE4
P 5800 1600
F 0 "#PWR02" H 5800 1450 50  0001 C CNN
F 1 "+3V3" H 5750 1750 50  0000 C CNN
F 2 "" H 5800 1600 50  0001 C CNN
F 3 "" H 5800 1600 50  0001 C CNN
	1    5800 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5CD1079F
P 6000 1600
F 0 "#PWR04" H 6000 1450 50  0001 C CNN
F 1 "+5V" H 6050 1750 50  0000 C CNN
F 2 "" H 6000 1600 50  0001 C CNN
F 3 "" H 6000 1600 50  0001 C CNN
	1    6000 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5CD11091
P 5900 3100
F 0 "#PWR03" H 5900 2850 50  0001 C CNN
F 1 "GND" H 5900 2950 50  0000 C CNN
F 2 "" H 5900 3100 50  0001 C CNN
F 3 "" H 5900 3100 50  0001 C CNN
	1    5900 3100
	1    0    0    -1  
$EndComp
Text HLabel 4850 2800 0    60   Output ~ 0
Ch_B2
$Comp
L Connector_Generic:Conn_01x04 P1
U 1 1 5C1AF6AF
P 7700 2400
F 0 "P1" H 7700 2650 50  0000 C CNN
F 1 "encoder_2" V 7800 2400 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 7700 2400 50  0001 C CNN
F 3 "" H 7700 2400 50  0000 C CNN
F 4 "https://fr.rs-online.com/web/p/embases-de-circuit-imprime/4838483/" H 3325 -1825 50  0001 C CNN "RS-1"
F 5 "https://fr.rs-online.com/web/p/boitier-pour-connecteur-ci/2964956/" H 3325 -1825 50  0001 C CNN "RS-2"
	1    7700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2300 7500 2300
Wire Wire Line
	7050 2500 7500 2500
$Comp
L power:+5V #PWR08
U 1 1 5CD1C93A
P 7050 2900
F 0 "#PWR08" H 7050 2750 50  0001 C CNN
F 1 "+5V" H 7050 3040 50  0000 C CNN
F 2 "" H 7050 2900 50  0001 C CNN
F 3 "" H 7050 2900 50  0001 C CNN
	1    7050 2900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5CD1C945
P 7050 3100
F 0 "#PWR09" H 7050 2850 50  0001 C CNN
F 1 "GND" V 7050 2900 50  0000 C CNN
F 2 "" H 7050 3100 50  0001 C CNN
F 3 "" H 7050 3100 50  0001 C CNN
	1    7050 3100
	0    1    -1   0   
$EndComp
Text Label 7500 3200 2    50   ~ 0
Ch_B2(+5V)
Text Label 7500 3000 2    50   ~ 0
Ch_A2(+5V)
$Comp
L Connector_Generic:Conn_01x04 P2
U 1 1 5CD1C957
P 7700 3000
F 0 "P2" H 7700 3250 50  0000 C CNN
F 1 "encoder_2" V 7800 3000 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 7700 3000 50  0001 C CNN
F 3 "" H 7700 3000 50  0000 C CNN
F 4 "https://fr.rs-online.com/web/p/embases-de-circuit-imprime/4838483/" H 3325 -1225 50  0001 C CNN "RS-1"
F 5 "https://fr.rs-online.com/web/p/boitier-pour-connecteur-ci/2964956/" H 3325 -1225 50  0001 C CNN "RS-2"
	1    7700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2900 7500 2900
Wire Wire Line
	7050 3100 7500 3100
Wire Wire Line
	7500 3200 6500 3200
Wire Wire Line
	6500 3200 6500 2800
Wire Wire Line
	6500 2800 6300 2800
Wire Wire Line
	6300 2700 6600 2700
Wire Wire Line
	6600 2700 6600 3000
Wire Wire Line
	6600 3000 7500 3000
Wire Wire Line
	6300 2600 7500 2600
Wire Wire Line
	7500 2400 6700 2400
Wire Wire Line
	6700 2400 6700 2500
Wire Wire Line
	6700 2500 6300 2500
Text Label 4850 2700 0    50   ~ 0
Ch_A2(+3V3)
Text HLabel 4850 2700 0    60   Output ~ 0
Ch_A2
Wire Wire Line
	4850 2800 5500 2800
Wire Wire Line
	4850 2500 5500 2500
Wire Wire Line
	4850 2600 5500 2600
Wire Wire Line
	5500 2700 4850 2700
NoConn ~ 5500 2100
NoConn ~ 5500 2200
NoConn ~ 5500 2300
NoConn ~ 5500 2400
NoConn ~ 6300 2400
NoConn ~ 6300 2300
NoConn ~ 6300 2200
NoConn ~ 6300 2100
$EndSCHEMATC
