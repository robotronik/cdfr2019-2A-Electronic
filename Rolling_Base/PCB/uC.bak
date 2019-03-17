EESchema Schematic File Version 4
LIBS:Motor_Card-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L Propulsion_control:stm32f303k8t6 U8
U 1 1 59613C78
P 3000 3000
F 0 "U8" H 3000 3000 60  0000 C CNN
F 1 "stm32f303k8t6" H 3000 2900 60  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 2650 2950 60  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/stm32f303k8.pdf" H 2650 2950 60  0001 C CNN
F 4 "Contact ST" H 0   0   50  0001 C CNN "RS-1"
	1    3000 3000
	1    0    0    -1  
$EndComp
Text Label 4050 2650 0    60   ~ 0
swclk(3V3)
Text Label 4050 2750 0    60   ~ 0
swdio(3V3)
Wire Wire Line
	3850 2650 4050 2650
Wire Wire Line
	3850 2750 4050 2750
Text Label 1650 2775 0    60   ~ 0
nrst(3V3)
$Comp
L Device:C C2
U 1 1 59615D27
P 1425 2775
F 0 "C2" V 1350 2625 50  0000 L CNN
F 1 "100n" V 1475 2825 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1463 2625 50  0001 C CNN
F 3 "" H 1425 2775 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y104kxxpw1bc/condensateur-0-1-f-25v-10-x7r/dp/2896646?st=Capacité%20100n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    1425 2775
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 59615D7C
P 1275 2775
F 0 "#PWR028" H 1275 2525 50  0001 C CNN
F 1 "GND" H 1275 2625 50  0000 C CNN
F 2 "" H 1275 2775 50  0001 C CNN
F 3 "" H 1275 2775 50  0001 C CNN
	1    1275 2775
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 59615ECD
P 1275 4225
F 0 "J2" H 1275 4475 50  0000 C CNN
F 1 "swdio" V 1375 4225 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 1275 4225 50  0001 C CNN
F 3 "" H 1275 4225 50  0001 C CNN
F 4 "https://fr.rs-online.com/web/p/embases-de-circuit-imprime/4838483/" H 0   0   50  0001 C CNN "RS-1"
F 5 "https://fr.rs-online.com/web/p/boitier-pour-connecteur-ci/2964956/" H 0   0   50  0001 C CNN "RS-2"
	1    1275 4225
	-1   0    0    1   
$EndComp
Text Label 1875 4125 0    60   ~ 0
swclk(3V3)
Text Label 1875 4025 0    60   ~ 0
swdio(3V3)
Text Label 1875 4225 0    60   ~ 0
nrst(3V3)
$Comp
L power:GND #PWR027
U 1 1 59615FF5
P 1675 4325
F 0 "#PWR027" H 1675 4075 50  0001 C CNN
F 1 "GND" H 1675 4175 50  0000 C CNN
F 2 "" H 1675 4325 50  0001 C CNN
F 3 "" H 1675 4325 50  0001 C CNN
	1    1675 4325
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1475 4025 1875 4025
Wire Wire Line
	1475 4125 1875 4125
Wire Wire Line
	1475 4225 1875 4225
Wire Wire Line
	1475 4325 1675 4325
$Comp
L power:GND #PWR035
U 1 1 596164DB
P 2650 2000
F 0 "#PWR035" H 2650 1750 50  0001 C CNN
F 1 "GND" H 2650 1850 50  0000 C CNN
F 2 "" H 2650 2000 50  0001 C CNN
F 3 "" H 2650 2000 50  0001 C CNN
	1    2650 2000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR036
U 1 1 596164F6
P 3350 4000
F 0 "#PWR036" H 3350 3750 50  0001 C CNN
F 1 "GND" H 3350 3850 50  0000 C CNN
F 2 "" H 3350 4000 50  0001 C CNN
F 3 "" H 3350 4000 50  0001 C CNN
	1    3350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2000 2650 2150
Wire Wire Line
	3350 3850 3350 4000
$Comp
L Motor_Card-rescue:+3.3V- #PWR?
U 1 1 59629D6A
P 4000 3350
AR Path="/59629D6A" Ref="#PWR?"  Part="1" 
AR Path="/59613C4C/59629D6A" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 4000 3200 50  0001 C CNN
F 1 "+3.3V" V 4075 3525 50  0000 C CNN
F 2 "" H 4000 3350 50  0001 C CNN
F 3 "" H 4000 3350 50  0001 C CNN
	1    4000 3350
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR032
U 1 1 59629D85
P 1800 3050
F 0 "#PWR032" H 1800 2900 50  0001 C CNN
F 1 "+3V3" H 1800 3190 50  0000 C CNN
F 2 "" H 1800 3050 50  0001 C CNN
F 3 "" H 1800 3050 50  0001 C CNN
	1    1800 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR031
