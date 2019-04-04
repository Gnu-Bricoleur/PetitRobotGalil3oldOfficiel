EESchema Schematic File Version 4
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
L AnalogDevices:ADA4574-2 U?
U 1 1 5C3C9623
P 6050 2350
F 0 "U?" H 6050 1300 50  0000 L CNN
F 1 "ADA4574-2" H 5850 1450 50  0000 L CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 6100 1200 50  0001 C CNN
F 3 "" H 6050 1350 50  0001 C CNN
	1    6050 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J?
U 1 1 5C3C9798
P 3700 3350
F 0 "J?" H 3620 2725 50  0000 C CNN
F 1 "Conn_01x09" H 3620 2816 50  0000 C CNN
F 2 "" H 3700 3350 50  0001 C CNN
F 3 "~" H 3700 3350 50  0001 C CNN
	1    3700 3350
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J?
U 1 1 5C3C9882
P 8700 3300
F 0 "J?" H 8780 3342 50  0000 L CNN
F 1 "Conn_01x09" H 8780 3251 50  0000 L CNN
F 2 "" H 8700 3300 50  0001 C CNN
F 3 "~" H 8700 3300 50  0001 C CNN
	1    8700 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C3C9BE7
P 7250 4300
F 0 "C?" H 7365 4346 50  0000 L CNN
F 1 "C" H 7365 4255 50  0000 L CNN
F 2 "" H 7288 4150 50  0001 C CNN
F 3 "~" H 7250 4300 50  0001 C CNN
	1    7250 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C3C9CA7
P 7250 3700
F 0 "C?" H 7365 3746 50  0000 L CNN
F 1 "C" H 7365 3655 50  0000 L CNN
F 2 "" H 7288 3550 50  0001 C CNN
F 3 "~" H 7250 3700 50  0001 C CNN
	1    7250 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C3C9CF1
P 7250 3000
F 0 "C?" H 7365 3046 50  0000 L CNN
F 1 "C" H 7365 2955 50  0000 L CNN
F 2 "" H 7288 2850 50  0001 C CNN
F 3 "~" H 7250 3000 50  0001 C CNN
	1    7250 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C3C9DCE
P 3900 3650
F 0 "#PWR?" H 3900 3400 50  0001 C CNN
F 1 "GND" V 3905 3522 50  0000 R CNN
F 2 "" H 3900 3650 50  0001 C CNN
F 3 "" H 3900 3650 50  0001 C CNN
	1    3900 3650
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5C3C9E61
P 4850 3800
F 0 "C?" H 4965 3846 50  0000 L CNN
F 1 "C" H 4965 3755 50  0000 L CNN
F 2 "" H 4888 3650 50  0001 C CNN
F 3 "~" H 4850 3800 50  0001 C CNN
	1    4850 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C3C9F73
P 4850 2550
F 0 "C?" H 4965 2596 50  0000 L CNN
F 1 "C" H 4965 2505 50  0000 L CNN
F 2 "" H 4888 2400 50  0001 C CNN
F 3 "~" H 4850 2550 50  0001 C CNN
	1    4850 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C3C9FFD
P 4850 3100
F 0 "C?" H 4965 3146 50  0000 L CNN
F 1 "C" H 4965 3055 50  0000 L CNN
F 2 "" H 4888 2950 50  0001 C CNN
F 3 "~" H 4850 3100 50  0001 C CNN
	1    4850 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C3CA21A
P 3900 3750
F 0 "#PWR?" H 3900 3600 50  0001 C CNN
F 1 "+5V" V 3915 3878 50  0000 L CNN
F 2 "" H 3900 3750 50  0001 C CNN
F 3 "" H 3900 3750 50  0001 C CNN
	1    3900 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 2850 7000 2850
Wire Wire Line
	7000 3150 7250 3150
Wire Wire Line
	7000 3950 7000 4150
Wire Wire Line
	7250 4450 6500 4450
Wire Wire Line
	6500 4450 6500 4350
