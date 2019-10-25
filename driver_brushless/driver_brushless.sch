EESchema Schematic File Version 4
LIBS:driver_brushless-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Commande moteur brushless"
Date "2019-10-22"
Rev "1"
Comp "Robotronik"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Propulsion_control:L6235D U5
U 1 1 59613948
P 5150 4275
F 0 "U5" H 5150 4275 60  0000 C CNN
F 1 "L6235D" H 5125 5125 60  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 4850 4525 60  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/l6235.pdf" H 4850 4525 60  0001 C CNN
F 4 "Contact ST" H 1625 1700 50  0001 C CNN "RS-1"
	1    5150 4275
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 59615067
P 3600 3200
F 0 "#PWR04" H 3600 3050 50  0001 C CNN
F 1 "+5V" H 3600 3340 50  0000 C CNN
F 2 "" H 3600 3200 50  0001 C CNN
F 3 "" H 3600 3200 50  0001 C CNN
	1    3600 3200
	-1   0    0    -1  
$EndComp
$Comp
L Device:C Coff1
U 1 1 59618797
P 3850 4800
F 0 "Coff1" V 3800 4875 50  0000 L CNN
F 1 "1n" V 3700 4750 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3888 4650 50  0001 C CNN
F 3 "" H 3850 4800 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y102kxxpw1bc/cond-1000pf-25v-10-x7r-1206/dp/2896635?st=capacité%201n%201206" H 1625 1700 50  0001 C CNN "RS-1"
	1    3850 4800
	0    -1   1    0   
$EndComp
$Comp
L Device:R Rcoff1
U 1 1 59618982
P 3850 4950
F 0 "Rcoff1" V 3800 5225 50  0000 C CNN
F 1 "33k" V 3850 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3780 4950 50  0001 C CNN
F 3 "" H 3850 4950 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206j33k/res-aec-q200-couche-epaisse-33k/dp/2861959?st=Résistance%2033kohm%201206" H 1625 1700 50  0001 C CNN "RS-1"
	1    3850 4950
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 596189C5
P 3400 5150
F 0 "#PWR03" H 3400 4900 50  0001 C CNN
F 1 "GND" H 3400 5000 50  0000 C CNN
F 2 "" H 3400 5150 50  0001 C CNN
F 3 "" H 3400 5150 50  0001 C CNN
	1    3400 5150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R Rtacho1
U 1 1 5962811E
P 3100 4525
F 0 "Rtacho1" V 3180 4525 50  0000 C CNN
F 1 "1k" V 3100 4525 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3030 4525 50  0001 C CNN
F 3 "" H 3100 4525 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206j1k0/res-aec-q200-couche-epaisse-1k/dp/2861950?st=Résistance%201kohm%201206" H 1625 1700 50  0001 C CNN "RS-1"
	1    3100 4525
	0    -1   1    0   
$EndComp
Text Notes 4625 2875 0    60   ~ 0
ATTENTION : régler vref et rsense
$Comp
L power:+12V #PWR08
U 1 1 5C24AF7A
P 6250 3425
F 0 "#PWR08" H 6250 3275 50  0001 C CNN
F 1 "+12V" H 6265 3598 50  0000 C CNN
F 2 "" H 6250 3425 50  0001 C CNN
F 3 "" H 6250 3425 50  0001 C CNN
	1    6250 3425
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6250 3425 6025 3425
Wire Wire Line
	5900 3525 6025 3525
Wire Wire Line
	6025 3525 6025 3425
Connection ~ 6025 3425
Wire Wire Line
	6025 3425 5900 3425
$Comp
L Device:D_ALT D1
U 1 1 5C25656E
P 6775 3575
F 0 "D1" V 6800 3450 50  0000 C CNN
F 1 "1N4148" V 6725 3375 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 6775 3575 50  0001 C CNN
F 3 "" H 6775 3575 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/1n4148tr/diode-de-redressement-standard/dp/1469384?st=1N4148" H 1625 1700 50  0001 C CNN "RS-1"
	1    6775 3575
	0    1    -1   0   
$EndComp
$Comp
L Device:D_ALT D2
U 1 1 5C2565F6
P 6775 3875
F 0 "D2" V 6800 3750 50  0000 C CNN
F 1 "1N4148" V 6725 3675 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 6775 3875 50  0001 C CNN
F 3 "" H 6775 3875 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/1n4148tr/diode-de-redressement-standard/dp/1469384?st=1N4148" H 1625 1700 50  0001 C CNN "RS-1"
	1    6775 3875
	0    1    -1   0   
