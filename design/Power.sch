EESchema Schematic File Version 4
LIBS:VESC_6-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
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
L crf_1:IRF7749 Q1
U 1 1 5A8AC7BA
P 3450 2100
F 0 "Q1" H 3700 2175 50  0000 L CNN
F 1 "IRF7749" H 3150 2250 50  0000 L CNN
F 2 "IR-DirectFETs:DirectFET_L8" H 3700 2025 50  0001 L CIN
F 3 "" H 3450 2100 50  0001 L CNN
F 4 "IRF7749L1TRPBF" H 3450 2100 60  0001 C CNN "manf#"
	1    3450 2100
	1    0    0    -1  
$EndComp
$Comp
L crf_1:IRF7749 Q2
U 1 1 5A8AC8BF
P 3450 3200
F 0 "Q2" H 3700 3275 50  0000 L CNN
F 1 "IRF7749" H 3150 3350 50  0000 L CNN
F 2 "IR-DirectFETs:DirectFET_L8" H 3700 3125 50  0001 L CIN
F 3 "" H 3450 3200 50  0001 L CNN
F 4 "IRF7749L1TRPBF" H 3450 3200 60  0001 C CNN "manf#"
	1    3450 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 5A8ADEEE
P 2900 3200
F 0 "R26" V 3000 3200 50  0000 C CNN
F 1 "4.7R" V 2900 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2900 3200 60  0001 C CNN
F 3 "" H 2900 3200 60  0001 C CNN
F 4 "CRCW06034R70FKEA" H 3000 3300 50  0001 C CNN "manf#"
	1    2900 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 5A8ADEF4
P 2900 2100
F 0 "R25" V 3000 2100 50  0000 C CNN
F 1 "4.7R" V 2900 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2900 2100 60  0001 C CNN
F 3 "" H 2900 2100 60  0001 C CNN
F 4 "CRCW06034R70FKEA" H 3000 2200 50  0001 C CNN "manf#"
	1    2900 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R35
U 1 1 5A8ADF24
P 1875 5175
F 0 "R35" V 1975 5175 50  0000 C CNN
F 1 "100R" V 1775 5175 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1875 5175 60  0001 C CNN
F 3 "" H 1875 5175 60  0001 C CNN
F 4 "CR0603-FX-1000ELF" H 1975 5275 50  0001 C CNN "manf#"
	1    1875 5175
	0    1    -1   0   
$EndComp
$Comp
L Device:C C35
U 1 1 5A8B0819
P 1675 3775
F 0 "C35" H 1700 3875 50  0000 L CNN
F 1 "2.2u" H 1700 3675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1713 3625 50  0001 C CNN
F 3 "" H 1675 3775 50  0001 C CNN
F 4 "C1608X5R1C225K080AB" H 1700 3975 50  0001 C CNN "manf#"
	1    1675 3775
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR066
U 1 1 5A8B0CD9
P 1075 3600
F 0 "#PWR066" H 1075 3350 50  0001 C CNN
F 1 "GND" H 1075 3450 50  0000 C CNN
F 2 "" H 1075 3600 50  0001 C CNN
F 3 "" H 1075 3600 50  0001 C CNN
	1    1075 3600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR067
U 1 1 5A8AEDC4
P 2200 3200
F 0 "#PWR067" H 2200 3050 50  0001 C CNN
F 1 "VCC" H 2200 3350 50  0000 C CNN
F 2 "" H 2200 3200 50  0001 C CNN
F 3 "" H 2200 3200 50  0001 C CNN
	1    2200 3200
	1    0    0    -1  
$EndComp
$Comp
L crf_1:SHUNT R24
U 1 1 5A8AF798
P 1675 2425
F 0 "R24" V 1825 2425 50  0000 C CNN
F 1 "0.0005R" V 1755 2425 50  0000 C CNN
F 2 "CRF1:SHUNT_CSS2H-3920" H 1675 2425 60  0001 C CNN
F 3 "" H 1675 2425 60  0000 C CNN
F 4 "CSS2H-3920R-L500FE" H 1825 2525 50  0001 C CNN "manf#"
	1    1675 2425
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C37
U 1 1 5A8B2971
P 3875 2600
F 0 "C37" V 3800 2475 50  0000 C TNN
F 1 "4.7u_100V" V 3800 2850 50  0000 C TNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 3913 2450 50  0001 C CNN
F 3 "" H 3875 2600 50  0001 C CNN
F 4 "CGA6M3X7S2A475K200AE" H 3800 2575 50  0001 C CNN "manf#"
	1    3875 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C39
