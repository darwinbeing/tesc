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
LIBS:VESC_6-cache
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
L MPU9250 U10
U 1 1 5A8CD83F
P 4425 3800
F 0 "U10" H 4350 4625 50  0000 L BNN
F 1 "MPU9250" H 4250 2900 50  0000 L BNN
F 2 "Housings_DFN_QFN:QFN-24_3x3mm_Pitch0.4mm" H 3400 4725 50  0001 L BNN
F 3 "" H 3400 4725 50  0001 L BNN
	1    4425 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR093
U 1 1 5A8CDBDA
P 3500 4450
F 0 "#PWR093" H 3500 4200 50  0001 C CNN
F 1 "GND" H 3500 4300 50  0000 C CNN
F 2 "" H 3500 4450 50  0001 C CNN
F 3 "" H 3500 4450 50  0001 C CNN
	1    3500 4450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR094
U 1 1 5A8CDC21
P 3350 4075
F 0 "#PWR094" H 3350 3925 50  0001 C CNN
F 1 "VCC" H 3350 4225 50  0000 C CNN
F 2 "" H 3350 4075 50  0001 C CNN
F 3 "" H 3350 4075 50  0001 C CNN
	1    3350 4075
	1    0    0    -1  
$EndComp
$Comp
L C C61
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
L VCC #PWR095
U 1 1 5A8CE66F
P 5550 3000
F 0 "#PWR095" H 5550 2850 50  0001 C CNN
F 1 "VCC" H 5550 3150 50  0000 C CNN
F 2 "" H 5550 3000 50  0001 C CNN
F 3 "" H 5550 3000 50  0001 C CNN
	1    5550 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR096
U 1 1 5A8CE6B3
P 5150 4600
F 0 "#PWR096" H 5150 4350 50  0001 C CNN
F 1 "GND" H 5150 4450 50  0000 C CNN
F 2 "" H 5150 4600 50  0001 C CNN
F 3 "" H 5150 4600 50  0001 C CNN
	1    5150 4600
	1    0    0    -1  
$EndComp
Text HLabel 3875 4400 0    60   Input ~ 0
SCL
Text HLabel 3875 4500 0    60   Input ~ 0
SDA
NoConn ~ 3875 3200
NoConn ~ 3875 3900
NoConn ~ 3875 3400
NoConn ~ 3875 3100
$Comp
L C C62
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
L C C60
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
Wire Wire Line
	4975 3200 5350 3200
Wire Wire Line
	5350 3100 5350 3950
Wire Wire Line
	4975 4500 5550 4500
Connection ~ 5150 4500
Connection ~ 5150 4400
Wire Wire Line
	4975 3100 5550 3100
Wire Wire Line
	4975 3300 5550 3300
Wire Wire Line
	5150 3800 4975 3800
Wire Wire Line
	5150 3800 5150 3950
Wire Wire Line
	5150 4250 5150 4600
Wire Wire Line
	3875 3800 3500 3800
Wire Wire Line
	3500 3800 3500 4450
Wire Wire Line
	3875 4200 3500 4200
Connection ~ 3500 4200
Wire Wire Line
	3875 4300 3350 4300
Wire Wire Line
	3350 4300 3350 4075
Wire Wire Line
	4975 4400 5150 4400
Wire Wire Line
	5350 4250 5350 4500
Connection ~ 5350 4500
Connection ~ 5350 3300
Connection ~ 5350 3100
Connection ~ 5350 3200
Wire Wire Line
	5550 3100 5550 3000
Wire Wire Line
	5550 3300 5550 3950
Wire Wire Line
	5550 4500 5550 4250
$EndSCHEMATC
