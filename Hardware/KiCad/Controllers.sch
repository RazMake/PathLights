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
$Sheet
S 6500 3700 1850 1150
U 5F049D3F
F0 "Light Controller Power Module" 79
F1 "LightControllerPower.sch" 79
F2 "VCC(+3.3V)" O L 6500 4600 50 
F3 "VCC(+12V)" I R 8350 4000 50 
F4 "GND" I R 8350 4600 50 
F5 "VCC(+5V)" O L 6500 4000 50 
$EndSheet
Text Notes 7050 7000 0    177  ~ 35
Light Controller Board
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5F6E6CC9
P 9550 4300
F 0 "J1" H 9450 4350 50  0000 L CNN
F 1 "MAIN POWER" H 9100 4450 50  0000 L CNN
F 2 "" H 9550 4300 50  0001 C CNN
F 3 "~" H 9550 4300 50  0001 C CNN
	1    9550 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9350 4300 9200 4300
Wire Wire Line
	9200 4300 9200 4600
Wire Wire Line
	9350 4200 9200 4200
Wire Wire Line
	9200 4200 9200 4000
Wire Wire Line
	9200 4000 8350 4000
Wire Wire Line
	8350 4600 9200 4600
$Comp
L power:GND #PWR0101
U 1 1 5F805BEB
P 9200 4600
F 0 "#PWR0101" H 9200 4350 50  0001 C CNN
F 1 "GND" H 9205 4427 50  0000 C CNN
F 2 "" H 9200 4600 50  0001 C CNN
F 3 "" H 9200 4600 50  0001 C CNN
	1    9200 4600
	1    0    0    -1  
$EndComp
Connection ~ 9200 4600
$EndSCHEMATC
