EESchema Schematic File Version 4
LIBS:VESC_6-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title "VESC 6.4"
Date "2016-07-07"
Rev "A"
Comp "Benjamin Vedder"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR093
U 1 1 5A8CDBDA
P 3675 3850
F 0 "#PWR093" H 3675 3600 50  0001 C CNN
F 1 "GND" H 3675 3700 50  0000 C CNN
F 2 "" H 3675 3850 50  0001 C CNN
F 3 "" H 3675 3850 50  0001 C CNN
	1    3675 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C61
U 1 1 5A8CE4DF
P 5350 4100
F 0 "C61" H 5175 4000 50  0000 L CNN
F 1 "2.2u" H 5175 4200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5388 3950 50  0001 C CNN
F 3 "" H 5350 4100 50  0001 C CNN
F 4 "C1608X5R1C225K080AB" H 5175 4100 50  0001 C CNN "manf#"
	1    5350 4100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR094
U 1 1 5A8CE66F
P 5550 3000
F 0 "#PWR094" H 5550 2850 50  0001 C CNN
F 1 "VCC" H 5550 3150 50  0000 C CNN
F 2 "" H 5550 3000 50  0001 C CNN
F 3 "" H 5550 3000 50  0001 C CNN
	1    5550 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR095
U 1 1 5A8CE6B3
P 5150 4600
F 0 "#PWR095" H 5150 4350 50  0001 C CNN
F 1 "GND" H 5150 4450 50  0000 C CNN
F 2 "" H 5150 4600 50  0001 C CNN
F 3 "" H 5150 4600 50  0001 C CNN
	1    5150 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C62
U 1 1 5A8CE506
P 5550 4100
F 0 "C62" H 5375 4000 50  0000 L CNN
F 1 "2.2u" H 5375 4200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5588 3950 50  0001 C CNN
F 3 "" H 5550 4100 50  0001 C CNN
F 4 "C1608X5R1C225K080AB" H 5375 4100 50  0001 C CNN "manf#"
	1    5550 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C60
U 1 1 5A8CE80E
P 5150 4100
F 0 "C60" H 5175 4000 50  0000 L CNN
F 1 "100n" H 5175 4200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5188 3950 50  0001 C CNN
F 3 "" H 5150 4100 50  0001 C CNN
F 4 "C0603X104J5RACTU" H 4975 4100 50  0001 C CNN "manf#"
	1    5150 4100
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR096
U 1 1 5AF1D016
P 3125 3850
F 0 "#PWR096" H 3125 3700 50  0001 C CNN
F 1 "VCC" H 3125 4000 50  0000 C CNN
F 2 "" H 3125 3850 50  0001 C CNN
F 3 "" H 3125 3850 50  0001 C CNN
	1    3125 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 5AF1D017
P 3125 4175
F 0 "R40" V 3025 4275 50  0000 C CNN
F 1 "1k" V 3025 4075 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3055 4175 50  0001 C CNN
F 3 "" H 3125 4175 50  0001 C CNN
F 4 "CR0603-FX-1001ELF" H 3025 4375 50  0001 C CNN "manf#"
	1    3125 4175
	1    0    0    -1  
$EndComp
$Comp
L Device:R R41
U 1 1 5AF1D018
P 3375 4175
F 0 "R41" V 3275 4275 50  0000 C CNN
F 1 "1k" V 3275 4075 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3305 4175 50  0001 C CNN
F 3 "" H 3375 4175 50  0001 C CNN
F 4 "CR0603-FX-1001ELF" H 3275 4375 50  0001 C CNN "manf#"
	1    3375 4175
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR097
U 1 1 5AF1D01C
P 5550 3000
F 0 "#PWR097" H 5550 2850 50  0001 C CNN
F 1 "VCC" H 5550 3150 50  0000 C CNN
F 2 "" H 5550 3000 50  0001 C CNN
F 3 "" H 5550 3000 50  0001 C CNN
	1    5550 3000
	1    0    0    -1  
$EndComp
$Comp
L crf_1:MPU9250 U10
U 1 1 5A8CD83F
P 4425 3800
F 0 "U10" H 4350 4625 50  0000 L BNN
F 1 "MPU9250" H 4250 2900 50  0000 L BNN
F 2 "Housings_DFN_QFN:QFN-24_3x3mm_Pitch0.4mm" H 3400 4725 50  0001 L BNN
F 3 "" H 3400 4725 50  0001 L BNN
F 4 "MPU-9250" H 4425 3800 60  0001 C CNN "manf#"
	1    4425 3800
	1    0    0    -1  
$EndComp
Text HLabel 2950 4400 0    60   Input ~ 0
SCL
Text HLabel 2950 4500 0    60   Input ~ 0
SDA
Wire Wire Line
	4975 3200 5350 3200
Wire Wire Line
	4975 4500 5150 4500
Wire Wire Line
	4975 3100 5350 3100
Wire Wire Line
	5150 3800 4975 3800
Wire Wire Line
	3675 3800 3800 3800
Wire Wire Line
	3875 4200 3800 4200
Wire Wire Line
	3525 4300 3875 4300
Wire Wire Line
	4975 4400 5150 4400
Wire Wire Line
	5550 3100 5550 3000
Wire Wire Line
	5550 4500 5550 4250
Wire Wire Line
	2950 4500 3375 4500
Wire Wire Line
	3375 4500 3375 4325
Wire Wire Line
	3125 3850 3125 3925
Wire Wire Line
	3125 3925 3375 3925
Wire Wire Line
	3375 3925 3375 4025
Wire Wire Line
	2950 4400 3125 4400
Wire Wire Line
	3125 4400 3125 4325
Wire Wire Line
	5150 4500 5350 4500
Wire Wire Line
	5350 3100 5350 3200
Wire Wire Line
	5550 3300 5550 3950
Wire Wire Line
	5150 4250 5150 4400
Wire Wire Line
	5150 3800 5150 3950
Wire Wire Line
	4975 3300 5350 3300
Wire Wire Line
	5350 4500 5350 4250
Wire Wire Line
	3525 3925 3525 4300
Wire Wire Line
	3800 4200 3800 3800
Wire Wire Line
	3675 3800 3675 3850
Wire Wire Line
	5150 4500 5150 4600
Wire Wire Line
	5150 4400 5150 4500
Wire Wire Line
	5350 4500 5550 4500
Wire Wire Line
	5350 3300 5350 3950
Wire Wire Line
	5350 3300 5550 3300
Wire Wire Line
	5350 3100 5550 3100
Wire Wire Line
	5350 3200 5350 3300
Wire Wire Line
	3125 3925 3125 4025
Wire Wire Line
	3125 4400 3875 4400
Wire Wire Line
	3375 4500 3875 4500
Wire Wire Line
	3375 3925 3525 3925
Wire Wire Line
	3800 3800 3875 3800
Connection ~ 5150 4500
Connection ~ 5150 4400
Connection ~ 5350 4500
Connection ~ 5350 3300
Connection ~ 5350 3100
Connection ~ 5350 3200
Connection ~ 3125 3925
Connection ~ 3125 4400
Connection ~ 3375 4500
Connection ~ 3375 3925
Connection ~ 3800 3800
NoConn ~ 3875 3200
NoConn ~ 3875 3900
NoConn ~ 3875 3400
NoConn ~ 3875 3100
$EndSCHEMATC