$Comp
L power:GND #PWR?
U 1 1 5C3CA8D2
P 4850 3650
F 0 "#PWR?" H 4850 3400 50  0001 C CNN
F 1 "GND" H 4855 3477 50  0000 C CNN
F 2 "" H 4850 3650 50  0001 C CNN
F 3 "" H 4850 3650 50  0001 C CNN
	1    4850 3650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C3CA91F
P 4850 2400
F 0 "#PWR?" H 4850 2150 50  0001 C CNN
F 1 "GND" H 4855 2227 50  0000 C CNN
F 2 "" H 4850 2400 50  0001 C CNN
F 3 "" H 4850 2400 50  0001 C CNN
	1    4850 2400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C3CA965
P 4850 3250
F 0 "#PWR?" H 4850 3000 50  0001 C CNN
F 1 "GND" H 4855 3077 50  0000 C CNN
F 2 "" H 4850 3250 50  0001 C CNN
F 3 "" H 4850 3250 50  0001 C CNN
	1    4850 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4150 7250 4150
Wire Wire Line
	7250 3550 7000 3550
Wire Wire Line
	7250 3850 7100 3850
Wire Wire Line
	7100 3850 7100 3750
Wire Wire Line
	7100 3750 7000 3750
Wire Wire Line
	5100 3950 4850 3950
Wire Wire Line
	5100 3650 4850 3650
Connection ~ 4850 3650
Wire Wire Line
	5100 3250 4850 3250
Connection ~ 4850 3250
Wire Wire Line
	5100 3050 5050 3050
Wire Wire Line
	5050 3050 5050 2950
Wire Wire Line
	5050 2950 4850 2950
Wire Wire Line
	5100 2850 4850 2850
Wire Wire Line
	4850 2850 4850 2700
Wire Wire Line
	4850 2400 5600 2400
Wire Wire Line
	5600 2400 5600 2450
Connection ~ 4850 2400
$Comp
L power:+5V #PWR?
U 1 1 5C3CB9E6
P 4650 3450
F 0 "#PWR?" H 4650 3300 50  0001 C CNN
F 1 "+5V" H 4665 3623 50  0000 C CNN
F 2 "" H 4650 3450 50  0001 C CNN
F 3 "" H 4650 3450 50  0001 C CNN
	1    4650 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C3CBA1A
P 5800 1850
F 0 "#PWR?" H 5800 1700 50  0001 C CNN
F 1 "+5V" H 5815 2023 50  0000 C CNN
F 2 "" H 5800 1850 50  0001 C CNN
F 3 "" H 5800 1850 50  0001 C CNN
	1    5800 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C3CBB6B
P 5800 2150
F 0 "#PWR?" H 5800 1900 50  0001 C CNN
F 1 "GND" H 5805 1977 50  0000 C CNN
F 2 "" H 5800 2150 50  0001 C CNN
F 3 "" H 5800 2150 50  0001 C CNN
	1    5800 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C3CBB9F
P 4650 3750
F 0 "#PWR?" H 4650 3500 50  0001 C CNN
F 1 "GND" H 4655 3577 50  0000 C CNN
F 2 "" H 4650 3750 50  0001 C CNN
F 3 "" H 4650 3750 50  0001 C CNN
	1    4650 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5C3CBDA2
P 7600 3350
F 0 "#PWR?" H 7600 3200 50  0001 C CNN
F 1 "+5VA" H 7615 3523 50  0000 C CNN
F 2 "" H 7600 3350 50  0001 C CNN
F 3 "" H 7600 3350 50  0001 C CNN
	1    7600 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5C3CBDE4
P 7600 3650
F 0 "#PWR?" H 7600 3400 50  0001 C CNN
F 1 "GNDA" H 7605 3477 50  0000 C CNN
F 2 "" H 7600 3650 50  0001 C CNN
F 3 "" H 7600 3650 50  0001 C CNN
	1    7600 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5C3CC38B
P 6100 5000
F 0 "#PWR?" H 6100 4750 50  0001 C CNN
F 1 "GNDA" H 6105 4827 50  0000 C CNN
F 2 "" H 6100 5000 50  0001 C CNN
F 3 "" H 6100 5000 50  0001 C CNN
	1    6100 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5C3CC3BF
