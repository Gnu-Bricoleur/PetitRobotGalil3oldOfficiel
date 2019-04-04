EESchema Schematic File Version 4
LIBS:MotorDriverV0_4-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5BEB8F14
P 9100 2500
F 0 "A1" H 9100 3678 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 9100 3587 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 9250 1450 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 8900 3550 50  0001 C CNN
	1    9100 2500
	1    0    0    -1  
$EndComp
Text GLabel 8600 2400 0    50   Input ~ 0
DIR1
Text GLabel 8600 2500 0    50   Input ~ 0
PWM1
Text GLabel 8600 2600 0    50   Input ~ 0
PWM2
Text GLabel 8600 2700 0    50   Input ~ 0
DIR2
Text GLabel 8600 2300 0    50   Input ~ 0
BRK1
Text GLabel 8600 2200 0    50   Input ~ 0
CUR1
Text GLabel 8600 2100 0    50   Input ~ 0
TEMP1
Text GLabel 8600 2800 0    50   Input ~ 0
BRK2
Text GLabel 8600 2900 0    50   Input ~ 0
CUR2
Text GLabel 8600 3000 0    50   Input ~ 0
TEMP2
$Comp
L Driver_Motor:LMD18200 U1
U 1 1 5BEB8FE2
P 4300 2350
F 0 "U1" H 4300 3328 50  0000 C CNN
F 1 "LMD18200" H 4300 3237 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-11_P3.4x5.08mm_StaggerOdd_Lead4.85mm_Vertical" H 2850 1000 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmd18200.pdf" H 4200 2350 50  0001 C CNN
	1    4300 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5BEB909A
P 1350 1000
F 0 "J1" H 1270 675 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1270 766 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1350 1000 50  0001 C CNN
F 3 "~" H 1350 1000 50  0001 C CNN
	1    1350 1000
	-1   0    0    1   
$EndComp
Text GLabel 9200 3600 3    50   Input ~ 0
GND
Text GLabel 4300 3250 3    50   Input ~ 0
GND
Text GLabel 4300 1550 1    50   Input ~ 0
VS
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5BEB929B
P 6600 3100
F 0 "J6" V 6660 3140 50  0000 L CNN
F 1 "Conn_01x02_Male" V 6751 3140 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6600 3100 50  0001 C CNN
F 3 "~" H 6600 3100 50  0001 C CNN
	1    6600 3100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5BEB9359
P 6600 2700
F 0 "J5" V 6660 2740 50  0000 L CNN
F 1 "Conn_01x02_Male" V 6751 2740 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6600 2700 50  0001 C CNN
F 3 "~" H 6600 2700 50  0001 C CNN
	1    6600 2700
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5BEB9412
P 6600 2250
F 0 "J4" V 6660 2290 50  0000 L CNN
F 1 "Conn_01x02_Male" V 6751 2290 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6600 2250 50  0001 C CNN
F 3 "~" H 6600 2250 50  0001 C CNN
	1    6600 2250
	0    1    1    0   
$EndComp
Text GLabel 6600 3300 2    50   Input ~ 0
TEMP1
Text GLabel 6600 2900 2    50   Input ~ 0
CUR1
Text GLabel 6600 2450 2    50   Input ~ 0
BRK1
$Comp
L Device:R R1
U 1 1 5BEB9529
P 5600 2650
F 0 "R1" V 5393 2650 50  0000 C CNN
F 1 "2.7k" V 5484 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5530 2650 50  0001 C CNN
F 3 "~" H 5600 2650 50  0001 C CNN
	1    5600 2650
	0    1    1    0   
$EndComp
Text GLabel 5750 2650 2    50   Input ~ 0
GND
Wire Wire Line
	5000 2750 5450 2750
Wire Wire Line
	5450 2750 5450 2650
Wire Wire Line
	5450 2750 5450 2900
Wire Wire Line
	5450 2900 5500 2900
Connection ~ 5450 2750
Wire Wire Line
	5000 2850 5300 2850
Wire Wire Line
	5300 2850 5300 3300
Wire Wire Line
	5300 3300 5600 3300
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5BEB9B3A
P 5900 2100
F 0 "J3" H 5980 2092 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 5980 2001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5900 2100 50  0001 C CNN
F 3 "~" H 5900 2100 50  0001 C CNN
	1    5900 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2050 5200 2050
Wire Wire Line
	5200 2250 5000 2250
Wire Wire Line
	5700 1750 5700 2100
Wire Wire Line
	5700 2200 5700 2550
Wire Wire Line
	5000 1750 5200 1750
Wire Wire Line
	5000 2550 5200 2550