$EndComp
$Comp
L Device:R Rp1
U 1 1 5C25CBC9
P 6050 3725
F 0 "Rp1" V 5975 3725 50  0000 C CNN
F 1 "100" V 6050 3725 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5980 3725 50  0001 C CNN
F 3 "~" H 6050 3725 50  0001 C CNN
F 4 "https://fr.farnell.com/multicomp/mcwr12x1000ftl/resistance-thick-film-100-ohm/dp/2447454?st=Résistance%20100ohm%201206" H 1625 1700 50  0001 C CNN "RS-1"
	1    6050 3725
	0    -1   1    0   
$EndComp
$Comp
L Device:C Cp1
U 1 1 5C25CCEB
P 6350 3725
F 0 "Cp1" V 6225 3725 50  0000 C CNN
F 1 "10n" V 6475 3725 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6388 3575 50  0001 C CNN
F 3 "~" H 6350 3725 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y103kxjcw1bc/cond-0-01-f-16v-10-x7r-1206/dp/2896639?st=capacité%2010n%201206" H 1625 1700 50  0001 C CNN "RS-1"
	1    6350 3725
	0    -1   1    0   
$EndComp
$Comp
L Device:C Cboot1
U 1 1 5C25D096
P 7100 3875
F 0 "Cboot1" H 6925 3975 50  0000 C CNN
F 1 "220n" H 6925 3775 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7138 3725 50  0001 C CNN
F 3 "~" H 7100 3875 50  0001 C CNN
F 4 "https://fr.farnell.com/yageo/cc1206krx7r8bb224/cond-0-22-f-25v-10-x7r-1206/dp/644353?st=condensateur%20220n%201206" H 1625 1700 50  0001 C CNN "RS-1"
	1    7100 3875
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6500 3725 6775 3725
Connection ~ 6775 3725
Wire Wire Line
	5900 3925 6325 3925
Wire Wire Line
	6325 3925 6325 4025
Wire Wire Line
	6325 4025 6775 4025
Wire Wire Line
	7100 4025 6775 4025
Connection ~ 6775 4025
Wire Wire Line
	6250 3425 6775 3425
Connection ~ 6250 3425
Wire Wire Line
	6775 3425 7100 3425
Wire Wire Line
	7100 3425 7100 3725
Connection ~ 6775 3425
$Comp
L Device:R Rsense1
U 1 1 5C27D8F4
P 6500 4175
F 0 "Rsense1" V 6425 4175 50  0000 C CNN
F 1 "0.3" V 6500 4175 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6430 4175 50  0001 C CNN
F 3 "~" H 6500 4175 50  0001 C CNN
F 4 "https://fr.farnell.com/bourns/crl1206-jw-r300elf/res-couche-epaisse-0-3r-5-0-25w/dp/2328143?st=Résistance%200.3ohm%201206" H 1625 1700 50  0001 C CNN "RS-1"
	1    6500 4175
	0    -1   1    0   
$EndComp
$Comp
L power:GNDPWR #PWR09
U 1 1 5C27DA4F
P 6650 4175
F 0 "#PWR09" H 6650 3975 50  0001 C CNN
F 1 "GNDPWR" H 6654 4021 50  0000 C CNN
F 2 "" H 6650 4125 50  0001 C CNN
F 3 "" H 6650 4125 50  0001 C CNN
	1    6650 4175
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5900 4075 5900 4175
Wire Wire Line
	5900 4175 6350 4175
Connection ~ 5900 4175
Text Label 5900 4375 0    50   ~ 0
Out_11
Text Label 5900 4475 0    50   ~ 0
Out_21
Text Label 5900 4575 0    50   ~ 0
Out_31
Text Label 5900 4825 0    50   ~ 0
Hall_sensor_11
Text Label 5900 4925 0    50   ~ 0
Hall_sensor_21
Text Label 5900 5025 0    50   ~ 0
Hall_sensor_31
$Comp
L power:+5V #PWR011
U 1 1 5C37C79F
P 7775 4975
F 0 "#PWR011" H 7775 4825 50  0001 C CNN
F 1 "+5V" H 7775 5115 50  0000 C CNN
F 2 "" H 7775 4975 50  0001 C CNN
F 3 "" H 7775 4975 50  0001 C CNN
	1    7775 4975
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5C37CB04
P 5150 5525
F 0 "#PWR07" H 5150 5275 50  0001 C CNN
F 1 "GND" H 5150 5375 50  0000 C CNN
F 2 "" H 5150 5525 50  0001 C CNN
F 3 "" H 5150 5525 50  0001 C CNN
	1    5150 5525
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5900 4825 6525 4825
Wire Wire Line
	6425 4925 5900 4925