P 7250 4450
F 0 "#PWR?" H 7250 4200 50  0001 C CNN
F 1 "GNDA" H 7255 4277 50  0000 C CNN
F 2 "" H 7250 4450 50  0001 C CNN
F 3 "" H 7250 4450 50  0001 C CNN
	1    7250 4450
	1    0    0    -1  
$EndComp
Connection ~ 7250 4450
$Comp
L power:GNDA #PWR?
U 1 1 5C3CC3F3
P 7250 3550
F 0 "#PWR?" H 7250 3300 50  0001 C CNN
F 1 "GNDA" H 7255 3377 50  0000 C CNN
F 2 "" H 7250 3550 50  0001 C CNN
F 3 "" H 7250 3550 50  0001 C CNN
	1    7250 3550
	-1   0    0    1   
$EndComp
Connection ~ 7250 3550
$Comp
L power:GNDA #PWR?
U 1 1 5C3CC439
P 7250 3150
F 0 "#PWR?" H 7250 2900 50  0001 C CNN
F 1 "GNDA" H 7255 2977 50  0000 C CNN
F 2 "" H 7250 3150 50  0001 C CNN
F 3 "" H 7250 3150 50  0001 C CNN
	1    7250 3150
	1    0    0    -1  
$EndComp
Connection ~ 7250 3150
$Comp
L power:GNDA #PWR?
U 1 1 5C3CC476
P 8500 3000
F 0 "#PWR?" H 8500 2750 50  0001 C CNN
F 1 "GNDA" V 8505 2873 50  0000 R CNN
F 2 "" H 8500 3000 50  0001 C CNN
F 3 "" H 8500 3000 50  0001 C CNN
	1    8500 3000
	0    1    1    0   
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5C3CC4C1
P 8500 2900
F 0 "#PWR?" H 8500 2750 50  0001 C CNN
F 1 "+5VA" V 8515 3027 50  0000 L CNN
F 2 "" H 8500 2900 50  0001 C CNN
F 3 "" H 8500 2900 50  0001 C CNN
	1    8500 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VA #PWR?
U 1 1 5C3CC510
P 6100 4700
F 0 "#PWR?" H 6100 4550 50  0001 C CNN
F 1 "+5VA" H 6115 4873 50  0000 C CNN
F 2 "" H 6100 4700 50  0001 C CNN
F 3 "" H 6100 4700 50  0001 C CNN
	1    6100 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C3CD77A
P 7600 3500
F 0 "C?" H 7715 3546 50  0000 L CNN
F 1 "C" H 7715 3455 50  0000 L CNN
F 2 "" H 7638 3350 50  0001 C CNN
F 3 "~" H 7600 3500 50  0001 C CNN
	1    7600 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C3CDDF8
P 4650 3600
F 0 "C?" H 4765 3646 50  0000 L CNN
F 1 "C" H 4765 3555 50  0000 L CNN
F 2 "" H 4688 3450 50  0001 C CNN
F 3 "~" H 4650 3600 50  0001 C CNN
	1    4650 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C3CE48A
P 6100 4850
F 0 "C?" H 6215 4896 50  0000 L CNN
F 1 "C" H 6215 4805 50  0000 L CNN
F 2 "" H 6138 4700 50  0001 C CNN
F 3 "~" H 6100 4850 50  0001 C CNN
	1    6100 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C3CE598
P 5900 4850
F 0 "C?" H 6015 4896 50  0000 L CNN
F 1 "C" H 6015 4805 50  0000 L CNN
F 2 "" H 5938 4700 50  0001 C CNN
F 3 "~" H 5900 4850 50  0001 C CNN
	1    5900 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4350 6200 4700
Wire Wire Line
	6200 4700 6100 4700
Connection ~ 6100 4700
Wire Wire Line
	6100 4700 5900 4700
Wire Wire Line
	5900 5000 6100 5000