U 1 1 5A8B4E36
P 4075 2600
F 0 "C39" V 4000 2475 50  0000 C TNN
F 1 "4.7u_100V" V 4000 2850 50  0000 C TNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 4113 2450 50  0001 C CNN
F 3 "" H 4075 2600 50  0001 C CNN
F 4 "CGA6M3X7S2A475K200AE" H 4000 2575 50  0001 C CNN "manf#"
	1    4075 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 5A8B7F64
P 1125 2425
F 0 "P8" H 1125 2325 50  0000 C CNN
F 1 "PH_A" H 1325 2425 50  0000 C CNN
F 2 "CRF1:1PAD_4x5mm" H 1125 2425 50  0001 C CNN
F 3 "" H 1125 2425 50  0001 C CNN
	1    1125 2425
	-1   0    0    -1  
$EndComp
$Comp
L crf_1:IRF7749 Q3
U 1 1 5A8B9A3B
P 6800 2100
F 0 "Q3" H 7050 2175 50  0000 L CNN
F 1 "IRF7749" H 6500 2250 50  0000 L CNN
F 2 "IR-DirectFETs:DirectFET_L8" H 7050 2025 50  0001 L CIN
F 3 "" H 6800 2100 50  0001 L CNN
F 4 "IRF7749L1TRPBF" H 6800 2100 60  0001 C CNN "manf#"
	1    6800 2100
	1    0    0    -1  
$EndComp
$Comp
L crf_1:IRF7749 Q4
U 1 1 5A8B9A41
P 6800 3200
F 0 "Q4" H 7050 3275 50  0000 L CNN
F 1 "IRF7749" H 6500 3350 50  0000 L CNN
F 2 "IR-DirectFETs:DirectFET_L8" H 7050 3125 50  0001 L CIN
F 3 "" H 6800 3200 50  0001 L CNN
F 4 "IRF7749L1TRPBF" H 6800 3200 60  0001 C CNN "manf#"
	1    6800 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 5A8B9A47
P 6250 3200
F 0 "R31" V 6350 3200 50  0000 C CNN
F 1 "4.7R" V 6250 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6250 3200 60  0001 C CNN
F 3 "" H 6250 3200 60  0001 C CNN
F 4 "CRCW06034R70FKEA" H 6350 3300 50  0001 C CNN "manf#"
	1    6250 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R30
U 1 1 5A8B9A4D
P 6250 2100
F 0 "R30" V 6350 2100 50  0000 C CNN
F 1 "4.7R" V 6250 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6250 2100 60  0001 C CNN
F 3 "" H 6250 2100 60  0001 C CNN
F 4 "CRCW06034R70FKEA" H 6350 2200 50  0001 C CNN "manf#"
	1    6250 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR068
U 1 1 5A8B9A62
P 4425 3600
F 0 "#PWR068" H 4425 3350 50  0001 C CNN
F 1 "GND" H 4425 3450 50  0000 C CNN
F 2 "" H 4425 3600 50  0001 C CNN
F 3 "" H 4425 3600 50  0001 C CNN
	1    4425 3600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR069
U 1 1 5A8B9A68
P 5550 3200
F 0 "#PWR069" H 5550 3050 50  0001 C CNN
F 1 "VCC" H 5550 3350 50  0000 C CNN
F 2 "" H 5550 3200 50  0001 C CNN
F 3 "" H 5550 3200 50  0001 C CNN
	1    5550 3200
	1    0    0    -1  
$EndComp
$Comp
L crf_1:SHUNT R29
U 1 1 5A8B9A6E
P 5025 2425
F 0 "R29" V 5175 2425 50  0000 C CNN
F 1 "0.0005R" V 5105 2425 50  0000 C CNN
F 2 "CRF1:SHUNT_CSS2H-3920" H 5025 2425 60  0001 C CNN
F 3 "" H 5025 2425 60  0000 C CNN
F 4 "CSS2H-3920R-L500FE" H 5175 2525 50  0001 C CNN "manf#"
	1    5025 2425
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C41
U 1 1 5A8B9A74
P 7225 2600
F 0 "C41" V 7150 2475 50  0000 C TNN
F 1 "4.7u_100V" V 7150 2850 50  0000 C TNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 7263 2450 50  0001 C CNN
F 3 "" H 7225 2600 50  0001 C CNN
F 4 "CGA6M3X7S2A475K200AE" H 7150 2575 50  0001 C CNN "manf#"
	1    7225 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C40
U 1 1 5A8B9A7A
P 7425 2600
F 0 "C40" V 7350 2475 50  0000 C TNN
F 1 "4.7u_100V" V 7350 2850 50  0000 C TNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 7463 2450 50  0001 C CNN
F 3 "" H 7425 2600 50  0001 C CNN
F 4 "CGA6M3X7S2A475K200AE" H 7350 2575 50  0001 C CNN "manf#"
	1    7425 2600
	1    0    0    -1  
