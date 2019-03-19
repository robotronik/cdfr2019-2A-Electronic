EESchema Schematic File Version 4
LIBS:Action_Card-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
L Driver_Motor:Pololu_Breakout_DRV8825 A1
U 1 1 5C8E6F5E
P 4900 2875
F 0 "A1" H 4900 2900 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 5725 3275 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5100 2075 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 5000 2575 50  0001 C CNN
	1    4900 2875
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J_PaP-R1
U 1 1 5C8E7068
P 6000 2925
F 0 "J_PaP-R1" H 6080 2917 50  0000 L CNN
F 1 "Conn_01x04" H 6080 2826 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_1x04_P2.54mm_Horizontal" H 6000 2925 50  0001 C CNN
F 3 "~" H 6000 2925 50  0001 C CNN
	1    6000 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2825 5550 2825
Wire Wire Line
	5550 2825 5550 2775
Wire Wire Line
	5550 2775 5300 2775
Wire Wire Line
	5800 2925 5500 2925
Wire Wire Line
	5500 2925 5500 2875
Wire Wire Line
	5500 2875 5300 2875
Wire Wire Line
	5800 3125 5550 3125
Wire Wire Line
	5550 3125 5550 3175
Wire Wire Line
	5550 3175 5300 3175
Wire Wire Line
	5300 3075 5500 3075
Wire Wire Line
	5500 3075 5500 3025
Wire Wire Line
	5500 3025 5800 3025
$Comp
L power:+12VA #PWR0169
U 1 1 5C8E72B0
P 4900 2200
F 0 "#PWR0169" H 4900 2050 50  0001 C CNN
F 1 "+12VA" H 4725 2300 50  0000 C CNN
F 2 "" H 4900 2200 50  0001 C CNN
F 3 "" H 4900 2200 50  0001 C CNN
	1    4900 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP Cpap1
U 1 1 5C8E733E
P 5050 2200
F 0 "Cpap1" V 5200 2200 50  0000 C CNN
F 1 "100uF" V 5100 2025 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 5088 2050 50  0001 C CNN
F 3 "~" H 5050 2200 50  0001 C CNN
	1    5050 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDPWR #PWR0170
U 1 1 5C8E748D
P 5200 2200
F 0 "#PWR0170" H 5200 2000 50  0001 C CNN
F 1 "GNDPWR" H 5425 2150 50  0000 C CNN
F 2 "" H 5200 2150 50  0001 C CNN
F 3 "" H 5200 2150 50  0001 C CNN
	1    5200 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0171
U 1 1 5C8E74C3
P 5000 3675
F 0 "#PWR0171" H 5000 3475 50  0001 C CNN
F 1 "GNDPWR" H 5250 3625 50  0000 C CNN
F 2 "" H 5000 3625 50  0001 C CNN
F 3 "" H 5000 3625 50  0001 C CNN
	1    5000 3675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0172
U 1 1 5C8E755B
P 4900 3675
F 0 "#PWR0172" H 4900 3425 50  0001 C CNN
F 1 "GND" H 4750 3600 50  0000 C CNN
F 2 "" H 4900 3675 50  0001 C CNN
F 3 "" H 4900 3675 50  0001 C CNN
	1    4900 3675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0173
U 1 1 5C8E777B
P 4250 3675
F 0 "#PWR0173" H 4250 3425 50  0001 C CNN
F 1 "GND" H 4250 3525 50  0000 C CNN
F 2 "" H 4250 3675 50  0001 C CNN
F 3 "" H 4250 3675 50  0001 C CNN
	1    4250 3675
	1    0    0    -1  
$EndComp
Text HLabel 3950 3075 0    50   Input ~ 0
DIR_PaP
Text HLabel 3950 2975 0    50   Input ~ 0
STEP_PaP
Text HLabel 3950 2875 0    50   Input ~ 0
~EN~_PaP-R
$Comp
L power:+3V3 #PWR0174
U 1 1 5C8E7C91
P 4325 2475
F 0 "#PWR0174" H 4325 2325 50  0001 C CNN
F 1 "+3V3" H 4340 2648 50  0000 C CNN
F 2 "" H 4325 2475 50  0001 C CNN
F 3 "" H 4325 2475 50  0001 C CNN
	1    4325 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2575 4325 2575