Wire Wire Line
	5900 5025 6325 5025
$Comp
L power:GND #PWR012
U 1 1 5C4E4058
P 7775 5550
F 0 "#PWR012" H 7775 5300 50  0001 C CNN
F 1 "GND" H 7775 5400 50  0000 C CNN
F 2 "" H 7775 5550 50  0001 C CNN
F 3 "" H 7775 5550 50  0001 C CNN
	1    7775 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5150 5525 5150 5425
Wire Wire Line
	5150 5425 5100 5425
Wire Wire Line
	5100 5425 5000 5425
Connection ~ 5100 5425
Wire Wire Line
	5150 5425 5200 5425
Connection ~ 5150 5425
Wire Wire Line
	5200 5425 5300 5425
Connection ~ 5200 5425
$Comp
L Device:R Ren1
U 1 1 5C50F6C3
P 3450 3725
F 0 "Ren1" V 3375 3725 50  0000 C CNN
F 1 "100k" V 3450 3725 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3380 3725 50  0001 C CNN
F 3 "~" H 3450 3725 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206j100k/resi-auto-couche-epaisse-100k/dp/2861962?st=Résistance%20100kohm%201206" H 1625 1700 50  0001 C CNN "RS-1"
	1    3450 3725
	0    -1   1    0   
$EndComp
$Comp
L Device:C Cen1
U 1 1 5C50F867
P 3850 3875
F 0 "Cen1" H 4050 3875 50  0000 C CNN
F 1 "5.6n" H 3675 3875 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3888 3725 50  0001 C CNN
F 3 "~" H 3850 3875 50  0001 C CNN
F 4 "https://fr.farnell.com/multicomp/mc1206b562k500ct/cond-5600pf-50v-10-x7r-1206/dp/1759347?st=capacité%205.6n%201206" H 1625 1700 50  0001 C CNN "RS-1"
	1    3850 3875
	1    0    0    1   
$EndComp
Wire Wire Line
	3600 3725 3850 3725
Wire Wire Line
	3850 3725 4450 3725
Connection ~ 3850 3725
Wire Wire Line
	4450 3725 4450 3825
Connection ~ 4450 3725
$Comp
L power:GND #PWR05
U 1 1 5C531794
P 3850 4025
F 0 "#PWR05" H 3850 3775 50  0001 C CNN
F 1 "GND" H 3850 3875 50  0000 C CNN
F 2 "" H 3850 4025 50  0001 C CNN
F 3 "" H 3850 4025 50  0001 C CNN
	1    3850 4025
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 4800 3700 4950
Connection ~ 3700 4950
Wire Wire Line
	4000 4800 4000 4950
$Comp
L Device:R Rpul1
U 1 1 5C60D630
P 3850 5150
F 0 "Rpul1" V 3800 5425 50  0000 C CNN
F 1 "47k" V 3850 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3780 5150 50  0001 C CNN
F 3 "" H 3850 5150 50  0001 C CNN
F 4 "https://fr.farnell.com/multicomp/mcsr12x4702ftl/res-ceramique-47k-1-0-25w-1206/dp/2074659?st=Résistance%2047kohm%201206" H 1625 1700 50  0001 C CNN "RS-1"
	1    3850 5150
	0    -1   1    0   
$EndComp
$Comp
L Device:C Cpul1
U 1 1 5C60D6B9
P 3850 5300
F 0 "Cpul1" V 3900 5025 50  0000 L CNN
F 1 "10n" V 3900 5375 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3888 5150 50  0001 C CNN
F 3 "" H 3850 5300 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y103kxjcw1bc/cond-0-01-f-16v-10-x7r-1206/dp/2896639?st=capacité%2010n%201206" H 1625 1700 50  0001 C CNN "RS-1"
	1    3850 5300
	0    -1   1    0   
$EndComp
Wire Wire Line
	4000 5300 4000 5150
Wire Wire Line
	3700 5300 3700 5150
Wire Wire Line
	3700 4950 3400 4950
Wire Wire Line
	3400 5150 3700 5150