$EndComp
$Comp
L crf_1:IRF7749 Q5
U 1 1 5A8BA251
P 10125 2100
F 0 "Q5" H 10375 2175 50  0000 L CNN
F 1 "IRF7749" H 9825 2250 50  0000 L CNN
F 2 "IR-DirectFETs:DirectFET_L8" H 10375 2025 50  0001 L CIN
F 3 "" H 10125 2100 50  0001 L CNN
F 4 "IRF7749L1TRPBF" H 10125 2100 60  0001 C CNN "manf#"
	1    10125 2100
	1    0    0    -1  
$EndComp
$Comp
L crf_1:IRF7749 Q6
U 1 1 5A8BA257
P 10125 3200
F 0 "Q6" H 10375 3275 50  0000 L CNN
F 1 "IRF7749" H 9825 3350 50  0000 L CNN
F 2 "IR-DirectFETs:DirectFET_L8" H 10375 3125 50  0001 L CIN
F 3 "" H 10125 3200 50  0001 L CNN
F 4 "IRF7749L1TRPBF" H 10125 3200 60  0001 C CNN "manf#"
	1    10125 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R34
U 1 1 5A8BA25D
P 9575 3200
F 0 "R34" V 9675 3200 50  0000 C CNN
F 1 "4.7R" V 9575 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9575 3200 60  0001 C CNN
F 3 "" H 9575 3200 60  0001 C CNN
F 4 "CRCW06034R70FKEA" H 9675 3300 50  0001 C CNN "manf#"
	1    9575 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R33
U 1 1 5A8BA263
P 9575 2100
F 0 "R33" V 9675 2100 50  0000 C CNN
F 1 "4.7R" V 9575 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9575 2100 60  0001 C CNN
F 3 "" H 9575 2100 60  0001 C CNN
F 4 "CRCW06034R70FKEA" H 9675 2200 50  0001 C CNN "manf#"
	1    9575 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR070
U 1 1 5A8BA278
P 7750 3600
F 0 "#PWR070" H 7750 3350 50  0001 C CNN
F 1 "GND" H 7750 3450 50  0000 C CNN
F 2 "" H 7750 3600 50  0001 C CNN
F 3 "" H 7750 3600 50  0001 C CNN
	1    7750 3600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR071
U 1 1 5A8BA27E
P 8875 3200
F 0 "#PWR071" H 8875 3050 50  0001 C CNN
F 1 "VCC" H 8875 3350 50  0000 C CNN
F 2 "" H 8875 3200 50  0001 C CNN
F 3 "" H 8875 3200 50  0001 C CNN
	1    8875 3200
	1    0    0    -1  
$EndComp
$Comp
L crf_1:SHUNT R32
U 1 1 5A8BA284
P 8350 2425
F 0 "R32" V 8500 2425 50  0000 C CNN
F 1 "0.0005R" V 8430 2425 50  0000 C CNN
F 2 "CRF1:SHUNT_CSS2H-3920" H 8350 2425 60  0001 C CNN
F 3 "" H 8350 2425 60  0000 C CNN
F 4 "CSS2H-3920R-L500FE" H 8500 2525 50  0001 C CNN "manf#"
	1    8350 2425
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C43
U 1 1 5A8BA28A
P 10550 2600
F 0 "C43" V 10475 2475 50  0000 C TNN
F 1 "4.7u_100V" V 10475 2850 50  0000 C TNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 10588 2450 50  0001 C CNN
F 3 "" H 10550 2600 50  0001 C CNN
F 4 "CGA6M3X7S2A475K200AE" H 10475 2575 50  0001 C CNN "manf#"
	1    10550 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C44
U 1 1 5A8BA290
P 10750 2600
F 0 "C44" V 10675 2475 50  0000 C TNN
F 1 "4.7u_100V" V 10675 2850 50  0000 C TNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 10788 2450 50  0001 C CNN
F 3 "" H 10750 2600 50  0001 C CNN
F 4 "CGA6M3X7S2A475K200AE" H 10675 2575 50  0001 C CNN "manf#"
	1    10750 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR072
U 1 1 5A8BC674
P 10225 4300
F 0 "#PWR072" H 10225 4050 50  0001 C CNN
F 1 "GND" H 10225 4150 50  0000 C CNN
F 2 "" H 10225 4300 50  0001 C CNN
F 3 "" H 10225 4300 50  0001 C CNN
	1    10225 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P12
U 1 1 5A8BD287
P 10600 4200
F 0 "P12" H 10600 4300 50  0000 C CNN
F 1 "GND" H 10600 4100 50  0000 C CNN
F 2 "CRF1:1PAD_6x5mm" H 10600 4200 50  0001 C CNN
F 3 "" H 10600 4200 50  0001 C CNN
	1    10600 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P11
