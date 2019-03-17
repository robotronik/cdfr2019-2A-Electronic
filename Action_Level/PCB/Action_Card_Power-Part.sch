EESchema Schematic File Version 4
LIBS:Action_Card-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
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
L BPlug:B_Plug_5mm U5
U 1 1 5C77CB7E
P 3400 2150
F 0 "U5" H 3300 2300 60  0000 C CNN
F 1 "B_Plug_5mm" H 3275 2000 60  0000 C CNN
F 2 "B plug:B plug 5mm" H 3400 2150 60  0001 C CNN
F 3 "" H 3400 2150 60  0000 C CNN
	1    3400 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5C77CCD8
P 4075 2100
F 0 "F1" V 4150 2100 50  0000 C CNN
F 1 "Fuse_Num" V 4000 2100 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4005 2100 50  0001 C CNN
F 3 "~" H 4075 2100 50  0001 C CNN
	1    4075 2100
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D10
U 1 1 5C77CD71
P 4375 2250
F 0 "D10" V 4375 2325 50  0000 L CNN
F 1 "D_10A" H 4275 2150 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 4375 2250 50  0001 C CNN
F 3 "~" H 4375 2250 50  0001 C CNN
	1    4375 2250
	0    1    1    0   
$EndComp
$Comp
L Device:CP C7
U 1 1 5C77CC65
P 4650 2250
F 0 "C7" H 4675 2350 50  0000 L CNN
F 1 "100u" H 4675 2150 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 4688 2100 50  0001 C CNN
F 3 "~" H 4650 2250 50  0001 C CNN
	1    4650 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5C77CCF8
P 4975 2250
F 0 "C8" H 5000 2350 50  0000 L CNN
F 1 "100n" H 5000 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5013 2100 50  0001 C CNN
F 3 "~" H 4975 2250 50  0001 C CNN
	1    4975 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C77CD80
P 5350 2100
F 0 "R3" V 5425 2100 50  0000 C CNN
F 1 "2k" V 5350 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5280 2100 50  0001 C CNN
F 3 "~" H 5350 2100 50  0001 C CNN
	1    5350 2100
	0    1    1    0   
$EndComp
$Comp
L Device:LED_ALT D13
U 1 1 5C77D099
P 5600 2250
F 0 "D13" V 5638 2132 50  0000 R CNN
F 1 "LED_ALT" V 5547 2132 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5600 2250 50  0001 C CNN
F 3 "~" H 5600 2250 50  0001 C CNN
	1    5600 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5C77D176
P 5600 2400
F 0 "#PWR0118" H 5600 2150 50  0001 C CNN
F 1 "GND" H 5605 2227 50  0000 C CNN
F 2 "" H 5600 2400 50  0001 C CNN
F 3 "" H 5600 2400 50  0001 C CNN
	1    5600 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5C77D1BD
P 3625 2325
F 0 "#PWR0119" H 3625 2075 50  0001 C CNN
F 1 "GND" H 3630 2152 50  0000 C CNN
F 2 "" H 3625 2325 50  0001 C CNN
F 3 "" H 3625 2325 50  0001 C CNN
	1    3625 2325
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5C77D50E
P 4650 1850
F 0 "#FLG0101" H 4650 1925 50  0001 C CNN
F 1 "PWR_FLAG" V 4650 1978 50  0000 L CNN
F 2 "" H 4650 1850 50  0001 C CNN
F 3 "~" H 4650 1850 50  0001 C CNN
	1    4650 1850
	0    -1   -1   0   
$EndComp
$Comp
L power:+10V #PWR0120
U 1 1 5C77D5A9
P 4650 1775
F 0 "#PWR0120" H 4650 1625 50  0001 C CNN
F 1 "+10V" H 4665 1948 50  0000 C CNN
F 2 "" H 4650 1775 50  0001 C CNN
F 3 "" H 4650 1775 50  0001 C CNN
	1    4650 1775
	1    0    0    -1  
$EndComp
Text Label 3500 2100 0    50   ~ 0
Alim_num
Wire Wire Line
	3500 2100 3925 2100
Wire Wire Line
	4225 2100 4375 2100