$Comp
L Device:C C3
U 1 1 5BEBA1B2
P 5200 1900
F 0 "C3" H 5315 1946 50  0000 L CNN
F 1 "10nF" H 5315 1855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5238 1750 50  0001 C CNN
F 3 "~" H 5200 1900 50  0001 C CNN
	1    5200 1900
	1    0    0    -1  
$EndComp
Connection ~ 5200 1750
Wire Wire Line
	5200 1750 5700 1750
$Comp
L Device:C C4
U 1 1 5BEBA25E
P 5200 2400
F 0 "C4" H 5315 2446 50  0000 L CNN
F 1 "10nF" H 5315 2355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5238 2250 50  0001 C CNN
F 3 "~" H 5200 2400 50  0001 C CNN
	1    5200 2400
	1    0    0    -1  
$EndComp
Connection ~ 5200 2550
Wire Wire Line
	5200 2550 5700 2550
$Comp
L Device:C C1
U 1 1 5BEBA410
P 1900 1050
F 0 "C1" H 2015 1096 50  0000 L CNN
F 1 "1uF" H 2015 1005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1938 900 50  0001 C CNN
F 3 "~" H 1900 1050 50  0001 C CNN
	1    1900 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5BEBA4B8
P 2350 1050
F 0 "C2" H 2465 1096 50  0000 L CNN
F 1 "1200uF" H 2465 1005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2388 900 50  0001 C CNN
F 3 "~" H 2350 1050 50  0001 C CNN
	1    2350 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 900  1900 900 
Wire Wire Line
	2350 900  1900 900 
Connection ~ 1900 900 
Wire Wire Line
	2350 1200 1900 1200
Wire Wire Line
	1900 1200 1550 1200
Wire Wire Line
	1550 1200 1550 1000
Connection ~ 1900 1200
Text GLabel 2350 900  2    50   Input ~ 0
VS
Text GLabel 2350 1200 2    50   Input ~ 0
GND
Text GLabel 3600 2050 0    50   Input ~ 0
PWM1
Text GLabel 3600 2350 0    50   Input ~ 0
DIR1
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5BEBB0F2
P 2950 2650
F 0 "J2" H 3056 2828 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3056 2737 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2950 2650 50  0001 C CNN
F 3 "~" H 2950 2650 50  0001 C CNN
	1    2950 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2450 6200 2450
Wire Wire Line
	6200 2450 6200 3700
Wire Wire Line
	6200 3700 5400 3700
Wire Wire Line
	3600 3700 3600 2650
Wire Wire Line
	3600 2650 3150 2650
Connection ~ 3600 2650
Text GLabel 3150 2750 2    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x06_Male J7
U 1 1 5BEBC112
P 5300 4350
F 0 "J7" V 5453 3963 50  0000 R CNN
F 1 "Conn_01x06_Male" V 5362 3963 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5300 4350 50  0001 C CNN
F 3 "~" H 5300 4350 50  0001 C CNN
	1    5300 4350
	0    -1   -1   0   
$EndComp
Text GLabel 5100 4150 1    50   Input ~ 0
GND
Text GLabel 5200 4150 1    50   Input ~ 0
PWM1
Text GLabel 5300 4150 1    50   Input ~ 0
DIR1
Wire Wire Line
	5400 3700 5400 4150
Connection ~ 5400 3700
Wire Wire Line
	5400 3700 3600 3700
Wire Wire Line
	5500 2900 5500 4150
Connection ~ 5500 2900
Wire Wire Line
	5500 2900 6500 2900
Wire Wire Line
	5600 3300 5600 4150
Connection ~ 5600 3300
Wire Wire Line
	5600 3300 6500 3300
$Comp
L Driver_Motor:LMD18200 U2
U 1 1 5BEC5CE2
P 4300 5300
F 0 "U2" H 4300 6278 50  0000 C CNN
F 1 "LMD18200" H 4300 6187 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-11_P3.4x5.08mm_StaggerOdd_Lead4.85mm_Vertical" H 2850 3950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmd18200.pdf" H 4200 5300 50  0001 C CNN
	1    4300 5300
	1    0    0    -1  
$EndComp
Text GLabel 4300 6200 3    50   Input ~ 0
GND
Text GLabel 4300 4500 1    50   Input ~ 0
VS
$Comp
L Connector:Conn_01x02_Male J13
U 1 1 5BEC5CEB
P 6600 6050
F 0 "J13" V 6660 6090 50  0000 L CNN
F 1 "Conn_01x02_Male" V 6751 6090 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6600 6050 50  0001 C CNN
F 3 "~" H 6600 6050 50  0001 C CNN
	1    6600 6050
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J12
U 1 1 5BEC5CF2
P 6600 5650
F 0 "J12" V 6660 5690 50  0000 L CNN
F 1 "Conn_01x02_Male" V 6751 5690 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6600 5650 50  0001 C CNN
F 3 "~" H 6600 5650 50  0001 C CNN
	1    6600 5650
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J11
U 1 1 5BEC5CF9
P 6600 5200
F 0 "J11" V 6660 5240 50  0000 L CNN
F 1 "Conn_01x02_Male" V 6751 5240 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6600 5200 50  0001 C CNN
F 3 "~" H 6600 5200 50  0001 C CNN
	1    6600 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5BEC5D03