U 1 1 5A8BE23A
P 10600 1450
F 0 "P11" H 10600 1550 50  0000 C CNN
F 1 "SUPPLY" H 10600 1350 50  0000 C CNN
F 2 "CRF1:1PAD_6x5mm" H 10600 1450 50  0001 C CNN
F 3 "" H 10600 1450 50  0001 C CNN
	1    10600 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C29
U 1 1 5A8C5114
P 1475 5400
F 0 "C29" H 1575 5435 50  0000 L CNN
F 1 "4.7n" H 1575 5365 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1513 5350 50  0001 C CNN
F 3 "" H 1475 5400 50  0001 C CNN
F 4 "GRM188R71H472JA01J" H 1575 5535 50  0001 C CNN "manf#"
	1    1475 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR073
U 1 1 5A8C522B
P 1475 5650
F 0 "#PWR073" H 1475 5400 50  0001 C CNN
F 1 "GND" H 1475 5500 50  0000 C CNN
F 2 "" H 1475 5650 50  0001 C CNN
F 3 "" H 1475 5650 50  0001 C CNN
	1    1475 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R36
U 1 1 5A8C6C1F
P 1875 5950
F 0 "R36" V 1975 5950 50  0000 C CNN
F 1 "100R" V 1775 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1875 5950 60  0001 C CNN
F 3 "" H 1875 5950 60  0001 C CNN
F 4 "CR0603-FX-1000ELF" H 1975 6050 50  0001 C CNN "manf#"
	1    1875 5950
	0    1    -1   0   
$EndComp
$Comp
L Device:C C30
U 1 1 5A8C6C26
P 1475 6175
F 0 "C30" H 1575 6210 50  0000 L CNN
F 1 "4.7n" H 1575 6140 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1513 6125 50  0001 C CNN
F 3 "" H 1475 6175 50  0001 C CNN
F 4 "GRM188R71H472JA01J" H 1575 6310 50  0001 C CNN "manf#"
	1    1475 6175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR074
U 1 1 5A8C6C2C
P 1475 6425
F 0 "#PWR074" H 1475 6175 50  0001 C CNN
F 1 "GND" H 1475 6275 50  0000 C CNN
F 2 "" H 1475 6425 50  0001 C CNN
F 3 "" H 1475 6425 50  0001 C CNN
	1    1475 6425
	1    0    0    -1  
$EndComp
$Comp
L Device:R R37
U 1 1 5A8C6E0E
P 1875 6725
F 0 "R37" V 1975 6725 50  0000 C CNN
F 1 "100R" V 1775 6725 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1875 6725 60  0001 C CNN
F 3 "" H 1875 6725 60  0001 C CNN
F 4 "CR0603-FX-1000ELF" H 1975 6825 50  0001 C CNN "manf#"
	1    1875 6725
	0    1    -1   0   
$EndComp
$Comp
L Device:C C45
U 1 1 5A8C6E15
P 1475 6950
F 0 "C45" H 1575 6985 50  0000 L CNN
F 1 "4.7n" H 1575 6915 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1513 6900 50  0001 C CNN
F 3 "" H 1475 6950 50  0001 C CNN
F 4 "GRM188R71H472JA01J" H 1575 7085 50  0001 C CNN "manf#"
	1    1475 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR075
U 1 1 5A8C6E1B
P 1475 7200
F 0 "#PWR075" H 1475 6950 50  0001 C CNN
F 1 "GND" H 1475 7050 50  0000 C CNN
F 2 "" H 1475 7200 50  0001 C CNN
F 3 "" H 1475 7200 50  0001 C CNN
	1    1475 7200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 5A8CA3C8
P 3950 5825
F 0 "R27" V 4030 5825 40  0000 C CNN
F 1 "NTC 10k" V 3850 5826 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 5825 30  0001 C CNN
F 3 "" H 3950 5825 30  0000 C CNN
F 4 "NCP18XH103F03RB" H 4030 5925 50  0001 C CNN "manf#"
	1    3950 5825
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 5A8CA3C9
P 3950 6525
F 0 "R28" V 4030 6525 40  0000 C CNN
F 1 "10k" V 3850 6526 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3880 6525 30  0001 C CNN
F 3 "" H 3950 6525 30  0000 C CNN
F 4 "CR0603-FX-1002ELF" H 4030 6625 50  0001 C CNN "manf#"
	1    3950 6525
	1    0    0    -1  
$EndComp
$Comp
L Device:C C36
U 1 1 5A8CA3CA
P 3700 6525
F 0 "C36" H 3725 6625 40  0000 L CNN
F 1 "2.2u" H 3725 6450 40  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3738 6375 30  0001 C CNN
F 3 "" H 3700 6525 60  0000 C CNN
F 4 "C1608X5R1C225K080AB" H 3725 6725 50  0001 C CNN "manf#"
	1    3700 6525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR076
