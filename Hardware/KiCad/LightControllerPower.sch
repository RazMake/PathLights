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
Text Notes 7000 6800 0    146  ~ 29
Buck Converter (12V - 3.3V & 5V)
Text Notes 7200 7100 0    67   Italic 0
https://github.com/RazMake/PathLights/blob/master/PowerSourceDesign.md
$Comp
L Regulator_Switching:LMR33630ADDA U1
U 1 1 5F7CC494
P 4150 3250
F 0 "U1" V 4250 3650 50  0000 C CNN
F 1 "LMR33630ADDA" V 4150 3850 50  0000 C CNN
F 2 "Package_SO:Texas_HSOP-8-1EP_3.9x4.9mm_P1.27mm_ThermalVias" H 4150 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmr33630.pdf" H 4150 3150 50  0001 C CNN
	1    4150 3250
	0    -1   -1   0   
$EndComp
Text HLabel 1500 5700 0    50   Input ~ 0
GND
Text HLabel 1550 3750 0    50   Input ~ 0
VCC(+12V)
$Comp
L Device:C C3
U 1 1 5F7D9F9E
P 2750 4750
F 0 "C3" H 2865 4796 50  0000 L CNN
F 1 "1uF" H 2865 4705 50  0000 L CNN
F 2 "" H 2788 4600 50  0001 C CNN
F 3 "~" H 2750 4750 50  0001 C CNN
	1    2750 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3650 4350 3950
Wire Wire Line
	4350 3950 2750 3950
Wire Wire Line
	2750 3950 2750 4600
Wire Wire Line
	3950 3650 3950 3750
Wire Wire Line
	3950 3750 2250 3750
Wire Wire Line
	4150 3650 4150 3750
Wire Wire Line
	4150 3750 3950 3750
Connection ~ 3950 3750
Wire Wire Line
	1500 5700 1850 5700
Wire Wire Line
	2750 5700 2750 4900
Wire Wire Line
	4550 3150 4700 3150
Wire Wire Line
	4700 3150 4700 3250
Wire Wire Line
	4700 4200 3200 4200
Wire Wire Line
	3200 4200 3200 5700
Wire Wire Line
	3200 5700 2750 5700
Connection ~ 2750 5700
Wire Wire Line
	4550 3250 4700 3250
Connection ~ 4700 3250
Wire Wire Line
	4700 3250 4700 4200
$Comp
L Device:C C2
U 1 1 5F7B48AE
P 2250 4750
F 0 "C2" H 2365 4796 50  0000 L CNN
F 1 "220nF" H 2365 4705 50  0000 L CNN
F 2 "" H 2288 4600 50  0001 C CNN
F 3 "~" H 2250 4750 50  0001 C CNN
	1    2250 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F7B4B48
P 1850 4750
F 0 "C1" H 1965 4796 50  0000 L CNN
F 1 "4.7uF" H 1965 4705 50  0000 L CNN
F 2 "" H 1888 4600 50  0001 C CNN
F 3 "~" H 1850 4750 50  0001 C CNN
	1    1850 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4600 1850 3750
Connection ~ 1850 3750
Wire Wire Line
	1850 3750 1550 3750
Wire Wire Line
	1850 4900 1850 5700
Connection ~ 1850 5700
Wire Wire Line
	1850 5700 2250 5700
Wire Wire Line
	2250 4900 2250 5700
Connection ~ 2250 5700
Wire Wire Line
	2250 5700 2750 5700
Wire Wire Line
	2250 4600 2250 3750
Connection ~ 2250 3750
Wire Wire Line
	2250 3750 1850 3750
$Comp
L Device:L L1
U 1 1 5F7C5D95
P 5300 2550
F 0 "L1" V 5119 2550 50  0000 C CNN
F 1 "13uH" V 5210 2550 50  0000 C CNN
F 2 "" H 5300 2550 50  0001 C CNN
F 3 "~" H 5300 2550 50  0001 C CNN
	1    5300 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F7C6B32