Connection ~ 6100 5000
$Comp
L Device:C C?
U 1 1 5C3D0996
P 5800 2000
F 0 "C?" H 5915 2046 50  0000 L CNN
F 1 "C" H 5915 1955 50  0000 L CNN
F 2 "" H 5838 1850 50  0001 C CNN
F 3 "~" H 5800 2000 50  0001 C CNN
	1    5800 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C3D0A02
P 5600 2000
F 0 "C?" H 5715 2046 50  0000 L CNN
F 1 "C" H 5715 1955 50  0000 L CNN
F 2 "" H 5638 1850 50  0001 C CNN
F 3 "~" H 5600 2000 50  0001 C CNN
	1    5600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1850 5600 1850
Connection ~ 5800 1850
Wire Wire Line
	5800 2150 5600 2150
Connection ~ 5800 2150
Wire Wire Line
	5800 1850 5900 1850
Wire Wire Line
	5900 1850 5900 2450
Wire Wire Line
	6300 2450 6300 2300
Wire Wire Line
	6300 2300 8150 2300
Wire Wire Line
	8150 2300 8150 3100
Wire Wire Line
	8150 3100 8500 3100
Wire Wire Line
	6100 2450 6100 2200
Wire Wire Line
	6100 2200 8100 2200
Wire Wire Line
	8100 2200 8100 3200
Wire Wire Line
	8100 3200 8500 3200
Wire Wire Line
	6200 2450 6200 2250
Wire Wire Line
	6200 2250 8050 2250
Wire Wire Line
	8050 2250 8050 3300
Wire Wire Line
	8050 3300 8500 3300
Wire Wire Line
	6400 2450 6400 2350
Wire Wire Line
	6400 2350 8000 2350
Wire Wire Line
	8000 2350 8000 3400
Wire Wire Line
	8000 3400 8500 3400
Wire Wire Line
	7000 3350 7600 3350
Connection ~ 7600 3350
Wire Wire Line
	6500 2450 6500 2400
Wire Wire Line
	6500 2400 7950 2400
Wire Wire Line
	7950 2400 7950 3500
Wire Wire Line
	7950 3500 8500 3500
Wire Wire Line
	6600 2450 7900 2450
Wire Wire Line
	7900 2450 7900 3600
Wire Wire Line
	7900 3600 8500 3600
Wire Wire Line
	7000 3050 7100 3050
Wire Wire Line
	7100 3050 7100 2500
Wire Wire Line
	7100 2500 7850 2500
Wire Wire Line
	7850 2500 7850 3700
Wire Wire Line
	7850 3700 8500 3700
Wire Wire Line
	5800 4350 5800 4500
Wire Wire Line
	5800 4500 4200 4500
Wire Wire Line
	4200 4500 4200 3550
Wire Wire Line
	4200 3550 3900 3550
Wire Wire Line
	6000 4350 6000 4600
Wire Wire Line
	6000 4600 4250 4600
Wire Wire Line
	4250 4600 4250 3450
Wire Wire Line
	4250 3450 3900 3450
Wire Wire Line
	5900 4350 5900 4550
Wire Wire Line
	5900 4550 4300 4550
Wire Wire Line
	4300 4550 4300 3350
Wire Wire Line
	4300 3350 3900 3350
Wire Wire Line
	5700 4350 5700 4450
Wire Wire Line
	5700 4450 4350 4450
Wire Wire Line
	4350 4450 4350 3250
Wire Wire Line
	4350 3250 3900 3250
Wire Wire Line
	5600 4350 5600 4400
Wire Wire Line
	5600 4400 4400 4400
Wire Wire Line
	4400 4400 4400 3150
Wire Wire Line
	4400 3150 3900 3150
Wire Wire Line
	5500 4350 4450 4350
Wire Wire Line
	4450 4350 4450 3050
Wire Wire Line
	4450 3050 3900 3050
Wire Wire Line
	5100 3450 4650 3450
Connection ~ 4650 3450
Wire Wire Line
	5100 3750 5050 3750
Wire Wire Line
	5050 3750 5050 4300
Wire Wire Line
	5050 4300 4500 4300
Wire Wire Line
	4500 4300 4500 2950
Wire Wire Line
	4500 2950 3900 2950
$EndSCHEMATC