Wire Wire Line
	4375 2100 4650 2100
Connection ~ 4375 2100
Wire Wire Line
	4650 2100 4975 2100
Connection ~ 4650 2100
Wire Wire Line
	4975 2100 5200 2100
Connection ~ 4975 2100
Wire Wire Line
	4375 2400 4650 2400
Wire Wire Line
	4975 2400 4650 2400
Connection ~ 4650 2400
$Comp
L power:GND #PWR0121
U 1 1 5C77DEA1
P 4650 2400
F 0 "#PWR0121" H 4650 2150 50  0001 C CNN
F 1 "GND" H 4655 2227 50  0000 C CNN
F 2 "" H 4650 2400 50  0001 C CNN
F 3 "" H 4650 2400 50  0001 C CNN
	1    4650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2100 5600 2100
Wire Wire Line
	3500 2200 3625 2200
Wire Wire Line
	3625 2200 3625 2275
Wire Wire Line
	4650 1775 4650 1850
Wire Wire Line
	4650 1850 4650 2100
Connection ~ 4650 1850
$Comp
L BPlug:B_Plug_5mm U6
U 1 1 5C795C7F
P 4000 4600
F 0 "U6" H 3900 4750 60  0000 C CNN
F 1 "B_Plug_5mm" H 3450 4600 60  0000 C CNN
F 2 "B plug:B plug 5mm" H 4000 4600 60  0001 C CNN
F 3 "" H 4000 4600 60  0000 C CNN
	1    4000 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F2
U 1 1 5C795C86
P 4675 4550
F 0 "F2" V 4750 4550 50  0000 C CNN
F 1 "Fuse_Pwr" V 4600 4550 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4605 4550 50  0001 C CNN
F 3 "~" H 4675 4550 50  0001 C CNN
	1    4675 4550
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D11
U 1 1 5C795C8D
P 4975 4700
F 0 "D11" V 4975 4775 50  0000 L CNN
F 1 "D_10A" H 4875 4600 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 4975 4700 50  0001 C CNN
F 3 "~" H 4975 4700 50  0001 C CNN
	1    4975 4700
	0    1    1    0   
$EndComp
$Comp
L Device:CP C9
U 1 1 5C795C94
P 5250 4700
F 0 "C9" H 5275 4800 50  0000 L CNN
F 1 "100u" H 5275 4600 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 5288 4550 50  0001 C CNN
F 3 "~" H 5250 4700 50  0001 C CNN
	1    5250 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5C795C9B
P 5575 4700
F 0 "C11" H 5600 4800 50  0000 L CNN
F 1 "100n" H 5600 4600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5613 4550 50  0001 C CNN
F 3 "~" H 5575 4700 50  0001 C CNN
	1    5575 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C795CA2
P 5950 4550
F 0 "R4" V 6025 4550 50  0000 C CNN
F 1 "2k" V 5950 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5880 4550 50  0001 C CNN
F 3 "~" H 5950 4550 50  0001 C CNN
	1    5950 4550
	0    1    1    0   
$EndComp
$Comp
L Device:LED_ALT D14
U 1 1 5C795CA9
P 6200 4700
F 0 "D14" V 6238 4582 50  0000 R CNN
F 1 "LED_PaP" V 6147 4582 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6200 4700 50  0001 C CNN
F 3 "~" H 6200 4700 50  0001 C CNN
	1    6200 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5C795CBC
P 5250 4300
F 0 "#FLG0102" H 5250 4375 50  0001 C CNN
F 1 "PWR_FLAG" V 5250 4428 50  0000 L CNN
F 2 "" H 5250 4300 50  0001 C CNN
F 3 "~" H 5250 4300 50  0001 C CNN
	1    5250 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:+12VA #PWR0122
U 1 1 5C795CC2
P 5250 4225
F 0 "#PWR0122" H 5250 4075 50  0001 C CNN
F 1 "+12VA" H 5265 4398 50  0000 C CNN
F 2 "" H 5250 4225 50  0001 C CNN
F 3 "" H 5250 4225 50  0001 C CNN
	1    5250 4225
	1    0    0    -1  
