EESchema Schematic File Version 4
LIBS:VESC_6-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
L crf_1:NRF24L01 U8
U 1 1 5A8BF95B
P 4175 3675
F 0 "U8" H 4500 4250 60  0000 C CNN
F 1 "NRF24L01P" H 4800 3050 60  0000 C CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_4x4mm_P0.5mm_EP2.5x2.5mm" H 4175 3675 60  0001 C CNN
F 3 "" H 4175 3675 60  0001 C CNN
F 4 "nRF24L01P-T" H 4175 3675 60  0001 C CNN "manf#"
	1    4175 3675
	1    0    0    -1  
$EndComp
$Comp
L Device:C C50
U 1 1 5A8C0243
P 4100 4975
F 0 "C50" H 3925 5050 50  0000 L CNN
F 1 "100n" H 3900 4900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4138 4825 50  0001 C CNN
F 3 "" H 4100 4975 50  0001 C CNN
F 4 "C0603X104J5RACTU" H 3925 5150 50  0001 C CNN "manf#"
	1    4100 4975
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR080
U 1 1 5A8C02F4
P 4100 5200
F 0 "#PWR080" H 4100 4950 50  0001 C CNN
F 1 "GND" H 4100 5050 50  0000 C CNN
F 2 "" H 4100 5200 50  0001 C CNN
F 3 "" H 4100 5200 50  0001 C CNN
	1    4100 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR081
U 1 1 5A8C05BC
P 5250 5200
F 0 "#PWR081" H 5250 4950 50  0001 C CNN
F 1 "GND" H 5250 5050 50  0000 C CNN
F 2 "" H 5250 5200 50  0001 C CNN
F 3 "" H 5250 5200 50  0001 C CNN
	1    5250 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C51
U 1 1 5A8C05D6
P 4975 4625
F 0 "C51" V 5025 4725 50  0000 L CNN
F 1 "15p" V 5025 4425 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5013 4475 50  0001 C CNN
F 3 "" H 4975 4625 50  0001 C CNN
F 4 "06031A150JAT2A" H 5025 4825 50  0001 C CNN "manf#"
	1    4975 4625
	0    1    -1   0   
$EndComp
$Comp
L Device:C C52
U 1 1 5A8C0883
P 4975 5125
F 0 "C52" V 5025 5225 50  0000 L CNN
F 1 "15p" V 5025 4925 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5013 4975 50  0001 C CNN
F 3 "" H 4975 5125 50  0001 C CNN
F 4 "06031A150JAT2A" H 5025 5325 50  0001 C CNN "manf#"
	1    4975 5125
	0    1    -1   0   
$EndComp
$Comp
L Device:L L5
U 1 1 5A8C0D3C
P 6350 4050
F 0 "L5" V 6225 4050 50  0000 C CNN
F 1 "2.7n" V 6300 4050 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 6350 4050 50  0001 C CNN
F 3 "" H 6350 4050 50  0001 C CNN
F 4 "LQG18HN2N7S00D" H 6225 4150 50  0001 C CNN "manf#"
	1    6350 4050
	0    1    1    0   
$EndComp
$Comp
L Device:L L3
U 1 1 5A8C0DD7
P 5925 3700
F 0 "L3" H 5975 3725 50  0000 L CNN
F 1 "8.2n" H 5975 3650 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 5925 3700 50  0001 C CNN
F 3 "" H 5925 3700 50  0001 C CNN
F 4 "LQG18HN8N2J00D" H 5975 3825 50  0001 C CNN "manf#"
	1    5925 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C56
U 1 1 5A8C100C
P 6975 3350
F 0 "C56" V 7225 3275 50  0000 L CNN
F 1 "1.5p" V 7125 3275 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7013 3200 50  0001 C CNN
F 3 "" H 6975 3350 50  0001 C CNN
F 4 "GRM1555C2A1R5CA01D" H 7225 3375 50  0001 C CNN "manf#"
	1    6975 3350
	0    1    -1   0   
$EndComp
$Comp
L Device:C C57
U 1 1 5A8C10BB
P 7250 3600
F 0 "C57" H 7375 3650 50  0000 L CNN
F 1 "1p" H 7375 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7288 3450 50  0001 C CNN
F 3 "" H 7250 3600 50  0001 C CNN
F 4 "GRM1555C2A1R0CA01D" H 7375 3750 50  0001 C CNN "manf#"
	1    7250 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C55