Wire Wire Line
	4325 2575 4325 2475
Wire Wire Line
	4500 2675 4325 2675
Wire Wire Line
	4325 2675 4325 2575
Connection ~ 4325 2575
$Comp
L Device:R Ren1
U 1 1 5C8E859E
P 4100 2725
F 0 "Ren1" H 3800 2775 50  0000 L CNN
F 1 "10k" V 4100 2650 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4030 2725 50  0001 C CNN
F 3 "~" H 4100 2725 50  0001 C CNN
	1    4100 2725
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0175
U 1 1 5C8E86A1
P 4100 2575
F 0 "#PWR0175" H 4100 2425 50  0001 C CNN
F 1 "+3V3" H 4115 2748 50  0000 C CNN
F 2 "" H 4100 2575 50  0001 C CNN
F 3 "" H 4100 2575 50  0001 C CNN
	1    4100 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2875 4100 2875
Wire Wire Line
	4500 2875 4100 2875
Connection ~ 4100 2875
Wire Wire Line
	3950 2975 4500 2975
Wire Wire Line
	4500 3075 3950 3075
Wire Wire Line
	4900 2200 4900 2275
Connection ~ 4900 2200
$Comp
L Driver_Motor:Pololu_Breakout_DRV8825 A2
U 1 1 5C8EB6BF
P 4900 5025
F 0 "A2" H 4900 5050 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" H 5725 5425 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5100 4225 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 5000 4725 50  0001 C CNN
	1    4900 5025
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J_PaP-L1
U 1 1 5C8EB6C6
P 6000 5075
F 0 "J_PaP-L1" H 6080 5067 50  0000 L CNN
F 1 "Conn_01x04" H 6080 4976 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_1x04_P2.54mm_Horizontal" H 6000 5075 50  0001 C CNN
F 3 "~" H 6000 5075 50  0001 C CNN
	1    6000 5075
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4975 5550 4975
Wire Wire Line
	5550 4975 5550 4925
Wire Wire Line
	5550 4925 5300 4925
Wire Wire Line
	5800 5075 5500 5075
Wire Wire Line
	5500 5075 5500 5025
Wire Wire Line
	5500 5025 5300 5025
Wire Wire Line
	5800 5275 5550 5275
Wire Wire Line
	5550 5275 5550 5325
Wire Wire Line
	5550 5325 5300 5325
Wire Wire Line
	5300 5225 5500 5225
Wire Wire Line
	5500 5225 5500 5175
Wire Wire Line
	5500 5175 5800 5175
$Comp
L power:+12VA #PWR0176
U 1 1 5C8EB6D9
P 4900 4350
F 0 "#PWR0176" H 4900 4200 50  0001 C CNN
F 1 "+12VA" H 4725 4450 50  0000 C CNN
F 2 "" H 4900 4350 50  0001 C CNN
F 3 "" H 4900 4350 50  0001 C CNN
	1    4900 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP Cpap2
U 1 1 5C8EB6DF
P 5050 4350
F 0 "Cpap2" V 5200 4350 50  0000 C CNN
F 1 "100uF" V 5100 4175 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 5088 4200 50  0001 C CNN
F 3 "~" H 5050 4350 50  0001 C CNN
	1    5050 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDPWR #PWR0177
U 1 1 5C8EB6E6
P 5200 4350
F 0 "#PWR0177" H 5200 4150 50  0001 C CNN
F 1 "GNDPWR" H 5425 4300 50  0000 C CNN
F 2 "" H 5200 4300 50  0001 C CNN
F 3 "" H 5200 4300 50  0001 C CNN
	1    5200 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0178
