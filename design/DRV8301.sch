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
Sheet 3 7
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
L DRV8301 U3
U 1 1 5A8A8132
P 5025 3375
F 0 "U3" H 5025 4875 60  0000 C CNN
F 1 "DRV8301" H 5325 1825 60  0000 C CNN
F 2 "CRF1:TSSOP-56-PP" H 5025 3375 60  0001 C CNN
F 3 "" H 5025 3375 60  0000 C CNN
	1    5025 3375
	1    0    0    -1  
$EndComp
$Comp
L C C26
U 1 1 5A8B222D
P 6250 5000
F 0 "C26" H 6300 5100 50  0000 L CNN
F 1 "4.7u_100V" H 6300 4900 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 6250 5000 60  0001 C CNN
F 3 "" H 6250 5000 60  0001 C CNN
	1    6250 5000
	1    0    0    -1  
$EndComp
$Comp
L C C25
U 1 1 5A8B222E
P 6200 3825
F 0 "C25" V 6150 3575 50  0000 L CNN
F 1 "220n" V 6250 3725 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603" H 6200 3825 60  0001 C CNN
F 3 "" H 6200 3825 60  0001 C CNN
	1    6200 3825
	0    -1   1    0   
$EndComp
$Comp
L C C19
U 1 1 5A8B2231
P 3825 3325
F 0 "C19" V 3875 3450 50  0000 C CNN
F 1 "22n" V 3875 3205 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 3825 3325 60  0001 C CNN
F 3 "" H 3825 3325 60  0001 C CNN
	1    3825 3325
	0    1    1    0   
$EndComp
$Comp
L C C18
U 1 1 5A8B2F37
P 3675 1475
F 0 "C18" H 3725 1575 50  0000 L BNN
F 1 "120p" H 3725 1375 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3675 1475 60  0001 C CNN
F 3 "" H 3675 1475 60  0001 C CNN
	1    3675 1475
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 5A8B2F80
P 3650 4525
F 0 "C17" H 3700 4625 50  0000 L BNN
F 1 "2.2u" H 3700 4425 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3650 4525 60  0001 C CNN
F 3 "" H 3650 4525 60  0001 C CNN
	1    3650 4525
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5A8B34D0
P 4050 1475
F 0 "R14" V 4150 1475 50  0000 C CNN
F 1 "220k" V 4050 1475 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4050 1475 60  0001 C CNN
F 3 "" H 4050 1475 60  0001 C CNN
	1    4050 1475
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5A8B3744
P 3275 1725
F 0 "R12" V 3375 1725 50  0000 C CNN
F 1 "15k" V 3275 1725 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3275 1725 60  0001 C CNN
F 3 "" H 3275 1725 60  0001 C CNN
	1    3275 1725
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5A8B37F2
P 2900 1775
F 0 "R11" V 3000 1775 50  0000 C CNN
F 1 "18k" V 2900 1775 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2900 1775 60  0001 C CNN
F 3 "" H 2900 1775 60  0001 C CNN
	1    2900 1775
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5A8B38EC
P 2900 1225
F 0 "R10" V 3000 1225 50  0000 C CNN
F 1 "3.3k" V 2900 1225 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2900 1225 60  0001 C CNN
F 3 "" H 2900 1225 60  0001 C CNN
	1    2900 1225
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 5A8B340B
P 3275 1250
F 0 "C16" H 3325 1350 50  0000 L BNN
F 1 "6.8n" H 3325 1150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3275 1250 60  0001 C CNN
F 3 "" H 3275 1250 60  0001 C CNN
	1    3275 1250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR039
U 1 1 5A8C9A3C
P 2550 1700
F 0 "#PWR039" H 2550 1550 50  0001 C CNN
F 1 "+5V" H 2550 1840 50  0000 C CNN
F 2 "" H 2550 1700 50  0001 C CNN
F 3 "" H 2550 1700 50  0001 C CNN
	1    2550 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 5A8CC366