U 1 1 5A8C11A3
P 6625 4600
F 0 "C55" H 6750 4650 50  0000 L CNN
F 1 "4.7p" H 6750 4575 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6663 4450 50  0001 C CNN
F 3 "" H 6625 4600 50  0001 C CNN
F 4 "GRM1555C2A4R7WA01D" H 6750 4750 50  0001 C CNN "manf#"
	1    6625 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C54
U 1 1 5A8C177A
P 6200 4600
F 0 "C54" H 6325 4650 50  0000 L CNN
F 1 "2.2n" H 6325 4575 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6238 4450 50  0001 C CNN
F 3 "" H 6200 4600 50  0001 C CNN
F 4 "GRM155R71H222JA01J" H 6325 4750 50  0001 C CNN "manf#"
	1    6200 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR082
U 1 1 5A8C1A0B
P 6200 4850
F 0 "#PWR082" H 6200 4600 50  0001 C CNN
F 1 "GND" H 6200 4700 50  0000 C CNN
F 2 "" H 6200 4850 50  0001 C CNN
F 3 "" H 6200 4850 50  0001 C CNN
	1    6200 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR083
U 1 1 5A8C1A46
P 6625 4875
F 0 "#PWR083" H 6625 4625 50  0001 C CNN
F 1 "GND" H 6625 4725 50  0000 C CNN
F 2 "" H 6625 4875 50  0001 C CNN
F 3 "" H 6625 4875 50  0001 C CNN
	1    6625 4875
	1    0    0    -1  
$EndComp
$Comp
L Device:L L4
U 1 1 5A8C20CF
P 6350 3350
F 0 "L4" V 6225 3350 50  0000 C CNN
F 1 "3.9n" V 6300 3350 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 6350 3350 50  0001 C CNN
F 3 "" H 6350 3350 50  0001 C CNN
F 4 "LQG18HN3N9S00D" H 6225 3450 50  0001 C CNN "manf#"
	1    6350 3350
	0    1    1    0   
$EndComp
$Comp
L Device:C C53
U 1 1 5A8C25E3
P 5150 2950
F 0 "C53" H 5275 3000 50  0000 L CNN
F 1 "100n" H 5275 2925 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5188 2800 50  0001 C CNN
F 3 "" H 5150 2950 50  0001 C CNN
F 4 "C0603X104J5RACTU" H 5275 3100 50  0001 C CNN "manf#"
	1    5150 2950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR084
U 1 1 5A8C263D
P 5150 2700
F 0 "#PWR084" H 5150 2550 50  0001 C CNN
F 1 "VCC" H 5150 2850 50  0000 C CNN
F 2 "" H 5150 2700 50  0001 C CNN
F 3 "" H 5150 2700 50  0001 C CNN
	1    5150 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR085
U 1 1 5A8C279F
P 5325 3375
F 0 "#PWR085" H 5325 3125 50  0001 C CNN
F 1 "GND" H 5325 3225 50  0000 C CNN
F 2 "" H 5325 3375 50  0001 C CNN
F 3 "" H 5325 3375 50  0001 C CNN
	1    5325 3375
	1    0    0    -1  
$EndComp
$Comp
L Device:C C48
U 1 1 5A8C2C8C
P 3375 2725
F 0 "C48" H 3500 2775 50  0000 L CNN
F 1 "100n" H 3500 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3413 2575 50  0001 C CNN
F 3 "" H 3375 2725 50  0001 C CNN
F 4 "C0603X104J5RACTU" H 3500 2875 50  0001 C CNN "manf#"
	1    3375 2725
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR086
U 1 1 5A8C2C92
P 3375 2100
F 0 "#PWR086" H 3375 1950 50  0001 C CNN
F 1 "VCC" H 3375 2250 50  0000 C CNN
F 2 "" H 3375 2100 50  0001 C CNN
F 3 "" H 3375 2100 50  0001 C CNN
	1    3375 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR087
U 1 1 5A8C2C9C
P 3375 3125
F 0 "#PWR087" H 3375 2875 50  0001 C CNN
F 1 "GND" H 3375 2975 50  0000 C CNN
F 2 "" H 3375 3125 50  0001 C CNN
F 3 "" H 3375 3125 50  0001 C CNN
	1    3375 3125
	1    0    0    -1  
$EndComp
$Comp
L Device:R R38
U 1 1 5A8C2D4F
P 4425 2650
F 0 "R38" H 4575 2700 50  0000 C CNN
F 1 "22k" H 4575 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4355 2650 50  0001 C CNN
F 3 "" H 4425 2650 50  0001 C CNN
F 4 "CR0603-FX-2202ELF" H 4575 2800 50  0001 C CNN "manf#"
	1    4425 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C49
