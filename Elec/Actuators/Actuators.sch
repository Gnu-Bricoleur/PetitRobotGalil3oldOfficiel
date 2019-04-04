EESchema Schematic File Version 4
LIBS:Actuators-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 2550 2750 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5C88C549
P 6800 2100
F 0 "A1" H 6800 1014 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 6800 923 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6950 1150 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 6800 1100 50  0001 C CNN
	1    6800 2100
	1    0    0    -1  
$EndComp
Text Label 6300 1500 2    50   ~ 0
1(Tx)
Text Label 6300 1600 2    50   ~ 0
0(Rx)
$Comp
L power:GND #PWR0101
U 1 1 5C895244
P 6900 3100
F 0 "#PWR0101" H 6900 2850 50  0001 C CNN
F 1 "GND" H 6905 2927 50  0000 C CNN
F 2 "" H 6900 3100 50  0001 C CNN
F 3 "" H 6900 3100 50  0001 C CNN
	1    6900 3100
	1    0    0    -1  
$EndComp
Text Label 6700 1100 0    50   ~ 0
Vin
Text Label 6300 2700 2    50   ~ 0
MISO
Text Label 6300 2600 2    50   ~ 0
MOSI
Text Label 7300 2500 0    50   ~ 0
SCK
Text Label 7300 2400 0    50   ~ 0
SS1
Text Label 7300 2300 0    50   ~ 0
SS2
$Comp
L Connector_Generic:Conn_01x06 J15
U 1 1 5C90C1AE
P 7600 4000
F 0 "J15" H 7680 3992 50  0000 L CNN
F 1 "Conn_01x06" H 7680 3901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7600 4000 50  0001 C CNN
F 3 "~" H 7600 4000 50  0001 C CNN
	1    7600 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J16
U 1 1 5C90C22E
P 7600 4750
F 0 "J16" H 7680 4742 50  0000 L CNN
F 1 "Conn_01x06" H 7680 4651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7600 4750 50  0001 C CNN
F 3 "~" H 7600 4750 50  0001 C CNN
	1    7600 4750
	1    0    0    -1  
$EndComp
Text Label 7000 1100 0    50   ~ 0
EncAlim
Text Label 7400 3800 2    50   ~ 0
EncAlim
Text Label 7400 4550 2    50   ~ 0
EncAlim
$Comp
L power:GND #PWR0102
U 1 1 5C90C5A2
P 7400 3900
F 0 "#PWR0102" H 7400 3650 50  0001 C CNN
F 1 "GND" V 7405 3772 50  0000 R CNN
F 2 "" H 7400 3900 50  0001 C CNN
F 3 "" H 7400 3900 50  0001 C CNN
	1    7400 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C90C606
P 7400 4650
F 0 "#PWR0103" H 7400 4400 50  0001 C CNN
F 1 "GND" V 7405 4522 50  0000 R CNN
F 2 "" H 7400 4650 50  0001 C CNN
F 3 "" H 7400 4650 50  0001 C CNN
	1    7400 4650
	0    1    1    0   
$EndComp
Text Label 7400 4000 2    50   ~ 0
SS1
Text Label 7400 4100 2    50   ~ 0
SCK
Text Label 7400 4200 2    50   ~ 0
MOSI
Text Label 7400 4300 2    50   ~ 0
MISO
Text Label 7400 4950 2    50   ~ 0
MOSI
Text Label 7400 5050 2    50   ~ 0
MISO
Text Label 7400 4850 2    50   ~ 0
SCK
Text Label 7400 4750 2    50   ~ 0
SS2
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 5C90CF54
P 4150 2550
F 0 "J8" H 4230 2592 50  0000 L CNN
F 1 "Conn_01x01" H 4230 2501 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4150 2550 50  0001 C CNN
F 3 "~" H 4150 2550 50  0001 C CNN
	1    4150 2550
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J12
U 1 1 5C90D008
P 4450 2550
F 0 "J12" H 4530 2592 50  0000 L CNN
F 1 "Conn_01x01" H 4530 2501 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4450 2550 50  0001 C CNN
F 3 "~" H 4450 2550 50  0001 C CNN
	1    4450 2550
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 5C90D058
P 4150 3400
F 0 "J9" H 4230 3442 50  0000 L CNN
F 1 "Conn_01x01" H 4230 3351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4150 3400 50  0001 C CNN
F 3 "~" H 4150 3400 50  0001 C CNN
	1    4150 3400
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J13
U 1 1 5C90D0D8
P 4450 3400
F 0 "J13" H 4530 3442 50  0000 L CNN
F 1 "Conn_01x01" H 4530 3351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 4450 3400 50  0001 C CNN
F 3 "~" H 4450 3400 50  0001 C CNN
	1    4450 3400
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J10
U 1 1 5C90D18F
P 4250 1850
F 0 "J10" V 4216 1662 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 4125 1662 50  0000 R CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBA_2,5_2-G_1x02_P5.00mm_Horizontal" H 4250 1850 50  0001 C CNN
F 3 "~" H 4250 1850 50  0001 C CNN
	1    4250 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 2350 4250 2350