U 1 1 59629D99
P 1950 2650
F 0 "#PWR031" H 1950 2500 50  0001 C CNN
F 1 "+3.3V" V 1950 2875 50  0000 C CNN
F 2 "" H 1950 2650 50  0001 C CNN
F 3 "" H 1950 2650 50  0001 C CNN
	1    1950 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 2650 2000 2650
Wire Wire Line
	3850 3350 3925 3350
$Comp
L Device:LED_ALT D5
U 1 1 596A8942
P 4750 3800
F 0 "D5" H 4750 3900 50  0000 C CNN
F 1 "LED_ALT" H 4750 3700 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 4750 3800 50  0001 C CNN
F 3 "" H 4750 3800 50  0001 C CNN
F 4 "https://fr.farnell.com/kingbright/kpt-1608lvvbc-d/led-bleue-24mcd-470nm-cms/dp/2610410" H 0   0   50  0001 C CNN "RS-1"
	1    4750 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 596A89D5
P 4750 3300
F 0 "R4" V 4830 3300 50  0000 C CNN
F 1 "470" V 4750 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4680 3300 50  0001 C CNN
F 3 "" H 4750 3300 50  0001 C CNN
F 4 "https://fr.farnell.com/multicomp/mchp06w2f4700t5e/res-couche-epaisse-470r-1-0-5w/dp/1576624?st=Résistance%20470ohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    4750 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 596A8A12
P 4750 4250
F 0 "#PWR038" H 4750 4000 50  0001 C CNN
F 1 "GND" H 4750 4100 50  0000 C CNN
F 2 "" H 4750 4250 50  0001 C CNN
F 3 "" H 4750 4250 50  0001 C CNN
	1    4750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3450 4750 3650
Wire Wire Line
	4750 3950 4750 4250
Text HLabel 1900 3150 0    60   Input ~ 0
Ch_A1
Text HLabel 1900 3250 0    60   Input ~ 0
Ch_B1
Text HLabel 4150 3250 2    60   Input ~ 0
Ch_A2
Text HLabel 4150 3150 2    60   Input ~ 0
Ch_B2
Wire Wire Line
	1900 3150 2150 3150
Wire Wire Line
	1900 3250 2150 3250
Wire Wire Line
	4150 3150 3850 3150
Wire Wire Line
	4150 3250 3850 3250
Wire Wire Line
	1550 3350 2150 3350
Wire Wire Line
	2650 4150 2650 3850
Text Label 1550 3350 0    60   ~ 0
TX(3V3)
Text Label 2650 4150 3    60   ~ 0
RX(3V3)
$Comp
L Device:R R3
U 1 1 5974DF8C
P 2400 1650
F 0 "R3" V 2480 1650 50  0000 C CNN
F 1 "10k" V 2400 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2330 1650 50  0001 C CNN
F 3 "" H 2400 1650 50  0001 C CNN
F 4 "https://fr.farnell.com/tt-electronics-welwyn/wcr1206-10kfi/res-couche-epaisse-10k-1-0-25w/dp/1100218?st=Résistance%2010k%201206" H 0   0   50  0001 C CNN "RS-1"
	1    2400 1650
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NC_Dual JP1
U 1 1 5974E017
P 2100 1650
F 0 "JP1" H 2150 1550 50  0000 L CNN
F 1 "Jumper_NC_Dual" H 2100 1750 50  0000 C BNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2100 1650 50  0001 C CNN
F 3 "" H 2100 1650 50  0001 C CNN
F 4 "Plein au club" H 0   0   50  0001 C CNN "RS-1"
F 5 "https://fr.rs-online.com/web/p/products/467598/" H 0   0   50  0001 C CNN "RS-2"
	1    2100 1650
	0    -1   -1   0   
$EndComp
$Comp
L Motor_Card-rescue:+3.3V- #PWR?
U 1 1 5974E084
P 2100 1250
AR Path="/5974E084" Ref="#PWR?"  Part="1" 
AR Path="/59613C4C/5974E084" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 2100 1100 50  0001 C CNN
F 1 "+3.3V" H 2100 1390 50  0000 C CNN
F 2 "" H 2100 1250 50  0001 C CNN
F 3 "" H 2100 1250 50  0001 C CNN
	1    2100 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5974E0A8
