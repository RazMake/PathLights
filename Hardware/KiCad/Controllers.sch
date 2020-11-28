EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 7000 6850 0    177  ~ 35
Light Controller Board
$Comp
<<<<<<< HEAD
L RF_Module:ESP32-WROOM-32 U3
U 1 1 5FD99F50
P 7050 3800
F 0 "U3" H 6400 2750 50  0000 L CNN
F 1 "ESP32-WROOM-32" H 5750 2650 50  0000 L CNN
F 2 "RF_Module:ESP32-WROOM-32" H 7050 2300 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 6750 3850 50  0001 C CNN
F 4 "2.5" H 7050 3800 50  0001 C CNN "Price"
F 5 "https://www.mouser.com/ProductDetail/356-ESP32WRM32E132PH" H 7050 3800 50  0001 C CNN "Source"
	1    7050 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1850 7050 2400
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5FDD3164
P 8450 2900
F 0 "J3" H 8450 2550 50  0000 R CNN
F 1 "FLASH" H 8450 2650 50  0000 R CNN
F 2 "" H 8450 2900 50  0001 C CNN
F 3 "~" H 8450 2900 50  0001 C CNN
	1    8450 2900
	-1   0    0    1   
=======
L Connector:Conn_01x02_Male J1
U 1 1 5F6E6CC9
P 9750 3350
F 0 "J1" H 9650 3300 50  0000 L CNN
F 1 "MAIN POWER" H 9250 3200 50  0000 L CNN
F 2 "" H 9750 3350 50  0001 C CNN
F 3 "~" H 9750 3350 50  0001 C CNN
	1    9750 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 3350 9150 3350
Wire Wire Line
	9150 3350 9150 3650
Wire Wire Line
	9550 3250 9150 3250
Wire Wire Line
	9150 3250 9150 3050
$Comp
L power:GND #PWR0101
U 1 1 5F7E8D38
P 9150 5600
F 0 "#PWR0101" H 9150 5350 50  0001 C CNN
F 1 "GND" H 9155 5427 50  0000 C CNN
F 2 "" H 9150 5600 50  0001 C CNN
F 3 "" H 9150 5600 50  0001 C CNN
	1    9150 5600
	1    0    0    -1  
>>>>>>> c01aa59909e961924c68bb60606b1642f67481bf
$EndComp
Wire Wire Line
	7650 2600 8200 2600
Wire Wire Line
	8200 2600 8200 2700
Wire Wire Line
	8200 2700 8250 2700
Wire Wire Line
	7650 2700 8100 2700
Wire Wire Line
	8100 2700 8100 2800
Wire Wire Line
	8100 2800 8250 2800
Wire Wire Line
	8250 3000 8100 3000
NoConn ~ 6450 2800
NoConn ~ 6450 2900
NoConn ~ 6450 3800
NoConn ~ 6450 3900
NoConn ~ 6450 4000
NoConn ~ 6450 4100
NoConn ~ 6450 4200
NoConn ~ 6450 4300
NoConn ~ 7650 4900
NoConn ~ 7650 4800
NoConn ~ 7650 4700
NoConn ~ 7650 4600
NoConn ~ 7650 4500
NoConn ~ 7650 4400
NoConn ~ 7650 4200
NoConn ~ 7650 4100
NoConn ~ 7650 4000
NoConn ~ 7650 3900
NoConn ~ 7650 3800
NoConn ~ 7650 3700
NoConn ~ 7650 3600
NoConn ~ 7650 3500
NoConn ~ 7650 3400
NoConn ~ 7650 3300
NoConn ~ 7650 3200
NoConn ~ 7650 3100
NoConn ~ 7650 3000
$Comp
<<<<<<< HEAD
L Device:R R1
U 1 1 5FE3F1DB
P 6100 2250
F 0 "R1" H 6030 2204 50  0000 R CNN
F 1 "10K" H 6030 2295 50  0000 R CNN
F 2 "" V 6030 2250 50  0001 C CNN
F 3 "~" H 6100 2250 50  0001 C CNN
	1    6100 2250
	-1   0    0    1   
=======
L power:PWR_FLAG #FLG0102
U 1 1 5F7EB1DE
P 9150 3650
F 0 "#FLG0102" H 9150 3725 50  0001 C CNN
F 1 "PWR_FLAG" V 9150 3778 50  0000 L CNN
F 2 "" H 9150 3650 50  0001 C CNN
F 3 "~" H 9150 3650 50  0001 C CNN
	1    9150 3650
	0    1    1    0   