Wire Wire Line
	4250 2350 4250 2200
Wire Wire Line
	4350 2050 4350 2200
Wire Wire Line
	4350 2350 4450 2350
Wire Wire Line
	4150 3600 4150 3950
Wire Wire Line
	4150 3950 4200 3950
$Comp
L Connector_Generic:Conn_01x03 J11
U 1 1 5C9149DE
P 4300 4150
F 0 "J11" V 4173 4330 50  0000 L CNN
F 1 "Conn_01x03" V 4264 4330 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4300 4150 50  0001 C CNN
F 3 "~" H 4300 4150 50  0001 C CNN
	1    4300 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 3600 4300 3600
Wire Wire Line
	4300 3600 4300 3700
Text Label 4400 3800 0    60   ~ 0
10(**/SS)
Wire Wire Line
	4400 3800 4400 3950
$Comp
L Driver_Motor:LMD18200 U1
U 1 1 5C91310E
P 3200 5650
F 0 "U1" H 3200 6628 50  0000 C CNN
F 1 "LMD18200" H 3200 6537 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-11_P3.4x5.08mm_StaggerOdd_Lead4.85mm_Vertical" H 1750 4300 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmd18200.pdf" H 3100 5650 50  0001 C CNN
	1    3200 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5C913115
P 4100 5200
F 0 "C1" H 4215 5246 50  0000 L CNN
F 1 "10nF" H 4215 5155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 4138 5050 50  0001 C CNN
F 3 "~" H 4100 5200 50  0001 C CNN
	1    4100 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C91311C
P 4100 5700
F 0 "C2" H 4215 5746 50  0000 L CNN
F 1 "10nF" H 4215 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 4138 5550 50  0001 C CNN
F 3 "~" H 4100 5700 50  0001 C CNN
	1    4100 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5050 4100 5050
Wire Wire Line
	4100 5350 3900 5350
Wire Wire Line
	4100 5550 3900 5550
Wire Wire Line
	4100 5850 3900 5850
$Comp
L Connector:Screw_Terminal_01x02 J14
U 1 1 5C913127
P 5100 5400
F 0 "J14" H 5180 5392 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 5180 5301 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBA_2,5_2-G_1x02_P5.00mm_Horizontal" H 5100 5400 50  0001 C CNN
F 3 "~" H 5100 5400 50  0001 C CNN
	1    5100 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5050 4900 5050
Wire Wire Line
	4900 5050 4900 5400
Connection ~ 4100 5050
Wire Wire Line
	4100 5850 4900 5850
Wire Wire Line
	4900 5850 4900 5500
Connection ~ 4100 5850
Text Label 3200 4850 0    50   ~ 0
Bat+
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5C913136
P 2100 6150
F 0 "J5" H 2020 5825 50  0000 C CNN
F 1 "Conn_01x02" H 2020 5916 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2100 6150 50  0001 C CNN
F 3 "~" H 2100 6150 50  0001 C CNN
	1    2100 6150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 5950 2300 5950
Wire Wire Line
	2300 5950 2300 6050
Text Label 2300 6150 0    50   ~ 0
GND
Text Label 1550 5950 0    50   ~ 0
BR1
Wire Wire Line
	1550 5950 2300 5950
Connection ~ 2300 5950
Text Label 1550 5650 0    50   ~ 0
DIR1
Text Label 1550 5350 0    50   ~ 0
PWM1
Wire Wire Line
	1550 5350 2500 5350
Wire Wire Line
	2500 5650 1550 5650
$Comp
L Device:R R1
U 1 1 5C913147
P 4300 6200
F 0 "R1" H 4370 6246 50  0000 L CNN
F 1 "2.7k" H 4370 6155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4230 6200 50  0001 C CNN
F 3 "~" H 4300 6200 50  0001 C CNN
	1    4300 6200
	1    0    0    -1  
$EndComp
Text Label 4300 6350 0    50   ~ 0
GND
Wire Wire Line
	3900 6050 4300 6050
Connection ~ 4300 6050
Text Label 5100 6050 0    50   ~ 0
CSEN1
Text Label 5100 6450 0    50   ~ 0
TF1
Wire Wire Line
	3900 6150 4150 6150
Wire Wire Line
	4150 6150 4150 6450
Wire Wire Line
	4150 6450 5100 6450
Wire Wire Line
	4300 6050 5100 6050
$Comp
L power:GND #PWR0104
U 1 1 5C92120D
P 3200 6550
F 0 "#PWR0104" H 3200 6300 50  0001 C CNN
F 1 "GND" H 3205 6377 50  0000 C CNN
F 2 "" H 3200 6550 50  0001 C CNN
F 3 "" H 3200 6550 50  0001 C CNN
	1    3200 6550
	1    0    0    -1  
$EndComp
Text Label 4900 2200 0    50   ~ 0
Bat+
Wire Wire Line
	4900 2200 4350 2200
Connection ~ 4350 2200
Wire Wire Line
	4350 2200 4350 2350
