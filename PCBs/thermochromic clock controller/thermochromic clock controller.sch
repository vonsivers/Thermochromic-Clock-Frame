EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev "1"
Comp ""
Comment1 "Designed for AISLER 2-Layer Service"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:WeMos_D1_mini U1
U 1 1 619910FD
P 4100 3250
F 0 "U1" H 4100 2361 50  0000 C CNN
F 1 "WeMos_D1_mini" H 4100 2270 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 4100 2100 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 2250 2100 50  0001 C CNN
	1    4100 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 61998D88
P 4000 2350
F 0 "#PWR0101" H 4000 2200 50  0001 C CNN
F 1 "+5V" H 4015 2523 50  0000 C CNN
F 2 "" H 4000 2350 50  0001 C CNN
F 3 "" H 4000 2350 50  0001 C CNN
	1    4000 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 61999489
P 4200 2350
F 0 "#PWR0102" H 4200 2200 50  0001 C CNN
F 1 "+3.3V" H 4215 2523 50  0000 C CNN
F 2 "" H 4200 2350 50  0001 C CNN
F 3 "" H 4200 2350 50  0001 C CNN
	1    4200 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 61999BA2
P 3550 4150
F 0 "#PWR0103" H 3550 3900 50  0001 C CNN
F 1 "GND" V 3555 4022 50  0000 R CNN
F 2 "" H 3550 4150 50  0001 C CNN
F 3 "" H 3550 4150 50  0001 C CNN
	1    3550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2350 4200 2450
Wire Wire Line
	4000 2350 4000 2400
$Sheet
S 5850 2200 700  350 
U 61A760AA
F0 "digit1" 50
F1 "dig1.sch" 50
F2 "SERIN" I L 5850 2350 50 
F3 "SEROUT" I R 6550 2350 50 
$EndSheet
$Sheet
S 5850 2800 700  350 
U 61997AE7
F0 "digit2" 50
F1 "dig1.sch" 50
F2 "SERIN" I L 5850 2950 50 
F3 "SEROUT" I R 6550 2950 50 
$EndSheet
$Sheet
S 5850 3400 700  350 
U 61997C1F
F0 "digit3" 50
F1 "dig1.sch" 50
F2 "SERIN" I L 5850 3550 50 
F3 "SEROUT" I R 6550 3550 50 
$EndSheet
$Sheet
S 5850 4000 700  350 
U 61997D6B
F0 "digit4" 50
F1 "dig1.sch" 50
F2 "SERIN" I L 5850 4150 50 
F3 "SEROUT" I R 6550 4150 50 
$EndSheet
Text GLabel 4650 2950 2    50   Input ~ 0
SRCK
Text GLabel 4650 3050 2    50   Input ~ 0
RCK
Text GLabel 4650 3450 2    50   Input ~ 0
ENABLE
Wire Wire Line
	4650 3450 4500 3450
Wire Wire Line
	4650 3050 4500 3050
Wire Wire Line
	4650 2950 4500 2950
Wire Wire Line
	4500 3350 5100 3350
Wire Wire Line
	5100 3350 5100 2350
Wire Wire Line
	5100 2350 5850 2350
Wire Wire Line
	6550 2350 6700 2350
Wire Wire Line
	6700 2350 6700 2700
Wire Wire Line
	6700 2700 5700 2700
Wire Wire Line
	5700 2700 5700 2950
Wire Wire Line
	5700 2950 5850 2950
Wire Wire Line
	6550 2950 6700 2950
Wire Wire Line
	6700 2950 6700 3250
Wire Wire Line
	6700 3250 5700 3250
Wire Wire Line
	5700 3250 5700 3550
Wire Wire Line
	5700 3550 5850 3550
Wire Wire Line
	6550 3550 6700 3550
Wire Wire Line
	6700 3550 6700 3900
Wire Wire Line
	6700 3900 5700 3900
Wire Wire Line
	5700 3900 5700 4150
Wire Wire Line
	5700 4150 5850 4150
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 6199E8CD
P 3050 3250
F 0 "J1" H 2968 2925 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2968 3016 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05502HBWC_1x02_P5.00mm_Horizontal" H 3050 3250 50  0001 C CNN
F 3 "~" H 3050 3250 50  0001 C CNN
	1    3050 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 3150 3250 2400
Wire Wire Line
	3250 2400 4000 2400
Connection ~ 4000 2400
Wire Wire Line
	4000 2400 4000 2450
Wire Wire Line
	3250 3250 3250 4050
Wire Wire Line
	3250 4050 3550 4050
Wire Wire Line
	3550 4150 3550 4050
Connection ~ 3550 4050
Wire Wire Line
	3550 4050 4100 4050
$Comp
L Sensor_Temperature:DS18B20 U2
U 1 1 619A2567
P 5100 1350
F 0 "U2" H 4870 1396 50  0000 R CNN
F 1 "DS18B20" H 4870 1305 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4100 1100 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 4950 1600 50  0001 C CNN
	1    5100 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 619A4ABD
P 5450 1150
F 0 "R1" H 5518 1196 50  0000 L CNN
F 1 "4.7k" H 5518 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5450 1150 50  0001 C CNN
F 3 "~" H 5450 1150 50  0001 C CNN
	1    5450 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 619A5506
P 5100 950
F 0 "#PWR0104" H 5100 800 50  0001 C CNN
F 1 "+3.3V" H 5115 1123 50  0000 C CNN
F 2 "" H 5100 950 50  0001 C CNN
F 3 "" H 5100 950 50  0001 C CNN
	1    5100 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 619A5D66
P 5100 1750
F 0 "#PWR0105" H 5100 1500 50  0001 C CNN
F 1 "GND" V 5105 1622 50  0000 R CNN
F 2 "" H 5100 1750 50  0001 C CNN
F 3 "" H 5100 1750 50  0001 C CNN
	1    5100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1350 5400 1350
Wire Wire Line
	5100 1750 5100 1650
Wire Wire Line
	5100 1050 5100 950 
Wire Wire Line
	5450 1050 5100 1050
Connection ~ 5100 1050
Wire Wire Line
	5450 1250 5450 1350
Connection ~ 5450 1350
Wire Wire Line
	5450 1350 5450 3550
Wire Wire Line
	4500 3550 5450 3550
$EndSCHEMATC