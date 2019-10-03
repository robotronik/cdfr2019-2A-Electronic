EESchema Schematic File Version 4
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
$Comp
L Propulsion_control:L6235D U5
U 1 1 59613948
P 3525 2575
F 0 "U5" H 3525 2575 60  0000 C CNN
F 1 "L6235D" H 3500 3425 60  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 3225 2825 60  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/l6235.pdf" H 3225 2825 60  0001 C CNN
F 4 "Contact ST" H 0   0   50  0001 C CNN "RS-1"
	1    3525 2575
	-1   0    0    -1  
$EndComp
$Comp
L 2:Maxon-200142 K1
U 1 1 59614717
P 6625 2725
F 0 "K1" H 6525 3075 60  0000 C CNN
F 1 "Maxon-200142" H 6575 1475 60  0000 C CNN
F 2 "maxon:Molex-52610-1133" H 6125 2825 60  0001 C CNN
F 3 "https://eu.mouser.com/datasheet/2/276/0526101133_FFC_FPC_CONNECTORS-295480.pdf" H 6125 2825 60  0001 C CNN
F 4 "https://eu.mouser.com/ProductDetail/Molex/52610-1133?qs=rw2VfpiI%2fsNCA0piDQHMcg==" H 0   0   50  0001 C CNN "RS-1"
	1    6625 2725
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 59615067
P 1975 1500
F 0 "#PWR04" H 1975 1350 50  0001 C CNN
F 1 "+5V" H 1975 1640 50  0000 C CNN
F 2 "" H 1975 1500 50  0001 C CNN
F 3 "" H 1975 1500 50  0001 C CNN
	1    1975 1500
	-1   0    0    -1  
$EndComp
$Comp
L Device:C Coff1
U 1 1 59618797
P 2225 3100
F 0 "Coff1" V 2175 3175 50  0000 L CNN
F 1 "1n" V 2175 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2263 2950 50  0001 C CNN
F 3 "" H 2225 3100 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y102kxxpw1bc/cond-1000pf-25v-10-x7r-1206/dp/2896635?st=capacité%201n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    2225 3100
	0    -1   1    0   
$EndComp
$Comp
L Device:R Roff1
U 1 1 59618982
P 2225 3250
F 0 "Roff1" V 2175 3525 50  0000 C CNN
F 1 "33k" V 2225 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2155 3250 50  0001 C CNN
F 3 "" H 2225 3250 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206j33k/res-aec-q200-couche-epaisse-33k/dp/2861959?st=Résistance%2033kohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    2225 3250
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 596189C5
P 1775 3450
F 0 "#PWR03" H 1775 3200 50  0001 C CNN
F 1 "GND" H 1775 3300 50  0000 C CNN
F 2 "" H 1775 3450 50  0001 C CNN
F 3 "" H 1775 3450 50  0001 C CNN
	1    1775 3450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R Rtacho1
U 1 1 5962811E
P 1475 2825
F 0 "Rtacho1" V 1555 2825 50  0000 C CNN
F 1 "1k" V 1475 2825 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1405 2825 50  0001 C CNN
F 3 "" H 1475 2825 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206j1k0/res-aec-q200-couche-epaisse-1k/dp/2861950?st=Résistance%201kohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    1475 2825
	0    -1   1    0   
$EndComp
Text Notes 3000 1175 0    60   ~ 0
ATTENTION : régler vref et rsense
$Comp
L power:+12V #PWR08
U 1 1 5C24AF7A
P 4625 1725
F 0 "#PWR08" H 4625 1575 50  0001 C CNN
F 1 "+12V" H 4640 1898 50  0000 C CNN
F 2 "" H 4625 1725 50  0001 C CNN
F 3 "" H 4625 1725 50  0001 C CNN
	1    4625 1725
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4625 1725 4400 1725
Wire Wire Line
	4275 1825 4400 1825
Wire Wire Line
	4400 1825 4400 1725
Connection ~ 4400 1725
Wire Wire Line
	4400 1725 4275 1725
$Comp
L Device:D_ALT D1
U 1 1 5C25656E
P 5150 1875
F 0 "D1" V 5175 1750 50  0000 C CNN
F 1 "1N4148" V 5100 1675 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 5150 1875 50  0001 C CNN
F 3 "" H 5150 1875 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/1n4148tr/diode-de-redressement-standard/dp/1469384?st=1N4148" H 0   0   50  0001 C CNN "RS-1"
	1    5150 1875
	0    1    -1   0   