U 1 1 5A8CB36F
P 3950 7025
F 0 "#PWR076" H 3950 6775 50  0001 C CNN
F 1 "GND" H 3950 6875 50  0000 C CNN
F 2 "" H 3950 7025 50  0001 C CNN
F 3 "" H 3950 7025 50  0001 C CNN
	1    3950 7025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR077
U 1 1 5A8CB3F5
P 3950 7025
F 0 "#PWR077" H 3950 6775 50  0001 C CNN
F 1 "GND" H 3950 6875 50  0000 C CNN
F 2 "" H 3950 7025 50  0001 C CNN
F 3 "" H 3950 7025 50  0001 C CNN
	1    3950 7025
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR078
U 1 1 5A8CBD44
P 3950 5475
F 0 "#PWR078" H 3950 5325 50  0001 C CNN
F 1 "VCC" H 3950 5625 50  0000 C CNN
F 2 "" H 3950 5475 50  0001 C CNN
F 3 "" H 3950 5475 50  0001 C CNN
	1    3950 5475
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C46
U 1 1 5A97FCAA
P 8750 5325
F 0 "C46" H 8850 5375 50  0000 L CNN
F 1 "680u_63V" H 8850 5300 50  0000 L CNN
F 2 "CRF1:CP_Radial_D12.5mm_P5.00mm" H 8750 5325 50  0001 C CNN
F 3 "" H 8750 5325 50  0001 C CNN
F 4 "EKZN630ELL681MK30S" H 8850 5475 50  0001 C CNN "manf#"
	1    8750 5325
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR079
U 1 1 5A980197
P 9350 5600
F 0 "#PWR079" H 9350 5350 50  0001 C CNN
F 1 "GND" H 9350 5450 50  0000 C CNN
F 2 "" H 9350 5600 50  0001 C CNN
F 3 "" H 9350 5600 50  0001 C CNN
	1    9350 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C47
U 1 1 5A98145F
P 9350 5325
F 0 "C47" H 9450 5375 50  0000 L CNN
F 1 "680u_63V" H 9450 5300 50  0000 L CNN
F 2 "CRF1:CP_Radial_D12.5mm_P5.00mm" H 9350 5325 50  0001 C CNN
F 3 "" H 9350 5325 50  0001 C CNN
F 4 "EKZN630ELL681MK30S" H 9450 5475 50  0001 C CNN "manf#"
	1    9350 5325
	1    0    0    -1  
$EndComp
$Comp
L crf_1:AD8418-CST U5
U 1 1 5A94CF40
P 1675 3275
F 0 "U5" H 1375 3700 50  0000 R CNN
F 1 "AD8418" H 1825 2925 50  0000 R CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 1725 2925 50  0001 C CNN
F 3 "" H 2325 2575 50  0001 C CNN
F 4 "AD8418AWBRMZ" H 1375 3800 50  0001 C CNN "manf#"
	1    1675 3275
	-1   0    0    -1  
$EndComp
$Comp
L crf_1:AD8418-CST U6
U 1 1 5A94D5D9
P 5025 3275
F 0 "U6" H 4725 3700 50  0000 R CNN
F 1 "AD8418" H 5175 2925 50  0000 R CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 5075 2925 50  0001 C CNN
F 3 "" H 5675 2575 50  0001 C CNN
F 4 "AD8418AWBRMZ" H 4725 3800 50  0001 C CNN "manf#"
	1    5025 3275
	-1   0    0    -1  
$EndComp
$Comp
L crf_1:AD8418-CST U7
U 1 1 5A94D742
P 8350 3275
F 0 "U7" H 8050 3700 50  0000 R CNN
F 1 "AD8418" H 8500 2925 50  0000 R CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 8400 2925 50  0001 C CNN
F 3 "" H 9000 2575 50  0001 C CNN
F 4 "AD8418AWBRMZ" H 8050 3800 50  0001 C CNN "manf#"
	1    8350 3275
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P9
U 1 1 5A9283C5
P 4475 2425
F 0 "P9" H 4475 2325 50  0000 C CNN
F 1 "PH_B" H 4675 2425 50  0000 C CNN
F 2 "CRF1:1PAD_4x5mm" H 4475 2425 50  0001 C CNN
F 3 "" H 4475 2425 50  0001 C CNN
	1    4475 2425
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P10
U 1 1 5A92848E
P 7800 2425
F 0 "P10" H 7800 2325 50  0000 C CNN
F 1 "PH_C" H 8000 2425 50  0000 C CNN
F 2 "CRF1:1PAD_4x5mm" H 7800 2425 50  0001 C CNN
F 3 "" H 7800 2425 50  0001 C CNN
	1    7800 2425
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C38
U 1 1 5A928BD4
P 5025 3775
F 0 "C38" H 5050 3875 50  0000 L CNN
F 1 "2.2u" H 5050 3675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5063 3625 50  0001 C CNN
F 3 "" H 5025 3775 50  0001 C CNN
F 4 "C1608X5R1C225K080AB" H 5050 3975 50  0001 C CNN "manf#"
	1    5025 3775
	0    1    1    0   