$EndComp
Text Label 4100 4550 0    50   ~ 0
Alim_Puiss_PaP
Wire Wire Line
	4100 4550 4525 4550
Wire Wire Line
	4825 4550 4975 4550
Wire Wire Line
	4975 4550 5250 4550
Connection ~ 4975 4550
Wire Wire Line
	5250 4550 5575 4550
Connection ~ 5250 4550
Wire Wire Line
	5575 4550 5800 4550
Connection ~ 5575 4550
Wire Wire Line
	4975 4850 5250 4850
Wire Wire Line
	5575 4850 5250 4850
Connection ~ 5250 4850
Wire Wire Line
	6100 4550 6200 4550
Wire Wire Line
	4100 4650 4225 4650
Wire Wire Line
	4225 4650 4225 4725
Wire Wire Line
	5250 4225 5250 4300
Wire Wire Line
	5250 4300 5250 4550
Connection ~ 5250 4300
$Comp
L power:GNDPWR #PWR0123
U 1 1 5C7969DF
P 4225 4775
F 0 "#PWR0123" H 4225 4575 50  0001 C CNN
F 1 "GNDPWR" H 4229 4621 50  0000 C CNN
F 2 "" H 4225 4725 50  0001 C CNN
F 3 "" H 4225 4725 50  0001 C CNN
	1    4225 4775
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0124
U 1 1 5C796D2D
P 5250 4850
F 0 "#PWR0124" H 5250 4650 50  0001 C CNN
F 1 "GNDPWR" H 5254 4696 50  0000 C CNN
F 2 "" H 5250 4800 50  0001 C CNN
F 3 "" H 5250 4800 50  0001 C CNN
	1    5250 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0125
U 1 1 5C796D54
P 6200 4850
F 0 "#PWR0125" H 6200 4650 50  0001 C CNN
F 1 "GNDPWR" H 6204 4696 50  0000 C CNN
F 2 "" H 6200 4800 50  0001 C CNN
F 3 "" H 6200 4800 50  0001 C CNN
	1    6200 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+10V #PWR0126
U 1 1 5C796890
P 6150 1225
F 0 "#PWR0126" H 6150 1075 50  0001 C CNN
F 1 "+10V" H 6165 1398 50  0000 C CNN
F 2 "" H 6150 1225 50  0001 C CNN
F 3 "" H 6150 1225 50  0001 C CNN
	1    6150 1225
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5C7968BE
P 6150 1750
F 0 "#PWR0127" H 6150 1500 50  0001 C CNN
F 1 "GND" H 6155 1577 50  0000 C CNN
F 2 "" H 6150 1750 50  0001 C CNN
F 3 "" H 6150 1750 50  0001 C CNN
	1    6150 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cin_1
U 1 1 5C7968E5
P 6150 1600
F 0 "Cin_1" H 6175 1700 50  0000 L CNN
F 1 "0,1u" H 6175 1500 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6188 1450 50  0001 C CNN
F 3 "~" H 6150 1600 50  0001 C CNN
	1    6150 1600
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM317_3PinPackage U8
U 1 1 5C796B9F
P 6700 1325
F 0 "U8" H 6700 1325 50  0000 C CNN
F 1 "LM317_SOT223" H 6700 1476 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6700 1575 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 6700 1325 50  0001 C CNN
	1    6700 1325
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5C796CE3
P 6700 1875
F 0 "R6" H 6750 1875 50  0000 L CNN
F 1 "820" V 6700 1800 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6630 1875 50  0001 C CNN
F 3 "~" H 6700 1875 50  0001 C CNN
	1    6700 1875
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5C796EE7
P 7100 1675
F 0 "R8" V 7200 1625 50  0000 L CNN
F 1 "270" V 7100 1600 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7030 1675 50  0001 C CNN
F 3 "~" H 7100 1675 50  0001 C CNN
	1    7100 1675
	0    1    -1   0   