P 2550 1150
F 0 "#PWR040" H 2550 900 50  0001 C CNN
F 1 "GND" H 2550 1000 50  0000 C CNN
F 2 "" H 2550 1150 50  0001 C CNN
F 3 "" H 2550 1150 50  0001 C CNN
	1    2550 1150
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 5A8CCB8F
P 3650 2625
F 0 "R13" V 3750 2625 50  0000 C CNN
F 1 "10k" V 3650 2625 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3650 2625 60  0001 C CNN
F 3 "" H 3650 2625 60  0001 C CNN
	1    3650 2625
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR041
U 1 1 5A8CCE02
P 3175 2800
F 0 "#PWR041" H 3175 2550 50  0001 C CNN
F 1 "GND" H 3175 2650 50  0000 C CNN
F 2 "" H 3175 2800 50  0001 C CNN
F 3 "" H 3175 2800 50  0001 C CNN
	1    3175 2800
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 5A8CEE56
P 2900 3525
F 0 "C14" H 2950 3625 50  0000 L BNN
F 1 "2.2u" H 2950 3425 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2900 3525 60  0001 C CNN
F 3 "" H 2900 3525 60  0001 C CNN
	1    2900 3525
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 5A8CEF35
P 3200 3525
F 0 "C15" H 3250 3625 50  0000 L BNN
F 1 "2.2u" H 3250 3425 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3200 3525 60  0001 C CNN
F 3 "" H 3200 3525 60  0001 C CNN
	1    3200 3525
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 5A8CF4FD
P 2900 3875
F 0 "#PWR042" H 2900 3625 50  0001 C CNN
F 1 "GND" H 2900 3725 50  0000 C CNN
F 2 "" H 2900 3875 50  0001 C CNN
F 3 "" H 2900 3875 50  0001 C CNN
	1    2900 3875
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 5A8D0E33
P 3650 4800
F 0 "#PWR043" H 3650 4550 50  0001 C CNN
F 1 "GND" H 3650 4650 50  0000 C CNN
F 2 "" H 3650 4800 50  0001 C CNN
F 3 "" H 3650 4800 50  0001 C CNN
	1    3650 4800
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 5A8D11BE
P 3925 4925
F 0 "C20" H 3975 5025 50  0000 L BNN
F 1 "2.2u" H 3975 4825 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3925 4925 60  0001 C CNN
F 3 "" H 3925 4925 60  0001 C CNN
	1    3925 4925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 5A8D14AB
P 3925 5300
F 0 "#PWR044" H 3925 5050 50  0001 C CNN
F 1 "GND" H 3925 5150 50  0000 C CNN
F 2 "" H 3925 5300 50  0001 C CNN
F 3 "" H 3925 5300 50  0001 C CNN
	1    3925 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR045
U 1 1 5A8D49E2
P 5025 5200
F 0 "#PWR045" H 5025 4950 50  0001 C CNN
F 1 "GND" H 5025 5050 50  0000 C CNN
F 2 "" H 5025 5200 50  0001 C CNN
F 3 "" H 5025 5200 50  0001 C CNN
	1    5025 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 5A8D67F0
P 6250 5300
F 0 "#PWR046" H 6250 5050 50  0001 C CNN
F 1 "GND" H 6250 5150 50  0000 C CNN
F 2 "" H 6250 5300 50  0001 C CNN
F 3 "" H 6250 5300 50  0001 C CNN
	1    6250 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 5A8D6C8C
P 6050 4325
F 0 "#PWR047" H 6050 4075 50  0001 C CNN
F 1 "GND" H 6050 4175 50  0000 C CNN
F 2 "" H 6050 4325 50  0001 C CNN
F 3 "" H 6050 4325 50  0001 C CNN
	1    6050 4325
	1    0    0    -1  
$EndComp
$Comp
L C C24
U 1 1 5A8DA58E
P 6200 3325
F 0 "C24" V 6150 3075 50  0000 L CNN
F 1 "220n" V 6250 3225 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603" H 6200 3325 60  0001 C CNN
F 3 "" H 6200 3325 60  0001 C CNN
	1    6200 3325
	0    -1   1    0   