P 2100 2050
F 0 "#PWR034" H 2100 1800 50  0001 C CNN
F 1 "GND" H 2100 1900 50  0000 C CNN
F 2 "" H 2100 2050 50  0001 C CNN
F 3 "" H 2100 2050 50  0001 C CNN
	1    2100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1250 2100 1400
Wire Wire Line
	2100 1900 2100 2050
Wire Wire Line
	2200 1650 2250 1650
Wire Wire Line
	2550 1650 2750 1650
Wire Wire Line
	2750 1650 2750 2150
Wire Wire Line
	3850 2950 4750 2950
Wire Wire Line
	4750 2950 4750 3150
Wire Wire Line
	3050 1950 3050 2150
Wire Wire Line
	3150 1950 3150 2150
Wire Wire Line
	3250 1950 3250 2150
Wire Wire Line
	3350 1950 3350 2150
Wire Wire Line
	4150 2850 3850 2850
Wire Wire Line
	3850 3050 4150 3050
Wire Wire Line
	3250 3850 3250 4000
Wire Wire Line
	3150 3850 3150 4000
Wire Wire Line
	3050 3850 3050 4000
Wire Wire Line
	2950 3850 2950 4000
Text Label 2850 1300 1    60   ~ 0
I2C_SDA(3V3)
Text Label 2950 1300 1    60   ~ 0
I2C_SCL(3V3)
NoConn ~ 2150 2750
NoConn ~ 2150 2850
$Comp
L 74xx:74HC00 U7
U 1 1 5C1DA3B8
P 3100 6250
F 0 "U7" H 3050 6250 50  0000 C CNN
F 1 "74HC00" H 3100 6050 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3100 6250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 3100 6250 50  0001 C CNN
F 4 "https://fr.rs-online.com/web/p/portes-logiques/6631865/" H 0   0   50  0001 C CNN "RS-1"
	1    3100 6250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC00 U7
U 3 1 5C1DB058
P 3100 7050
F 0 "U7" H 3050 7050 50  0000 C CNN
F 1 "74HC00" H 3100 6850 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3100 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 3100 7050 50  0001 C CNN
F 4 "https://fr.rs-online.com/web/p/portes-logiques/6631865/" H 0   0   50  0001 C CNN "RS-1"
	3    3100 7050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC00 U7
U 2 1 5C1DB088
P 3850 6250
F 0 "U7" H 3800 6250 50  0000 C CNN
F 1 "74HC00" H 3850 6050 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3850 6250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 3850 6250 50  0001 C CNN
F 4 "https://fr.rs-online.com/web/p/portes-logiques/6631865/" H 0   0   50  0001 C CNN "RS-1"
	2    3850 6250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC00 U7
U 4 1 5C1DB0D2
P 3850 7050
F 0 "U7" H 3800 7050 50  0000 C CNN
F 1 "74HC00" H 3850 6850 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3850 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 3850 7050 50  0001 C CNN
F 4 "https://fr.rs-online.com/web/p/portes-logiques/6631865/" H 0   0   50  0001 C CNN "RS-1"
	4    3850 7050
	1    0    0    -1  
$EndComp
Text HLabel 6100 6250 2    60   Output ~ 0
EN_1
Text HLabel 6150 7050 2    60   Output ~ 0
EN_2
$Comp
L Device:R R1
U 1 1 5C1DB325
P 2600 6500
F 0 "R1" H 2670 6546 50  0000 L CNN
F 1 "10k" H 2670 6455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2530 6500 50  0001 C CNN
F 3 "~" H 2600 6500 50  0001 C CNN
F 4 "https://fr.farnell.com/tt-electronics-welwyn/wcr1206-10kfi/res-couche-epaisse-10k-1-0-25w/dp/1100218?st=Résistance%2010k%201206" H 0   0   50  0001 C CNN "RS-1"
	1    2600 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C1DB3A0
P 2600 7300
F 0 "R2" H 2670 7346 50  0000 L CNN
F 1 "10k" H 2670 7255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2530 7300 50  0001 C CNN
F 3 "~" H 2600 7300 50  0001 C CNN
F 4 "https://fr.farnell.com/tt-electronics-welwyn/wcr1206-10kfi/res-couche-epaisse-10k-1-0-25w/dp/1100218?st=Résistance%2010k%201206" H 0   0   50  0001 C CNN "RS-1"
	1    2600 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5C1DB3EE