>>>>>>> c01aa59909e961924c68bb60606b1642f67481bf
$EndComp
Wire Wire Line
	6100 2100 6100 1850
Wire Wire Line
	6100 1850 7050 1850
$Comp
L Device:C C1
U 1 1 5FE472E6
P 4700 2600
F 0 "C1" H 4815 2646 50  0000 L CNN
F 1 "22uF" H 4815 2555 50  0000 L CNN
F 2 "" H 4738 2450 50  0001 C CNN
F 3 "~" H 4700 2600 50  0001 C CNN
	1    4700 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FE47C9C
P 5250 2600
F 0 "C2" H 5365 2646 50  0000 L CNN
F 1 "100nF" H 5365 2555 50  0000 L CNN
F 2 "" H 5288 2450 50  0001 C CNN
F 3 "~" H 5250 2600 50  0001 C CNN
	1    5250 2600
	1    0    0    -1  
$EndComp
<<<<<<< HEAD
Wire Wire Line
	4700 2450 4700 2150
Wire Wire Line
	5250 2450 5250 2150
=======
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5F84614D
P 5650 1150
F 0 "J2" V 5712 1294 50  0000 L CNN
F 1 "RGB LED" V 5803 1294 50  0000 L CNN
F 2 "" H 5650 1150 50  0001 C CNN
F 3 "~" H 5650 1150 50  0001 C CNN
	1    5650 1150
	0    1    1    0   
$EndComp
>>>>>>> c01aa59909e961924c68bb60606b1642f67481bf
Wire Wire Line
	5250 3050 5000 3050
Wire Wire Line
	4700 3050 4700 2750
Wire Wire Line
	5000 3100 5000 3050
Connection ~ 5000 3050
Wire Wire Line
	5000 3050 4700 3050
Wire Wire Line
	7650 2900 8250 2900
Wire Wire Line
	8100 3000 8100 3100
Wire Wire Line
	6450 2600 6100 2600
Wire Wire Line
	6100 2600 6100 2400
$Comp
L Device:C C3
U 1 1 5FEE10B7
P 6100 2800
F 0 "C3" H 5850 2900 50  0000 L CNN
F 1 "100nF" H 5750 2800 50  0000 L CNN
F 2 "" H 6138 2650 50  0001 C CNN
F 3 "~" H 6100 2800 50  0001 C CNN
	1    6100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2650 6100 2600
Connection ~ 6100 2600
Wire Wire Line
	5250 2750 5250 3050
Wire Wire Line
	6100 3050 6100 2950
$Comp
L power:GND #PWR0102
U 1 1 5FF08692
P 5000 3100
F 0 "#PWR0102" H 5000 2850 50  0001 C CNN
F 1 "GND" H 5005 2927 50  0000 C CNN
F 2 "" H 5000 3100 50  0001 C CNN
F 3 "" H 5000 3100 50  0001 C CNN
	1    5000 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FF08948
P 6100 3050
F 0 "#PWR0103" H 6100 2800 50  0001 C CNN
F 1 "GND" H 6105 2877 50  0000 C CNN
F 2 "" H 6100 3050 50  0001 C CNN
F 3 "" H 6100 3050 50  0001 C CNN
	1    6100 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FF094E1
P 8100 3100
F 0 "#PWR0105" H 8100 2850 50  0001 C CNN
F 1 "GND" H 8105 2927 50  0000 C CNN
F 2 "" H 8100 3100 50  0001 C CNN
F 3 "" H 8100 3100 50  0001 C CNN
	1    8100 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FF0B081
P 7050 5300
F 0 "#PWR0106" H 7050 5050 50  0001 C CNN
F 1 "GND" H 7055 5127 50  0000 C CNN
F 2 "" H 7050 5300 50  0001 C CNN
F 3 "" H 7050 5300 50  0001 C CNN
	1    7050 5300
	1    0    0    -1  
$EndComp
NoConn ~ 7650 2800
Text Notes 7300 7100 0    67   Italic 0
https://github.com/RazMake/PathLights/blob/master/ESPCircuitDesign.md
Wire Wire Line
<<<<<<< HEAD
	4700 2150 5000 2150
$Comp
L power:GND #PWR0101
U 1 1 5FCBC810
P 2150 2600
F 0 "#PWR0101" H 2150 2350 50  0001 C CNN
F 1 "GND" H 2155 2427 50  0000 C CNN
F 2 "" H 2150 2600 50  0001 C CNN
F 3 "" H 2150 2600 50  0001 C CNN
	1    2150 2600
	1    0    0    -1  
