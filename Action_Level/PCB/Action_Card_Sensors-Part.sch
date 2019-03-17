EESchema Schematic File Version 4
LIBS:Action_Card-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
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
L Connector_Generic:Conn_01x02 J_FC_L
U 1 1 5C8C4F4C
P 3950 2400
F 0 "J_FC_L" H 4225 2325 50  0000 C CNN
F 1 "Conn_01x02" H 4250 2425 50  0000 C CNN
F 2 "" H 3950 2400 50  0001 C CNN
F 3 "~" H 3950 2400 50  0001 C CNN
	1    3950 2400
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J_FC_R
U 1 1 5C8C50CB
P 3950 2900
F 0 "J_FC_R" H 4225 2825 50  0000 C CNN
F 1 "Conn_01x02" H 4250 2925 50  0000 C CNN
F 2 "" H 3950 2900 50  0001 C CNN
F 3 "~" H 3950 2900 50  0001 C CNN
	1    3950 2900
	-1   0    0    1   
$EndComp
Text HLabel 4150 2400 2    50   Output ~ 0
FC_L
Text HLabel 4150 2900 2    50   Output ~ 0
FC_R
$Comp
L power:+3V3 #PWR?
U 1 1 5C8C51D4
P 4150 2300
F 0 "#PWR?" H 4150 2150 50  0001 C CNN
F 1 "+3V3" H 4165 2473 50  0000 C CNN
F 2 "" H 4150 2300 50  0001 C CNN
F 3 "" H 4150 2300 50  0001 C CNN
	1    4150 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5C8C51EA
P 4150 2800
F 0 "#PWR?" H 4150 2650 50  0001 C CNN
F 1 "+3V3" H 4165 2973 50  0000 C CNN
F 2 "" H 4150 2800 50  0001 C CNN
F 3 "" H 4150 2800 50  0001 C CNN
	1    4150 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J_TR_AV
U 1 1 5C8C540B
P 3950 3650
F 0 "J_TR_AV" H 4275 3575 50  0000 C CNN
F 1 "Conn_01x04" H 4275 3650 50  0000 C CNN
F 2 "" H 3950 3650 50  0001 C CNN
F 3 "~" H 3950 3650 50  0001 C CNN
	1    3950 3650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J_TR_AR
U 1 1 5C8C551D
P 3950 4175
F 0 "J_TR_AR" H 4275 4100 50  0000 C CNN
F 1 "Conn_01x04" H 4275 4175 50  0000 C CNN
F 2 "" H 3950 4175 50  0001 C CNN
F 3 "~" H 3950 4175 50  0001 C CNN
	1    3950 4175
	-1   0    0    1   
$EndComp
$EndSCHEMATC