P 2600 7450
F 0 "#PWR030" H 2600 7200 50  0001 C CNN
F 1 "GND" H 2600 7300 50  0000 C CNN
F 2 "" H 2600 7450 50  0001 C CNN
F 3 "" H 2600 7450 50  0001 C CNN
	1    2600 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5C1DB439
P 2600 6650
F 0 "#PWR029" H 2600 6400 50  0001 C CNN
F 1 "GND" H 2600 6500 50  0000 C CNN
F 2 "" H 2600 6650 50  0001 C CNN
F 3 "" H 2600 6650 50  0001 C CNN
	1    2600 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6150 3400 6150
Wire Wire Line
	3400 6150 3400 6250
Wire Wire Line
	3550 6350 3400 6350
Wire Wire Line
	3400 6350 3400 6250
Connection ~ 3400 6250
Wire Wire Line
	3550 6950 3400 6950
Wire Wire Line
	3400 6950 3400 7050
Wire Wire Line
	3550 7150 3400 7150
Wire Wire Line
	3400 7150 3400 7050
Connection ~ 3400 7050
Text Label 2300 6950 2    60   ~ 0
nrst(3V3)
Text Label 2300 6150 2    60   ~ 0
nrst(3V3)
Wire Wire Line
	2800 6150 2300 6150
Wire Wire Line
	2800 6950 2300 6950
Wire Wire Line
	2800 6350 2600 6350
Wire Wire Line
	2800 7150 2600 7150
Text Notes 2225 5750 0    50   ~ 0
Interdire le démarrage des moteurs durant le Reset
Text Label 2600 7150 2    60   ~ 0
Cmd_En_2(3V3)
$Comp
L 74xx:74HC00 U7
U 5 1 5C1F0F25
P 1550 6650
F 0 "U7" V 1550 6650 50  0000 C CNN
F 1 "74HC00" V 1400 6650 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 1550 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 1550 6650 50  0001 C CNN
F 4 "https://fr.rs-online.com/web/p/portes-logiques/6631865/" H 0   0   50  0001 C CNN "RS-1"
	5    1550 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C1F2142
P 1400 6150
F 0 "C1" V 1525 6225 50  0000 L CNN
F 1 "100n" V 1450 6225 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1438 6000 50  0001 C CNN
F 3 "~" H 1400 6150 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y104kxxpw1bc/condensateur-0-1-f-25v-10-x7r/dp/2896646?st=Capacité%20100n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    1400 6150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5C1F219D
P 1250 6150
F 0 "#PWR024" H 1250 5900 50  0001 C CNN
F 1 "GND" H 1250 6000 50  0000 C CNN
F 2 "" H 1250 6150 50  0001 C CNN
F 3 "" H 1250 6150 50  0001 C CNN
	1    1250 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR025
U 1 1 5C1F6A6A
P 1550 6150
F 0 "#PWR025" H 1550 6000 50  0001 C CNN
F 1 "+3V3" H 1550 6290 50  0000 C CNN
F 2 "" H 1550 6150 50  0001 C CNN
F 3 "" H 1550 6150 50  0001 C CNN
	1    1550 6150
	1    0    0    -1  
$EndComp
Text Label 2600 6350 2    60   ~ 0
Cmd_En_1(3V3)
Text Label 3050 1950 1    60   ~ 0
Cmd_En_2(3V3)
Text Label 2950 4000 3    60   ~ 0
Cmd_En_1(3V3)
Wire Wire Line
	2750 3850 2750 4800
Wire Wire Line
	2850 3850 2850 4800
Wire Notes Line
	4500 5600 4500 7400
Wire Notes Line
	4500 7400 5700 7400
Wire Notes Line
	5700 7400 5700 5600
Wire Notes Line
	5700 5600 4500 5600
Text Notes 4650 5700 0    50   ~ 0
Conversion des tensions
Wire Notes Line
	4250 5600 4250 7700
Connection ~ 1550 6150
$Comp
L power:GND #PWR026
U 1 1 5C2410B7
P 1550 7150
F 0 "#PWR026" H 1550 6900 50  0001 C CNN
F 1 "GND" H 1550 7000 50  0000 C CNN
F 2 "" H 1550 7150 50  0001 C CNN
F 3 "" H 1550 7150 50  0001 C CNN
	1    1550 7150
	1    0    0    -1  
