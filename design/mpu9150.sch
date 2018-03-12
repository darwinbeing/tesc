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
L MPU9150 U10
U 1 1 5A8CD83F
P 4475 3775
F 0 "U10" H 4400 4600 50  0000 L BNN
F 1 "MPU9150" H 4275 2750 50  0000 L BNN
F 2 "Housings_DFN_QFN:QFN-24-1EP_3x3mm_Pitch0.4mm" H 3450 4700 50  0001 L BNN
F 3 "" H 3450 4700 50  0001 L BNN
	1    4475 3775
	1    0    0    -1  
$EndComp
NoConn ~ 3875 4175
NoConn ~ 3875 4275
NoConn ~ 3875 3850
NoConn ~ 3875 3950
NoConn ~ 3875 3450
NoConn ~ 3875 3550
$Comp
L GND #PWR093
U 1 1 5A8CDBDA
P 3650 3825
F 0 "#PWR093" H 3650 3575 50  0001 C CNN
F 1 "GND" H 3650 3675 50  0000 C CNN
F 2 "" H 3650 3825 50  0001 C CNN
F 3 "" H 3650 3825 50  0001 C CNN
	1    3650 3825
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR094
U 1 1 5A8CDC21
P 3025 3925
F 0 "#PWR094" H 3025 3775 50  0001 C CNN
F 1 "VCC" H 3025 4075 50  0000 C CNN
F 2 "" H 3025 3925 50  0001 C CNN
F 3 "" H 3025 3925 50  0001 C CNN
	1    3025 3925
	1    0    0    -1  
$EndComp
$Comp
L R R40
U 1 1 5A8CDC61
P 3025 4275
F 0 "R40" V 2925 4375 50  0000 C CNN
F 1 "1k" V 2925 4175 50  0000 C CNN
F 2 "CRF1:SMD-0603_r" V 2955 4275 50  0001 C CNN
F 3 "" H 3025 4275 50  0001 C CNN
	1    3025 4275
	1    0    0    -1  
$EndComp
Text HLabel 2850 4500 0    60   Input ~ 0
SCL
Text HLabel 2850 4600 0    60   Input ~ 0
SDA
Wire Wire Line
	3875 3750 3650 3750
Wire Wire Line
	3650 3750 3650 3825
Wire Wire Line
	2850 4600 3875 4600
Wire Wire Line
	3275 4600 3275 4400
Wire Wire Line
	3025 3925 3025 4125
Wire Wire Line
	3025 4025 3275 4025
Wire Wire Line
	3275 4025 3275 4100
Wire Wire Line
	2850 4500 3875 4500
Wire Wire Line
	3025 4500 3025 4425
Connection ~ 3025 4025
Connection ~ 3025 4500
Connection ~ 3275 4600
$Comp
L R R41
U 1 1 5A8CDFDA
P 3275 4250
F 0 "R41" V 3175 4350 50  0000 C CNN
F 1 "1k" V 3175 4150 50  0000 C CNN
F 2 "CRF1:SMD-0603_r" V 3205 4250 50  0001 C CNN
F 3 "" H 3275 4250 50  0001 C CNN
	1    3275 4250
	1    0    0    -1  
$EndComp
$Comp
L C C61
U 1 1 5A8CE39F
P 5225 3750
F 0 "C61" H 5050 3650 50  0000 L CNN
F 1 "2.2u" H 5050 3850 50  0000 L CNN
F 2 "CRF1:SMD-0603_c" H 5263 3600 50  0001 C CNN
F 3 "" H 5225 3750 50  0001 C CNN
	1    5225 3750
	1    0    0    -1  
$EndComp
$Comp
L C C62
U 1 1 5A8CE4DF
P 5425 3750
F 0 "C62" H 5250 3650 50  0000 L CNN
F 1 "2.2u" H 5250 3850 50  0000 L CNN
F 2 "CRF1:SMD-0603_c" H 5463 3600 50  0001 C CNN
F 3 "" H 5425 3750 50  0001 C CNN
	1    5425 3750
	1    0    0    -1  