$EndComp
$Comp
L C C23
U 1 1 5A8DA5F2
P 6200 2825
F 0 "C23" V 6150 2575 50  0000 L CNN
F 1 "220n" V 6250 2725 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603" H 6200 2825 60  0001 C CNN
F 3 "" H 6200 2825 60  0001 C CNN
	1    6200 2825
	0    -1   1    0   
$EndComp
$Comp
L VCC #PWR048
U 1 1 5A8DB407
P 6100 2700
F 0 "#PWR048" H 6100 2550 50  0001 C CNN
F 1 "VCC" H 6225 2750 50  0000 C CNN
F 2 "" H 6100 2700 50  0001 C CNN
F 3 "" H 6100 2700 50  0001 C CNN
	1    6100 2700
	1    0    0    -1  
$EndComp
$Comp
L C C28
U 1 1 5A8DD2EC
P 6425 2425
F 0 "C28" V 6375 2200 50  0000 L CNN
F 1 "100n" V 6375 2575 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 6425 2425 60  0001 C CNN
F 3 "" H 6425 2425 60  0001 C CNN
	1    6425 2425
	0    -1   1    0   
$EndComp
$Comp
L L L2
U 1 1 5A8AA4C7
P 7100 2525
F 0 "L2" V 7050 2525 50  0000 C CNN
F 1 "22u" V 7175 2525 50  0000 C CNN
F 2 "CRF1:L_Coilcraft_XAL5050" H 7100 2525 50  0001 C CNN
F 3 "" H 7100 2525 50  0001 C CNN
	1    7100 2525
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR049
U 1 1 5A8AAB40
P 7625 2475
F 0 "#PWR049" H 7625 2325 50  0001 C CNN
F 1 "+5V" H 7625 2615 50  0000 C CNN
F 2 "" H 7625 2475 50  0001 C CNN
F 3 "" H 7625 2475 50  0001 C CNN
	1    7625 2475
	1    0    0    -1  
$EndComp
$Comp
L C C31
U 1 1 5A8AAF5D
P 7325 2725
F 0 "C31" H 7350 2825 50  0000 L CNN
F 1 "2.2u" H 7350 2625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7363 2575 50  0001 C CNN
F 3 "" H 7325 2725 50  0001 C CNN
	1    7325 2725
	1    0    0    -1  
$EndComp
$Comp
L CP C32
U 1 1 5A8AB050
P 7625 2725
F 0 "C32" H 7650 2825 50  0000 L CNN
F 1 "100u" H 7650 2625 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Wave" H 7663 2575 50  0001 C CNN
F 3 "" H 7625 2725 50  0001 C CNN
	1    7625 2725
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky_Small D4
U 1 1 5A8AB2D0
P 6850 2700
F 0 "D4" H 6800 2780 50  0000 L CNN
F 1 "DIODE" H 6750 2620 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" V 6850 2700 50  0001 C CNN
F 3 "" V 6850 2700 50  0001 C CNN
	1    6850 2700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR050
U 1 1 5A8ABF18
P 7625 2975
F 0 "#PWR050" H 7625 2725 50  0001 C CNN
F 1 "GND" H 7625 2825 50  0000 C CNN
F 2 "" H 7625 2975 50  0001 C CNN
F 3 "" H 7625 2975 50  0001 C CNN
	1    7625 2975
	1    0    0    -1  
$EndComp
$Comp
L C C22
U 1 1 5A8AC628
P 6100 1650
F 0 "C22" H 6125 1750 50  0000 L CNN
F 1 "15n" H 6125 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6100 1650 60  0001 C CNN
F 3 "" H 6100 1650 60  0001 C CNN
	1    6100 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR051
U 1 1 5A8ACD51
P 6100 1950
F 0 "#PWR051" H 6100 1700 50  0001 C CNN
F 1 "GND" H 6100 1800 50  0000 C CNN
F 2 "" H 6100 1950 50  0001 C CNN
F 3 "" H 6100 1950 50  0001 C CNN
	1    6100 1950
	1    0    0    -1  