$EndComp
Wire Notes Line
	1000 5600 4250 5600
Wire Notes Line
	1000 7700 4250 7700
Wire Notes Line
	1000 7700 1000 5600
$Comp
L stm32f042k6tx:txb0108 U10
U 4 1 5C875F9F
P 5050 6250
F 0 "U10" H 5050 6475 50  0000 C CNN
F 1 "txb0108" H 5050 6384 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 4700 6200 50  0001 C CNN
F 3 "" H 4700 6200 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	4    5050 6250
	1    0    0    -1  
$EndComp
$Comp
L stm32f042k6tx:txb0108 U10
U 5 1 5C876002
P 5050 7050
F 0 "U10" H 5050 7275 50  0000 C CNN
F 1 "txb0108" H 5050 7184 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 4700 7000 50  0001 C CNN
F 3 "" H 4700 7000 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	5    5050 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6250 4800 6250
Wire Wire Line
	5300 6250 6100 6250
Wire Wire Line
	4800 7050 4150 7050
Wire Wire Line
	5300 7050 6150 7050
Text HLabel 9850 2025 2    60   Output ~ 0
BRAKE_1
Text HLabel 9850 2775 2    60   Output ~ 0
TACHO_1
Text HLabel 9850 2525 2    60   Output ~ 0
DIAG_1
Text HLabel 9850 2275 2    60   Output ~ 0
DIR_1
$Comp
L stm32f042k6tx:txb0108 U9
U 3 1 5C87C20E
P 8775 2025
F 0 "U9" H 9050 2125 50  0000 C CNN
F 1 "txb0108" H 8775 2159 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 8425 1975 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 8425 1975 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	3    8775 2025
	1    0    0    -1  
$EndComp
$Comp
L stm32f042k6tx:txb0108 U9
U 2 1 5C87C2D9
P 8775 2275
F 0 "U9" H 9050 2375 50  0000 C CNN
F 1 "txb0108" H 8775 2409 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 8425 2225 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 8425 2225 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	2    8775 2275
	1    0    0    -1  
$EndComp
$Comp
L stm32f042k6tx:txb0108 U9
U 1 1 5C87C318
P 8775 2525
F 0 "U9" H 9050 2625 50  0000 C CNN
F 1 "txb0108" H 8775 2659 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 8425 2475 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 8425 2475 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	1    8775 2525
	1    0    0    -1  
$EndComp
$Comp
L stm32f042k6tx:txb0108 U10
U 6 1 5C87C359
P 8775 2775
F 0 "U10" H 9050 2875 50  0000 C CNN
F 1 "txb0108" H 8775 2909 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 8425 2725 50  0001 C CNN
F 3 "" H 8425 2725 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	6    8775 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2025 9025 2025
Wire Wire Line
	9850 2275 9025 2275
Wire Wire Line
	9850 2525 9025 2525
Wire Wire Line
	9025 2775 9850 2775
Text Label 9225 2025 0    50   ~ 0
Brake_1(5V)
Text Label 9225 2275 0    50   ~ 0
Dir_1(5V)
Text Label 9225 2525 0    50   ~ 0
Diag_1(5V)
Text Label 9225 2775 0    50   ~ 0
Tacho_1(5V)
$Comp
L stm32f042k6tx:txb0108 U9
U 9 1 5C88C9E9
P 8750 1375
F 0 "U9" H 8750 1150 50  0000 C CNN
F 1 "txb0108" H 8750 1509 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 8400 1325 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 8400 1325 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	9    8750 1375
	1    0    0    -1  
$EndComp
$Comp
L Motor_Card-rescue:+3.3V- #PWR?
U 1 1 5C88CAA6
P 8075 1375
AR Path="/5C88CAA6" Ref="#PWR?"  Part="1" 
AR Path="/59613C4C/5C88CAA6" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 8075 1225 50  0001 C CNN
F 1 "+3.3V" H 8075 1515 50  0000 C CNN
F 2 "" H 8075 1375 50  0001 C CNN
F 3 "" H 8075 1375 50  0001 C CNN
	1    8075 1375
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C88F22A
P 9325 1375
AR Path="/5C88F22A" Ref="#PWR?"  Part="1" 
AR Path="/59613C4C/5C88F22A" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 9325 1225 50  0001 C CNN
F 1 "+5V" H 9325 1515 50  0000 C CNN
F 2 "" H 9325 1375 50  0001 C CNN
F 3 "" H 9325 1375 50  0001 C CNN
	1    9325 1375
	1    0    0    -1  