$EndComp
=======
	9150 5600 8700 5600
>>>>>>> c01aa59909e961924c68bb60606b1642f67481bf
Wire Wire Line
	2150 2600 2150 2550
Wire Wire Line
	6100 1850 5000 1850
Connection ~ 6100 1850
Wire Wire Line
	5000 2150 5000 1850
Connection ~ 5000 2150
Wire Wire Line
	5000 2150 5250 2150
Connection ~ 5000 1850
Wire Wire Line
	5000 1850 4450 1850
Wire Wire Line
	7050 5200 7050 5300
$Comp
L power:+5V #PWR0107
U 1 1 5FCD5F69
P 2100 1900
F 0 "#PWR0107" H 2100 1750 50  0001 C CNN
F 1 "+5V" V 2115 2028 50  0000 L CNN
F 2 "" H 2100 1900 50  0001 C CNN
F 3 "" H 2100 1900 50  0001 C CNN
	1    2100 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 1550 1900 1550
$Sheet
S 1000 1150 900  1750
U 5F049D3F
F0 "Light Controller Power Module" 79
F1 "LightControllerPower.sch" 79
F2 "VCC(+3.3V)" O R 1900 2250 50 
F3 "VCC(+12V)" O R 1900 1550 50 
F4 "GND" O R 1900 2550 50 
F5 "VCC(+5V)" O R 1900 1900 50 
$EndSheet
$Comp
L power:+3.3V #PWR0108
U 1 1 5FCD94DF
P 2100 2250
F 0 "#PWR0108" H 2100 2100 50  0001 C CNN
F 1 "+3.3V" V 2115 2378 50  0000 L CNN
F 2 "" H 2100 2250 50  0001 C CNN
F 3 "" H 2100 2250 50  0001 C CNN
	1    2100 2250
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0109
U 1 1 5FCDA789
P 2100 1550
F 0 "#PWR0109" H 2100 1400 50  0001 C CNN
F 1 "+12V" V 2115 1678 50  0000 L CNN
F 2 "" H 2100 1550 50  0001 C CNN
F 3 "" H 2100 1550 50  0001 C CNN
	1    2100 1550
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 5FCDAF0A
P 4450 1850
F 0 "#PWR0110" H 4450 1700 50  0001 C CNN
F 1 "+3.3V" V 4465 1978 50  0000 L CNN
F 2 "" H 4450 1850 50  0001 C CNN
F 3 "" H 4450 1850 50  0001 C CNN
	1    4450 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8650 4700 8650 4800
Connection ~ 8650 4700
Wire Wire Line
	8650 4400 8650 4700
$Comp
L power:GND #PWR0104
U 1 1 5FF08BB5
P 8650 4800
F 0 "#PWR0104" H 8650 4550 50  0001 C CNN
F 1 "GND" H 8655 4627 50  0000 C CNN
F 2 "" H 8650 4800 50  0001 C CNN
F 3 "" H 8650 4800 50  0001 C CNN
	1    8650 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4700 8650 4700
Wire Wire Line
	8250 4400 8250 4700
Wire Wire Line
<<<<<<< HEAD
	8650 4400 9000 4400
Wire Wire Line
	9000 4300 8500 4300
=======
	4350 1950 4350 3050
NoConn ~ 4950 3050
NoConn ~ 4850 3050
NoConn ~ 4750 3050
NoConn ~ 4650 3050
NoConn ~ 4550 3050
NoConn ~ 4450 3050
NoConn ~ 4250 3050
NoConn ~ 4150 3050
NoConn ~ 4050 3050
NoConn ~ 3950 3050
NoConn ~ 3850 3050
NoConn ~ 3750 3050
NoConn ~ 3650 3050
NoConn ~ 3550 3050
NoConn ~ 3450 3050
NoConn ~ 3350 3050
NoConn ~ 3250 3050
NoConn ~ 3150 3050
NoConn ~ 3050 3050
NoConn ~ 2950 3050
NoConn ~ 2850 3050
NoConn ~ 2750 3050
NoConn ~ 2650 3050
NoConn ~ 3850 4250
NoConn ~ 3950 4250
NoConn ~ 4150 4250
NoConn ~ 4250 4250
NoConn ~ 4350 4250
NoConn ~ 4050 4250
NoConn ~ 2850 4250
NoConn ~ 2950 4250
Connection ~ 9150 5600
Wire Wire Line
	9150 5600 9150 3650
