EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Transistor_FET:FDS9926A Q?
U 1 1 61ACBFD7
P 5350 1300
AR Path="/61ACBFD7" Ref="Q?"  Part="1" 
AR Path="/61A760AA/61ACBFD7" Ref="Q?"  Part="1" 
AR Path="/61B03EAB/61ACBFD7" Ref="Q?"  Part="1" 
AR Path="/61B04118/61ACBFD7" Ref="Q?"  Part="1" 
AR Path="/61B043CB/61ACBFD7" Ref="Q?"  Part="1" 
F 0 "Q?" H 5554 1346 50  0000 L CNN
F 1 "FDS9926A" H 5554 1255 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5550 1225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/FD/FDS9926A.pdf" H 5350 1300 50  0001 L CNN
	1    5350 1300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:FDS9926A Q?
U 2 1 61ACBFDD
P 5350 2000
AR Path="/61ACBFDD" Ref="Q?"  Part="2" 
AR Path="/61A760AA/61ACBFDD" Ref="Q?"  Part="2" 
AR Path="/61B03EAB/61ACBFDD" Ref="Q?"  Part="2" 
AR Path="/61B04118/61ACBFDD" Ref="Q?"  Part="2" 
AR Path="/61B043CB/61ACBFDD" Ref="Q?"  Part="2" 
F 0 "Q?" H 5554 2046 50  0000 L CNN
F 1 "FDS9926A" H 5554 1955 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5550 1925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/FD/FDS9926A.pdf" H 5350 2000 50  0001 L CNN
	2    5350 2000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U?
U 1 1 61ACBFE3
P 3750 3750
AR Path="/61ACBFE3" Ref="U?"  Part="1" 
AR Path="/61A760AA/61ACBFE3" Ref="U?"  Part="1" 
AR Path="/61B03EAB/61ACBFE3" Ref="U?"  Part="1" 
AR Path="/61B04118/61ACBFE3" Ref="U?"  Part="1" 
AR Path="/61B043CB/61ACBFE3" Ref="U?"  Part="1" 
F 0 "U?" H 3750 4531 50  0000 C CNN
F 1 "74HC595" H 3750 4440 50  0000 C CNN
F 2 "" H 3750 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 3750 3750 50  0001 C CNN
	1    3750 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ACBFE9
P 5450 1550
AR Path="/61ACBFE9" Ref="#PWR?"  Part="1" 
AR Path="/61A760AA/61ACBFE9" Ref="#PWR?"  Part="1" 
AR Path="/61B03EAB/61ACBFE9" Ref="#PWR?"  Part="1" 
AR Path="/61B04118/61ACBFE9" Ref="#PWR?"  Part="1" 
AR Path="/61B043CB/61ACBFE9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 1300 50  0001 C CNN
F 1 "GND" H 5455 1377 50  0000 C CNN
F 2 "" H 5450 1550 50  0001 C CNN
F 3 "" H 5450 1550 50  0001 C CNN
	1    5450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1500 5450 1550
Connection ~ 5450 1550
$Comp
L Device:R_Small_US R?
U 1 1 61ACBFF1
P 4950 1300
AR Path="/61ACBFF1" Ref="R?"  Part="1" 
AR Path="/61A760AA/61ACBFF1" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61ACBFF1" Ref="R?"  Part="1" 
AR Path="/61B04118/61ACBFF1" Ref="R?"  Part="1" 
AR Path="/61B043CB/61ACBFF1" Ref="R?"  Part="1" 
F 0 "R?" V 4745 1300 50  0000 C CNN
F 1 "180R" V 4836 1300 50  0000 C CNN
F 2 "" H 4950 1300 50  0001 C CNN
F 3 "~" H 4950 1300 50  0001 C CNN
	1    4950 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61ACBFF7
P 5100 1450
AR Path="/61ACBFF7" Ref="R?"  Part="1" 
AR Path="/61A760AA/61ACBFF7" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61ACBFF7" Ref="R?"  Part="1" 
AR Path="/61B04118/61ACBFF7" Ref="R?"  Part="1" 
AR Path="/61B043CB/61ACBFF7" Ref="R?"  Part="1" 
F 0 "R?" H 5032 1404 50  0000 R CNN
F 1 "10k" H 5032 1495 50  0000 R CNN
F 2 "" H 5100 1450 50  0001 C CNN
F 3 "~" H 5100 1450 50  0001 C CNN
	1    5100 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 1300 5100 1300
