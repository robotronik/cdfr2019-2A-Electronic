EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 5
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
Text Notes 600  750  0    60   ~ 0
26
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
$Comp
L Propulsion_control:L6235D U6
U 1 1 5C84FE98
P 11475 2750
F 0 "U6" H 11475 2750 60  0000 C CNN
F 1 "L6235D" H 11450 3600 60  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 11175 3000 60  0001 C CNN
F 3 "" H 11175 3000 60  0001 C CNN
F 4 "Contact ST" H 0   0   50  0001 C CNN "RS-1"
	1    11475 2750
	-1   0    0    -1  
$EndComp
$Comp
L 2:Maxon-200142 K2
U 1 1 5C84FE9F
P 14575 2900
F 0 "K2" H 14475 3250 60  0000 C CNN
F 1 "Maxon-200142" H 14525 1650 60  0000 C CNN
F 2 "maxon:Molex-52610-1133" H 14075 3000 60  0001 C CNN
F 3 "https://eu.mouser.com/datasheet/2/276/0526101133_FFC_FPC_CONNECTORS-295480.pdf" H 14075 3000 60  0001 C CNN
F 4 "https://eu.mouser.com/ProductDetail/Molex/52610-1133?qs=rw2VfpiI%2fsNCA0piDQHMcg==" H 0   0   50  0001 C CNN "RS-1"
	1    14575 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 5C84FEA6
P 9925 1675
F 0 "#PWR015" H 9925 1525 50  0001 C CNN
F 1 "+5V" H 9925 1815 50  0000 C CNN
F 2 "" H 9925 1675 50  0001 C CNN
F 3 "" H 9925 1675 50  0001 C CNN
	1    9925 1675
	-1   0    0    -1  
$EndComp
$Comp
L Device:C Coff2
U 1 1 5C84FEAC
P 10175 3275
F 0 "Coff2" V 10125 3350 50  0000 L CNN
F 1 "1n" V 10125 3625 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10213 3125 50  0001 C CNN
F 3 "" H 10175 3275 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y102kxxpw1bc/cond-1000pf-25v-10-x7r-1206/dp/2896635?st=capacité%201n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    10175 3275
	0    -1   1    0   
$EndComp
$Comp
L Device:R Roff2
U 1 1 5C84FEB3
P 10175 3425
F 0 "Roff2" V 10125 3700 50  0000 C CNN
F 1 "33k" V 10175 3425 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 10105 3425 50  0001 C CNN
F 3 "" H 10175 3425 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206j33k/res-aec-q200-couche-epaisse-33k/dp/2861959?st=Résistance%2033kohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    10175 3425
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5C84FEBA
P 9725 3625
F 0 "#PWR014" H 9725 3375 50  0001 C CNN
F 1 "GND" H 9725 3475 50  0000 C CNN
F 2 "" H 9725 3625 50  0001 C CNN
F 3 "" H 9725 3625 50  0001 C CNN
	1    9725 3625
	-1   0    0    -1  
$EndComp
$Comp
L Device:R Rtacho2
U 1 1 5C84FEC0
P 9425 3000
F 0 "Rtacho2" V 9505 3000 50  0000 C CNN
F 1 "1k" V 9425 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9355 3000 50  0001 C CNN
F 3 "" H 9425 3000 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206j1k0/res-aec-q200-couche-epaisse-1k/dp/2861950?st=Résistance%201kohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    9425 3000
	0    -1   1    0   
$EndComp
Text Notes 10950 1350 0    60   ~ 0
ATTENTION : régler vref et rsense
$Comp
L power:+12V #PWR019
U 1 1 5C84FEC8
P 12575 1900
F 0 "#PWR019" H 12575 1750 50  0001 C CNN
F 1 "+12V" H 12590 2073 50  0000 C CNN
F 2 "" H 12575 1900 50  0001 C CNN
F 3 "" H 12575 1900 50  0001 C CNN
	1    12575 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12575 1900 12350 1900