Connection ~ 3700 5150
$Comp
L power:+5V #PWR02
U 1 1 5C656252
P 2950 4525
F 0 "#PWR02" H 2950 4375 50  0001 C CNN
F 1 "+5V" H 2950 4675 50  0000 C CNN
F 2 "" H 2950 4525 50  0001 C CNN
F 3 "" H 2950 4525 50  0001 C CNN
	1    2950 4525
	-1   0    0    -1  
$EndComp
$Comp
L Device:R Rref2
U 1 1 5C65711B
P 4150 3350
F 0 "Rref2" H 4000 3225 50  0000 C CNN
F 1 "220" V 4150 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4080 3350 50  0001 C CNN
F 3 "" H 4150 3350 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206j220r/resi-auto-couche-epaisse-220r/dp/2861946?st=Résistance%20220ohm%201206" H 1625 1700 50  0001 C CNN "RS-1"
	1    4150 3350
	-1   0    0    -1  
$EndComp
$Comp
L Device:C Cref1
U 1 1 5C657256
P 3975 3350
F 0 "Cref1" H 4000 3250 50  0000 L CNN
F 1 "10n" H 4025 3175 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4013 3200 50  0001 C CNN
F 3 "" H 3975 3350 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y103kxjcw1bc/cond-0-01-f-16v-10-x7r-1206/dp/2896639?st=capacité%2010n%201206" H 1625 1700 50  0001 C CNN "RS-1"
	1    3975 3350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C65779B
P 4150 3500
F 0 "#PWR06" H 4150 3250 50  0001 C CNN
F 1 "GND" H 4150 3350 50  0000 C CNN
F 2 "" H 4150 3500 50  0001 C CNN
F 3 "" H 4150 3500 50  0001 C CNN
	1    4150 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3975 3200 4150 3200
Connection ~ 4150 3200
Wire Wire Line
	3975 3500 4150 3500
Connection ~ 4150 3500
Wire Wire Line
	4450 3425 4450 3200
Wire Wire Line
	4450 3200 4150 3200
$Comp
L Device:R Rref1
U 1 1 5C67F19A
P 3750 3200
F 0 "Rref1" V 3830 3200 50  0000 C CNN
F 1 "1.2k" V 3750 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3680 3200 50  0001 C CNN
F 3 "" H 3750 3200 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206f1k2/res-aec-q200-couche-epaisse-1k2/dp/2861584?st=Résistance%201,2kohm%201206" H 1625 1700 50  0001 C CNN "RS-1"
	1    3750 3200
	0    -1   1    0   
$EndComp
Wire Wire Line
	3900 3200 3975 3200
Connection ~ 3975 3200
Wire Wire Line
	3400 4950 3400 5150
Connection ~ 3400 5150
Wire Wire Line
	4450 4725 4000 4725
Wire Wire Line
	4000 4725 4000 4800
Connection ~ 4000 4800
Wire Wire Line
	4450 4925 4125 4925
Wire Wire Line
	4125 4925 4125 5150
Wire Wire Line
	4125 5150 4000 5150
Connection ~ 4000 5150
Wire Wire Line
	4450 4475 4450 4525
Wire Wire Line
	4450 4075 4025 4075
Wire Wire Line
	4025 4075 4025 4225
Wire Wire Line
	4025 4225 3500 4225
Wire Wire Line
	3500 4225 3500 3850
Wire Wire Line
	3250 4525 4450 4525
Wire Wire Line
	3375 4275 4450 4275
Connection ~ 3250 4525
$Comp
L Device:LED Dalim1
U 1 1 5D965CDE
P 8850 1200
F 0 "Dalim1" V 8888 1083 50  0000 R CNN
F 1 "LED" V 8797 1083 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8850 1200 50  0001 C CNN
F 3 "~" H 8850 1200 50  0001 C CNN
	1    8850 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R Rled1
U 1 1 5D965EA5
P 8850 1650
F 0 "Rled1" H 8920 1696 50  0000 L CNN
F 1 "2,2k" H 8920 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8780 1650 50  0001 C CNN
F 3 "~" H 8850 1650 50  0001 C CNN
	1    8850 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D9660F6
P 8850 1800
F 0 "#PWR0102" H 8850 1550 50  0001 C CNN
F 1 "GND" H 8850 1650 50  0000 C CNN
F 2 "" H 8850 1800 50  0001 C CNN
F 3 "" H 8850 1800 50  0001 C CNN
	1    8850 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8850 1350 8850 1500