Wire Wire Line
	5100 1300 5100 1350
Connection ~ 5100 1300
Wire Wire Line
	5100 1300 5150 1300
Wire Wire Line
	5100 1550 5450 1550
$Comp
L Device:R_Small_US R?
U 1 1 61ACC002
P 4950 2000
AR Path="/61ACC002" Ref="R?"  Part="1" 
AR Path="/61A760AA/61ACC002" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61ACC002" Ref="R?"  Part="1" 
AR Path="/61B04118/61ACC002" Ref="R?"  Part="1" 
AR Path="/61B043CB/61ACC002" Ref="R?"  Part="1" 
F 0 "R?" V 4745 2000 50  0000 C CNN
F 1 "180R" V 4836 2000 50  0000 C CNN
F 2 "" H 4950 2000 50  0001 C CNN
F 3 "~" H 4950 2000 50  0001 C CNN
	1    4950 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61ACC008
P 5100 2150
AR Path="/61ACC008" Ref="R?"  Part="1" 
AR Path="/61A760AA/61ACC008" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61ACC008" Ref="R?"  Part="1" 
AR Path="/61B04118/61ACC008" Ref="R?"  Part="1" 
AR Path="/61B043CB/61ACC008" Ref="R?"  Part="1" 
F 0 "R?" H 5032 2104 50  0000 R CNN
F 1 "10k" H 5032 2195 50  0000 R CNN
F 2 "" H 5100 2150 50  0001 C CNN
F 3 "~" H 5100 2150 50  0001 C CNN
	1    5100 2150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ACC00E
P 5450 2250
AR Path="/61ACC00E" Ref="#PWR?"  Part="1" 
AR Path="/61A760AA/61ACC00E" Ref="#PWR?"  Part="1" 
AR Path="/61B03EAB/61ACC00E" Ref="#PWR?"  Part="1" 
AR Path="/61B04118/61ACC00E" Ref="#PWR?"  Part="1" 
AR Path="/61B043CB/61ACC00E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 2000 50  0001 C CNN
F 1 "GND" H 5455 2077 50  0000 C CNN
F 2 "" H 5450 2250 50  0001 C CNN
F 3 "" H 5450 2250 50  0001 C CNN
	1    5450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2250 5450 2250
Wire Wire Line
	5450 2200 5450 2250
Connection ~ 5450 2250
Wire Wire Line
	5050 2000 5100 2000
Wire Wire Line
	5100 2000 5100 2050
Connection ~ 5100 2000
Wire Wire Line
	5100 2000 5150 2000
$Comp
L Transistor_FET:FDS9926A Q?
U 1 1 61ACC01B
P 5350 2800
AR Path="/61ACC01B" Ref="Q?"  Part="1" 
AR Path="/61A760AA/61ACC01B" Ref="Q?"  Part="1" 
AR Path="/61B03EAB/61ACC01B" Ref="Q?"  Part="1" 
AR Path="/61B04118/61ACC01B" Ref="Q?"  Part="1" 
AR Path="/61B043CB/61ACC01B" Ref="Q?"  Part="1" 
F 0 "Q?" H 5554 2846 50  0000 L CNN
F 1 "FDS9926A" H 5554 2755 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5550 2725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/FD/FDS9926A.pdf" H 5350 2800 50  0001 L CNN
	1    5350 2800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:FDS9926A Q?
U 2 1 61ACC021
P 5350 3500
AR Path="/61ACC021" Ref="Q?"  Part="2" 
AR Path="/61A760AA/61ACC021" Ref="Q?"  Part="2" 
AR Path="/61B03EAB/61ACC021" Ref="Q?"  Part="2" 
AR Path="/61B04118/61ACC021" Ref="Q?"  Part="2" 
AR Path="/61B043CB/61ACC021" Ref="Q?"  Part="2" 
F 0 "Q?" H 5554 3546 50  0000 L CNN
F 1 "FDS9926A" H 5554 3455 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5550 3425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/FD/FDS9926A.pdf" H 5350 3500 50  0001 L CNN
	2    5350 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ACC027