Wire Wire Line
	12225 2000 12350 2000
Wire Wire Line
	12350 2000 12350 1900
Connection ~ 12350 1900
Wire Wire Line
	12350 1900 12225 1900
$Comp
L Device:D_ALT D3
U 1 1 5C84FED3
P 13100 2050
F 0 "D3" V 13125 1925 50  0000 C CNN
F 1 "1N4148" V 13050 1850 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 13100 2050 50  0001 C CNN
F 3 "" H 13100 2050 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/1n4148tr/diode-de-redressement-standard/dp/1469384?st=1N4148" H 0   0   50  0001 C CNN "RS-1"
	1    13100 2050
	0    1    -1   0   
$EndComp
$Comp
L Device:D_ALT D4
U 1 1 5C84FEDA
P 13100 2350
F 0 "D4" V 13125 2225 50  0000 C CNN
F 1 "1N4148" V 13050 2150 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" H 13100 2350 50  0001 C CNN
F 3 "" H 13100 2350 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/1n4148tr/diode-de-redressement-standard/dp/1469384?st=1N4148" H 0   0   50  0001 C CNN "RS-1"
	1    13100 2350
	0    1    -1   0   
$EndComp
$Comp
L Device:R Rp2
U 1 1 5C84FEE1
P 12375 2200
F 0 "Rp2" V 12300 2200 50  0000 C CNN
F 1 "100" V 12375 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 12305 2200 50  0001 C CNN
F 3 "~" H 12375 2200 50  0001 C CNN
F 4 "https://fr.farnell.com/multicomp/mcwr12x1000ftl/resistance-thick-film-100-ohm/dp/2447454?st=Résistance%20100ohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    12375 2200
	0    -1   1    0   
$EndComp
$Comp
L Device:C Cp2
U 1 1 5C84FEE8
P 12675 2200
F 0 "Cp2" V 12550 2200 50  0000 C CNN
F 1 "10n" V 12800 2200 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 12713 2050 50  0001 C CNN
F 3 "~" H 12675 2200 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y103kxjcw1bc/cond-0-01-f-16v-10-x7r-1206/dp/2896639?st=capacité%2010n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    12675 2200
	0    -1   1    0   
$EndComp
$Comp
L Device:C Cboot2
U 1 1 5C84FEEF
P 13425 2350
F 0 "Cboot2" H 13250 2450 50  0000 C CNN
F 1 "220n" H 13575 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 13463 2200 50  0001 C CNN
F 3 "~" H 13425 2350 50  0001 C CNN
F 4 "https://fr.farnell.com/yageo/cc1206krx7r8bb224/cond-0-22-f-25v-10-x7r-1206/dp/644353?st=condensateur%20220n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    13425 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12825 2200 13100 2200
Connection ~ 13100 2200
Wire Wire Line
	12225 2400 12650 2400
Wire Wire Line
	12650 2400 12650 2500
Wire Wire Line
	12650 2500 13100 2500
Wire Wire Line
	13425 2500 13100 2500
Connection ~ 13100 2500
Wire Wire Line
	12575 1900 13100 1900
Connection ~ 12575 1900
Wire Wire Line
	13100 1900 13425 1900
Wire Wire Line
	13425 1900 13425 2200
Connection ~ 13100 1900
$Comp
L Device:R Rsense2
U 1 1 5C84FF02
P 12825 2650
F 0 "Rsense2" V 12750 2650 50  0000 C CNN
F 1 "0.3" V 12825 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 12755 2650 50  0001 C CNN
F 3 "~" H 12825 2650 50  0001 C CNN
F 4 "https://fr.farnell.com/bourns/crl1206-jw-r300elf/res-couche-epaisse-0-3r-5-0-25w/dp/2328143?st=Résistance%200.3ohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    12825 2650
	0    -1   1    0   