$Comp
L power:+12V #PWR0103
U 1 1 5D968153
P 9250 1150
F 0 "#PWR0103" H 9250 1000 50  0001 C CNN
F 1 "+12V" H 9265 1323 50  0000 C CNN
F 2 "" H 9250 1150 50  0001 C CNN
F 3 "" H 9250 1150 50  0001 C CNN
	1    9250 1150
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5D968188
P 10350 1150
F 0 "#PWR0104" H 10350 1000 50  0001 C CNN
F 1 "+5V" H 10350 1290 50  0000 C CNN
F 2 "" H 10350 1150 50  0001 C CNN
F 3 "" H 10350 1150 50  0001 C CNN
	1    10350 1150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5D9681BD
P 10350 1950
F 0 "#PWR0105" H 10350 1700 50  0001 C CNN
F 1 "GND" H 10350 1800 50  0000 C CNN
F 2 "" H 10350 1950 50  0001 C CNN
F 3 "" H 10350 1950 50  0001 C CNN
	1    10350 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10050 1250 10350 1250
Wire Wire Line
	10350 1250 10350 1150
Wire Wire Line
	9450 1250 9250 1250
Wire Wire Line
	9250 1250 9250 1150
$Comp
L Device:R Rreg1
U 1 1 5D96BDFE
P 10350 1400
F 0 "Rreg1" H 10420 1446 50  0000 L CNN
F 1 "270" H 10420 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 10280 1400 50  0001 C CNN
F 3 "~" H 10350 1400 50  0001 C CNN
	1    10350 1400
	1    0    0    -1  
$EndComp
Connection ~ 10350 1250
$Comp
L Device:R Rreg2
U 1 1 5D96BEE8
P 10350 1700
F 0 "Rreg2" H 10420 1746 50  0000 L CNN
F 1 "820" H 10420 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 10280 1700 50  0001 C CNN
F 3 "~" H 10350 1700 50  0001 C CNN
	1    10350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1550 9750 1550
Connection ~ 10350 1550
Wire Wire Line
	10350 1850 10350 1900
$Comp
L 2:B_Plug_5mm Alim12
U 1 1 5D96FFC2
P 7550 1350
F 0 "Alim12" H 7491 1647 60  0000 C CNN
F 1 "B_Plug_5mm" H 7491 1541 60  0000 C CNN
F 2 "Connector_JST:JST_NV_B02P-NV_1x02_P5.00mm_Vertical" H 7550 1350 60  0001 C CNN
F 3 "" H 7550 1350 60  0000 C CNN
	1    7550 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky MBR1045
U 1 1 5D974571
P 8100 1400
F 0 "MBR1045" H 8100 1184 50  0000 C CNN
F 1 "D_Schottky" H 8100 1275 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220F-2_Vertical" H 8100 1400 50  0001 C CNN
F 3 "~" H 8100 1400 50  0001 C CNN
	1    8100 1400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5D974672
P 7800 1600
F 0 "#PWR0106" H 7800 1350 50  0001 C CNN
F 1 "GND" H 7800 1450 50  0000 C CNN
F 2 "" H 7800 1600 50  0001 C CNN
F 3 "" H 7800 1600 50  0001 C CNN
	1    7800 1600
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 5D9787E7
P 8500 1150
F 0 "#PWR0107" H 8500 1000 50  0001 C CNN
F 1 "+12V" H 8515 1323 50  0000 C CNN
F 2 "" H 8500 1150 50  0001 C CNN
F 3 "" H 8500 1150 50  0001 C CNN
	1    8500 1150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8250 1400 8425 1400
Wire Wire Line
	8500 1400 8500 1150
$Comp
L Device:CP Cdecou1
U 1 1 5D97AB8A
P 7525 3650
F 0 "Cdecou1" H 7643 3696 50  0000 L CNN
F 1 "100µF" H 7643 3605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 7563 3500 50  0001 C CNN
F 3 "~" H 7525 3650 50  0001 C CNN
	1    7525 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cdecou2
U 1 1 5D97AC7F
P 8125 3650
F 0 "Cdecou2" H 8240 3696 50  0000 L CNN
F 1 "100nF" H 8240 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8163 3500 50  0001 C CNN
F 3 "~" H 8125 3650 50  0001 C CNN
	1    8125 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0108