P 5450 3050
AR Path="/61ACC027" Ref="#PWR?"  Part="1" 
AR Path="/61A760AA/61ACC027" Ref="#PWR?"  Part="1" 
AR Path="/61B03EAB/61ACC027" Ref="#PWR?"  Part="1" 
AR Path="/61B04118/61ACC027" Ref="#PWR?"  Part="1" 
AR Path="/61B043CB/61ACC027" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 2800 50  0001 C CNN
F 1 "GND" H 5455 2877 50  0000 C CNN
F 2 "" H 5450 3050 50  0001 C CNN
F 3 "" H 5450 3050 50  0001 C CNN
	1    5450 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3000 5450 3050
Connection ~ 5450 3050
$Comp
L Device:R_Small_US R?
U 1 1 61ACC02F
P 4950 2800
AR Path="/61ACC02F" Ref="R?"  Part="1" 
AR Path="/61A760AA/61ACC02F" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61ACC02F" Ref="R?"  Part="1" 
AR Path="/61B04118/61ACC02F" Ref="R?"  Part="1" 
AR Path="/61B043CB/61ACC02F" Ref="R?"  Part="1" 
F 0 "R?" V 4745 2800 50  0000 C CNN
F 1 "180R" V 4836 2800 50  0000 C CNN
F 2 "" H 4950 2800 50  0001 C CNN
F 3 "~" H 4950 2800 50  0001 C CNN
	1    4950 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61ACC035
P 5100 2950
AR Path="/61ACC035" Ref="R?"  Part="1" 
AR Path="/61A760AA/61ACC035" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61ACC035" Ref="R?"  Part="1" 
AR Path="/61B04118/61ACC035" Ref="R?"  Part="1" 
AR Path="/61B043CB/61ACC035" Ref="R?"  Part="1" 
F 0 "R?" H 5032 2904 50  0000 R CNN
F 1 "10k" H 5032 2995 50  0000 R CNN
F 2 "" H 5100 2950 50  0001 C CNN
F 3 "~" H 5100 2950 50  0001 C CNN
	1    5100 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 2800 5100 2800
Wire Wire Line
	5100 2800 5100 2850
Connection ~ 5100 2800
Wire Wire Line
	5100 2800 5150 2800
Wire Wire Line
	5100 3050 5450 3050
$Comp
L Device:R_Small_US R?
U 1 1 61ACC040
P 4950 3500
AR Path="/61ACC040" Ref="R?"  Part="1" 
AR Path="/61A760AA/61ACC040" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61ACC040" Ref="R?"  Part="1" 
AR Path="/61B04118/61ACC040" Ref="R?"  Part="1" 
AR Path="/61B043CB/61ACC040" Ref="R?"  Part="1" 
F 0 "R?" V 4745 3500 50  0000 C CNN
F 1 "180R" V 4836 3500 50  0000 C CNN
F 2 "" H 4950 3500 50  0001 C CNN
F 3 "~" H 4950 3500 50  0001 C CNN
	1    4950 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61ACC046
P 5100 3650
AR Path="/61ACC046" Ref="R?"  Part="1" 
AR Path="/61A760AA/61ACC046" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61ACC046" Ref="R?"  Part="1" 
AR Path="/61B04118/61ACC046" Ref="R?"  Part="1" 
AR Path="/61B043CB/61ACC046" Ref="R?"  Part="1" 
F 0 "R?" H 5032 3604 50  0000 R CNN
F 1 "10k" H 5032 3695 50  0000 R CNN
F 2 "" H 5100 3650 50  0001 C CNN
F 3 "~" H 5100 3650 50  0001 C CNN
	1    5100 3650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ACC04C
P 5450 3750
AR Path="/61ACC04C" Ref="#PWR?"  Part="1" 
AR Path="/61A760AA/61ACC04C" Ref="#PWR?"  Part="1" 
AR Path="/61B03EAB/61ACC04C" Ref="#PWR?"  Part="1" 
AR Path="/61B04118/61ACC04C" Ref="#PWR?"  Part="1" 
AR Path="/61B043CB/61ACC04C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 3500 50  0001 C CNN
F 1 "GND" H 5455 3577 50  0000 C CNN
F 2 "" H 5450 3750 50  0001 C CNN
F 3 "" H 5450 3750 50  0001 C CNN
	1    5450 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3750 5450 3750
Wire Wire Line
	5450 3700 5450 3750
Connection ~ 5450 3750
Wire Wire Line
	5050 3500 5100 3500
Wire Wire Line
	5100 3500 5100 3550