$EndComp
Wire Wire Line
	9325 1375 9100 1375
$Comp
L power:GND #PWR040
U 1 1 5C89094B
P 9100 1475
F 0 "#PWR040" H 9100 1225 50  0001 C CNN
F 1 "GND" H 9100 1300 50  0000 C CNN
F 2 "" H 9100 1475 50  0001 C CNN
F 3 "" H 9100 1475 50  0001 C CNN
	1    9100 1475
	1    0    0    -1  
$EndComp
Wire Wire Line
	8525 2025 8050 2025
Wire Wire Line
	8525 2275 8050 2275
Wire Wire Line
	8525 2525 8050 2525
Wire Wire Line
	8525 2775 8050 2775
Text Label 8050 2025 0    50   ~ 0
Brake_1(3V3)
Text Label 8050 2275 0    50   ~ 0
Dir_1(3V3)
Text Label 8050 2525 0    50   ~ 0
Diag_1(3V3)
Text Label 8050 2775 0    50   ~ 0
Tacho_1(3V3)
Text HLabel 9850 3200 2    60   Output ~ 0
BRAKE_2
Text HLabel 9850 3950 2    60   Output ~ 0
TACHO_2
Text HLabel 9850 3700 2    60   Output ~ 0
DIAG_2
Text HLabel 9850 3450 2    60   Output ~ 0
DIR_2
$Comp
L stm32f042k6tx:txb0108 U9
U 5 1 5C897E78
P 8775 3200
F 0 "U9" H 9050 3300 50  0000 C CNN
F 1 "txb0108" H 8775 3334 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 8425 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 8425 3150 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	5    8775 3200
	1    0    0    -1  
$EndComp
$Comp
L stm32f042k6tx:txb0108 U9
U 6 1 5C897E7F
P 8775 3450
F 0 "U9" H 9050 3550 50  0000 C CNN
F 1 "txb0108" H 8775 3584 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 8425 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0108.pdf" H 8425 3400 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	6    8775 3450
	1    0    0    -1  
$EndComp
$Comp
L stm32f042k6tx:txb0108 U10
U 1 1 5C897E86
P 8775 3700
F 0 "U10" H 9050 3800 50  0000 C CNN
F 1 "txb0108" H 8775 3834 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 8425 3650 50  0001 C CNN
F 3 "" H 8425 3650 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	1    8775 3700
	1    0    0    -1  
$EndComp
$Comp
L stm32f042k6tx:txb0108 U10
U 3 1 5C897E8D
P 8775 3950
F 0 "U10" H 9050 4050 50  0000 C CNN
F 1 "txb0108" H 8775 4084 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 8425 3900 50  0001 C CNN
F 3 "" H 8425 3900 50  0001 C CNN
F 4 "https://fr.farnell.com/texas-instruments/txb0108pwr/ic-translator-8bit-bidirectional/dp/1494945?st=txb0108" H 0   0   50  0001 C CNN "RS-1"
	3    8775 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3200 9025 3200
Wire Wire Line
	9850 3450 9025 3450
Wire Wire Line
	9850 3700 9025 3700
Wire Wire Line
	9025 3950 9850 3950
Text Label 9225 3200 0    50   ~ 0
Brake_2(5V)
Text Label 9225 3450 0    50   ~ 0
Dir_2(5V)
Text Label 9225 3700 0    50   ~ 0
Diag_2(5V)
Text Label 9225 3950 0    50   ~ 0
Tacho_2(5V)
Wire Wire Line
	8525 3200 8050 3200
Wire Wire Line
	8525 3450 8050 3450
Wire Wire Line
	8525 3700 8050 3700
Wire Wire Line
	8525 3950 8050 3950
Text Label 8050 3200 0    50   ~ 0
Brake_2(3V3)
Text Label 8050 3450 0    50   ~ 0
Dir_2(3V3)
Text Label 8050 3700 0    50   ~ 0
Diag_2(3V3)
Text Label 8050 3950 0    50   ~ 0
Tacho_2(3V3)
Text Label 3150 1950 1    50   ~ 0
Brake_2(3V3)
Text Label 3250 1950 1    50   ~ 0
Dir_2(3V3)
Text Label 3350 1950 1    50   ~ 0
Diag_2(3V3)
Text Label 4150 2850 0    50   ~ 0
Tacho_2(3V3)
Text Label 4150 3050 0    50   ~ 0
Tacho_1(3V3)
Wire Notes Line
	7825 800  10525 800 