U 1 1 5D97FC5B
P 7825 3400
F 0 "#PWR0108" H 7825 3250 50  0001 C CNN
F 1 "+12V" H 7840 3573 50  0000 C CNN
F 2 "" H 7825 3400 50  0001 C CNN
F 3 "" H 7825 3400 50  0001 C CNN
	1    7825 3400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5D97FC9C
P 7825 3850
F 0 "#PWR0109" H 7825 3600 50  0001 C CNN
F 1 "GND" H 7825 3700 50  0000 C CNN
F 2 "" H 7825 3850 50  0001 C CNN
F 3 "" H 7825 3850 50  0001 C CNN
	1    7825 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7525 3500 7525 3400
Wire Wire Line
	7525 3400 7825 3400
Wire Wire Line
	8125 3500 8125 3400
Wire Wire Line
	8125 3400 7825 3400
Connection ~ 7825 3400
Wire Wire Line
	7525 3800 7525 3850
Wire Wire Line
	7525 3850 7825 3850
Wire Wire Line
	7825 3850 8125 3850
Wire Wire Line
	8125 3850 8125 3800
Connection ~ 7825 3850
$Comp
L Device:C Cdecou3
U 1 1 5D98B457
P 10750 1400
F 0 "Cdecou3" H 10865 1446 50  0000 L CNN
F 1 "100nF" H 10865 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10788 1250 50  0001 C CNN
F 3 "~" H 10750 1400 50  0001 C CNN
	1    10750 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 1250 10350 1250
Wire Wire Line
	10750 1550 10750 1900
Wire Wire Line
	10750 1900 10350 1900
Connection ~ 10350 1900
Wire Wire Line
	10350 1900 10350 1950
Text Notes 6375 1425 0    100  ~ 0
ALIM 12V
$Comp
L Connector:Conn_01x05_Female JmotHall1
U 1 1 5D995A12
P 8075 5275
F 0 "JmotHall1" H 8102 5301 50  0000 L CNN
F 1 "Conn_01x05_Female" H 8102 5210 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 8075 5275 50  0001 C CNN
F 3 "~" H 8075 5275 50  0001 C CNN
	1    8075 5275
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female JmotBobines1
U 1 1 5D995CBB
P 8075 4475
F 0 "JmotBobines1" H 8102 4501 50  0000 L CNN
F 1 "Conn_01x03_Female" H 8102 4410 50  0000 L CNN
F 2 "Connector_JST:JST_NV_B03P-NV_1x03_P5.00mm_Vertical" H 8075 4475 50  0001 C CNN
F 3 "~" H 8075 4475 50  0001 C CNN
	1    8075 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	7875 5475 7775 5475
Wire Wire Line
	7775 5475 7775 5550
Wire Wire Line
	7775 4975 7775 5075
Wire Wire Line
	7775 5075 7875 5075
Wire Wire Line
	6425 4925 6425 5175
Wire Wire Line
	6525 5275 7875 5275
Wire Wire Line
	6525 4825 6525 5275
Wire Wire Line
	5900 4475 7875 4475
Text Notes 8025 4800 0    50   ~ 0
Moteur  Maxon 200142
Text Notes 3725 3100 0    50   ~ 0
Limitation de courant : 2,6A
$Comp
L power:GNDPWR #PWR0110
U 1 1 5D9B9858
P 7350 1625
F 0 "#PWR0110" H 7350 1425 50  0001 C CNN
F 1 "GNDPWR" H 7354 1471 50  0000 C CNN
F 2 "" H 7350 1575 50  0001 C CNN
F 3 "" H 7350 1575 50  0001 C CNN
	1    7350 1625
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7800 1500 7350 1500
Wire Wire Line
	7350 1500 7350 1625
Connection ~ 7800 1500
Wire Wire Line
	7800 1500 7800 1600
$Comp
L Device:R R2
U 1 1 5D9BC191
P 2475 5025
F 0 "R2" H 2545 5071 50  0000 L CNN
F 1 "100k" H 2545 4980 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2405 5025 50  0001 C CNN
F 3 "~" H 2475 5025 50  0001 C CNN
	1    2475 5025
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D9BC25D
P 2975 3250
F 0 "R1" H 3045 3296 50  0000 L CNN
F 1 "100k" H 3045 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2905 3250 50  0001 C CNN
F 3 "~" H 2975 3250 50  0001 C CNN
	1    2975 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2975 3100 2975 2900