$EndComp
$Comp
L C C27
U 1 1 5A8ADEA5
P 6575 1750
F 0 "C27" H 6625 1850 50  0000 L CNN
F 1 "4.7u_100V" H 6625 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 6575 1750 60  0001 C CNN
F 3 "" H 6575 1750 60  0001 C CNN
	1    6575 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR052
U 1 1 5A8AE336
P 6575 2025
F 0 "#PWR052" H 6575 1775 50  0001 C CNN
F 1 "GND" H 6575 1875 50  0000 C CNN
F 2 "" H 6575 2025 50  0001 C CNN
F 3 "" H 6575 2025 50  0001 C CNN
	1    6575 2025
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR053
U 1 1 5A8BD81E
P 9225 2525
F 0 "#PWR053" H 9225 2375 50  0001 C CNN
F 1 "+5V" H 9225 2665 50  0000 C CNN
F 2 "" H 9225 2525 50  0001 C CNN
F 3 "" H 9225 2525 50  0001 C CNN
	1    9225 2525
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR054
U 1 1 5A8BEDBB
P 9225 2950
F 0 "#PWR054" H 9225 2700 50  0001 C CNN
F 1 "GND" H 9225 2800 50  0000 C CNN
F 2 "" H 9225 2950 50  0001 C CNN
F 3 "" H 9225 2950 50  0001 C CNN
	1    9225 2950
	1    0    0    -1  
$EndComp
$Comp
L D D5
U 1 1 5A8BBD36
P 9225 2750
F 0 "D5" V 9175 2850 50  0000 L CNN
F 1 "TVS 5V" V 9275 2850 50  0000 L CNN
F 2 "w_smd_diode:do214ac" H 9225 2750 50  0001 C CNN
F 3 "" H 9225 2750 50  0001 C CNN
	1    9225 2750
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 5A8BF835
P 9225 3900
F 0 "R15" V 9275 3650 50  0000 C CNN
F 1 "39k" V 9225 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 9225 3900 60  0001 C CNN
F 3 "" H 9225 3900 60  0001 C CNN
	1    9225 3900
	0    -1   -1   0   
$EndComp
$Comp
L R R16
U 1 1 5A8C07F6
P 9225 4050
F 0 "R16" V 9275 3800 50  0000 C CNN
F 1 "2K2" V 9225 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 9225 4050 60  0001 C CNN
F 3 "" H 9225 4050 60  0001 C CNN
	1    9225 4050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR055
U 1 1 5A8C0B63
P 9625 4150
F 0 "#PWR055" H 9625 3900 50  0001 C CNN
F 1 "GND" H 9625 4000 50  0000 C CNN
F 2 "" H 9625 4150 50  0001 C CNN
F 3 "" H 9625 4150 50  0001 C CNN
	1    9625 4150
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 5A8C1566
P 9225 4425
F 0 "R17" V 9275 4175 50  0000 C CNN
F 1 "39k" V 9225 4425 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 9225 4425 60  0001 C CNN
F 3 "" H 9225 4425 60  0001 C CNN
	1    9225 4425
	0    -1   -1   0   
$EndComp
$Comp
L R R18
U 1 1 5A8C156C
P 9225 4575
F 0 "R18" V 9275 4325 50  0000 C CNN
F 1 "2K2" V 9225 4575 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 9225 4575 60  0001 C CNN
F 3 "" H 9225 4575 60  0001 C CNN
	1    9225 4575
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR056
U 1 1 5A8C1574
P 9625 4675
F 0 "#PWR056" H 9625 4425 50  0001 C CNN
F 1 "GND" H 9625 4525 50  0000 C CNN
F 2 "" H 9625 4675 50  0001 C CNN
F 3 "" H 9625 4675 50  0001 C CNN
	1    9625 4675
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 5A8C15F3
P 9225 4950
F 0 "R19" V 9275 4700 50  0000 C CNN
F 1 "39k" V 9225 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 9225 4950 60  0001 C CNN
F 3 "" H 9225 4950 60  0001 C CNN
	1    9225 4950
	0    -1   -1   0   