U 1 1 5A8C324C
P 4125 2675
F 0 "C49" V 4175 2825 50  0000 L CNN
F 1 "100n" V 4175 2425 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4163 2525 50  0001 C CNN
F 3 "" H 4125 2675 50  0001 C CNN
F 4 "C0603X104J5RACTU" H 4175 2925 50  0001 C CNN "manf#"
	1    4125 2675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR088
U 1 1 5A8C3C08
P 4450 4925
F 0 "#PWR088" H 4450 4675 50  0001 C CNN
F 1 "GND" H 4450 4775 50  0000 C CNN
F 2 "" H 4450 4925 50  0001 C CNN
F 3 "" H 4450 4925 50  0001 C CNN
	1    4450 4925
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR089
U 1 1 5A8D4D10
P 3800 4625
F 0 "#PWR089" H 3800 4475 50  0001 C CNN
F 1 "VCC" H 3800 4775 50  0000 C CNN
F 2 "" H 3800 4625 50  0001 C CNN
F 3 "" H 3800 4625 50  0001 C CNN
	1    3800 4625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR090
U 1 1 5A8C2451
P 7250 3950
F 0 "#PWR090" H 7250 3700 50  0001 C CNN
F 1 "GND" H 7250 3800 50  0000 C CNN
F 2 "" H 7250 3950 50  0001 C CNN
F 3 "" H 7250 3950 50  0001 C CNN
	1    7250 3950
	1    0    0    -1  
$EndComp
$Comp
L crf_1:CONN_U_FL U9
U 1 1 5A92E5F0
P 8250 3750
F 0 "U9" H 8275 3600 60  0000 C CNN
F 1 "CONN_U_FL" H 8275 3500 60  0000 C CNN
F 2 "Connector_Coaxial:U.FL_Hirose_U.FL-R-SMT-1_Vertical" H 8200 3400 60  0001 C CNN
F 3 "" H 8200 3400 60  0001 C CNN
F 4 "U.FL-R-SMT-1(40)" H 8275 3700 50  0001 C CNN "manf#"
	1    8250 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR091
U 1 1 5A92EFDF
P 7825 4150
F 0 "#PWR091" H 7825 3900 50  0001 C CNN
F 1 "GND" H 7825 4000 50  0000 C CNN
F 2 "" H 7825 4150 50  0001 C CNN
F 3 "" H 7825 4150 50  0001 C CNN
	1    7825 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR092
U 1 1 5A92F284
P 8675 4175
F 0 "#PWR092" H 8675 3925 50  0001 C CNN
F 1 "GND" H 8675 4025 50  0000 C CNN
F 2 "" H 8675 4175 50  0001 C CNN
F 3 "" H 8675 4175 50  0001 C CNN
	1    8675 4175
	1    0    0    -1  
$EndComp
$Comp
L crf_1:CRYSTAL_SMD X2
U 1 1 5A94122D
P 4625 4875
F 0 "X2" V 4575 5000 50  0000 C CNN
F 1 "16M" V 4675 4950 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_5032-4Pin_5.0x3.2mm" H 4625 4875 60  0001 C CNN
F 3 "" H 4625 4875 60  0000 C CNN
F 4 "ABM3B-16.000MHZ-10-1-U-T" H 4575 5100 50  0001 C CNN "manf#"
	1    4625 4875
	0    1    1    0   
$EndComp
Text HLabel 3475 3475 0    60   Input ~ 0
CE
Text HLabel 3475 3575 0    60   Input ~ 0
CSN
Text HLabel 3475 3675 0    60   Input ~ 0
SCK
Text HLabel 3475 3775 0    60   Input ~ 0
MOSI
Text HLabel 3475 3875 0    60   Input ~ 0
MISO
Text HLabel 4000 4400 3    60   Input ~ 0
IRQ
Wire Wire Line
	4200 4400 4200 5175
Wire Wire Line
	4100 4400 4100 4725
Wire Wire Line
	4400 4400 4400 4625
Wire Wire Line
	4400 4625 4625 4625
Wire Wire Line
	4300 4400 4300 5125
Wire Wire Line
	5125 4625 5250 4625
Wire Wire Line
	5250 4625 5250 5125
Wire Wire Line
	4625 5075 4625 5125
Wire Wire Line
	4300 5125 4625 5125
Wire Wire Line
	5125 5125 5250 5125
Wire Wire Line
	5700 4050 5700 3775
Wire Wire Line
	5700 3775 4950 3775