Wire Notes Line
	10525 4150 7825 4150
Text Notes 8750 900  0    50   ~ 0
Conversion des tensions
Text Label 3050 4000 3    50   ~ 0
Brake_1(3V3)
Text Label 3150 4000 3    50   ~ 0
Dir_1(3V3)
Text Label 3250 4000 3    50   ~ 0
Diag_1(3V3)
Text Notes 4825 5775 0    50   ~ 0
3V3 -> 5V
Text Notes 8975 1000 0    50   ~ 0
3V3 -> 5V
Wire Notes Line
	10525 800  10525 4150
Wire Notes Line
	7825 800  7825 4150
$Comp
L Connector_Generic:Conn_01x02 P1
U 1 1 5C380AF1
P 6825 1025
F 0 "P1" H 6825 1175 50  0000 C CNN
F 1 "CONN_I2C" V 6925 1025 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_1x02_P2.54mm_Horizontal" H 6825 1025 50  0001 C CNN
F 3 "" H 6825 1025 50  0000 C CNN
F 4 "https://fr.rs-online.com/web/p/embases-de-circuit-imprime/1732916/" H 0   0   50  0001 C CNN "RS-1"
F 5 "https://fr.rs-online.com/web/p/boitier-pour-connecteur-ci/2964934/" H 0   0   50  0001 C CNN "RS-2"
	1    6825 1025
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 P2
U 1 1 5C380C1A
P 6825 2150
F 0 "P2" H 6825 2300 50  0000 C CNN
F 1 "CONN_FREE" V 6925 2150 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_1x02_P2.54mm_Horizontal" H 6825 2150 50  0001 C CNN
F 3 "" H 6825 2150 50  0000 C CNN
F 4 "https://fr.rs-online.com/web/p/embases-de-circuit-imprime/1732916/" H 6825 2150 50  0001 C CNN "RS-1"
F 5 "https://fr.rs-online.com/web/p/boitier-pour-connecteur-ci/2964934/" H 6825 2150 50  0001 C CNN "RS-2"
	1    6825 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5C380D01
P 6825 1575
F 0 "J1" H 6825 1725 50  0000 C CNN
F 1 "CONN_SERIAL" V 6925 1575 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_1x02_P2.54mm_Horizontal" H 6825 1575 50  0001 C CNN
F 3 "" H 6825 1575 50  0001 C CNN
F 4 "https://fr.rs-online.com/web/p/embases-de-circuit-imprime/1732916/" H 0   0   50  0001 C CNN "RS-1"
F 5 "https://fr.rs-online.com/web/p/boitier-pour-connecteur-ci/2964934/" H 0   0   50  0001 C CNN "RS-2"
	1    6825 1575
	1    0    0    -1  
$EndComp
Text Label 6050 1025 2    60   ~ 0
I2C_SDA(3V3)
Text Label 6050 1125 2    60   ~ 0
I2C_SCL(3V3)
Text Label 6050 1575 2    60   ~ 0
RX(3V3)
Text Label 6050 1675 2    60   ~ 0
TX(3V3)
Text Label 2750 4800 3    60   ~ 0
Free_1(3V3)
Text Label 2850 4800 3    60   ~ 0
Free_2(3V3)
Text Label 6050 2150 2    60   ~ 0
Free_1(3V3)
Text Label 6050 2250 2    60   ~ 0
Free_2(3V3)
$Comp
L Device:C C11
U 1 1 5C3AE45A
P 8075 1525
F 0 "C11" H 7875 1525 50  0000 L CNN
F 1 "0,1u" H 7825 1425 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8113 1375 50  0001 C CNN
F 3 "" H 8075 1525 50  0001 C CNN
F 4 "https://fr.farnell.com/walsin/1206b104k250ct/cond-0-1-f-25v-10-x7r-1206-bobine/dp/2495574?st=Capacité%20100n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    8075 1525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5C3AE84E
P 8075 1675
F 0 "#PWR0101" H 8075 1425 50  0001 C CNN
F 1 "GND" H 8080 1502 50  0000 C CNN
F 2 "" H 8075 1675 50  0001 C CNN
F 3 "" H 8075 1675 50  0001 C CNN
	1    8075 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1375 8300 1375