$EndComp
$Comp
L R R20
U 1 1 5A8C15F9
P 9225 5100
F 0 "R20" V 9275 4850 50  0000 C CNN
F 1 "2K2" V 9225 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 9225 5100 60  0001 C CNN
F 3 "" H 9225 5100 60  0001 C CNN
	1    9225 5100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR057
U 1 1 5A8C1601
P 9625 5200
F 0 "#PWR057" H 9625 4950 50  0001 C CNN
F 1 "GND" H 9625 5050 50  0000 C CNN
F 2 "" H 9625 5200 50  0001 C CNN
F 3 "" H 9625 5200 50  0001 C CNN
	1    9625 5200
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 5A8C16E7
P 9225 5475
F 0 "R21" V 9275 5225 50  0000 C CNN
F 1 "39k" V 9225 5475 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 9225 5475 60  0001 C CNN
F 3 "" H 9225 5475 60  0001 C CNN
	1    9225 5475
	0    -1   -1   0   
$EndComp
$Comp
L R R22
U 1 1 5A8C16ED
P 9225 5625
F 0 "R22" V 9275 5375 50  0000 C CNN
F 1 "2K2" V 9225 5625 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 9225 5625 60  0001 C CNN
F 3 "" H 9225 5625 60  0001 C CNN
	1    9225 5625
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR058
U 1 1 5A8C16F5
P 9625 5725
F 0 "#PWR058" H 9625 5475 50  0001 C CNN
F 1 "GND" H 9625 5575 50  0000 C CNN
F 2 "" H 9625 5725 50  0001 C CNN
F 3 "" H 9625 5725 50  0001 C CNN
	1    9625 5725
	1    0    0    -1  
$EndComp
$Comp
L LM3671 U2
U 1 1 5A970EE4
P 3300 6475
F 0 "U2" H 3300 6675 60  0000 C CNN
F 1 "LM3671" H 3300 6275 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 3250 6450 60  0001 C CNN
F 3 "" H 3250 6450 60  0001 C CNN
	1    3300 6475
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR059
U 1 1 5A9712C4
P 2700 6850
F 0 "#PWR059" H 2700 6600 50  0001 C CNN
F 1 "GND" H 2700 6700 50  0000 C CNN
F 2 "" H 2700 6850 50  0001 C CNN
F 3 "" H 2700 6850 50  0001 C CNN
	1    2700 6850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR060
U 1 1 5A971545
P 2700 6000
F 0 "#PWR060" H 2700 5850 50  0001 C CNN
F 1 "+5V" H 2700 6140 50  0000 C CNN
F 2 "" H 2700 6000 50  0001 C CNN
F 3 "" H 2700 6000 50  0001 C CNN
	1    2700 6000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR061
U 1 1 5A971A5F
P 4275 6200
F 0 "#PWR061" H 4275 6050 50  0001 C CNN
F 1 "VCC" H 4275 6350 50  0000 C CNN
F 2 "" H 4275 6200 50  0001 C CNN
F 3 "" H 4275 6200 50  0001 C CNN
	1    4275 6200
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 5A972EAC
P 2325 6425
F 0 "C13" H 2350 6500 50  0000 L BNN
F 1 "2.2u" H 2350 6325 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2325 6425 60  0001 C CNN
F 3 "" H 2325 6425 60  0001 C CNN
	1    2325 6425
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 5A974894
P 3925 6375
F 0 "L1" V 4000 6375 50  0000 C CNN
F 1 "2.2u" V 3875 6375 50  0000 C CNN
F 2 "Inductors_SMD:L_0805" H 3925 6375 50  0001 C CNN
F 3 "" H 3925 6375 50  0001 C CNN
	1    3925 6375
	0    -1   -1   0   
$EndComp
$Comp
L C C64
U 1 1 5A9748A2
P 4500 6575
F 0 "C64" H 4525 6675 50  0000 L CNN
F 1 "2.2u" H 4525 6475 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4538 6425 50  0001 C CNN
F 3 "" H 4500 6575 50  0001 C CNN
	1    4500 6575
	1    0    0    -1  