Connection ~ 5100 3500
Wire Wire Line
	5100 3500 5150 3500
$Comp
L Transistor_FET:FDS9926A Q?
U 1 1 61ACC059
P 5350 4250
AR Path="/61ACC059" Ref="Q?"  Part="1" 
AR Path="/61A760AA/61ACC059" Ref="Q?"  Part="1" 
AR Path="/61B03EAB/61ACC059" Ref="Q?"  Part="1" 
AR Path="/61B04118/61ACC059" Ref="Q?"  Part="1" 
AR Path="/61B043CB/61ACC059" Ref="Q?"  Part="1" 
F 0 "Q?" H 5554 4296 50  0000 L CNN
F 1 "FDS9926A" H 5554 4205 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5550 4175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/FD/FDS9926A.pdf" H 5350 4250 50  0001 L CNN
	1    5350 4250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:FDS9926A Q?
U 2 1 61ACC05F
P 5350 4950
AR Path="/61ACC05F" Ref="Q?"  Part="2" 
AR Path="/61A760AA/61ACC05F" Ref="Q?"  Part="2" 
AR Path="/61B03EAB/61ACC05F" Ref="Q?"  Part="2" 
AR Path="/61B04118/61ACC05F" Ref="Q?"  Part="2" 
AR Path="/61B043CB/61ACC05F" Ref="Q?"  Part="2" 
F 0 "Q?" H 5554 4996 50  0000 L CNN
F 1 "FDS9926A" H 5554 4905 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5550 4875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/FD/FDS9926A.pdf" H 5350 4950 50  0001 L CNN
	2    5350 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ACC065
P 5450 4500
AR Path="/61ACC065" Ref="#PWR?"  Part="1" 
AR Path="/61A760AA/61ACC065" Ref="#PWR?"  Part="1" 
AR Path="/61B03EAB/61ACC065" Ref="#PWR?"  Part="1" 
AR Path="/61B04118/61ACC065" Ref="#PWR?"  Part="1" 
AR Path="/61B043CB/61ACC065" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 4250 50  0001 C CNN
F 1 "GND" H 5455 4327 50  0000 C CNN
F 2 "" H 5450 4500 50  0001 C CNN
F 3 "" H 5450 4500 50  0001 C CNN
	1    5450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4450 5450 4500
Connection ~ 5450 4500
$Comp
L Device:R_Small_US R?
U 1 1 61ACC06D
P 4950 4250
AR Path="/61ACC06D" Ref="R?"  Part="1" 
AR Path="/61A760AA/61ACC06D" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61ACC06D" Ref="R?"  Part="1" 
AR Path="/61B04118/61ACC06D" Ref="R?"  Part="1" 
AR Path="/61B043CB/61ACC06D" Ref="R?"  Part="1" 
F 0 "R?" V 4745 4250 50  0000 C CNN
F 1 "180R" V 4836 4250 50  0000 C CNN
F 2 "" H 4950 4250 50  0001 C CNN
F 3 "~" H 4950 4250 50  0001 C CNN
	1    4950 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61ACC073
P 5100 4400
AR Path="/61ACC073" Ref="R?"  Part="1" 
AR Path="/61A760AA/61ACC073" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61ACC073" Ref="R?"  Part="1" 
AR Path="/61B04118/61ACC073" Ref="R?"  Part="1" 
AR Path="/61B043CB/61ACC073" Ref="R?"  Part="1" 
F 0 "R?" H 5032 4354 50  0000 R CNN
F 1 "10k" H 5032 4445 50  0000 R CNN
F 2 "" H 5100 4400 50  0001 C CNN
F 3 "~" H 5100 4400 50  0001 C CNN
	1    5100 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 4250 5100 4250
Wire Wire Line
	5100 4250 5100 4300
Connection ~ 5100 4250
Wire Wire Line
	5100 4250 5150 4250
Wire Wire Line
	5100 4500 5450 4500
$Comp
L Device:R_Small_US R?
U 1 1 61ACC07E
P 4950 4950
AR Path="/61ACC07E" Ref="R?"  Part="1" 
AR Path="/61A760AA/61ACC07E" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61ACC07E" Ref="R?"  Part="1" 
AR Path="/61B04118/61ACC07E" Ref="R?"  Part="1" 
AR Path="/61B043CB/61ACC07E" Ref="R?"  Part="1" 
F 0 "R?" V 4745 4950 50  0000 C CNN
F 1 "180R" V 4836 4950 50  0000 C CNN
F 2 "" H 4950 4950 50  0001 C CNN
F 3 "~" H 4950 4950 50  0001 C CNN
	1    4950 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61ACC084