$Comp
L Connector_Generic:Conn_01x06 J17
U 1 1 5C9232EC
P 7600 5500
F 0 "J17" H 7680 5492 50  0000 L CNN
F 1 "Conn_01x06" H 7680 5401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7600 5500 50  0001 C CNN
F 3 "~" H 7600 5500 50  0001 C CNN
	1    7600 5500
	1    0    0    -1  
$EndComp
Text Label 7100 5400 2    50   ~ 0
PWM1
Text Label 7100 5500 2    50   ~ 0
DIR1
Text Label 7100 5600 2    50   ~ 0
BR1
Text Label 7100 5700 2    50   ~ 0
CSEN1
Text Label 7100 5800 2    50   ~ 0
TF1
$Comp
L power:GND #PWR0105
U 1 1 5C92AA2E
P 7400 5300
F 0 "#PWR0105" H 7400 5050 50  0001 C CNN
F 1 "GND" V 7405 5172 50  0000 R CNN
F 2 "" H 7400 5300 50  0001 C CNN
F 3 "" H 7400 5300 50  0001 C CNN
	1    7400 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 5800 7400 5800
Wire Wire Line
	7400 5700 7100 5700
Wire Wire Line
	7100 5600 7400 5600
Text Label 6750 5500 2    60   ~ 0
12(MISO)
Wire Wire Line
	6750 5500 7400 5500
Text Label 6750 5400 2    60   ~ 0
11(**/MOSI)
Wire Wire Line
	6750 5400 7400 5400
Text Label 2550 2850 0    60   ~ 0
A2
Text Label 2550 2950 0    60   ~ 0
A3
Text Label 2550 3050 0    60   ~ 0
A4(SDA)
Text Label 2550 3150 0    60   ~ 0
A5(SCL)
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 5C943BA3
P 2600 3550
F 0 "J7" H 2520 3225 50  0000 C CNN
F 1 "Conn_01x03" H 2520 3316 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2600 3550 50  0001 C CNN
F 3 "~" H 2600 3550 50  0001 C CNN
	1    2600 3550
	-1   0    0    1   
$EndComp
Text Label 2800 3450 0    50   ~ 0
Bat+
Wire Wire Line
	4300 3700 3800 3700
Wire Wire Line
	3800 3700 3800 3550
Wire Wire Line
	3800 3550 2800 3550
Connection ~ 4300 3700
Wire Wire Line
	4300 3700 4300 3950
$Comp
L power:GND #PWR0106
U 1 1 5C94604F
P 2800 3650
F 0 "#PWR0106" H 2800 3400 50  0001 C CNN
F 1 "GND" V 2805 3522 50  0000 R CNN
F 2 "" H 2800 3650 50  0001 C CNN
F 3 "" H 2800 3650 50  0001 C CNN
	1    2800 3650
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J6
U 1 1 5C95127B
P 2200 2950
F 0 "J6" H 2120 2525 50  0000 C CNN
F 1 "Conn_01x05" H 2120 2616 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2200 2950 50  0001 C CNN
F 3 "~" H 2200 2950 50  0001 C CNN
	1    2200 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 2750 2550 2750
Wire Wire Line
	2550 2850 2400 2850
Wire Wire Line
	2400 2950 2550 2950
Wire Wire Line
	2550 3050 2400 3050
Wire Wire Line
	2400 3150 2550 3150
$Comp
L Connector_Generic:Conn_01x08 J4
U 1 1 5C95D858
P 1900 3150
F 0 "J4" H 1820 2525 50  0000 C CNN
F 1 "Conn_01x08" H 1820 2616 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1900 3150 50  0001 C CNN
F 3 "~" H 1900 3150 50  0001 C CNN
	1    1900 3150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 5C95DA08
P 1600 3150
F 0 "J3" H 1520 2525 50  0000 C CNN
F 1 "Conn_01x08" H 1520 2616 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1600 3150 50  0001 C CNN
F 3 "~" H 1600 3150 50  0001 C CNN
	1    1600 3150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 5C960427
P 1300 3150
F 0 "J2" H 1220 2525 50  0000 C CNN
F 1 "Conn_01x08" H 1220 2616 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1300 3150 50  0001 C CNN
F 3 "~" H 1300 3150 50  0001 C CNN
	1    1300 3150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 5C962EB5
P 1000 3150
F 0 "J1" H 920 2525 50  0000 C CNN
F 1 "Conn_01x08" H 920 2616 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1000 3150 50  0001 C CNN
F 3 "~" H 1000 3150 50  0001 C CNN
	1    1000 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C9E4D5D
P 3950 2200
F 0 "#PWR?" H 3950 1950 50  0001 C CNN
F 1 "GND" H 3955 2027 50  0000 C CNN
F 2 "" H 3950 2200 50  0001 C CNN
F 3 "" H 3950 2200 50  0001 C CNN
	1    3950 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2200 4250 2200
Connection ~ 4250 2200
Wire Wire Line
	4250 2200 4250 2050
$EndSCHEMATC