$Comp
L power:+5V #PWR0111
U 1 1 5D9D46FD
P 2975 2900
F 0 "#PWR0111" H 2975 2750 50  0001 C CNN
F 1 "+5V" H 2975 3040 50  0000 C CNN
F 2 "" H 2975 2900 50  0001 C CNN
F 3 "" H 2975 2900 50  0001 C CNN
	1    2975 2900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5D9D49B2
P 2475 5275
F 0 "#PWR0112" H 2475 5025 50  0001 C CNN
F 1 "GND" H 2475 5125 50  0000 C CNN
F 2 "" H 2475 5275 50  0001 C CNN
F 3 "" H 2475 5275 50  0001 C CNN
	1    2475 5275
	-1   0    0    -1  
$EndComp
Text Notes 5525 5600 0    60   ~ 0
Résistances de Pull-Up des capteurs Hall\ndéjà présentes dans le moteur
Wire Wire Line
	7875 5175 6425 5175
Wire Wire Line
	6325 5375 7875 5375
Wire Wire Line
	6325 5025 6325 5375
$Comp
L Connector:Conn_01x06_Male Jstm32
U 1 1 5DAFA28D
P 1450 3800
F 0 "Jstm32" H 1556 4178 50  0000 C CNN
F 1 "Conn_01x06_Male" H 1556 4087 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1450 3800 50  0001 C CNN
F 3 "~" H 1450 3800 50  0001 C CNN
	1    1450 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5DB0EF46
P 1750 4250
F 0 "#PWR0113" H 1750 4000 50  0001 C CNN
F 1 "GND" H 1755 4077 50  0000 C CNN
F 2 "" H 1750 4250 50  0001 C CNN
F 3 "" H 1750 4250 50  0001 C CNN
	1    1750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4250 1750 4100
Wire Wire Line
	1750 4100 1650 4100
Text Notes 1175 3850 0    50   ~ 0
DIAG
Text Notes 1225 3650 0    50   ~ 0
EN
Text Notes 1200 3750 0    50   ~ 0
DIR
Text Notes 1125 4050 0    50   ~ 0
FREIN
Text Notes 700  3950 0    50   ~ 0
(VITESSE) TACHO
Wire Wire Line
	3250 4100 3250 4525
Wire Wire Line
	2925 3850 3500 3850
Wire Wire Line
	2925 3700 2925 3725
Wire Wire Line
	2925 3800 2925 3850
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DB42EA6
P 8425 1400
F 0 "#FLG0101" H 8425 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 8425 1574 50  0000 C CNN
F 2 "" H 8425 1400 50  0001 C CNN
F 3 "~" H 8425 1400 50  0001 C CNN
	1    8425 1400
	1    0    0    -1  
$EndComp
Connection ~ 8425 1400
Wire Wire Line
	8425 1400 8500 1400
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5DB432D8
P 7800 1500
F 0 "#FLG0102" H 7800 1575 50  0001 C CNN
F 1 "PWR_FLAG" V 7800 1628 50  0000 L CNN
F 2 "" H 7800 1500 50  0001 C CNN
F 3 "~" H 7800 1500 50  0001 C CNN
	1    7800 1500
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0101
U 1 1 5D9660AF
P 8850 1050
F 0 "#PWR0101" H 8850 900 50  0001 C CNN
F 1 "+12V" H 8865 1223 50  0000 C CNN
F 2 "" H 8850 1050 50  0001 C CNN
F 3 "" H 8850 1050 50  0001 C CNN
	1    8850 1050
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED Denable1
U 1 1 5DB5F2D3
P 1900 4650
F 0 "Denable1" V 1938 4533 50  0000 R CNN
F 1 "LED" V 1847 4533 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1900 4650 50  0001 C CNN
F 3 "~" H 1900 4650 50  0001 C CNN
	1    1900 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R Rled2
U 1 1 5DB76D7F
P 1900 5025
F 0 "Rled2" H 1970 5071 50  0000 L CNN
F 1 "330" H 1970 4980 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1830 5025 50  0001 C CNN
F 3 "~" H 1900 5025 50  0001 C CNN
	1    1900 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4500 1900 3700
Wire Wire Line
	1900 3700 2475 3700
Wire Wire Line
	1900 4800 1900 4875