U 1 1 5C8EB6EC
P 5000 5825
F 0 "#PWR0178" H 5000 5625 50  0001 C CNN
F 1 "GNDPWR" H 5250 5775 50  0000 C CNN
F 2 "" H 5000 5775 50  0001 C CNN
F 3 "" H 5000 5775 50  0001 C CNN
	1    5000 5825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0179
U 1 1 5C8EB6F2
P 4900 5825
F 0 "#PWR0179" H 4900 5575 50  0001 C CNN
F 1 "GND" H 4750 5750 50  0000 C CNN
F 2 "" H 4900 5825 50  0001 C CNN
F 3 "" H 4900 5825 50  0001 C CNN
	1    4900 5825
	1    0    0    -1  
$EndComp
Text Notes 3350 5550 0    50   ~ 0
Pas de microstepping
Text HLabel 3950 5225 0    50   Input ~ 0
DIR_PaP
Text HLabel 3950 5125 0    50   Input ~ 0
STEP_PaP
Text HLabel 3950 5025 0    50   Input ~ 0
~EN~_PaP-L
$Comp
L power:+3V3 #PWR0181
U 1 1 5C8EB709
P 4325 4625
F 0 "#PWR0181" H 4325 4475 50  0001 C CNN
F 1 "+3V3" H 4340 4798 50  0000 C CNN
F 2 "" H 4325 4625 50  0001 C CNN
F 3 "" H 4325 4625 50  0001 C CNN
	1    4325 4625
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4725 4325 4725
Wire Wire Line
	4325 4725 4325 4625
Wire Wire Line
	4500 4825 4325 4825
Wire Wire Line
	4325 4825 4325 4725
Connection ~ 4325 4725
$Comp
L Device:R Ren2
U 1 1 5C8EB716
P 4100 4875
F 0 "Ren2" H 3850 4925 50  0000 L CNN
F 1 "10k" V 4100 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4030 4875 50  0001 C CNN
F 3 "~" H 4100 4875 50  0001 C CNN
	1    4100 4875
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0182
U 1 1 5C8EB71D
P 4100 4725
F 0 "#PWR0182" H 4100 4575 50  0001 C CNN
F 1 "+3V3" H 4115 4898 50  0000 C CNN
F 2 "" H 4100 4725 50  0001 C CNN
F 3 "" H 4100 4725 50  0001 C CNN
	1    4100 4725
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5025 4100 5025
Wire Wire Line
	4500 5025 4100 5025
Connection ~ 4100 5025
Wire Wire Line
	3950 5125 4500 5125
Wire Wire Line
	4500 5225 3950 5225
Wire Wire Line
	4900 4350 4900 4425
Connection ~ 4900 4350
NoConn ~ 4500 2475
NoConn ~ 4500 4625
$Comp
L power:GND #PWR0204
U 1 1 5C8FE06E
P 4250 5825
F 0 "#PWR0204" H 4250 5575 50  0001 C CNN
F 1 "GND" H 4250 5675 50  0000 C CNN
F 2 "" H 4250 5825 50  0001 C CNN
F 3 "" H 4250 5825 50  0001 C CNN
	1    4250 5825
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3475 4250 3675
Wire Wire Line
	4250 3475 4500 3475
Text Notes 3350 3425 0    50   ~ 0
Pas de microstepping
Wire Wire Line
	4500 3375 4250 3375
Wire Wire Line
	4250 3375 4250 3475
Connection ~ 4250 3475
Wire Wire Line
	4500 3275 4250 3275
Wire Wire Line
	4250 3275 4250 3375
Connection ~ 4250 3375
Wire Wire Line
	4500 5425 4250 5425
Wire Wire Line
	4250 5425 4250 5525
Wire Wire Line
	4500 5525 4250 5525
Connection ~ 4250 5525
Wire Wire Line
	4250 5525 4250 5625
Wire Wire Line
	4500 5625 4250 5625
Connection ~ 4250 5625
Wire Wire Line
	4250 5625 4250 5825
$EndSCHEMATC