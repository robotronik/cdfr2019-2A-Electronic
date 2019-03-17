EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR064
U 1 1 596AAF98
P 4875 2025
F 0 "#PWR064" H 4875 1875 50  0001 C CNN
F 1 "+5V" H 4875 2165 50  0000 C CNN
F 2 "" H 4875 2025 50  0001 C CNN
F 3 "" H 4875 2025 50  0001 C CNN
	1    4875 2025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR065
U 1 1 596AB08B
P 4875 2225
F 0 "#PWR065" H 4875 1975 50  0001 C CNN
F 1 "GND" H 4875 2075 50  0000 C CNN
F 2 "" H 4875 2225 50  0001 C CNN
F 3 "" H 4875 2225 50  0001 C CNN
	1    4875 2225
	1    0    0    -1  
$EndComp
Text HLabel 7775 2125 2    60   Output ~ 0
Ch_A1
Text HLabel 7775 2900 2    60   Output ~ 0
Ch_B1
$Comp
L Connector_Generic:Conn_01x04 P3
U 1 1 59C30399
P 4375 2125
F 0 "P3" H 4375 2375 50  0000 C CNN
F 1 "encoder_1" V 4475 2125 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 4375 2125 50  0001 C CNN
F 3 "" H 4375 2125 50  0000 C CNN
F 4 "https://fr.rs-online.com/web/p/embases-de-circuit-imprime/4838483/" H 0   0   50  0001 C CNN "RS-1"
F 5 "https://fr.rs-online.com/web/p/boitier-pour-connecteur-ci/2964956/" H 0   0   50  0001 C CNN "RS-2"
	1    4375 2125
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4875 2025 4575 2025
Wire Wire Line
	4875 2225 4575 2225
Wire Wire Line
	4575 2900 4575 2325
Wire Notes Line
	5650 1475 5650 3275
Wire Notes Line
	5650 3275 6850 3275
Wire Notes Line
	6850 3275 6850 1475
Wire Notes Line
	6850 1475 5650 1475
Text Notes 5800 1575 0    50   ~ 0
Conversion des tensions
$Comp
L power:+5V #PWR066
U 1 1 5C1AF6A1
P 4875 4125
F 0 "#PWR066" H 4875 3975 50  0001 C CNN
F 1 "+5V" H 4875 4265 50  0000 C CNN
F 2 "" H 4875 4125 50  0001 C CNN
F 3 "" H 4875 4125 50  0001 C CNN
	1    4875 4125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR067
U 1 1 5C1AF6A7
P 4875 4325
F 0 "#PWR067" H 4875 4075 50  0001 C CNN
F 1 "GND" H 4875 4175 50  0000 C CNN
F 2 "" H 4875 4325 50  0001 C CNN
F 3 "" H 4875 4325 50  0001 C CNN
	1    4875 4325
	1    0    0    -1  
$EndComp
Text HLabel 7750 4225 2    60   Output ~ 0
Ch_A2
Text HLabel 7750 5000 2    60   Output ~ 0
Ch_B2
$Comp
L Connector_Generic:Conn_01x04 P4
U 1 1 5C1AF6AF
P 4375 4225
F 0 "P4" H 4375 4475 50  0000 C CNN
F 1 "encoder_2" V 4475 4225 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 4375 4225 50  0001 C CNN
F 3 "" H 4375 4225 50  0000 C CNN
F 4 "https://fr.rs-online.com/web/p/embases-de-circuit-imprime/4838483/" H 0   0   50  0001 C CNN "RS-1"
F 5 "https://fr.rs-online.com/web/p/boitier-pour-connecteur-ci/2964956/" H 0   0   50  0001 C CNN "RS-2"
	1    4375 4225
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4875 4125 4575 4125
Wire Wire Line
	4875 4325 4575 4325
Wire Wire Line
	4575 5000 4575 4425
Wire Notes Line
	5650 3575 5650 5375
Wire Notes Line
	5650 5375 6850 5375
Wire Notes Line
	6850 5375 6850 3575
Wire Notes Line
	6850 3575 5650 3575
Text Notes 5825 3675 0    50   ~ 0
Conversion des tensions
Text Notes 3725 3450 0    50   ~ 0
Connecteurs arrivant des encodeurs\n
Text Label 5025 2900 0    50   ~ 0
Ch_B1(+5V)
Text Label 5000 2125 0    50   ~ 0
Ch_A1(+5V)
Text Label 5025 5000 0    50   ~ 0
Ch_B2(+5V)
Text Label 5025 4225 0    50   ~ 0
Ch_A2(+5V)
Text Label 7075 2125 0    50   ~ 0
Ch_A1(+3V3)
Text Label 7075 2900 0    50   ~ 0
Ch_B1(+3V3)
Text Label 7075 4225 0    50   ~ 0
Ch_A2(+3V3)
Text Label 7075 5000 0    50   ~ 0
Ch_B2(+3V3)
Text Notes 7625 3425 0    50   ~ 0
Signaux allant vers le STM32f3\n
$Comp
L stm32f042k6tx:txb0108 U9
U 7 1 5C8714C4
P 6225 2125
F 0 "U9" H 6225 2350 50  0000 C CNN
F 1 "txb0108" H 6225 2259 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5875 2075 50  0001 C CNN
F 3 "" H 5875 2075 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	7    6225 2125
	-1   0    0    -1  