$EndComp
$Comp
L CP C21
U 1 1 5A9748A8
P 4750 6575
F 0 "C21" H 4775 6675 50  0000 L CNN
F 1 "100u" H 4775 6475 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Wave" H 4788 6425 50  0001 C CNN
F 3 "" H 4750 6575 50  0001 C CNN
	1    4750 6575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR062
U 1 1 5A9748B1
P 4750 6825
F 0 "#PWR062" H 4750 6575 50  0001 C CNN
F 1 "GND" H 4750 6675 50  0000 C CNN
F 2 "" H 4750 6825 50  0001 C CNN
F 3 "" H 4750 6825 50  0001 C CNN
	1    4750 6825
	1    0    0    -1  
$EndComp
Text HLabel 4225 2525 0    60   Input ~ 0
FAULT
Text HLabel 4225 2725 0    60   Input ~ 0
CS
Text HLabel 4225 2825 0    60   Input ~ 0
SDI
Text HLabel 4225 2925 0    60   Input ~ 0
SDO
Text HLabel 4225 3025 0    60   Input ~ 0
SCLK
Text HLabel 4225 3525 0    60   Input ~ 0
EN_GATE
Text HLabel 4225 3625 0    60   Input ~ 0
INH_A
Text HLabel 4225 3725 0    60   Input ~ 0
INL_A
Text HLabel 4225 3825 0    60   Input ~ 0
INH_B
Text HLabel 4225 3925 0    60   Input ~ 0
INL_B
Text HLabel 4225 4025 0    60   Input ~ 0
INH_C
Text HLabel 4225 4125 0    60   Input ~ 0
INL_C
Text HLabel 6525 4725 2    60   Input ~ 0
SUPPLY
Text HLabel 5825 4225 2    60   Input ~ 0
SL_C
Text HLabel 5825 4125 2    60   Input ~ 0
GL_C
Text HLabel 5825 3925 2    60   Input ~ 0
GH_C
Text HLabel 6625 4025 2    60   Input ~ 0
SH_C
Text HLabel 5825 3725 2    60   Input ~ 0
SL_B
Text HLabel 5825 3625 2    60   Input ~ 0
GL_B
Text HLabel 5825 3425 2    60   Input ~ 0
GH_B
Text HLabel 6625 3525 2    60   Input ~ 0
SH_B
Text HLabel 5825 3225 2    60   Input ~ 0
SL_A
Text HLabel 5825 3125 2    60   Input ~ 0
GL_A
Text HLabel 5825 2925 2    60   Input ~ 0
GH_A
Text HLabel 6625 3025 2    60   Input ~ 0
SH_A
Text HLabel 7050 1500 2    60   Input ~ 0
SUPPLY
Text GLabel 7050 1300 2    60   Input ~ 0
SUPPLY
Text HLabel 9575 3900 2    60   Input ~ 0
SUPPLY
Text HLabel 8725 3900 0    60   Input ~ 0
SENS_SUPPLY
Text HLabel 9575 4425 2    60   Input ~ 0
SH_A
Text HLabel 8725 4425 0    60   Input ~ 0
SENS_A
Text HLabel 9575 4950 2    60   Input ~ 0
SH_B
Text HLabel 8725 4950 0    60   Input ~ 0
SENS_B
Text HLabel 9575 5475 2    60   Input ~ 0
SH_C
Text HLabel 8725 5475 0    60   Input ~ 0
SENS_C
Wire Wire Line
	2550 2025 2550 1700
Wire Wire Line
	2900 2025 2550 2025
Wire Wire Line
	3100 2225 4225 2225
Wire Wire Line
	3275 2125 4225 2125
Wire Wire Line
	4050 2025 4225 2025
Wire Wire Line
	2900 900  2900 1075
Wire Wire Line
	3100 1500 2900 1500
Wire Wire Line
	3100 1500 3100 2225
Wire Wire Line
	3275 1875 3275 2125
Wire Wire Line
	3675 900  3675 1325
Wire Wire Line
	4050 900  4050 1325
Wire Wire Line
	3275 900  3275 1100
Wire Wire Line
	3675 1625 3675 2125
Wire Wire Line
	4050 1625 4050 2025
Wire Wire Line
	3175 2625 3500 2625
