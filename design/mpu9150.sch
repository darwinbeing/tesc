EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:switches
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:crf_1
EELAYER 25 0
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
L MPU9150 U10
U 1 1 5A8CD83F
P 4425 3800
F 0 "U10" H 4350 4625 50 0000 L BNN
F 1 "MPU9150" H 4250 2900 50 0000 L BNN
F 2 "Housings_DFN_QFN:QFN-24_4x4mm_Pitch0.5mm" H 3400 4725 50 0001 L BNN
F 3 "" H 3400 4725 50 0001 L BNN
	1    4425 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR093
U 1 1 5A8CDBDA
P 3650 3775
F 0 "#PWR093" H 3650 3525 50 0001 C CNN
F 1 "GND" H 3650 3625 50 0000 C CNN
F 2 "" H 3650 3775 50 0001 C CNN
F 3 "" H 3650 3775 50 0001 C CNN
	1    3650 3775
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR094
U 1 1 5A8CDC21
P 3025 3850
F 0 "#PWR094" H 3025 3700 50 0001 C CNN
F 1 "VCC" H 3025 4000 50 0000 C CNN
F 2 "" H 3025 3850 50 0001 C CNN
F 3 "" H 3025 3850 50 0001 C CNN
	1    3025 3850
	1    0    0    -1  
$EndComp
$Comp
L R R40
U 1 1 5A8CDC61
P 3025 4175
F 0 "R40" V 2925 4275 50 0000 C CNN
F 1 "1k" V 2925 4075 50 0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2955 4175 50 0001 C CNN
F 3 "" H 3025 4175 50 0001 C CNN
	1    3025 4175
	1    0    0    -1  
$EndComp
$Comp
L R R41
U 1 1 5A8CDFDA
P 3275 4150
F 0 "R41" V 3175 4250 50 0000 C CNN
F 1 "1k" V 3175 4050 50 0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3205 4150 50 0001 C CNN
F 3 "" H 3275 4150 50 0001 C CNN
	1    3275 4150
	1    0    0    -1  
$EndComp
$Comp
L C C61
U 1 1 5A8CE39F
P 5150 3750
F 0 "C61" H 4975 3650 50 0000 L CNN
F 1 "2.2u" H 4975 3850 50 0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5188 3600 50 0001 C CNN
F 3 "" H 5150 3750 50 0001 C CNN
	1    5150 3750
	1    0    0    -1  
$EndComp
$Comp
L C C62
U 1 1 5A8CE4DF
P 5350 3750
F 0 "C62" H 5175 3650 50 0000 L CNN
F 1 "2.2u" H 5175 3850 50 0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5388 3600 50 0001 C CNN
F 3 "" H 5350 3750 50 0001 C CNN
	1    5350 3750
	1    0    0    -1  
$EndComp
$Comp
L C C63
U 1 1 5A8CE506
P 5550 3750
F 0 "C63" H 5375 3650 50 0000 L CNN
F 1 "2.2u" H 5375 3850 50 0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5588 3600 50 0001 C CNN
F 3 "" H 5550 3750 50 0001 C CNN
	1    5550 3750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR095
U 1 1 5A8CE66F
P 5550 3000
F 0 "#PWR095" H 5550 2850 50 0001 C CNN
F 1 "VCC" H 5550 3150 50 0000 C CNN
F 2 "" H 5550 3000 50 0001 C CNN
F 3 "" H 5550 3000 50 0001 C CNN
	1    5550 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR096
U 1 1 5A8CE6B3
P 5550 4600
F 0 "#PWR096" H 5550 4350 50 0001 C CNN
F 1 "GND" H 5550 4450 50 0000 C CNN
F 2 "" H 5550 4600 50 0001 C CNN
F 3 "" H 5550 4600 50 0001 C CNN
	1    5550 4600
	1    0    0    -1  
$EndComp
$Comp
L C C59
U 1 1 5A8CE6F8
P 3350 3025
F 0 "C59" H 3175 2925 50 0000 L CNN
F 1 "2.2u" H 3150 3125 50 0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3388 2875 50 0001 C CNN
F 3 "" H 3350 3025 50 0001 C CNN
	1    3350 3025
	0    -1   -1   0   
$EndComp
$Comp
L C C60
U 1 1 5A8CE80E
P 3350 3275
F 0 "C60" H 3175 3175 50 0000 L CNN
F 1 "100n" H 3125 3375 50 0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3388 3125 50 0001 C CNN
F 3 "" H 3350 3275 50 0001 C CNN
	1    3350 3275
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR097
U 1 1 5A8CE8A1
P 3025 3350
F 0 "#PWR097" H 3025 3100 50 0001 C CNN
F 1 "GND" H 3025 3200 50 0000 C CNN
F 2 "" H 3025 3350 50 0001 C CNN
F 3 "" H 3025 3350 50 0001 C CNN
	1    3025 3350
	1    0    0    -1  
$EndComp
Text HLabel 2850 4400 0    60   Input ~ 0
SCL
Text HLabel 2850 4500 0    60   Input ~ 0
SDA
Wire Wire Line
	3875 3700 3650 3700
Wire Wire Line
	3650 3700 3650 3775
Wire Wire Line
	2850 4500 3875 4500
Wire Wire Line
	3275 4500 3275 4300
Wire Wire Line
	3025 3850 3025 4025
Wire Wire Line
	3025 3925 3275 3925
Wire Wire Line
	3275 3925 3275 4000
Wire Wire Line
	2850 4400 3875 4400
Wire Wire Line
	3025 4400 3025 4325
Wire Wire Line
	4975 3100 5550 3100
Wire Wire Line
	5150 3100 5150 3600
Wire Wire Line
	4975 3200 5350 3200
Wire Wire Line
	4975 3300 5150 3300
Wire Wire Line
	5350 3200 5350 3600
Wire Wire Line
	5550 3000 5550 3600
Wire Wire Line
	3875 3100 3800 3100
Wire Wire Line
	3800 3100 3800 3025
Wire Wire Line
	3800 3025 3500 3025
Wire Wire Line
	3875 3200 3800 3200
Wire Wire Line
	3800 3200 3800 3275
Wire Wire Line
	3800 3275 3500 3275
Wire Wire Line
	3200 3025 3025 3025
Wire Wire Line
	3025 3025 3025 3350
Wire Wire Line
	3025 3275 3200 3275
Wire Wire Line
	4975 4300 5150 4300
Wire Wire Line
	5150 3900 5150 4500
Wire Wire Line
	5350 4400 5350 3900
Wire Wire Line
	4975 4400 5350 4400
Wire Wire Line
	4975 4500 5550 4500
Wire Wire Line
	5550 3900 5550 4600
Connection ~ 3025 3925
Connection ~ 3025 4400
Connection ~ 3275 4500
Connection ~ 5150 4500
Connection ~ 5150 4400
Connection ~ 5150 3200
Connection ~ 5150 3300
Connection ~ 5150 3100
Connection ~ 5550 3100
Connection ~ 3025 3275
Connection ~ 5150 4300
Connection ~ 5550 4500
NoConn ~ 3875 4100
NoConn ~ 3875 4200
NoConn ~ 3875 3800
NoConn ~ 3875 3900
NoConn ~ 3875 3400
NoConn ~ 3875 3500
$EndSCHEMATC