$EndComp
$Comp
L power:+5V #PWR0128
U 1 1 5C79709E
P 7775 1225
F 0 "#PWR0128" H 7775 1075 50  0001 C CNN
F 1 "+5V" H 7790 1398 50  0000 C CNN
F 2 "" H 7775 1225 50  0001 C CNN
F 3 "" H 7775 1225 50  0001 C CNN
	1    7775 1225
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cin_3
U 1 1 5C797264
P 7775 1600
F 0 "Cin_3" H 7800 1700 50  0000 L CNN
F 1 "10u" H 7800 1500 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7813 1450 50  0001 C CNN
F 3 "~" H 7775 1600 50  0001 C CNN
	1    7775 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5C7972E8
P 7775 1750
F 0 "#PWR0129" H 7775 1500 50  0001 C CNN
F 1 "GND" H 7780 1577 50  0000 C CNN
F 2 "" H 7775 1750 50  0001 C CNN
F 3 "" H 7775 1750 50  0001 C CNN
	1    7775 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5C7978CC
P 8250 1325
F 0 "R10" V 8350 1275 50  0000 L CNN
F 1 "470" V 8250 1250 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8180 1325 50  0001 C CNN
F 3 "~" H 8250 1325 50  0001 C CNN
	1    8250 1325
	0    1    1    0   
$EndComp
$Comp
L Device:LED_ALT D16
U 1 1 5C797AE3
P 8600 1475
F 0 "D16" V 8638 1357 50  0000 R CNN
F 1 "LED_5V" V 8500 1775 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8600 1475 50  0001 C CNN
F 3 "~" H 8600 1475 50  0001 C CNN
	1    8600 1475
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5C797C04
P 8600 1750
F 0 "#PWR0130" H 8600 1500 50  0001 C CNN
F 1 "GND" H 8605 1577 50  0000 C CNN
F 2 "" H 8600 1750 50  0001 C CNN
F 3 "" H 8600 1750 50  0001 C CNN
	1    8600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1225 6150 1325
Wire Wire Line
	6400 1325 6150 1325
Connection ~ 6150 1325
Wire Wire Line
	6150 1325 6150 1450
Wire Wire Line
	6700 1625 6700 1675
Wire Wire Line
	6950 1675 6700 1675
Connection ~ 6700 1675
Wire Wire Line
	6700 1675 6700 1725
Wire Wire Line
	7775 1225 7775 1325
Connection ~ 7775 1325
Wire Wire Line
	7775 1325 8100 1325
Wire Wire Line
	7775 1325 7775 1450
Wire Wire Line
	7000 1325 7425 1325
Wire Wire Line
	7250 1675 7425 1675
Wire Wire Line
	7425 1675 7425 1325
Connection ~ 7425 1325
Wire Wire Line
	7425 1325 7775 1325
$Comp
L power:GND #PWR0131
U 1 1 5C79AEC4
P 6700 2025
F 0 "#PWR0131" H 6700 1775 50  0001 C CNN
F 1 "GND" H 6705 1852 50  0000 C CNN
F 2 "" H 6700 2025 50  0001 C CNN
F 3 "" H 6700 2025 50  0001 C CNN
	1    6700 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1325 8600 1325
Wire Wire Line
	8600 1625 8600 1750
Text Notes 7100 2175 0    50   ~ 0
Vout = Vref(1 + R2/R1) avec Vref = 1,25V\n
$Comp
L power:+10V #PWR0132
U 1 1 5C79CADF
P 6150 2575
F 0 "#PWR0132" H 6150 2425 50  0001 C CNN
F 1 "+10V" H 6165 2748 50  0000 C CNN
F 2 "" H 6150 2575 50  0001 C CNN
F 3 "" H 6150 2575 50  0001 C CNN
	1    6150 2575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5C79CAE5
P 6150 3100
F 0 "#PWR0133" H 6150 2850 50  0001 C CNN
F 1 "GND" H 6155 2927 50  0000 C CNN
F 2 "" H 6150 3100 50  0001 C CNN
F 3 "" H 6150 3100 50  0001 C CNN
	1    6150 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cin_2