>>>>>>> c01aa59909e961924c68bb60606b1642f67481bf
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5FDC7205
P 9200 4300
F 0 "J2" H 9200 4050 50  0000 R CNN
F 1 "RGB LED" H 9200 4150 50  0000 R CNN
F 2 "" H 9200 4300 50  0001 C CNN
F 3 "~" H 9200 4300 50  0001 C CNN
	1    9200 4300
	-1   0    0    1   
$EndComp
$Comp
L 74xGxx:74LVC1G17 U4
U 1 1 5FDB9D10
P 8250 4300
F 0 "U4" H 8450 4550 50  0000 R CNN
F 1 "74LVC1G17GW" H 8850 4450 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 8250 4300 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74LVC1G17.pdf" H 8250 4300 50  0001 C CNN
F 4 "https://www.mouser.com/ProductDetail/Nexperia/74LVC1G17GW125?qs=sGAEpiMZZMutXGli8Ay4kDE4J8KCiPsFxNiM2xNKic4%3D" H 8250 4300 50  0001 C CNN "Source"
F 5 "0.155" H 8250 4300 50  0001 C CNN "Price"
	1    8250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4300 7650 4300
$Comp
L power:+5V #PWR0111
U 1 1 5FCE01D7
P 8250 3950
F 0 "#PWR0111" H 8250 3800 50  0001 C CNN
F 1 "+5V" H 8265 4123 50  0000 C CNN
F 2 "" H 8250 3950 50  0001 C CNN
F 3 "" H 8250 3950 50  0001 C CNN
	1    8250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3950 8250 4200
$Comp
L power:+12V #PWR0112
U 1 1 5FCE3079
P 9000 3950
F 0 "#PWR0112" H 9000 3800 50  0001 C CNN
F 1 "+12V" H 9015 4123 50  0000 C CNN
F 2 "" H 9000 3950 50  0001 C CNN
F 3 "" H 9000 3950 50  0001 C CNN
	1    9000 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3950 9000 4200
Wire Wire Line
	1900 1900 2100 1900
Wire Wire Line
	1900 2250 2100 2250
Wire Wire Line
<<<<<<< HEAD
	2150 2550 1900 2550
=======
	2200 5600 2700 5600
Connection ~ 5650 5600
$Comp
L Device:C C5
U 1 1 5FBDA544
P 1950 3200
F 0 "C5" H 1750 3250 50  0000 L CNN
F 1 "100nF" H 1600 3150 50  0000 L CNN
F 2 "" H 1988 3050 50  0001 C CNN
F 3 "~" H 1950 3200 50  0001 C CNN
	1    1950 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5600 2200 5600
Connection ~ 2200 5600
Wire Wire Line
	1950 1950 1950 3050
Wire Wire Line
	1950 3350 1950 5600
$Comp
L Device:C C9
U 1 1 5FBE4BA9
P 8700 4850
F 0 "C9" H 8815 4896 50  0000 L CNN
F 1 "100nF" H 8815 4805 50  0000 L CNN
F 2 "" H 8738 4700 50  0001 C CNN
F 3 "~" H 8700 4850 50  0001 C CNN
	1    8700 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C7
U 1 1 5FBE70F4
P 8500 4500
F 0 "C7" H 8250 4550 50  0000 L CNN
F 1 "10uF" H 8200 4450 50  0000 L CNN
F 2 "" H 8538 4350 50  0001 C CNN
F 3 "~" H 8500 4500 50  0001 C CNN
	1    8500 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3650 9150 3650
Wire Wire Line
	8300 3050 8500 3050
Wire Wire Line
	8700 5000 8700 5600
Connection ~ 8700 5600
Wire Wire Line
	8700 5600 8500 5600
Wire Wire Line
	8500 4650 8500 5600
Connection ~ 8500 5600
Wire Wire Line
	8500 5600 5650 5600
Wire Wire Line
	8500 4350 8500 3050
Connection ~ 8500 3050
Wire Wire Line
	8500 3050 8700 3050
Wire Wire Line
	8700 4700 8700 3050
Connection ~ 8700 3050
Wire Wire Line
	8700 3050 9150 3050
Wire Wire Line
	1950 1950 3350 1950
Connection ~ 3350 1950
>>>>>>> c01aa59909e961924c68bb60606b1642f67481bf
$EndSCHEMATC