$EndComp
$Comp
L Device:C C42
U 1 1 5A928D4F
P 8350 3775
F 0 "C42" H 8375 3875 50  0000 L CNN
F 1 "2.2u" H 8375 3675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8388 3625 50  0001 C CNN
F 3 "" H 8350 3775 50  0001 C CNN
F 4 "C1608X5R1C225K080AB" H 8375 3975 50  0001 C CNN "manf#"
	1    8350 3775
	0    1    1    0   
$EndComp
Text HLabel 1325 5175 0    60   Input ~ 0
CURR_A
Text HLabel 2550 2100 0    60   Input ~ 0
GH_A
Text HLabel 2475 3050 1    60   Input ~ 0
GL_A
Text HLabel 3025 2750 0    60   Input ~ 0
SH_A
Text Label 1125 3275 2    60   ~ 0
C_A
Text HLabel 5900 2100 0    60   Input ~ 0
GH_B
Text HLabel 5825 3050 1    60   Input ~ 0
GL_B
Text HLabel 6375 2750 0    60   Input ~ 0
SH_B
Text Label 4475 3275 2    60   ~ 0
C_B
Text HLabel 9225 2100 0    60   Input ~ 0
GH_C
Text HLabel 9150 3050 1    60   Input ~ 0
GL_C
Text HLabel 9700 2750 0    60   Input ~ 0
SH_C
Text Label 7800 3275 2    60   ~ 0
C_C
Text HLabel 10050 1300 0    60   Input ~ 0
SUPPLY
Text HLabel 3025 3500 0    60   Input ~ 0
SL_A
Text HLabel 6375 3500 0    60   Input ~ 0
SL_B
Text HLabel 9700 3500 0    60   Input ~ 0
SL_C
Text Label 2225 5175 0    60   ~ 0
C_A
Text HLabel 1325 5950 0    60   Input ~ 0
CURR_B
Text Label 2225 5950 0    60   ~ 0
C_B
Text HLabel 1325 6725 0    60   Input ~ 0
CURR_C
Text Label 2225 6725 0    60   ~ 0
C_C
Text HLabel 4100 6175 2    60   Input ~ 0
TEMP
Text HLabel 9600 5075 2    60   Input ~ 0
SUPPLY
Wire Wire Line
	1325 5175 1475 5175
Wire Wire Line
	2025 5175 2225 5175
Wire Wire Line
	3550 2300 3550 2425
Wire Wire Line
	3050 2100 3250 2100
Wire Wire Line
	3050 3200 3250 3200
Wire Wire Line
	3550 1600 3550 1775
Wire Wire Line
	2550 2100 2750 2100
Wire Wire Line
	1200 3775 1525 3775
Wire Wire Line
	2200 3775 1825 3775
Wire Wire Line
	2200 3200 2200 3375
Wire Wire Line
	2200 3375 2075 3375
Wire Wire Line
	2075 3475 2200 3475
Wire Wire Line
	1200 3375 1200 3475
Wire Wire Line
	1200 3375 1275 3375
Wire Wire Line
	1075 3475 1200 3475
Wire Wire Line
	1075 3475 1075 3600
Wire Wire Line
	3025 2750 3550 2750
Wire Wire Line
	3550 2425 1925 2425
Wire Wire Line
	1875 2825 1875 2875
Wire Wire Line
	1875 2825 1775 2825
Wire Wire Line
	1775 2825 1775 2725
Wire Wire Line
	1475 2875 1475 2825
Wire Wire Line
	1475 2825 1575 2825
Wire Wire Line
	1575 2825 1575 2725
Wire Wire Line
	3875 2450 3875 1775
Wire Wire Line
	3550 1775 3875 1775
Wire Wire Line
	3875 2750 3875 2925
Wire Wire Line
	3875 3750 3550 3750
Wire Wire Line
	3550 3400 3550 3500
Wire Wire Line
	4075 1775 4075 2450
Wire Wire Line
	4075 2750 4075 2925
Wire Wire Line
	4075 2925 3875 2925
Wire Wire Line
	1275 3275 1125 3275
Wire Wire Line
	1425 2425 1325 2425