$Comp
L power:GND #PWR0114
U 1 1 5DB7EFE8
P 1900 5275
F 0 "#PWR0114" H 1900 5025 50  0001 C CNN
F 1 "GND" H 1905 5102 50  0000 C CNN
F 2 "" H 1900 5275 50  0001 C CNN
F 3 "" H 1900 5275 50  0001 C CNN
	1    1900 5275
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5175 1900 5275
Wire Wire Line
	2925 3725 3300 3725
Wire Wire Line
	2475 4875 2475 3700
Connection ~ 2475 3700
Wire Wire Line
	2475 3700 2925 3700
Wire Wire Line
	2475 5175 2475 5275
Text Notes 600  3325 0    100  ~ 0
connecteur STM32
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5DB0DCE1
P 7000 2825
F 0 "H1" H 6950 3025 50  0000 L CNN
F 1 "MountingHole_Pad" H 7350 2900 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 7000 2825 50  0001 C CNN
F 3 "~" H 7000 2825 50  0001 C CNN
	1    7000 2825
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5DB0DF40
P 6825 2825
F 0 "H2" H 6775 3025 50  0000 L CNN
F 1 "MountingHole_Pad" H 7350 2825 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 6825 2825 50  0001 C CNN
F 3 "~" H 6825 2825 50  0001 C CNN
	1    6825 2825
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5DB0DFA2
P 6650 2825
F 0 "H3" H 6600 3025 50  0000 L CNN
F 1 "MountingHole_Pad" H 7350 2750 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 6650 2825 50  0001 C CNN
F 3 "~" H 6650 2825 50  0001 C CNN
	1    6650 2825
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5DB0E00E
P 6475 2825
F 0 "H4" H 6425 3025 50  0000 L CNN
F 1 "MountingHole_Pad" H 7350 2675 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 6475 2825 50  0001 C CNN
F 3 "~" H 6475 2825 50  0001 C CNN
	1    6475 2825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5DB0E0DF
P 6725 3050
F 0 "#PWR0115" H 6725 2800 50  0001 C CNN
F 1 "GND" H 6730 2877 50  0000 C CNN
F 2 "" H 6725 3050 50  0001 C CNN
F 3 "" H 6725 3050 50  0001 C CNN
	1    6725 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2925 6825 2925
Connection ~ 6650 2925
Wire Wire Line
	6650 2925 6475 2925
Connection ~ 6825 2925
Wire Wire Line
	6825 2925 6725 2925
Wire Wire Line
	6725 2925 6725 3050
Connection ~ 6725 2925
Wire Wire Line
	6725 2925 6650 2925
$Comp
L Regulator_Linear:LM317_3PinPackage Ureg1
U 1 1 5DB0EFB2
P 9750 1250
F 0 "Ureg1" H 9750 1492 50  0000 C CNN
F 1 "LM317_3PinPackage" H 9750 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 9750 1500 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 9750 1250 50  0001 C CNN
	1    9750 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4375 7550 4375
Wire Wire Line
	7550 4375 7550 4575
Wire Wire Line
	7550 4575 7875 4575
Wire Wire Line
	7625 4375 7625 4525
Wire Wire Line
	7625 4525 6325 4525
Wire Wire Line
	6325 4525 6325 4575
Wire Wire Line
	6325 4575 5900 4575
Wire Wire Line
	7625 4375 7875 4375
Text Notes 7125 900  0    50   ~ 0
diode de protection contre les\ninversions de polarité de l'alim
Wire Wire Line
	7650 1300 7800 1300
Wire Wire Line
	7800 1300 7800 1500
Wire Wire Line
	7950 1400 7650 1400
Wire Wire Line
	1900 3700 1900 3600
Wire Wire Line
	1900 3600 1650 3600
Connection ~ 1900 3700
Wire Wire Line
	1650 3700 1800 3700
Wire Wire Line
	1800 3700 1800 3800
Wire Wire Line
	1800 3800 2925 3800
Wire Wire Line
	1650 3800 1725 3800
Wire Wire Line
	1725 3800 1725 3525
Wire Wire Line
	1725 3525 3850 3525
Wire Wire Line
	3850 3525 3850 3725
Wire Wire Line
	3375 4000 3375 4275
Wire Wire Line
	1650 4000 2975 4000
Wire Wire Line
	2975 3400 2975 4000
Connection ~ 2975 4000
Wire Wire Line
	2975 4000 3375 4000
Wire Wire Line
	2150 4100 2150 3900
Wire Wire Line
	2150 3900 1650 3900
Wire Wire Line
	2150 4100 3250 4100
$EndSCHEMATC