U 1 1 5C79CAEB
P 6150 2950
F 0 "Cin_2" H 6175 3050 50  0000 L CNN
F 1 "0,1u" H 6175 2850 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6188 2800 50  0001 C CNN
F 3 "~" H 6150 2950 50  0001 C CNN
	1    6150 2950
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM317_3PinPackage U9
U 1 1 5C79CAF2
P 6700 2675
F 0 "U9" H 6700 2675 50  0000 C CNN
F 1 "LM317_SOT223" H 6700 2826 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6700 2925 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 6700 2675 50  0001 C CNN
	1    6700 2675
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C79CAF9
P 6700 3225
F 0 "R7" H 6750 3225 50  0000 L CNN
F 1 "370" V 6700 3150 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6630 3225 50  0001 C CNN
F 3 "~" H 6700 3225 50  0001 C CNN
	1    6700 3225
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5C79CB00
P 7100 3025
F 0 "R9" V 7200 2975 50  0000 L CNN
F 1 "220" V 7100 2950 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7030 3025 50  0001 C CNN
F 3 "~" H 7100 3025 50  0001 C CNN
	1    7100 3025
	0    1    -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0134
U 1 1 5C79CB07
P 7775 2575
F 0 "#PWR0134" H 7775 2425 50  0001 C CNN
F 1 "+3V3" H 7790 2748 50  0000 C CNN
F 2 "" H 7775 2575 50  0001 C CNN
F 3 "" H 7775 2575 50  0001 C CNN
	1    7775 2575
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cin_4
U 1 1 5C79CB0D
P 7775 2950
F 0 "Cin_4" H 7800 3050 50  0000 L CNN
F 1 "10u" H 7800 2850 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7813 2800 50  0001 C CNN
F 3 "~" H 7775 2950 50  0001 C CNN
	1    7775 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 5C79CB14
P 7775 3100
F 0 "#PWR0135" H 7775 2850 50  0001 C CNN
F 1 "GND" H 7780 2927 50  0000 C CNN
F 2 "" H 7775 3100 50  0001 C CNN
F 3 "" H 7775 3100 50  0001 C CNN
	1    7775 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5C79CB1A
P 8250 2675
F 0 "R11" V 8350 2625 50  0000 L CNN
F 1 "470" V 8250 2600 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8180 2675 50  0001 C CNN
F 3 "~" H 8250 2675 50  0001 C CNN
	1    8250 2675
	0    1    1    0   
$EndComp
$Comp
L Device:LED_ALT D17
U 1 1 5C79CB21
P 8600 2825
F 0 "D17" V 8638 2707 50  0000 R CNN
F 1 "LED_3V3" V 8475 3200 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8600 2825 50  0001 C CNN
F 3 "~" H 8600 2825 50  0001 C CNN
	1    8600 2825
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5C79CB28
P 8600 3100
F 0 "#PWR0136" H 8600 2850 50  0001 C CNN
F 1 "GND" H 8605 2927 50  0000 C CNN
F 2 "" H 8600 3100 50  0001 C CNN
F 3 "" H 8600 3100 50  0001 C CNN
	1    8600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2575 6150 2675
Wire Wire Line
	6400 2675 6150 2675
Connection ~ 6150 2675
Wire Wire Line
	6150 2675 6150 2800
Wire Wire Line
	6700 2975 6700 3025
Wire Wire Line
	6950 3025 6700 3025
Connection ~ 6700 3025
Wire Wire Line
	6700 3025 6700 3075
Wire Wire Line
	7775 2575 7775 2675
Connection ~ 7775 2675
Wire Wire Line
	7775 2675 8100 2675
Wire Wire Line
	7775 2675 7775 2800
Wire Wire Line
	7000 2675 7425 2675
Wire Wire Line
	7250 3025 7425 3025
Wire Wire Line
	7425 3025 7425 2675
Connection ~ 7425 2675
Wire Wire Line
	7425 2675 7775 2675
$Comp
L power:GND #PWR0137
U 1 1 5C79CB3F
P 6700 3375
F 0 "#PWR0137" H 6700 3125 50  0001 C CNN
F 1 "GND" H 6705 3202 50  0000 C CNN
F 2 "" H 6700 3375 50  0001 C CNN
F 3 "" H 6700 3375 50  0001 C CNN
	1    6700 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2675 8600 2675
Wire Wire Line
	8600 2975 8600 3100