$EndComp
$Comp
L C C63
U 1 1 5A8CE506
P 5625 3750
F 0 "C63" H 5450 3650 50  0000 L CNN
F 1 "2.2u" H 5450 3850 50  0000 L CNN
F 2 "CRF1:SMD-0603_c" H 5663 3600 50  0001 C CNN
F 3 "" H 5625 3750 50  0001 C CNN
	1    5625 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3100 5625 3100
Wire Wire Line
	5225 3100 5225 3600
Wire Wire Line
	5225 3900 5225 4600
Wire Wire Line
	5050 4600 5625 4600
Wire Wire Line
	5050 4500 5425 4500
Connection ~ 5225 4500
Wire Wire Line
	5050 4400 5225 4400
Connection ~ 5225 4400
Wire Wire Line
	5050 3200 5425 3200
Connection ~ 5225 3200
Wire Wire Line
	5050 3300 5225 3300
Connection ~ 5225 3300
Wire Wire Line
	5425 3200 5425 3600
Wire Wire Line
	5425 4500 5425 3900
Wire Wire Line
	5625 3900 5625 4700
Connection ~ 5225 4600
Wire Wire Line
	5625 3000 5625 3600
Connection ~ 5225 3100
$Comp
L VCC #PWR095
U 1 1 5A8CE66F
P 5625 3000
F 0 "#PWR095" H 5625 2850 50  0001 C CNN
F 1 "VCC" H 5625 3150 50  0000 C CNN
F 2 "" H 5625 3000 50  0001 C CNN
F 3 "" H 5625 3000 50  0001 C CNN
	1    5625 3000
	1    0    0    -1  
$EndComp
Connection ~ 5625 3100
$Comp
L GND #PWR096
U 1 1 5A8CE6B3
P 5625 4700
F 0 "#PWR096" H 5625 4450 50  0001 C CNN
F 1 "GND" H 5625 4550 50  0000 C CNN
F 2 "" H 5625 4700 50  0001 C CNN
F 3 "" H 5625 4700 50  0001 C CNN
	1    5625 4700
	1    0    0    -1  
$EndComp
Connection ~ 5625 4600
$Comp
L C C59
U 1 1 5A8CE6F8
P 3350 3025
F 0 "C59" H 3175 2925 50  0000 L CNN
F 1 "2.2u" H 3150 3125 50  0000 L CNN
F 2 "CRF1:SMD-0603_c" H 3388 2875 50  0001 C CNN
F 3 "" H 3350 3025 50  0001 C CNN
	1    3350 3025
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3875 3100 3800 3100
Wire Wire Line
	3800 3100 3800 3025
Wire Wire Line
	3800 3025 3500 3025
$Comp
L C C60
U 1 1 5A8CE80E
P 3350 3275
F 0 "C60" H 3175 3175 50  0000 L CNN
F 1 "100n" H 3125 3375 50  0000 L CNN
F 2 "CRF1:SMD-0603_c" H 3388 3125 50  0001 C CNN
F 3 "" H 3350 3275 50  0001 C CNN
	1    3350 3275
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3875 3200 3800 3200
Wire Wire Line
	3800 3200 3800 3275
Wire Wire Line
	3800 3275 3500 3275
$Comp
L GND #PWR097
U 1 1 5A8CE8A1
P 3025 3425
F 0 "#PWR097" H 3025 3175 50  0001 C CNN
F 1 "GND" H 3025 3275 50  0000 C CNN
F 2 "" H 3025 3425 50  0001 C CNN
F 3 "" H 3025 3425 50  0001 C CNN
	1    3025 3425
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3025 3025 3025
Wire Wire Line
	3025 3025 3025 3425
Wire Wire Line
	3200 3275 3025 3275
Connection ~ 3025 3275
$EndSCHEMATC