Wire Wire Line
	3175 2625 3175 2800
Wire Wire Line
	3800 2625 4225 2625
Wire Wire Line
	3975 3325 4225 3325
Wire Wire Line
	3475 3325 3675 3325
Wire Wire Line
	3475 3325 3475 3425
Wire Wire Line
	3475 3425 4225 3425
Wire Wire Line
	2900 3225 4225 3225
Wire Wire Line
	2900 3225 2900 3375
Wire Wire Line
	3200 3225 3200 3375
Wire Wire Line
	2900 3675 2900 3875
Wire Wire Line
	3200 3800 2900 3800
Wire Wire Line
	3200 3675 3200 3800
Wire Wire Line
	2550 900  4050 900 
Wire Wire Line
	4225 4225 3650 4225
Wire Wire Line
	3650 4225 3650 4375
Wire Wire Line
	3650 4675 3650 4800
Wire Wire Line
	3925 5075 3925 5300
Wire Wire Line
	3925 4625 4225 4625
Wire Wire Line
	4225 4725 4175 4725
Wire Wire Line
	4175 4725 4175 5225
Wire Wire Line
	4175 5225 3925 5225
Wire Wire Line
	3925 4325 3925 4775
Wire Wire Line
	3925 4325 4225 4325
Wire Wire Line
	5025 5125 5025 5200
Wire Wire Line
	5825 4725 6525 4725
Wire Wire Line
	6250 4725 6250 4850
Wire Wire Line
	6250 5150 6250 5300
Wire Wire Line
	5925 4625 5825 4625
Wire Wire Line
	5925 4325 5925 4625
Wire Wire Line
	5825 4525 5925 4525
Wire Wire Line
	5825 4425 5925 4425
Wire Wire Line
	5825 4325 6050 4325
Wire Wire Line
	5825 4025 6625 4025
Wire Wire Line
	5825 3825 6050 3825
Wire Wire Line
	6350 3825 6550 3825
Wire Wire Line
	6550 3825 6550 4025
Wire Wire Line
	5825 3525 6625 3525
Wire Wire Line
	5825 3325 6050 3325
Wire Wire Line
	6350 3325 6550 3325
Wire Wire Line
	6550 3325 6550 3525
Wire Wire Line
	5825 3025 6625 3025
Wire Wire Line
	5825 2825 6050 2825
Wire Wire Line
	6350 2825 6550 2825
Wire Wire Line
	6550 2825 6550 3025
Wire Wire Line
	5825 2725 6100 2725
Wire Wire Line
	6100 2725 6100 2700
Wire Wire Line
	5825 2425 6275 2425
Wire Wire Line
	6850 2425 6850 2600
Wire Wire Line
	5825 2525 6950 2525
Wire Wire Line
	7250 2525 7625 2525
Wire Wire Line
	7625 2475 7625 2575
Wire Wire Line
	7325 2575 7325 2525
Wire Wire Line
	6850 2800 6850 2925
Wire Wire Line
	7625 2875 7625 2975
Wire Wire Line
	5825 2025 5950 2025
Wire Wire Line
	5950 2025 5950 1350
Wire Wire Line
	5950 1350 6100 1350
Wire Wire Line
	6100 1350 6100 1500
Wire Wire Line
	6100 1800 6100 1950
Wire Wire Line
	6850 2925 7625 2925
Wire Wire Line
	7325 2875 7325 2925
Wire Wire Line
	5825 2225 6300 2225
Wire Wire Line
	6300 2225 6300 1500
Wire Wire Line
	6300 1500 7050 1500
Wire Wire Line
	7050 1300 6850 1300
Wire Wire Line
	6850 1300 6850 1500
Wire Wire Line
	6575 1500 6575 1600
Wire Wire Line
	6575 1900 6575 2025
Wire Wire Line
	5825 2325 5950 2325
Wire Wire Line
	5950 2325 5950 2225
Wire Wire Line
	5825 2625 5950 2625
Wire Wire Line
	5950 2625 5950 2525
Wire Wire Line
	9225 2525 9225 2600