$EndComp
$Comp
L stm32f042k6tx:txb0108 U9
U 8 1 5C871561
P 6225 2900
F 0 "U9" H 6225 3125 50  0000 C CNN
F 1 "txb0108" H 6225 3034 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5875 2850 50  0001 C CNN
F 3 "" H 5875 2850 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	8    6225 2900
	-1   0    0    -1  
$EndComp
$Comp
L stm32f042k6tx:txb0108 U10
U 8 1 5C871773
P 6275 4225
F 0 "U10" H 6275 4450 50  0000 C CNN
F 1 "txb0108" H 6275 4359 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5925 4175 50  0001 C CNN
F 3 "" H 5925 4175 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	8    6275 4225
	-1   0    0    -1  
$EndComp
$Comp
L stm32f042k6tx:txb0108 U10
U 7 1 5C87177A
P 6275 5000
F 0 "U10" H 6275 5225 50  0000 C CNN
F 1 "txb0108" H 6275 5134 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5925 4950 50  0001 C CNN
F 3 "" H 5925 4950 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	7    6275 5000
	-1   0    0    -1  
$EndComp
$Comp
L stm32f042k6tx:txb0108 U10
U 9 1 5C8717C9
P 6375 5750
F 0 "U10" H 6375 5975 50  0000 C CNN
F 1 "txb0108" H 6375 5884 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 6025 5700 50  0001 C CNN
F 3 "" H 6025 5700 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	9    6375 5750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR069
U 1 1 5C87199F
P 5675 6050
F 0 "#PWR069" H 5675 5800 50  0001 C CNN
F 1 "GND" H 5675 5900 50  0000 C CNN
F 2 "" H 5675 6050 50  0001 C CNN
F 3 "" H 5675 6050 50  0001 C CNN
	1    5675 6050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR068
U 1 1 5C871A47
P 5675 5750
F 0 "#PWR068" H 5675 5600 50  0001 C CNN
F 1 "+5V" H 5675 5890 50  0000 C CNN
F 2 "" H 5675 5750 50  0001 C CNN
F 3 "" H 5675 5750 50  0001 C CNN
	1    5675 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR070
U 1 1 5C871E31
P 7125 5750
F 0 "#PWR070" H 7125 5600 50  0001 C CNN
F 1 "+3V3" H 7140 5923 50  0000 C CNN
F 2 "" H 7125 5750 50  0001 C CNN
F 3 "" H 7125 5750 50  0001 C CNN
	1    7125 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7125 5750 6900 5750
Wire Wire Line
	6900 5850 6900 5750
Connection ~ 6900 5750
Wire Wire Line
	7750 5000 6525 5000
Wire Wire Line
	4575 5000 6025 5000
Wire Wire Line
	4575 4225 6025 4225
Wire Wire Line
	6525 4225 7750 4225
Wire Wire Line
	4575 2125 5975 2125
Wire Wire Line
	6475 2125 7775 2125
Wire Wire Line
	7775 2900 6475 2900
Wire Wire Line
	4575 2900 5975 2900
Text Notes 6075 1650 0    50   ~ 0
5V -> 3V3
Text Notes 6025 3750 0    50   ~ 0
5V -> 3V3
Wire Wire Line
	6725 5850 6900 5850
Wire Wire Line
	6725 5750 6900 5750
$Comp
L Device:C C9
U 1 1 5C3A9400
P 5675 5900
F 0 "C9" H 5450 5950 50  0000 L CNN
F 1 "0,1u" H 5400 5850 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5713 5750 50  0001 C CNN
F 3 "~" H 5675 5900 50  0001 C CNN
F 4 "https://fr.farnell.com/walsin/1206b104k250ct/cond-0-1-f-25v-10-x7r-1206-bobine/dp/2495574?st=Capacité%20100n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    5675 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5C3A943E
P 7125 5900
F 0 "C10" H 7240 5946 50  0000 L CNN
F 1 "0,1u" H 7240 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7163 5750 50  0001 C CNN
F 3 "~" H 7125 5900 50  0001 C CNN
F 4 "https://fr.farnell.com/walsin/1206b104k250ct/cond-0-1-f-25v-10-x7r-1206-bobine/dp/2495574?st=Capacité%20100n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    7125 5900
	1    0    0    -1  
$EndComp
Connection ~ 7125 5750
$Comp
L power:GND #PWR0103
U 1 1 5C3A9490
P 7125 6050
F 0 "#PWR0103" H 7125 5800 50  0001 C CNN
F 1 "GND" H 7125 5900 50  0000 C CNN
F 2 "" H 7125 6050 50  0001 C CNN
F 3 "" H 7125 6050 50  0001 C CNN
	1    7125 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5675 5750 6025 5750
Connection ~ 5675 5750
$Comp
L power:GND #PWR0104
U 1 1 5C3AAB10
P 6025 5850
F 0 "#PWR0104" H 6025 5600 50  0001 C CNN
F 1 "GND" H 6025 5700 50  0000 C CNN
F 2 "" H 6025 5850 50  0001 C CNN
F 3 "" H 6025 5850 50  0001 C CNN
	1    6025 5850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