Wire Wire Line
	6900 2300 6900 2425
Wire Wire Line
	6400 2100 6600 2100
Wire Wire Line
	6400 3200 6600 3200
Wire Wire Line
	6900 1600 6900 1775
Wire Wire Line
	5900 2100 6100 2100
Wire Wire Line
	4550 3775 4875 3775
Wire Wire Line
	5550 3775 5175 3775
Wire Wire Line
	5550 3200 5550 3375
Wire Wire Line
	5550 3375 5425 3375
Wire Wire Line
	5425 3475 5550 3475
Wire Wire Line
	4550 3375 4550 3475
Wire Wire Line
	4550 3375 4625 3375
Wire Wire Line
	4425 3475 4550 3475
Wire Wire Line
	4425 3475 4425 3600
Wire Wire Line
	6375 2750 6900 2750
Wire Wire Line
	6900 2425 5275 2425
Wire Wire Line
	5225 2825 5225 2875
Wire Wire Line
	5225 2825 5125 2825
Wire Wire Line
	5125 2825 5125 2725
Wire Wire Line
	4825 2875 4825 2825
Wire Wire Line
	4825 2825 4925 2825
Wire Wire Line
	4925 2825 4925 2725
Wire Wire Line
	7225 2450 7225 1775
Wire Wire Line
	6900 1775 7225 1775
Wire Wire Line
	7225 2750 7225 2925
Wire Wire Line
	7225 3750 6900 3750
Wire Wire Line
	7425 1775 7425 2450
Wire Wire Line
	7425 2750 7425 2925
Wire Wire Line
	7425 2925 7225 2925
Wire Wire Line
	4625 3275 4475 3275
Wire Wire Line
	4775 2425 4675 2425
Wire Wire Line
	10225 2300 10225 2425
Wire Wire Line
	9725 2100 9925 2100
Wire Wire Line
	9725 3200 9925 3200
Wire Wire Line
	10225 1300 10225 1450
Wire Wire Line
	9225 2100 9425 2100
Wire Wire Line
	7875 3775 8200 3775
Wire Wire Line
	8875 3200 8875 3375
Wire Wire Line
	8875 3375 8750 3375
Wire Wire Line
	8875 3475 8750 3475
Wire Wire Line
	7875 3375 7875 3475
Wire Wire Line
	7875 3375 7950 3375
Wire Wire Line
	7750 3475 7875 3475
Wire Wire Line
	7750 3475 7750 3600
Wire Wire Line
	9700 2750 10225 2750
Wire Wire Line
	10225 2425 8600 2425
Wire Wire Line
	8550 2825 8550 2875
Wire Wire Line
	8550 2825 8450 2825
Wire Wire Line
	8450 2825 8450 2725
Wire Wire Line
	8150 2875 8150 2825
Wire Wire Line
	8150 2825 8250 2825
Wire Wire Line
	8250 2825 8250 2725
Wire Wire Line
	10550 2450 10550 1775
Wire Wire Line
	10225 1775 10550 1775
Wire Wire Line
	10550 3500 10550 2925
Wire Wire Line
	10225 3400 10225 3500
Wire Wire Line
	10750 1775 10750 2450
Wire Wire Line
	10750 2750 10750 2925
Wire Wire Line
	10750 2925 10550 2925
Wire Wire Line
	7950 3275 7800 3275
Wire Wire Line
	8100 2425 8000 2425
Wire Wire Line
	3550 1600 6900 1600
Wire Wire Line
	10225 1300 10050 1300
Wire Wire Line
	10225 1450 10400 1450
Wire Wire Line
	2475 3200 2750 3200
Wire Wire Line
	3550 3500 3025 3500
Wire Wire Line
	5825 3200 6100 3200
Wire Wire Line
	5825 3200 5825 3050
Wire Wire Line
	6900 3500 6375 3500
Wire Wire Line
	2475 3200 2475 3050
Wire Wire Line
	9150 3200 9425 3200
Wire Wire Line
	9150 3200 9150 3050
Wire Wire Line
	1475 5250 1475 5175
Wire Wire Line
	1475 5550 1475 5650
Wire Wire Line
	1325 5950 1475 5950
Wire Wire Line
	2025 5950 2225 5950
Wire Wire Line
	1475 6025 1475 5950
Wire Wire Line
	1475 6325 1475 6425
Wire Wire Line
	1325 6725 1475 6725
Wire Wire Line
	2025 6725 2225 6725
Wire Wire Line
	1475 6800 1475 6725
Wire Wire Line
	1475 7100 1475 7200
Wire Wire Line
	3950 6675 3950 6875
Wire Wire Line
	3700 6675 3700 6875
Wire Wire Line
	3700 6875 3950 6875