P 5300 2850
F 0 "R1" V 5507 2850 50  0000 C CNN
F 1 "100K" V 5416 2850 50  0000 C CNN
F 2 "" V 5230 2850 50  0001 C CNN
F 3 "~" H 5300 2850 50  0001 C CNN
	1    5300 2850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F7C76B9
P 6300 2800
F 0 "R2" H 6370 2846 50  0000 L CNN
F 1 "100K" H 6370 2755 50  0000 L CNN
F 2 "" V 6230 2800 50  0001 C CNN
F 3 "~" H 6300 2800 50  0001 C CNN
	1    6300 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F7C7CBE
P 6300 3400
F 0 "R3" H 6370 3446 50  0000 L CNN
F 1 "43.2K" H 6370 3355 50  0000 L CNN
F 2 "" V 6230 3400 50  0001 C CNN
F 3 "~" H 6300 3400 50  0001 C CNN
	1    6300 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5F7C8131
P 6800 3150
F 0 "C8" H 6915 3196 50  0000 L CNN
F 1 "47uF" H 6915 3105 50  0000 L CNN
F 2 "" H 6838 3000 50  0001 C CNN
F 3 "~" H 6800 3150 50  0001 C CNN
	1    6800 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5F7C850B
P 7250 3350
F 0 "C10" H 7365 3396 50  0000 L CNN
F 1 "100uF" H 7365 3305 50  0000 L CNN
F 2 "" H 7288 3200 50  0001 C CNN
F 3 "~" H 7250 3350 50  0001 C CNN
	1    7250 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F7C8A60
P 5900 2800
F 0 "C6" H 6015 2846 50  0000 L CNN
F 1 "33pF" H 6015 2755 50  0000 L CNN
F 2 "" H 5938 2650 50  0001 C CNN
F 3 "~" H 5900 2800 50  0001 C CNN
	1    5900 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F7C8E93
P 4400 2400
F 0 "C4" V 4148 2400 50  0000 C CNN
F 1 "100nF" V 4239 2400 50  0000 C CNN
F 2 "" H 4438 2250 50  0001 C CNN
F 3 "~" H 4400 2400 50  0001 C CNN
	1    4400 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 2850 4050 2550
Wire Wire Line
	4050 2550 5050 2550
Wire Wire Line
	4350 2850 5150 2850
Wire Wire Line
	5450 2550 5550 2550
Wire Wire Line
	5900 2550 5900 2650
Wire Wire Line
	4250 2850 4250 2700
Wire Wire Line
	4250 2700 4850 2700
Wire Wire Line
	4850 2700 4850 3100
Wire Wire Line
	4850 3100 5900 3100
Wire Wire Line
	5900 3100 5900 2950
Wire Wire Line
	5450 2850 5550 2850
Wire Wire Line
	5550 2850 5550 2550
Connection ~ 5550 2550
Wire Wire Line
	5550 2550 5900 2550
Wire Wire Line
	3950 2850 3950 2400
Wire Wire Line
	3950 2400 4250 2400
Wire Wire Line
	4550 2400 5050 2400
Wire Wire Line
	5050 2400 5050 2550
Connection ~ 5050 2550
Wire Wire Line
	5050 2550 5150 2550
Wire Wire Line
	5900 2550 6300 2550
Wire Wire Line
	6300 2550 6300 2650
Connection ~ 5900 2550
Wire Wire Line
	5900 3100 6300 3100
Wire Wire Line
	6300 3100 6300 2950
Connection ~ 5900 3100
Wire Wire Line
	6300 3100 6300 3250
Connection ~ 6300 3100
Wire Wire Line
	6300 3550 6300 4200
Connection ~ 4700 4200
Wire Wire Line
	6300 2550 6800 2550
Wire Wire Line
	6800 2550 6800 3000
Connection ~ 6300 2550
Wire Wire Line
	6800 2550 7250 2550
Wire Wire Line
	7250 2550 7250 3200