$Comp
L BPlug:B_Plug_5mm U7
U 1 1 5C8A4746
P 4000 5700
F 0 "U7" H 3900 5850 60  0000 C CNN
F 1 "B_Plug_5mm" H 3450 5700 60  0000 C CNN
F 2 "B plug:B plug 5mm" H 4000 5700 60  0001 C CNN
F 3 "" H 4000 5700 60  0000 C CNN
	1    4000 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F3
U 1 1 5C8A474D
P 4675 5650
F 0 "F3" V 4750 5650 50  0000 C CNN
F 1 "Fuse_Pwr" V 4600 5650 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4605 5650 50  0001 C CNN
F 3 "~" H 4675 5650 50  0001 C CNN
	1    4675 5650
	0    1    1    0   
$EndComp
$Comp
L Device:D_ALT D12
U 1 1 5C8A4754
P 4975 5800
F 0 "D12" V 4975 5875 50  0000 L CNN
F 1 "D_10A" H 4875 5700 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 4975 5800 50  0001 C CNN
F 3 "~" H 4975 5800 50  0001 C CNN
	1    4975 5800
	0    1    1    0   
$EndComp
$Comp
L Device:CP C10
U 1 1 5C8A475B
P 5250 5800
F 0 "C10" H 5275 5900 50  0000 L CNN
F 1 "100u" H 5275 5700 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 5288 5650 50  0001 C CNN
F 3 "~" H 5250 5800 50  0001 C CNN
	1    5250 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5C8A4762
P 5575 5800
F 0 "C12" H 5600 5900 50  0000 L CNN
F 1 "100n" H 5600 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5613 5650 50  0001 C CNN
F 3 "~" H 5575 5800 50  0001 C CNN
	1    5575 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C8A4769
P 5950 5650
F 0 "R5" V 6025 5650 50  0000 C CNN
F 1 "2k" V 5950 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5880 5650 50  0001 C CNN
F 3 "~" H 5950 5650 50  0001 C CNN
	1    5950 5650
	0    1    1    0   
$EndComp
$Comp
L Device:LED_ALT D15
U 1 1 5C8A4770
P 6200 5800
F 0 "D15" V 6238 5682 50  0000 R CNN
F 1 "LED_DC" V 6147 5682 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6200 5800 50  0001 C CNN
F 3 "~" H 6200 5800 50  0001 C CNN
	1    6200 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5C8A4777
P 5250 5400
F 0 "#FLG0103" H 5250 5475 50  0001 C CNN
F 1 "PWR_FLAG" V 5250 5528 50  0000 L CNN
F 2 "" H 5250 5400 50  0001 C CNN
F 3 "~" H 5250 5400 50  0001 C CNN
	1    5250 5400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VA #PWR0138
U 1 1 5C8A477D
P 5250 5325
F 0 "#PWR0138" H 5250 5175 50  0001 C CNN
F 1 "+5VA" H 5265 5498 50  0000 C CNN
F 2 "" H 5250 5325 50  0001 C CNN
F 3 "" H 5250 5325 50  0001 C CNN
	1    5250 5325
	1    0    0    -1  
$EndComp
Text Label 4100 5650 0    50   ~ 0
Alim_Puiss_DC
Wire Wire Line
	4100 5650 4525 5650
Wire Wire Line
	4825 5650 4975 5650
Wire Wire Line
	4975 5650 5250 5650
Connection ~ 4975 5650
Wire Wire Line
	5250 5650 5575 5650
Connection ~ 5250 5650
Wire Wire Line
	5575 5650 5800 5650
Connection ~ 5575 5650
Wire Wire Line
	4975 5950 5250 5950
Wire Wire Line
	5575 5950 5250 5950
Connection ~ 5250 5950
Wire Wire Line
	6100 5650 6200 5650
Wire Wire Line
	4100 5750 4225 5750
Wire Wire Line
	5250 5325 5250 5400
Wire Wire Line
	5250 5400 5250 5650