Wire Wire Line
	3950 5975 3950 6175
Wire Wire Line
	3700 6175 3950 6175
Wire Wire Line
	3700 6175 3700 6375
Wire Wire Line
	3950 5475 3950 5675
Wire Wire Line
	3550 4200 6900 4200
Wire Wire Line
	6900 3400 6900 3500
Wire Wire Line
	9700 3500 10225 3500
Wire Wire Line
	9350 5475 9350 5550
Wire Wire Line
	8750 5475 8750 5550
Wire Wire Line
	8750 5550 9350 5550
Wire Wire Line
	8750 5175 8750 5075
Wire Wire Line
	8750 5075 9350 5075
Wire Wire Line
	9350 5175 9350 5075
Wire Wire Line
	8875 3775 8500 3775
Wire Wire Line
	3550 2750 3550 3000
Wire Wire Line
	3550 3500 3550 3750
Wire Wire Line
	2200 3475 2200 3775
Wire Wire Line
	1200 3475 1200 3775
Wire Wire Line
	1200 3475 1275 3475
Wire Wire Line
	2200 3375 2200 3475
Wire Wire Line
	3550 2425 3550 2750
Wire Wire Line
	3550 1775 3550 1900
Wire Wire Line
	3550 3750 3550 4200
Wire Wire Line
	3875 1775 4075 1775
Wire Wire Line
	3875 2925 3875 3750
Wire Wire Line
	6900 2750 6900 3000
Wire Wire Line
	6900 3500 6900 3750
Wire Wire Line
	5550 3475 5550 3775
Wire Wire Line
	4550 3475 4550 3775
Wire Wire Line
	4550 3475 4625 3475
Wire Wire Line
	5550 3375 5550 3475
Wire Wire Line
	6900 2425 6900 2750
Wire Wire Line
	6900 1775 6900 1900
Wire Wire Line
	6900 3750 6900 4200
Wire Wire Line
	7225 1775 7425 1775
Wire Wire Line
	7225 2925 7225 3750
Wire Wire Line
	10225 2750 10225 3000
Wire Wire Line
	10225 3500 10225 4200
Wire Wire Line
	10225 3500 10550 3500
Wire Wire Line
	7875 3475 7875 3775
Wire Wire Line
	7875 3475 7950 3475
Wire Wire Line
	8875 3375 8875 3475
Wire Wire Line
	10225 2425 10225 2750
Wire Wire Line
	10225 1775 10225 1900
Wire Wire Line
	10550 1775 10750 1775
Wire Wire Line
	10550 2925 10550 2750
Wire Wire Line
	6900 1600 10225 1600
Wire Wire Line
	10225 1600 10225 1775
Wire Wire Line
	10225 1450 10225 1600
Wire Wire Line
	1475 5175 1725 5175
Wire Wire Line
	1475 5950 1725 5950
Wire Wire Line
	1475 6725 1725 6725
Wire Wire Line
	3950 6875 3950 7025
Wire Wire Line
	3950 6175 3950 6375
Wire Wire Line
	3950 6175 4100 6175
Wire Wire Line
	6900 4200 10225 4200
Wire Wire Line
	10225 4200 10225 4300
Wire Wire Line
	10225 4200 10400 4200
Wire Wire Line
	9350 5550 9350 5600
Wire Wire Line
	9350 5075 9600 5075
Wire Wire Line
	8875 3475 8875 3775
Connection ~ 3550 2750
Connection ~ 3550 3500
Connection ~ 2200 3475
Connection ~ 1200 3475
Connection ~ 2200 3375
Connection ~ 3550 2425
Connection ~ 3550 1775
Connection ~ 3550 3750
Connection ~ 3875 1775
Connection ~ 3875 2925
Connection ~ 6900 2750
Connection ~ 6900 3500
Connection ~ 5550 3475
Connection ~ 4550 3475
Connection ~ 5550 3375
Connection ~ 6900 2425
Connection ~ 6900 1775
Connection ~ 6900 3750
Connection ~ 7225 1775
Connection ~ 7225 2925
Connection ~ 10225 2750
Connection ~ 10225 3500
Connection ~ 7875 3475
Connection ~ 8875 3375
Connection ~ 10225 2425
Connection ~ 10225 1775
Connection ~ 10550 1775
Connection ~ 10550 2925
Connection ~ 6900 1600
Connection ~ 10225 1600
Connection ~ 10225 1450
Connection ~ 1475 5175
Connection ~ 1475 5950
Connection ~ 1475 6725
Connection ~ 3950 6875
Connection ~ 3950 6175
Connection ~ 6900 4200
Connection ~ 10225 4200
Connection ~ 9350 5550
Connection ~ 9350 5075
Connection ~ 8875 3475
$EndSCHEMATC