$EndComp
$Comp
L Device:D_ALT D2
U 1 1 5C2565F6
P 5150 2175
F 0 "D2" V 5175 2050 50  0000 C CNN
F 1 "1N4148" V 5100 1975 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 5150 2175 50  0001 C CNN
F 3 "" H 5150 2175 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/1n4148tr/diode-de-redressement-standard/dp/1469384?st=1N4148" H 0   0   50  0001 C CNN "RS-1"
	1    5150 2175
	0    1    -1   0   
$EndComp
$Comp
L Device:R Rp1
U 1 1 5C25CBC9
P 4425 2025
F 0 "Rp1" V 4350 2025 50  0000 C CNN
F 1 "100" V 4425 2025 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4355 2025 50  0001 C CNN
F 3 "~" H 4425 2025 50  0001 C CNN
F 4 "https://fr.farnell.com/multicomp/mcwr12x1000ftl/resistance-thick-film-100-ohm/dp/2447454?st=Résistance%20100ohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    4425 2025
	0    -1   1    0   
$EndComp
$Comp
L Device:C Cp1
U 1 1 5C25CCEB
P 4725 2025
F 0 "Cp1" V 4600 2025 50  0000 C CNN
F 1 "10n" V 4850 2025 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4763 1875 50  0001 C CNN
F 3 "~" H 4725 2025 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y103kxjcw1bc/cond-0-01-f-16v-10-x7r-1206/dp/2896639?st=capacité%2010n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    4725 2025
	0    -1   1    0   
$EndComp
$Comp
L Device:C Cboot1
U 1 1 5C25D096
P 5475 2175
F 0 "Cboot1" H 5300 2275 50  0000 C CNN
F 1 "220n" H 5625 2275 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5513 2025 50  0001 C CNN
F 3 "~" H 5475 2175 50  0001 C CNN
F 4 "https://fr.farnell.com/yageo/cc1206krx7r8bb224/cond-0-22-f-25v-10-x7r-1206/dp/644353?st=condensateur%20220n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    5475 2175
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4875 2025 5150 2025
Connection ~ 5150 2025
Wire Wire Line
	4275 2225 4700 2225
Wire Wire Line
	4700 2225 4700 2325
Wire Wire Line
	4700 2325 5150 2325
Wire Wire Line
	5475 2325 5150 2325
Connection ~ 5150 2325
Wire Wire Line
	4625 1725 5150 1725
Connection ~ 4625 1725
Wire Wire Line
	5150 1725 5475 1725
Wire Wire Line
	5475 1725 5475 2025
Connection ~ 5150 1725
$Comp
L Device:R Rsense1
U 1 1 5C27D8F4
P 4875 2475
F 0 "Rsense1" V 4800 2475 50  0000 C CNN
F 1 "0.3" V 4875 2475 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4805 2475 50  0001 C CNN
F 3 "~" H 4875 2475 50  0001 C CNN
F 4 "https://fr.farnell.com/bourns/crl1206-jw-r300elf/res-couche-epaisse-0-3r-5-0-25w/dp/2328143?st=Résistance%200.3ohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    4875 2475
	0    -1   1    0   
$EndComp
$Comp
L power:GNDPWR #PWR09
U 1 1 5C27DA4F
P 5025 2475
F 0 "#PWR09" H 5025 2275 50  0001 C CNN
F 1 "GNDPWR" H 5029 2321 50  0000 C CNN
F 2 "" H 5025 2425 50  0001 C CNN
F 3 "" H 5025 2425 50  0001 C CNN
	1    5025 2475
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4275 2375 4275 2475
Wire Wire Line
	4275 2475 4725 2475
Connection ~ 4275 2475
Text Label 4275 2675 0    50   ~ 0
Out_11
Text Label 4275 2775 0    50   ~ 0
Out_21
Text Label 4275 2875 0    50   ~ 0
Out_31
Text Label 4275 3125 0    50   ~ 0
Hall_sensor_11
Text Label 4275 3225 0    50   ~ 0
Hall_sensor_21
Text Label 4275 3325 0    50   ~ 0
Hall_sensor_31
Wire Wire Line
	4275 2675 6025 2675
Wire Wire Line
	6025 2675 6025 2775
Connection ~ 6025 2675
Wire Wire Line
	4275 2775 5925 2775
Wire Wire Line
	5925 2775 5925 2925
Wire Wire Line
	5925 2925 6025 2925
Wire Wire Line
	6025 2925 6025 3025
Connection ~ 6025 2925
Wire Wire Line
	4275 2875 5850 2875
Wire Wire Line
	5850 2875 5850 3175
Wire Wire Line
	5850 3175 6025 3175
Wire Wire Line
	6025 3175 6025 3275