Wire Wire Line
	9225 2950 9225 2900
Wire Wire Line
	9375 3900 9575 3900
Wire Wire Line
	9375 4050 9625 4050
Wire Wire Line
	9625 4050 9625 4150
Wire Wire Line
	8725 3900 9075 3900
Wire Wire Line
	8875 4050 9075 4050
Wire Wire Line
	8875 4050 8875 3900
Wire Wire Line
	9375 4425 9575 4425
Wire Wire Line
	9375 4575 9625 4575
Wire Wire Line
	9625 4575 9625 4675
Wire Wire Line
	8725 4425 9075 4425
Wire Wire Line
	8875 4575 9075 4575
Wire Wire Line
	8875 4575 8875 4425
Wire Wire Line
	9375 4950 9575 4950
Wire Wire Line
	9375 5100 9625 5100
Wire Wire Line
	9625 5100 9625 5200
Wire Wire Line
	8725 4950 9075 4950
Wire Wire Line
	8875 5100 9075 5100
Wire Wire Line
	8875 5100 8875 4950
Wire Wire Line
	9375 5475 9575 5475
Wire Wire Line
	9375 5625 9625 5625
Wire Wire Line
	9625 5625 9625 5725
Wire Wire Line
	8725 5475 9075 5475
Wire Wire Line
	8875 5625 9075 5625
Wire Wire Line
	8875 5625 8875 5475
Wire Wire Line
	2700 6375 3000 6375
Wire Wire Line
	2700 6000 2700 6375
Wire Wire Line
	3000 6575 2900 6575
Wire Wire Line
	2900 6575 2900 6375
Wire Wire Line
	3000 6475 2700 6475
Wire Wire Line
	2700 6475 2700 6850
Wire Wire Line
	2325 6150 2325 6275
Wire Wire Line
	2325 6150 2700 6150
Wire Wire Line
	2325 6575 2325 6700
Wire Wire Line
	2325 6700 2700 6700
Wire Wire Line
	3600 6375 3775 6375
Wire Wire Line
	4075 6375 4750 6375
Wire Wire Line
	4500 6425 4500 6375
Wire Wire Line
	4750 6725 4750 6825
Wire Wire Line
	4500 6725 4500 6775
Wire Wire Line
	4275 6575 3600 6575
Wire Wire Line
	4275 6200 4275 6575
Wire Wire Line
	4750 6375 4750 6425
Wire Wire Line
	4500 6775 4750 6775
Wire Wire Line
	2900 1375 2900 1625
Wire Wire Line
	3275 1575 3275 1400
Wire Wire Line
	2900 1925 2900 2025
Wire Wire Line
	6575 2425 6850 2425
Wire Wire Line
	2550 1150 2550 900 
Connection ~ 3675 2125
Connection ~ 3675 900 
Connection ~ 2900 900 
Connection ~ 3275 900 
Connection ~ 2900 1500
Connection ~ 3200 3225
Connection ~ 2900 3800
Connection ~ 3925 5225
Connection ~ 3925 4625
Connection ~ 6250 4725
Connection ~ 5925 4525
Connection ~ 5925 4425
Connection ~ 5925 4325
Connection ~ 6550 4025
Connection ~ 6550 3525
Connection ~ 6550 3025
Connection ~ 6850 2525
Connection ~ 7625 2525
Connection ~ 7325 2525
Connection ~ 7625 2925
Connection ~ 7325 2925
Connection ~ 6850 1500
Connection ~ 6575 1500
Connection ~ 5950 2225
Connection ~ 5950 2525
Connection ~ 8875 3900
Connection ~ 8875 4425
Connection ~ 8875 4950
Connection ~ 8875 5475
Connection ~ 2900 6375
Connection ~ 2700 6150
Connection ~ 2700 6700
Connection ~ 4500 6375
Connection ~ 4750 6775
Connection ~ 4275 6375
NoConn ~ 4225 2325
NoConn ~ 4225 2425
NoConn ~ 4225 3125
NoConn ~ 4225 4425
NoConn ~ 4225 4525
NoConn ~ 5825 2125
$EndSCHEMATC