P 5100 5100
AR Path="/61ACC084" Ref="R?"  Part="1" 
AR Path="/61A760AA/61ACC084" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61ACC084" Ref="R?"  Part="1" 
AR Path="/61B04118/61ACC084" Ref="R?"  Part="1" 
AR Path="/61B043CB/61ACC084" Ref="R?"  Part="1" 
F 0 "R?" H 5032 5054 50  0000 R CNN
F 1 "10k" H 5032 5145 50  0000 R CNN
F 2 "" H 5100 5100 50  0001 C CNN
F 3 "~" H 5100 5100 50  0001 C CNN
	1    5100 5100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ACC08A
P 5450 5200
AR Path="/61ACC08A" Ref="#PWR?"  Part="1" 
AR Path="/61A760AA/61ACC08A" Ref="#PWR?"  Part="1" 
AR Path="/61B03EAB/61ACC08A" Ref="#PWR?"  Part="1" 
AR Path="/61B04118/61ACC08A" Ref="#PWR?"  Part="1" 
AR Path="/61B043CB/61ACC08A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 4950 50  0001 C CNN
F 1 "GND" H 5455 5027 50  0000 C CNN
F 2 "" H 5450 5200 50  0001 C CNN
F 3 "" H 5450 5200 50  0001 C CNN
	1    5450 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5200 5450 5200
Wire Wire Line
	5450 5150 5450 5200
Connection ~ 5450 5200
Wire Wire Line
	5050 4950 5100 4950
Wire Wire Line
	5100 4950 5100 5000
Connection ~ 5100 4950
Wire Wire Line
	5100 4950 5150 4950
$Comp
L Transistor_FET:FDS9926A Q?
U 1 1 61ACC097
P 5350 5750
AR Path="/61ACC097" Ref="Q?"  Part="1" 
AR Path="/61A760AA/61ACC097" Ref="Q?"  Part="1" 
AR Path="/61B03EAB/61ACC097" Ref="Q?"  Part="1" 
AR Path="/61B04118/61ACC097" Ref="Q?"  Part="1" 
AR Path="/61B043CB/61ACC097" Ref="Q?"  Part="1" 
F 0 "Q?" H 5554 5796 50  0000 L CNN
F 1 "FDS9926A" H 5554 5705 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5550 5675 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/FD/FDS9926A.pdf" H 5350 5750 50  0001 L CNN
	1    5350 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ACC09D
P 5450 6000
AR Path="/61ACC09D" Ref="#PWR?"  Part="1" 
AR Path="/61A760AA/61ACC09D" Ref="#PWR?"  Part="1" 
AR Path="/61B03EAB/61ACC09D" Ref="#PWR?"  Part="1" 
AR Path="/61B04118/61ACC09D" Ref="#PWR?"  Part="1" 
AR Path="/61B043CB/61ACC09D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 5750 50  0001 C CNN
F 1 "GND" H 5455 5827 50  0000 C CNN
F 2 "" H 5450 6000 50  0001 C CNN
F 3 "" H 5450 6000 50  0001 C CNN
	1    5450 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5950 5450 6000
Connection ~ 5450 6000
$Comp
L Device:R_Small_US R?
U 1 1 61ACC0A5
P 4950 5750
AR Path="/61ACC0A5" Ref="R?"  Part="1" 
AR Path="/61A760AA/61ACC0A5" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61ACC0A5" Ref="R?"  Part="1" 
AR Path="/61B04118/61ACC0A5" Ref="R?"  Part="1" 
AR Path="/61B043CB/61ACC0A5" Ref="R?"  Part="1" 
F 0 "R?" V 4745 5750 50  0000 C CNN
F 1 "180R" V 4836 5750 50  0000 C CNN
F 2 "" H 4950 5750 50  0001 C CNN
F 3 "~" H 4950 5750 50  0001 C CNN
	1    4950 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 61ACC0AB