Connection ~ 6025 3175
$Comp
L power:+5V #PWR011
U 1 1 5C37C79F
P 6025 2525
F 0 "#PWR011" H 6025 2375 50  0001 C CNN
F 1 "+5V" H 6025 2665 50  0000 C CNN
F 2 "" H 6025 2525 50  0001 C CNN
F 3 "" H 6025 2525 50  0001 C CNN
	1    6025 2525
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5C37CB04
P 3525 3825
F 0 "#PWR07" H 3525 3575 50  0001 C CNN
F 1 "GND" H 3525 3675 50  0000 C CNN
F 2 "" H 3525 3825 50  0001 C CNN
F 3 "" H 3525 3825 50  0001 C CNN
	1    3525 3825
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4275 3125 4900 3125
Wire Wire Line
	4900 3125 4900 3475
Wire Wire Line
	4800 3575 4800 3225
Wire Wire Line
	4800 3225 4275 3225
Wire Wire Line
	4700 3675 4700 3325
Wire Wire Line
	4275 3325 4700 3325
$Comp
L power:GND #PWR012
U 1 1 5C4E4058
P 6025 3875
F 0 "#PWR012" H 6025 3625 50  0001 C CNN
F 1 "GND" H 6025 3725 50  0000 C CNN
F 2 "" H 6025 3875 50  0001 C CNN
F 3 "" H 6025 3875 50  0001 C CNN
	1    6025 3875
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3525 3825 3525 3725
Wire Wire Line
	3525 3725 3475 3725
Wire Wire Line
	3475 3725 3375 3725
Connection ~ 3475 3725
Wire Wire Line
	3525 3725 3575 3725
Connection ~ 3525 3725
Wire Wire Line
	3575 3725 3675 3725
Connection ~ 3575 3725
$Comp
L Device:R Ren1
U 1 1 5C50F6C3
P 1825 2025
F 0 "Ren1" V 1750 2025 50  0000 C CNN
F 1 "100k" V 1825 2025 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1755 2025 50  0001 C CNN
F 3 "~" H 1825 2025 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206j100k/resi-auto-couche-epaisse-100k/dp/2861962?st=Résistance%20100kohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    1825 2025
	0    -1   1    0   
$EndComp
$Comp
L Device:C Cen1
U 1 1 5C50F867
P 2225 2175
F 0 "Cen1" H 2425 2175 50  0000 C CNN
F 1 "5.6n" H 2050 2175 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2263 2025 50  0001 C CNN
F 3 "~" H 2225 2175 50  0001 C CNN
F 4 "https://fr.farnell.com/multicomp/mc1206b562k500ct/cond-5600pf-50v-10-x7r-1206/dp/1759347?st=capacité%205.6n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    2225 2175
	1    0    0    1   
$EndComp
Wire Wire Line
	1975 2025 2225 2025
Wire Wire Line
	2225 2025 2825 2025
Connection ~ 2225 2025
Wire Wire Line
	2825 2025 2825 2125
Connection ~ 2825 2025
$Comp
L power:GND #PWR05
U 1 1 5C531794
P 2225 2325
F 0 "#PWR05" H 2225 2075 50  0001 C CNN
F 1 "GND" H 2225 2175 50  0000 C CNN
F 2 "" H 2225 2325 50  0001 C CNN
F 3 "" H 2225 2325 50  0001 C CNN
	1    2225 2325
	-1   0    0    -1  
$EndComp
Text HLabel 1425 2025 0    60   Input ~ 0
EN_1
Wire Wire Line
	2075 3100 2075 3250
Connection ~ 2075 3250
Wire Wire Line
	2375 3100 2375 3250
$Comp
L Device:R Rpul1
U 1 1 5C60D630
P 2225 3450
F 0 "Rpul1" V 2175 3725 50  0000 C CNN
F 1 "47k" V 2225 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2155 3450 50  0001 C CNN
F 3 "" H 2225 3450 50  0001 C CNN
F 4 "https://fr.farnell.com/multicomp/mcsr12x4702ftl/res-ceramique-47k-1-0-25w-1206/dp/2074659?st=Résistance%2047kohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    2225 3450
	0    -1   1    0   
$EndComp
$Comp
L Device:C Cpul1
U 1 1 5C60D6B9
P 2225 3600
F 0 "Cpul1" V 2275 3325 50  0000 L CNN
F 1 "10n" V 2275 3675 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2263 3450 50  0001 C CNN
F 3 "" H 2225 3600 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y103kxjcw1bc/cond-0-01-f-16v-10-x7r-1206/dp/2896639?st=capacité%2010n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    2225 3600
	0    -1   1    0   