Connection ~ 8075 1375
Wire Wire Line
	8400 1475 8300 1475
Wire Wire Line
	8300 1475 8300 1375
Connection ~ 8300 1375
Wire Wire Line
	8300 1375 8075 1375
$Comp
L Device:C C12
U 1 1 5C3CFC59
P 9325 1525
F 0 "C12" H 9425 1525 50  0000 L CNN
F 1 "0,1u" H 9400 1425 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9363 1375 50  0001 C CNN
F 3 "" H 9325 1525 50  0001 C CNN
F 4 "https://fr.farnell.com/walsin/1206b104k250ct/cond-0-1-f-25v-10-x7r-1206-bobine/dp/2495574?st=Capacité%20100n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    9325 1525
	1    0    0    -1  
$EndComp
Connection ~ 9325 1375
$Comp
L power:GND #PWR0102
U 1 1 5C3CFE50
P 9325 1675
F 0 "#PWR0102" H 9325 1425 50  0001 C CNN
F 1 "GND" H 9330 1502 50  0000 C CNN
F 2 "" H 9325 1675 50  0001 C CNN
F 3 "" H 9325 1675 50  0001 C CNN
	1    9325 1675
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5C3F7841
P 3925 3500
F 0 "C15" H 3700 3575 50  0000 L CNN
F 1 "100n" H 3625 3650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3963 3350 50  0001 C CNN
F 3 "" H 3925 3500 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y104kxxpw1bc/condensateur-0-1-f-25v-10-x7r/dp/2896646?st=Capacité%20100n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    3925 3500
	-1   0    0    1   
$EndComp
Connection ~ 3925 3350
Wire Wire Line
	3925 3350 4000 3350
$Comp
L power:GND #PWR0108
U 1 1 5C3F793D
P 3925 3650
F 0 "#PWR0108" H 3925 3400 50  0001 C CNN
F 1 "GND" H 3925 3500 50  0000 C CNN
F 2 "" H 3925 3650 50  0001 C CNN
F 3 "" H 3925 3650 50  0001 C CNN
	1    3925 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5C3F7D6D
P 2000 2500
F 0 "C14" H 2125 2325 50  0000 L CNN
F 1 "100n" H 2075 2400 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2038 2350 50  0001 C CNN
F 3 "" H 2000 2500 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y104kxxpw1bc/condensateur-0-1-f-25v-10-x7r/dp/2896646?st=Capacité%20100n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    2000 2500
	-1   0    0    1   
$EndComp
Connection ~ 2000 2650
Wire Wire Line
	2000 2650 2150 2650
$Comp
L power:GND #PWR0109
U 1 1 5C3F7E0A
P 2000 2350
F 0 "#PWR0109" H 2000 2100 50  0001 C CNN
F 1 "GND" H 2000 2200 50  0000 C CNN
F 2 "" H 2000 2350 50  0001 C CNN
F 3 "" H 2000 2350 50  0001 C CNN
	1    2000 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1575 2775 1925 2775
Wire Wire Line
	1925 2950 2150 2950
Wire Wire Line
	1925 2775 1925 2950
$Comp
L Device:C C13
U 1 1 5C40C3F0
P 1475 3050
F 0 "C13" V 1425 2900 50  0000 L CNN
F 1 "100n" V 1425 3125 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1513 2900 50  0001 C CNN
F 3 "" H 1475 3050 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y104kxxpw1bc/condensateur-0-1-f-25v-10-x7r/dp/2896646?st=Capacité%20100n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    1475 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5C40C4CA
P 1325 3050
F 0 "#PWR0110" H 1325 2800 50  0001 C CNN
F 1 "GND" H 1325 2900 50  0000 C CNN
F 2 "" H 1325 3050 50  0001 C CNN
F 3 "" H 1325 3050 50  0001 C CNN
	1    1325 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3050 2150 3050
Wire Wire Line
	1800 3050 1625 3050
Connection ~ 1800 3050
Wire Wire Line
	6625 1025 6050 1025
Wire Wire Line
	6625 1125 6050 1125
Wire Wire Line
	6625 1575 6050 1575
Wire Wire Line
	6625 1675 6050 1675
Wire Wire Line
	6625 2150 6050 2150
Wire Wire Line
	6625 2250 6050 2250
Wire Wire Line
	2950 2150 2950 1300
Wire Wire Line
	2850 2150 2850 1300
$EndSCHEMATC