P 5100 5900
AR Path="/61ACC0AB" Ref="R?"  Part="1" 
AR Path="/61A760AA/61ACC0AB" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61ACC0AB" Ref="R?"  Part="1" 
AR Path="/61B04118/61ACC0AB" Ref="R?"  Part="1" 
AR Path="/61B043CB/61ACC0AB" Ref="R?"  Part="1" 
F 0 "R?" H 5032 5854 50  0000 R CNN
F 1 "10k" H 5032 5945 50  0000 R CNN
F 2 "" H 5100 5900 50  0001 C CNN
F 3 "~" H 5100 5900 50  0001 C CNN
	1    5100 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 5750 5100 5750
Wire Wire Line
	5100 5750 5100 5800
Connection ~ 5100 5750
Wire Wire Line
	5100 5750 5150 5750
Wire Wire Line
	5100 6000 5450 6000
Wire Wire Line
	4150 1300 4850 1300
Wire Wire Line
	4150 1300 4150 3350
Wire Wire Line
	4150 3450 4200 3450
Wire Wire Line
	4200 3450 4200 2000
Wire Wire Line
	4200 2000 4850 2000
Wire Wire Line
	4150 3550 4250 3550
Wire Wire Line
	4250 3550 4250 2800
Wire Wire Line
	4250 2800 4850 2800
Wire Wire Line
	4150 3650 4300 3650
Wire Wire Line
	4300 3650 4300 3500
Wire Wire Line
	4300 3500 4850 3500
Wire Wire Line
	4150 3750 4850 3750
Wire Wire Line
	4850 3750 4850 4250
Wire Wire Line
	4150 3850 4800 3850
Wire Wire Line
	4800 3850 4800 4950
Wire Wire Line
	4800 4950 4850 4950
Wire Wire Line
	4150 3950 4750 3950
Wire Wire Line
	4750 3950 4750 5750
Wire Wire Line
	4750 5750 4850 5750
$Comp
L Connector_Generic:Conn_02x07_Counter_Clockwise J?
U 1 1 61ACD756
P 6950 3750
AR Path="/61A760AA/61ACD756" Ref="J?"  Part="1" 
AR Path="/61B03EAB/61ACD756" Ref="J?"  Part="1" 
AR Path="/61B04118/61ACD756" Ref="J?"  Part="1" 
AR Path="/61B043CB/61ACD756" Ref="J?"  Part="1" 
F 0 "J?" H 7000 4267 50  0000 C CNN
F 1 "Conn_02x07_Counter_Clockwise" H 7000 4176 50  0000 C CNN
F 2 "" H 6950 3750 50  0001 C CNN
F 3 "~" H 6950 3750 50  0001 C CNN
	1    6950 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61ACEF99
P 7450 3750
AR Path="/61A760AA/61ACEF99" Ref="#PWR?"  Part="1" 
AR Path="/61B03EAB/61ACEF99" Ref="#PWR?"  Part="1" 
AR Path="/61B04118/61ACEF99" Ref="#PWR?"  Part="1" 
AR Path="/61B043CB/61ACEF99" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7450 3600 50  0001 C CNN
F 1 "+5V" V 7465 3878 50  0000 L CNN
F 2 "" H 7450 3750 50  0001 C CNN
F 3 "" H 7450 3750 50  0001 C CNN
	1    7450 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 3450 7250 3550
Connection ~ 7250 3550
Wire Wire Line
	7250 3550 7250 3650
Connection ~ 7250 3650
Wire Wire Line
	7250 3650 7250 3750
Connection ~ 7250 3750
Wire Wire Line
	7250 3750 7250 3850
Connection ~ 7250 3850
Wire Wire Line
	7250 3850 7250 3950
Connection ~ 7250 3950
Wire Wire Line
	7250 3950 7250 4050
Wire Wire Line
	7450 3750 7250 3750
Wire Wire Line
	5450 1100 6750 1100
Wire Wire Line
	6750 1100 6750 3450
Wire Wire Line
	5450 1800 6700 1800
Wire Wire Line
	6700 1800 6700 3550
Wire Wire Line
	6700 3550 6750 3550
Wire Wire Line
	5450 2600 6650 2600
Wire Wire Line
	6650 2600 6650 3650
Wire Wire Line
	6650 3650 6750 3650
Wire Wire Line
	5450 3300 6600 3300
Wire Wire Line
	6600 3300 6600 3750
Wire Wire Line
	6600 3750 6750 3750
Wire Wire Line
	5450 4050 6600 4050