Connection ~ 5250 5400
$Comp
L power:GNDPWR #PWR0139
U 1 1 5C8A4795
P 4225 5875
F 0 "#PWR0139" H 4225 5675 50  0001 C CNN
F 1 "GNDPWR" H 4229 5721 50  0000 C CNN
F 2 "" H 4225 5825 50  0001 C CNN
F 3 "" H 4225 5825 50  0001 C CNN
	1    4225 5875
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0140
U 1 1 5C8A479B
P 5250 5950
F 0 "#PWR0140" H 5250 5750 50  0001 C CNN
F 1 "GNDPWR" H 5254 5796 50  0000 C CNN
F 2 "" H 5250 5900 50  0001 C CNN
F 3 "" H 5250 5900 50  0001 C CNN
	1    5250 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0141
U 1 1 5C8A47A1
P 6200 5950
F 0 "#PWR0141" H 6200 5750 50  0001 C CNN
F 1 "GNDPWR" H 6204 5796 50  0000 C CNN
F 2 "" H 6200 5900 50  0001 C CNN
F 3 "" H 6200 5900 50  0001 C CNN
	1    6200 5950
	1    0    0    -1  
$EndComp
Text Notes 6750 4450 0    50   ~ 0
Une alimentation pour les deux moteurs Pas à Pas\n
Text Notes 6700 5850 0    50   ~ 0
Une alimentation pour les deux moteurs DC
Wire Notes Line
	2950 3775 8950 3775
Wire Notes Line
	8950 3775 8950 6275
Wire Notes Line
	8950 6275 2950 6275
Wire Notes Line
	2950 6275 2950 3775
Text Notes 2975 3900 0    50   ~ 0
REGULATION DE PUISSANCE\n
Wire Notes Line
	2950 3675 8950 3675
Wire Notes Line
	8950 3675 8950 925 
Wire Notes Line
	8950 925  2950 925 
Wire Notes Line
	2950 925  2950 3675
Text Notes 3000 1050 0    50   ~ 0
REGULATION DE LOGIQUE
$Comp
L Connector_Generic:Conn_01x02 J_FAN1
U 1 1 5C8F0659
P 7975 4950
F 0 "J_FAN1" H 8055 4942 50  0000 L CNN
F 1 "Conn_01x02" H 8055 4851 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_1x02_P2.54mm_Horizontal" H 7975 4950 50  0001 C CNN
F 3 "~" H 7975 4950 50  0001 C CNN
	1    7975 4950
	1    0    0    -1  
$EndComp
Text Notes 7675 4825 0    50   ~ 0
Connecteur ventilateur\n
$Comp
L power:+5VA #PWR0142
U 1 1 5C8F0971
P 7475 4950
F 0 "#PWR0142" H 7475 4800 50  0001 C CNN
F 1 "+5VA" H 7490 5123 50  0000 C CNN
F 2 "" H 7475 4950 50  0001 C CNN
F 3 "" H 7475 4950 50  0001 C CNN
	1    7475 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0143
U 1 1 5C8F09C4
P 7475 5050
F 0 "#PWR0143" H 7475 4850 50  0001 C CNN
F 1 "GNDPWR" H 7479 4896 50  0000 C CNN
F 2 "" H 7475 5000 50  0001 C CNN
F 3 "" H 7475 5000 50  0001 C CNN
	1    7475 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7775 4950 7475 4950
Wire Wire Line
	7775 5050 7475 5050
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5C9391CE
P 3625 2275
F 0 "#FLG0104" H 3625 2350 50  0001 C CNN
F 1 "PWR_FLAG" V 3625 2403 50  0000 L CNN
F 2 "" H 3625 2275 50  0001 C CNN
F 3 "~" H 3625 2275 50  0001 C CNN
	1    3625 2275
	0    1    1    0   
$EndComp
Connection ~ 3625 2275
Wire Wire Line
	3625 2275 3625 2325
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 5C9394F3
P 4225 4725
F 0 "#FLG0105" H 4225 4800 50  0001 C CNN
F 1 "PWR_FLAG" V 4225 4853 50  0000 L CNN
F 2 "" H 4225 4725 50  0001 C CNN
F 3 "~" H 4225 4725 50  0001 C CNN
	1    4225 4725
	0    1    1    0   
$EndComp
Connection ~ 4225 4725
Wire Wire Line
	4225 4725 4225 4775
Wire Wire Line
	4225 5750 4225 5875
$EndSCHEMATC