Wire Wire Line
	4950 3675 5700 3675
Wire Wire Line
	5700 3675 5700 3350
Wire Wire Line
	5700 3350 5925 3350
Wire Wire Line
	4950 3875 5600 3875
Wire Wire Line
	5600 3875 5600 4350
Wire Wire Line
	5600 4350 6200 4350
Wire Wire Line
	6825 4350 6825 4050
Wire Wire Line
	5150 3575 4950 3575
Wire Wire Line
	5150 3150 5325 3150
Wire Wire Line
	4325 2350 4325 2950
Wire Wire Line
	3725 3075 3725 2350
Wire Wire Line
	3375 3075 3725 3075
Wire Wire Line
	4225 2950 4225 2225
Wire Wire Line
	4225 2225 3375 2225
Wire Wire Line
	4025 2350 4025 2950
Wire Wire Line
	3800 4625 3800 4725
Wire Wire Line
	3800 4725 4100 4725
Wire Wire Line
	4425 2350 4425 2500
Wire Wire Line
	4425 2800 4425 2950
Wire Wire Line
	3925 2950 3925 2350
Wire Wire Line
	4100 5125 4100 5175
Wire Wire Line
	4200 5175 4100 5175
Wire Wire Line
	5150 2700 5150 2775
Wire Wire Line
	5150 3100 5150 3150
Wire Wire Line
	4950 3475 5050 3475
Wire Wire Line
	5050 3475 5050 2775
Wire Wire Line
	5050 2775 5150 2775
Wire Wire Line
	3375 2100 3375 2225
Wire Wire Line
	3375 2875 3375 3075
Wire Wire Line
	4125 2825 4125 2950
Wire Wire Line
	4125 2350 4125 2525
Wire Wire Line
	6825 3350 6500 3350
Wire Wire Line
	7250 3350 7250 3450
Wire Wire Line
	5325 3150 5325 3375
Wire Wire Line
	5700 4050 5925 4050
Wire Wire Line
	5925 3850 5925 4050
Wire Wire Line
	5925 3550 5925 3350
Wire Wire Line
	7250 3750 7250 3950
Wire Wire Line
	6825 4050 6500 4050
Wire Wire Line
	6200 4450 6200 4350
Wire Wire Line
	6200 4750 6200 4850
Wire Wire Line
	6625 4450 6625 4350
Wire Wire Line
	6625 4750 6625 4875
Wire Wire Line
	7125 3350 7250 3350
Wire Wire Line
	8250 3350 8250 3450
Wire Wire Line
	7950 3750 7825 3750
Wire Wire Line
	7825 3750 7825 4150
Wire Wire Line
	8550 3750 8675 3750
Wire Wire Line
	8675 3750 8675 4175
Wire Wire Line
	4625 4675 4625 4625
Wire Wire Line
	4525 4875 4450 4875
Wire Wire Line
	4450 4875 4450 4925
Wire Wire Line
	3725 2350 3925 2350
Connection ~ 4625 4625
Connection ~ 4625 5125
Connection ~ 5250 5125
Connection ~ 3375 2225
Connection ~ 4025 2350
Connection ~ 4100 4725
Connection ~ 3925 2350
Connection ~ 4100 5175
Connection ~ 5150 3150
Connection ~ 5150 2775
Connection ~ 3375 3075
Connection ~ 5925 4050
Connection ~ 5925 3350
Connection ~ 6200 4350
Connection ~ 6625 4350
Connection ~ 7250 3350
Connection ~ 4125 2350
Connection ~ 4325 2350
Wire Wire Line
	4625 4625 4825 4625
Wire Wire Line
	4625 5125 4825 5125
Wire Wire Line
	5250 5125 5250 5200
Wire Wire Line
	3375 2225 3375 2575
Wire Wire Line
	4025 2350 4125 2350
Wire Wire Line
	4100 4725 4100 4825
Wire Wire Line
	3925 2350 4025 2350
Wire Wire Line
	4100 5175 4100 5200
Wire Wire Line
	5150 3150 5150 3575
Wire Wire Line
	5150 2775 5150 2800
Wire Wire Line
	3375 3075 3375 3125
Wire Wire Line
	5925 4050 6200 4050
Wire Wire Line
	5925 3350 6200 3350
Wire Wire Line
	6200 4350 6625 4350
Wire Wire Line
	6625 4350 6825 4350
Wire Wire Line
	7250 3350 8250 3350
Wire Wire Line
	4125 2350 4325 2350
Wire Wire Line
	4325 2350 4425 2350
$EndSCHEMATC