Wire Wire Line
	6600 4050 6600 3850
Wire Wire Line
	6600 3850 6750 3850
Wire Wire Line
	6750 3950 6650 3950
Wire Wire Line
	6650 3950 6650 4750
Wire Wire Line
	6650 4750 5450 4750
Wire Wire Line
	6750 4050 6700 4050
Wire Wire Line
	6700 4050 6700 5550
Wire Wire Line
	6700 5550 5450 5550
$Comp
L power:+3.3V #PWR?
U 1 1 61ADE505
P 3750 2900
AR Path="/61A760AA/61ADE505" Ref="#PWR?"  Part="1" 
AR Path="/61B03EAB/61ADE505" Ref="#PWR?"  Part="1" 
AR Path="/61B04118/61ADE505" Ref="#PWR?"  Part="1" 
AR Path="/61B043CB/61ADE505" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3750 2750 50  0001 C CNN
F 1 "+3.3V" H 3765 3073 50  0000 C CNN
F 2 "" H 3750 2900 50  0001 C CNN
F 3 "" H 3750 2900 50  0001 C CNN
	1    3750 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2900 3750 3150
$Comp
L power:GND #PWR?
U 1 1 61AE0B3F
P 3750 4550
AR Path="/61A760AA/61AE0B3F" Ref="#PWR?"  Part="1" 
AR Path="/61B03EAB/61AE0B3F" Ref="#PWR?"  Part="1" 
AR Path="/61B04118/61AE0B3F" Ref="#PWR?"  Part="1" 
AR Path="/61B043CB/61AE0B3F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3750 4300 50  0001 C CNN
F 1 "GND" H 3755 4377 50  0000 C CNN
F 2 "" H 3750 4550 50  0001 C CNN
F 3 "" H 3750 4550 50  0001 C CNN
	1    3750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4450 3750 4550
Text HLabel 3250 3350 0    50   Input ~ 0
SER
Text GLabel 3250 3550 0    50   Input ~ 0
SRCK
Text GLabel 3250 3850 0    50   Input ~ 0
RCK
Wire Wire Line
	3250 3350 3350 3350
Wire Wire Line
	3250 3550 3350 3550
Wire Wire Line
	3250 3850 3350 3850
$Comp
L Device:C C?
U 1 1 61AEAEA8
P 2650 3750
AR Path="/61A760AA/61AEAEA8" Ref="C?"  Part="1" 
AR Path="/61B03EAB/61AEAEA8" Ref="C?"  Part="1" 
AR Path="/61B04118/61AEAEA8" Ref="C?"  Part="1" 
AR Path="/61B043CB/61AEAEA8" Ref="C?"  Part="1" 
F 0 "C?" H 2765 3796 50  0000 L CNN
F 1 "0.1µF" H 2765 3705 50  0000 L CNN
F 2 "" H 2688 3600 50  0001 C CNN
F 3 "~" H 2650 3750 50  0001 C CNN
	1    2650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3600 2650 2900
Wire Wire Line
	2650 2900 2950 2900
Connection ~ 3750 2900
Wire Wire Line
	2650 3900 2650 4450
Connection ~ 3750 4450
$Comp
L Device:R_Small_US R?
U 1 1 61AF11ED
P 2950 3200
AR Path="/61AF11ED" Ref="R?"  Part="1" 
AR Path="/61A760AA/61AF11ED" Ref="R?"  Part="1" 
AR Path="/61B03EAB/61AF11ED" Ref="R?"  Part="1" 
AR Path="/61B04118/61AF11ED" Ref="R?"  Part="1" 
AR Path="/61B043CB/61AF11ED" Ref="R?"  Part="1" 
F 0 "R?" H 2882 3154 50  0000 R CNN
F 1 "10K" H 2882 3245 50  0000 R CNN
F 2 "" H 2950 3200 50  0001 C CNN
F 3 "~" H 2950 3200 50  0001 C CNN
	1    2950 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 3650 2950 3650
Wire Wire Line
	2650 4450 3750 4450
Wire Wire Line
	2950 2900 2950 3100
Connection ~ 2950 2900
Wire Wire Line
	2950 2900 3750 2900
Wire Wire Line
	2950 3300 2950 3650
Text GLabel 3250 3950 0    50   Input ~ 0
ENABLE
Wire Wire Line
	3250 3950 3350 3950
$EndSCHEMATC