$EndComp
Wire Wire Line
	2375 3600 2375 3450
Wire Wire Line
	2075 3600 2075 3450
Wire Wire Line
	2075 3250 1775 3250
Wire Wire Line
	1775 3450 2075 3450
Connection ~ 2075 3450
Text HLabel 1425 2275 0    60   Input ~ 0
BRAKE_1
$Comp
L power:+5V #PWR02
U 1 1 5C656252
P 1325 2825
F 0 "#PWR02" H 1325 2675 50  0001 C CNN
F 1 "+5V" H 1325 2975 50  0000 C CNN
F 2 "" H 1325 2825 50  0001 C CNN
F 3 "" H 1325 2825 50  0001 C CNN
	1    1325 2825
	-1   0    0    -1  
$EndComp
Text HLabel 1425 2150 0    60   Input ~ 0
DIR_1
$Comp
L Device:R Rref2
U 1 1 5C65711B
P 2525 1650
F 0 "Rref2" H 2375 1525 50  0000 C CNN
F 1 "220" V 2525 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2455 1650 50  0001 C CNN
F 3 "" H 2525 1650 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206j220r/resi-auto-couche-epaisse-220r/dp/2861946?st=Résistance%20220ohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    2525 1650
	-1   0    0    -1  
$EndComp
$Comp
L Device:C Cref1
U 1 1 5C657256
P 2350 1650
F 0 "Cref1" H 2375 1550 50  0000 L CNN
F 1 "10n" H 2400 1475 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2388 1500 50  0001 C CNN
F 3 "" H 2350 1650 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y103kxjcw1bc/cond-0-01-f-16v-10-x7r-1206/dp/2896639?st=capacité%2010n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    2350 1650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C65779B
P 2525 1800
F 0 "#PWR06" H 2525 1550 50  0001 C CNN
F 1 "GND" H 2525 1650 50  0000 C CNN
F 2 "" H 2525 1800 50  0001 C CNN
F 3 "" H 2525 1800 50  0001 C CNN
	1    2525 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 1500 2525 1500
Connection ~ 2525 1500
Wire Wire Line
	2350 1800 2525 1800
Connection ~ 2525 1800
Wire Wire Line
	2825 1725 2825 1500
Wire Wire Line
	2825 1500 2525 1500
$Comp
L Device:R Rref1
U 1 1 5C67F19A
P 2125 1500
F 0 "Rref1" V 2205 1500 50  0000 C CNN
F 1 "1.2k" V 2125 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2055 1500 50  0001 C CNN
F 3 "" H 2125 1500 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206f1k2/res-aec-q200-couche-epaisse-1k2/dp/2861584?st=Résistance%201,2kohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    2125 1500
	0    -1   1    0   
$EndComp
Wire Wire Line
	2275 1500 2350 1500
Connection ~ 2350 1500
Wire Wire Line
	1775 3250 1775 3450
Connection ~ 1775 3450
Wire Wire Line
	2825 3025 2375 3025
Wire Wire Line
	2375 3025 2375 3100
Connection ~ 2375 3100
Wire Wire Line
	2825 3225 2500 3225
Wire Wire Line
	2500 3225 2500 3450
Wire Wire Line
	2500 3450 2375 3450
Connection ~ 2375 3450
Text HLabel 1400 2400 0    60   Output ~ 0
TACHO_1
Wire Wire Line
	2825 2775 2825 2825
Wire Wire Line
	1675 2025 1425 2025
Wire Wire Line
	2825 2375 2400 2375
Wire Wire Line
	2400 2375 2400 2525
Wire Wire Line
	2400 2525 1875 2525
Wire Wire Line
	1875 2525 1875 2150
Wire Wire Line
	1875 2150 1425 2150
Wire Wire Line
	1625 2825 2825 2825
Wire Wire Line
	1425 2275 1750 2275
Wire Wire Line
	1750 2275 1750 2575
Wire Wire Line
	1750 2575 2825 2575
Wire Wire Line
	1625 2400 1625 2825
Connection ~ 1625 2825
Wire Wire Line
	1400 2400 1625 2400
Text HLabel 1425 1900 0    60   Input ~ 0
DIAG_1
Wire Wire Line
	2225 2025 2225 1900
Wire Wire Line
	2225 1900 1425 1900
Wire Wire Line
	4900 3475 6025 3475
Wire Wire Line
	4800 3575 6025 3575
Wire Wire Line
	4700 3675 6025 3675
Text Notes 3900 3900 0    60   ~ 0
Résistances de Pull-Up des capteurs Hall\ndéjà présentes dans le moteur
$EndSCHEMATC