$EndComp
$Comp
L power:GNDPWR #PWR020
U 1 1 5C84FF09
P 12975 2650
F 0 "#PWR020" H 12975 2450 50  0001 C CNN
F 1 "GNDPWR" H 12979 2496 50  0000 C CNN
F 2 "" H 12975 2600 50  0001 C CNN
F 3 "" H 12975 2600 50  0001 C CNN
	1    12975 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12225 2550 12225 2650
Wire Wire Line
	12225 2650 12675 2650
Connection ~ 12225 2650
Text Label 12225 2850 0    50   ~ 0
Out_12
Text Label 12225 2950 0    50   ~ 0
Out_22
Text Label 12225 3050 0    50   ~ 0
Out_33
Text Label 12225 3300 0    50   ~ 0
Hall_sensor_12
Text Label 12225 3400 0    50   ~ 0
Hall_sensor_22
Text Label 12225 3500 0    50   ~ 0
Hall_sensor_32
Wire Wire Line
	12225 2850 13975 2850
Wire Wire Line
	13975 2850 13975 2950
Connection ~ 13975 2850
Wire Wire Line
	12225 2950 13875 2950
Wire Wire Line
	13875 2950 13875 3100
Wire Wire Line
	13875 3100 13975 3100
Wire Wire Line
	13975 3100 13975 3200
Connection ~ 13975 3100
Wire Wire Line
	12225 3050 13800 3050
Wire Wire Line
	13800 3050 13800 3350
Wire Wire Line
	13800 3350 13975 3350
Wire Wire Line
	13975 3350 13975 3450
Connection ~ 13975 3350
$Comp
L power:+5V #PWR022
U 1 1 5C84FF25
P 13975 2700
F 0 "#PWR022" H 13975 2550 50  0001 C CNN
F 1 "+5V" H 13975 2840 50  0000 C CNN
F 2 "" H 13975 2700 50  0001 C CNN
F 3 "" H 13975 2700 50  0001 C CNN
	1    13975 2700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5C84FF2B
P 11475 4000
F 0 "#PWR018" H 11475 3750 50  0001 C CNN
F 1 "GND" H 11475 3850 50  0000 C CNN
F 2 "" H 11475 4000 50  0001 C CNN
F 3 "" H 11475 4000 50  0001 C CNN
	1    11475 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12225 3300 12850 3300
Wire Wire Line
	12850 3300 12850 3650
Wire Wire Line
	12750 3750 12750 3400
Wire Wire Line
	12750 3400 12225 3400
Wire Wire Line
	12650 3850 12650 3500
Wire Wire Line
	12225 3500 12650 3500
$Comp
L power:GND #PWR023
U 1 1 5C84FF61
P 13975 4050
F 0 "#PWR023" H 13975 3800 50  0001 C CNN
F 1 "GND" H 13975 3900 50  0000 C CNN
F 2 "" H 13975 4050 50  0001 C CNN
F 3 "" H 13975 4050 50  0001 C CNN
	1    13975 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11475 4000 11475 3900
Wire Wire Line
	11475 3900 11425 3900
Wire Wire Line
	11425 3900 11325 3900
Connection ~ 11425 3900
Wire Wire Line
	11475 3900 11525 3900
Connection ~ 11475 3900
Wire Wire Line
	11525 3900 11625 3900
Connection ~ 11525 3900
$Comp
L Device:R Ren2
U 1 1 5C84FF6F
P 9775 2200
F 0 "Ren2" V 9700 2200 50  0000 C CNN
F 1 "100k" V 9775 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 9705 2200 50  0001 C CNN
F 3 "~" H 9775 2200 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206j100k/resi-auto-couche-epaisse-100k/dp/2861962?st=Résistance%20100kohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    9775 2200
	0    -1   1    0   