P 5600 5600
F 0 "R2" V 5393 5600 50  0000 C CNN
F 1 "2.7k" V 5484 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5530 5600 50  0001 C CNN
F 3 "~" H 5600 5600 50  0001 C CNN
	1    5600 5600
	0    1    1    0   
$EndComp
Text GLabel 5750 5600 2    50   Input ~ 0
GND
Wire Wire Line
	5000 5700 5450 5700
Wire Wire Line
	5450 5700 5450 5600
Wire Wire Line
	5450 5700 5450 5850
Wire Wire Line
	5450 5850 5500 5850
Connection ~ 5450 5700
Wire Wire Line
	5000 5800 5300 5800
Wire Wire Line
	5300 5800 5300 6250
Wire Wire Line
	5300 6250 5600 6250
$Comp
L Connector:Screw_Terminal_01x02 J10
U 1 1 5BEC5D13
P 5900 5050
F 0 "J10" H 5980 5042 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 5980 4951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5900 5050 50  0001 C CNN
F 3 "~" H 5900 5050 50  0001 C CNN
	1    5900 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5000 5200 5000
Wire Wire Line
	5200 5200 5000 5200
Wire Wire Line
	5700 4700 5700 5050
Wire Wire Line
	5700 5150 5700 5500
Wire Wire Line
	5000 4700 5200 4700
Wire Wire Line
	5000 5500 5200 5500
$Comp
L Device:C C5
U 1 1 5BEC5D20
P 5200 4850
F 0 "C5" H 5315 4896 50  0000 L CNN
F 1 "10nF" H 5315 4805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5238 4700 50  0001 C CNN
F 3 "~" H 5200 4850 50  0001 C CNN
	1    5200 4850
	1    0    0    -1  
$EndComp
Connection ~ 5200 4700
Wire Wire Line
	5200 4700 5700 4700
$Comp
L Device:C C6
U 1 1 5BEC5D29
P 5200 5350
F 0 "C6" H 5315 5396 50  0000 L CNN
F 1 "10nF" H 5315 5305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5238 5200 50  0001 C CNN
F 3 "~" H 5200 5350 50  0001 C CNN
	1    5200 5350
	1    0    0    -1  
$EndComp
Connection ~ 5200 5500
Wire Wire Line
	5200 5500 5700 5500
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 5BEC5D34
P 2950 5600
F 0 "J8" H 3056 5778 50  0000 C CNN
F 1 "Conn_01x02_Male" H 3056 5687 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2950 5600 50  0001 C CNN
F 3 "~" H 2950 5600 50  0001 C CNN
	1    2950 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5400 6200 5400
Wire Wire Line
	6200 5400 6200 6650
Wire Wire Line
	6200 6650 5400 6650
Wire Wire Line
	3600 6650 3600 5600
Wire Wire Line
	3600 5600 3150 5600
Connection ~ 3600 5600
Text GLabel 3150 5700 2    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x06_Male J9
U 1 1 5BEC5D42
P 5300 7300
F 0 "J9" V 5453 6913 50  0000 R CNN
F 1 "Conn_01x06_Male" V 5362 6913 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5300 7300 50  0001 C CNN
F 3 "~" H 5300 7300 50  0001 C CNN
	1    5300 7300
	0    -1   -1   0   
$EndComp
Text GLabel 5100 7100 1    50   Input ~ 0
GND
Wire Wire Line
	5400 6650 5400 7100
Connection ~ 5400 6650
Wire Wire Line
	5400 6650 3600 6650
Wire Wire Line
	5500 5850 5500 7100
Connection ~ 5500 5850
Wire Wire Line
	5500 5850 6500 5850
Wire Wire Line
	5600 6250 5600 7100
Connection ~ 5600 6250
Wire Wire Line
	5600 6250 6500 6250
Text GLabel 3600 5000 0    50   Input ~ 0
PWM2
Text GLabel 3600 5300 0    50   Input ~ 0
DIR2
Text GLabel 5200 7100 1    50   Input ~ 0
PWM2
Text GLabel 5300 7100 1    50   Input ~ 0
DIR2
Text GLabel 6600 5400 2    50   Input ~ 0
BRK2
Text GLabel 6600 5850 2    50   Input ~ 0
CUR2
Text GLabel 6600 6250 2    50   Input ~ 0
TEMP2
$EndSCHEMATC