Connection ~ 6800 2550
Wire Wire Line
	6800 3300 6800 4200
Wire Wire Line
	6800 4200 6300 4200
Connection ~ 6300 4200
Wire Wire Line
	7250 3500 7250 4200
Wire Wire Line
	7250 4200 6800 4200
Connection ~ 6800 4200
Connection ~ 3200 5700
Connection ~ 7250 2550
$Comp
L Device:C C5
U 1 1 5F80591B
P 5050 5200
F 0 "C5" H 5200 5150 50  0000 C CNN
F 1 "1uF" H 5250 5250 50  0000 C CNN
F 2 "" H 5088 5050 50  0001 C CNN
F 3 "~" H 5050 5200 50  0001 C CNN
	1    5050 5200
	-1   0    0    1   
$EndComp
Text HLabel 8250 2550 2    50   Output ~ 0
VCC(+3.3V)
Text HLabel 8300 4950 2    50   Output ~ 0
VCC(+5V)
$Comp
L Device:C C7
U 1 1 5F8259B1
P 4200 4950
F 0 "C7" H 4315 4996 50  0000 L CNN
F 1 "2.2uF" H 4315 4905 50  0000 L CNN
F 2 "" H 4238 4800 50  0001 C CNN
F 3 "~" H 4200 4950 50  0001 C CNN
	1    4200 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F826501
P 7100 5300
F 0 "C9" H 7215 5346 50  0000 L CNN
F 1 "2.2uF" H 7215 5255 50  0000 L CNN
F 2 "" H 7138 5150 50  0001 C CNN
F 3 "~" H 7100 5300 50  0001 C CNN
	1    7100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4200 6300 4200
Wire Wire Line
	7650 4350 7650 2550
Connection ~ 7650 2550
Wire Wire Line
	7650 2550 7250 2550
Wire Wire Line
	6300 4950 7100 4950
Wire Wire Line
	7100 5150 7100 4950
Connection ~ 7100 4950
Wire Wire Line
	7100 4950 8300 4950
Wire Wire Line
	7100 5450 7100 5700
Wire Wire Line
	7650 2550 8250 2550
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F8030DA
P 1850 3750
F 0 "#FLG0101" H 1850 3825 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 3923 50  0000 C CNN
F 2 "" H 1850 3750 50  0001 C CNN
F 3 "~" H 1850 3750 50  0001 C CNN
	1    1850 3750
	1    0    0    -1  
$EndComp
$Comp
L MyCustomPartsLibrary:TPS60150 U2
U 1 1 5F7D421A
P 5900 4950
F 0 "U2" H 5900 5515 50  0000 C CNN
F 1 "TPS60150" H 5900 5424 50  0000 C CNN
F 2 "" H 5900 5400 50  0001 C CNN
F 3 "" H 5900 5400 50  0001 C CNN
	1    5900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5700 4200 5700
Wire Wire Line
	5500 5100 5400 5100
Wire Wire Line
	5400 5100 5400 5050
Wire Wire Line
	5400 5050 5050 5050
Wire Wire Line
	5500 5300 5400 5300
Wire Wire Line
	5400 5300 5400 5350
Wire Wire Line
	5400 5350 5050 5350
Wire Wire Line
	5900 5500 5900 5700
Connection ~ 5900 5700
Wire Wire Line
	4200 4350 7650 4350
Wire Wire Line
	4200 4800 4200 4650
Wire Wire Line
	4200 5100 4200 5700
Connection ~ 4200 5700
Wire Wire Line
	4200 5700 5900 5700
Wire Wire Line
	5500 4650 5250 4650
Connection ~ 4200 4650
Wire Wire Line
	4200 4650 4200 4350
Wire Wire Line
	5500 4850 5250 4850
Wire Wire Line
	5250 4850 5250 4650
Connection ~ 5250 4650
Wire Wire Line
	5250 4650 4200 4650
Wire Wire Line
	5900 5700 7100 5700
$EndSCHEMATC