$EndComp
$Comp
L Device:C Cen2
U 1 1 5C84FF76
P 10175 2350
F 0 "Cen2" H 10375 2350 50  0000 C CNN
F 1 "5.6n" H 10000 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10213 2200 50  0001 C CNN
F 3 "~" H 10175 2350 50  0001 C CNN
F 4 "https://fr.farnell.com/multicomp/mc1206b562k500ct/cond-5600pf-50v-10-x7r-1206/dp/1759347?st=capacité%205.6n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    10175 2350
	1    0    0    1   
$EndComp
Wire Wire Line
	9925 2200 10175 2200
Wire Wire Line
	10175 2200 10775 2200
Connection ~ 10175 2200
Wire Wire Line
	10775 2200 10775 2300
Connection ~ 10775 2200
$Comp
L power:GND #PWR016
U 1 1 5C84FF82
P 10175 2500
F 0 "#PWR016" H 10175 2250 50  0001 C CNN
F 1 "GND" H 10175 2350 50  0000 C CNN
F 2 "" H 10175 2500 50  0001 C CNN
F 3 "" H 10175 2500 50  0001 C CNN
	1    10175 2500
	-1   0    0    -1  
$EndComp
Text HLabel 9375 2200 0    60   Input ~ 0
EN_2
Wire Wire Line
	10025 3275 10025 3425
Connection ~ 10025 3425
Wire Wire Line
	10325 3275 10325 3425
$Comp
L Device:R Rpul2
U 1 1 5C84FF8C
P 10175 3625
F 0 "Rpul2" V 10125 3900 50  0000 C CNN
F 1 "47k" V 10175 3625 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 10105 3625 50  0001 C CNN
F 3 "" H 10175 3625 50  0001 C CNN
F 4 "https://fr.farnell.com/multicomp/mcsr12x4702ftl/res-ceramique-47k-1-0-25w-1206/dp/2074659?st=Résistance%2047kohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    10175 3625
	0    -1   1    0   
$EndComp
$Comp
L Device:C Cpul2
U 1 1 5C84FF93
P 10175 3775
F 0 "Cpul2" V 10225 3500 50  0000 L CNN
F 1 "10n" V 10225 3850 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10213 3625 50  0001 C CNN
F 3 "" H 10175 3775 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y103kxjcw1bc/cond-0-01-f-16v-10-x7r-1206/dp/2896639?st=capacité%2010n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    10175 3775
	0    -1   1    0   
$EndComp
Wire Wire Line
	10325 3775 10325 3625
Wire Wire Line
	10025 3775 10025 3625
Wire Wire Line
	10025 3425 9725 3425
Wire Wire Line
	9725 3625 10025 3625
Connection ~ 10025 3625
Text HLabel 9375 2450 0    60   Input ~ 0
BRAKE_2
$Comp
L power:+5V #PWR013
U 1 1 5C84FFA0
P 9275 3000
F 0 "#PWR013" H 9275 2850 50  0001 C CNN
F 1 "+5V" H 9275 3150 50  0000 C CNN
F 2 "" H 9275 3000 50  0001 C CNN
F 3 "" H 9275 3000 50  0001 C CNN
	1    9275 3000
	-1   0    0    -1  
$EndComp
Text HLabel 9375 2325 0    60   Input ~ 0
DIR_2
$Comp
L Device:R Rref4
U 1 1 5C84FFA7
P 10475 1825
F 0 "Rref4" H 10325 1700 50  0000 C CNN
F 1 "220" V 10475 1825 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 10405 1825 50  0001 C CNN
F 3 "" H 10475 1825 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206j220r/resi-auto-couche-epaisse-220r/dp/2861946?st=Résistance%20220ohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    10475 1825
	-1   0    0    -1  
$EndComp
$Comp
L Device:C Cref2
U 1 1 5C84FFAE
P 10300 1825
F 0 "Cref2" H 10325 1725 50  0000 L CNN
F 1 "10n" H 10350 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10338 1675 50  0001 C CNN
F 3 "" H 10300 1825 50  0001 C CNN
F 4 "https://fr.farnell.com/vishay/vj1206y103kxjcw1bc/cond-0-01-f-16v-10-x7r-1206/dp/2896639?st=capacité%2010n%201206" H 0   0   50  0001 C CNN "RS-1"
	1    10300 1825
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5C84FFB5
P 10475 1975
F 0 "#PWR017" H 10475 1725 50  0001 C CNN
F 1 "GND" H 10475 1825 50  0000 C CNN
F 2 "" H 10475 1975 50  0001 C CNN
F 3 "" H 10475 1975 50  0001 C CNN
	1    10475 1975
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10300 1675 10475 1675
Connection ~ 10475 1675
Wire Wire Line
	10300 1975 10475 1975
Connection ~ 10475 1975
Wire Wire Line
	10775 1900 10775 1675
Wire Wire Line
	10775 1675 10475 1675
$Comp
L Device:R Rref3
U 1 1 5C84FFC1
P 10075 1675
F 0 "Rref3" V 10155 1675 50  0000 C CNN
F 1 "1.2k" V 10075 1675 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 10005 1675 50  0001 C CNN
F 3 "" H 10075 1675 50  0001 C CNN
F 4 "https://fr.farnell.com/te-connectivity/crgcq1206f1k2/res-aec-q200-couche-epaisse-1k2/dp/2861584?st=Résistance%201,2kohm%201206" H 0   0   50  0001 C CNN "RS-1"
	1    10075 1675
	0    -1   1    0   
$EndComp
Wire Wire Line
	10225 1675 10300 1675
Connection ~ 10300 1675
Wire Wire Line
	9725 3425 9725 3625
Connection ~ 9725 3625
Wire Wire Line
	10775 3200 10325 3200
Wire Wire Line
	10325 3200 10325 3275
Connection ~ 10325 3275
Wire Wire Line
	10775 3400 10450 3400
Wire Wire Line
	10450 3400 10450 3625
Wire Wire Line
	10450 3625 10325 3625
Connection ~ 10325 3625
Text HLabel 9350 2575 0    60   Output ~ 0
TACHO_2
Wire Wire Line
	10775 2950 10775 3000
Wire Wire Line
	9625 2200 9375 2200
Wire Wire Line
	10775 2550 10350 2550
Wire Wire Line
	10350 2550 10350 2700
Wire Wire Line
	10350 2700 9825 2700
Wire Wire Line
	9825 2700 9825 2325
Wire Wire Line
	9825 2325 9375 2325
Wire Wire Line
	9575 3000 10775 3000
Wire Wire Line
	9375 2450 9700 2450
Wire Wire Line
	9700 2450 9700 2750
Wire Wire Line
	9700 2750 10775 2750
Wire Wire Line
	9575 2575 9575 3000
Connection ~ 9575 3000
Wire Wire Line
	9350 2575 9575 2575
Wire Wire Line
	1400 2400 1625 2400
Text HLabel 1425 1900 0    60   Input ~ 0
DIAG_1
Wire Wire Line
	2225 2025 2225 1900
Wire Wire Line
	2225 1900 1425 1900
Text HLabel 9375 2075 0    60   Input ~ 0
DIAG_2
Wire Wire Line
	10175 2200 10175 2075
Wire Wire Line
	10175 2075 9375 2075
Wire Wire Line
	4900 3475 6025 3475
Wire Wire Line
	4800 3575 6025 3575
Wire Wire Line
	4700 3675 6025 3675
Wire Wire Line
	12850 3650 13975 3650
Wire Wire Line
	12750 3750 13975 3750
Wire Wire Line
	12650 3850 13975 3850
Text Notes 12200 4400 0    60   ~ 0
Résistances de Pull-Up déjà présentes dans le moteur
Text Notes 4175 4225 0    60   ~ 0
Résistances de Pull-Up déjà présentes dans le moteur
$EndSCHEMATC
