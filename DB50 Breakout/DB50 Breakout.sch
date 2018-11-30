EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:DB50 Breakout-cache
EELAYER 25 0
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
L CONN_02X25 P1
U 1 1 5BFFFCFD
P 3450 2700
F 0 "P1" H 3450 4000 50  0000 C CNN
F 1 "CONN_02X25" V 3450 2700 50  0000 C CNN
F 2 "Connector_Dsub:Dsub_50" H 3450 1950 50  0001 C CNN
F 3 "" H 3450 1950 50  0000 C CNN
	1    3450 2700
	1    0    0    -1  
$EndComp
Text GLabel 2950 2900 0    60   Input ~ 0
GND
Wire Wire Line
	2950 2900 3200 2900
Wire Wire Line
	3100 3100 3200 3100
Wire Wire Line
	3100 2900 3100 3100
Connection ~ 3100 2900
Text GLabel 3900 2900 2    60   Input ~ 0
GND
Wire Wire Line
	3700 2900 3900 2900
Wire Wire Line
	3700 2800 3800 2800
Connection ~ 3800 2900
Wire Wire Line
	3800 3000 3700 3000
Connection ~ 3800 3000
Text GLabel 2850 1900 0    60   Input ~ 0
LED_VCC
Wire Wire Line
	2850 1900 3200 1900
Wire Wire Line
	3800 2800 3800 3000
Wire Wire Line
	3200 3000 3100 3000
Connection ~ 3100 3000
Text GLabel 3900 2700 2    60   Input ~ 0
LED_VCC
Wire Wire Line
	3700 2700 3900 2700
Wire Wire Line
	3050 2700 3200 2700
Wire Wire Line
	3050 1900 3050 2800
Connection ~ 3050 1900
Wire Wire Line
	3200 2000 3050 2000
Connection ~ 3050 2000
Wire Wire Line
	3050 2800 3200 2800
Connection ~ 3050 2700
Wire Wire Line
	3700 1900 3800 1900
Wire Wire Line
	3800 1900 3800 2700
Connection ~ 3800 2700
Text GLabel 2850 1600 0    60   Input ~ 0
A4_1
Text GLabel 3950 2300 2    60   Input ~ 0
A4_2
Wire Wire Line
	2850 1600 3200 1600
Wire Wire Line
	3950 2300 3700 2300
Text GLabel 4250 2400 2    60   Input ~ 0
A3_1
Text GLabel 2950 3200 0    60   Input ~ 0
A3_2
Wire Wire Line
	2950 3200 3200 3200
Wire Wire Line
	4250 2400 3700 2400
Text GLabel 2850 2400 0    60   Input ~ 0
A5_2
Text GLabel 3950 3100 2    60   Input ~ 0
A5_1
Wire Wire Line
	3700 3100 3950 3100
Wire Wire Line
	3200 2400 2850 2400
Text GLabel 2500 1700 0    60   Input ~ 0
ROT_1
Text GLabel 4000 1450 2    60   Input ~ 0
ROT_2
Wire Wire Line
	2500 1700 3200 1700
Wire Wire Line
	3700 1500 3850 1500
Wire Wire Line
	3850 1500 3850 1450
Wire Wire Line
	3850 1450 4000 1450
Text GLabel 2850 1450 0    60   Input ~ 0
A1_2
Text GLabel 2400 2500 0    60   Input ~ 0
A1_1
Wire Wire Line
	2850 1450 3050 1450
Wire Wire Line
	3050 1450 3050 1500
Wire Wire Line
	3050 1500 3200 1500
Wire Wire Line
	2400 2500 3200 2500
Text GLabel 4300 3200 2    60   Input ~ 0
A2_2
Text GLabel 4050 1600 2    60   Input ~ 0
A2_1
Wire Wire Line
	3700 1600 4050 1600
Wire Wire Line
	4300 3200 3700 3200
Text GLabel 4250 2200 2    60   Input ~ 0
M1_1
Text GLabel 2900 3950 0    60   Input ~ 0
M1_2
Wire Wire Line
	4250 2200 3700 2200
Wire Wire Line
	3200 3900 3050 3900
Wire Wire Line
	3050 3900 3050 3950
Wire Wire Line
	3050 3950 2900 3950
Text GLabel 2850 2200 0    60   Input ~ 0
M2_1
Text GLabel 4250 3800 2    60   Input ~ 0
M2_2
Wire Wire Line
	4250 3800 3700 3800
Wire Wire Line
	3200 2200 2850 2200
Text GLabel 3950 2100 2    60   Input ~ 0
M3_1
Text GLabel 2900 3800 0    60   Input ~ 0
M3_2
Wire Wire Line
	2900 3800 3200 3800
Wire Wire Line
	3950 2100 3700 2100
Text GLabel 2850 2050 0    60   Input ~ 0
M4_1
Text GLabel 3850 3700 2    60   Input ~ 0
M4_2
Wire Wire Line
	3700 3700 3850 3700
Wire Wire Line
	2850 2050 3100 2050
Wire Wire Line
	3100 2050 3100 2100
Wire Wire Line
	3100 2100 3200 2100
Text GLabel 4250 2000 2    60   Input ~ 0
M5_1
Text GLabel 2600 3700 0    60   Input ~ 0
M5_2
Wire Wire Line
	2600 3700 3200 3700
Wire Wire Line
	3700 2000 4250 2000
Text GLabel 2550 2300 0    60   Input ~ 0
Mrot_1
Text GLabel 3850 3900 2    60   Input ~ 0
Mrot_2
Wire Wire Line
	3700 3900 3850 3900
Wire Wire Line
	2550 2300 3200 2300
Text GLabel 2950 2600 0    60   Input ~ 0
Rot_limit
Wire Wire Line
	2950 2600 3200 2600
Text GLabel 2150 1800 0    60   Input ~ 0
Limit_1
Wire Wire Line
	2150 1800 3200 1800
Text GLabel 4350 2600 2    60   Input ~ 0
Limit_2
Wire Wire Line
	3700 2600 4350 2600
Text GLabel 3850 1800 2    60   Input ~ 0
Limit_3
Wire Wire Line
	3850 1800 3700 1800
Text GLabel 4350 1700 2    60   Input ~ 0
Limit_4
Wire Wire Line
	4350 1700 3700 1700
Text GLabel 6000 1350 0    60   Input ~ 0
GND
Text GLabel 6000 1500 0    60   Input ~ 0
ROT_1
Text GLabel 6000 1650 0    60   Input ~ 0
ROT_2
Text GLabel 6000 1800 0    60   Input ~ 0
Mrot_1
Text GLabel 6000 1950 0    60   Input ~ 0
Mrot_2
Text GLabel 6000 2100 0    60   Input ~ 0
Rot_limit
$Comp
L CONN_01X06 P3
U 1 1 5C016EF6
P 6450 1700
F 0 "P3" H 6450 2050 50  0000 C CNN
F 1 "CONN_01X06" V 6550 1700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6450 1700 50  0001 C CNN
F 3 "" H 6450 1700 50  0000 C CNN
	1    6450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1350 6250 1350
Wire Wire Line
	6250 1350 6250 1450
Wire Wire Line
	6000 1500 6200 1500
Wire Wire Line
	6200 1500 6200 1550
Wire Wire Line
	6200 1550 6250 1550
Wire Wire Line
	6000 1650 6250 1650
Wire Wire Line
	6000 1800 6100 1800
Wire Wire Line
	6100 1800 6100 1750
Wire Wire Line
	6100 1750 6250 1750
Wire Wire Line
	6000 1950 6150 1950
Wire Wire Line
	6150 1950 6150 1850
Wire Wire Line
	6150 1850 6250 1850
Wire Wire Line
	6000 2100 6250 2100
Wire Wire Line
	6250 2100 6250 1950
Text GLabel 6000 2350 0    60   Input ~ 0
GND
$Comp
L CONN_01X06 P4
U 1 1 5C017119
P 6450 2700
F 0 "P4" H 6450 3050 50  0000 C CNN
F 1 "CONN_01X06" V 6550 2700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6450 2700 50  0001 C CNN
F 3 "" H 6450 2700 50  0000 C CNN
	1    6450 2700
	1    0    0    -1  
$EndComp
Text GLabel 6000 2500 0    60   Input ~ 0
A1_1
Text GLabel 6000 2650 0    60   Input ~ 0
A1_2
Text GLabel 6000 2800 0    60   Input ~ 0
M1_1
Text GLabel 6000 2950 0    60   Input ~ 0
M1_2
Text GLabel 6000 3100 0    60   Input ~ 0
Limit_1
Wire Wire Line
	6000 2350 6250 2350
Wire Wire Line
	6250 2350 6250 2450
Wire Wire Line
	6000 2500 6200 2500
Wire Wire Line
	6200 2500 6200 2550
Wire Wire Line
	6200 2550 6250 2550
Wire Wire Line
	6000 2650 6250 2650
Wire Wire Line
	6000 2800 6150 2800
Wire Wire Line
	6150 2800 6150 2750
Wire Wire Line
	6150 2750 6250 2750
Wire Wire Line
	6000 2950 6150 2950
Wire Wire Line
	6150 2950 6150 2850
Wire Wire Line
	6150 2850 6250 2850
Wire Wire Line
	6000 3100 6250 3100
Wire Wire Line
	6250 3100 6250 2950
Text GLabel 6000 3350 0    60   Input ~ 0
GND
$Comp
L CONN_01X06 P5
U 1 1 5C01758A
P 6450 3700
F 0 "P5" H 6450 4050 50  0000 C CNN
F 1 "CONN_01X06" V 6550 3700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6450 3700 50  0001 C CNN
F 3 "" H 6450 3700 50  0000 C CNN
	1    6450 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3350 6250 3350
Wire Wire Line
	6250 3350 6250 3450
Wire Wire Line
	6000 3500 6200 3500
Wire Wire Line
	6200 3500 6200 3550
Wire Wire Line
	6200 3550 6250 3550
Wire Wire Line
	6000 3650 6250 3650
Wire Wire Line
	6000 3800 6150 3800
Wire Wire Line
	6150 3800 6150 3750
Wire Wire Line
	6150 3750 6250 3750
Wire Wire Line
	6000 3950 6150 3950
Wire Wire Line
	6150 3950 6150 3850
Wire Wire Line
	6150 3850 6250 3850
Wire Wire Line
	6000 4100 6250 4100
Wire Wire Line
	6250 4100 6250 3950
Text GLabel 6000 3500 0    60   Input ~ 0
A2_1
Text GLabel 6000 3650 0    60   Input ~ 0
A2_2
Text GLabel 6000 3800 0    60   Input ~ 0
M2_1
Text GLabel 6000 3950 0    60   Input ~ 0
M2_2
Text GLabel 6000 4100 0    60   Input ~ 0
Limit_2
Text GLabel 7150 1350 0    60   Input ~ 0
GND
$Comp
L CONN_01X06 P6
U 1 1 5C017746
P 7600 1700
F 0 "P6" H 7600 2050 50  0000 C CNN
F 1 "CONN_01X06" V 7700 1700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7600 1700 50  0001 C CNN
F 3 "" H 7600 1700 50  0000 C CNN
	1    7600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1350 7400 1350
Wire Wire Line
	7400 1350 7400 1450
Wire Wire Line
	7150 1500 7350 1500
Wire Wire Line
	7350 1500 7350 1550
Wire Wire Line
	7350 1550 7400 1550
Wire Wire Line
	7150 1650 7400 1650
Wire Wire Line
	7150 1800 7300 1800
Wire Wire Line
	7300 1800 7300 1750
Wire Wire Line
	7300 1750 7400 1750
Wire Wire Line
	7150 1950 7300 1950
Wire Wire Line
	7300 1950 7300 1850
Wire Wire Line
	7300 1850 7400 1850
Wire Wire Line
	7150 2100 7400 2100
Wire Wire Line
	7400 2100 7400 1950
Text GLabel 7150 1500 0    60   Input ~ 0
A3_1
Text GLabel 7150 1650 0    60   Input ~ 0
A3_2
Text GLabel 7150 1800 0    60   Input ~ 0
M3_1
Text GLabel 7150 1950 0    60   Input ~ 0
M3_2
Text GLabel 7150 2100 0    60   Input ~ 0
Limit_3
Text GLabel 7150 2350 0    60   Input ~ 0
GND
$Comp
L CONN_01X06 P7
U 1 1 5C01784F
P 7600 2700
F 0 "P7" H 7600 3050 50  0000 C CNN
F 1 "CONN_01X06" V 7700 2700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7600 2700 50  0001 C CNN
F 3 "" H 7600 2700 50  0000 C CNN
	1    7600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2350 7400 2350
Wire Wire Line
	7400 2350 7400 2450
Wire Wire Line
	7150 2500 7350 2500
Wire Wire Line
	7350 2500 7350 2550
Wire Wire Line
	7350 2550 7400 2550
Wire Wire Line
	7150 2650 7400 2650
Wire Wire Line
	7150 2800 7300 2800
Wire Wire Line
	7300 2800 7300 2750
Wire Wire Line
	7300 2750 7400 2750
Wire Wire Line
	7150 2950 7300 2950
Wire Wire Line
	7300 2950 7300 2850
Wire Wire Line
	7300 2850 7400 2850
Wire Wire Line
	7150 3100 7400 3100
Wire Wire Line
	7400 3100 7400 2950
Text GLabel 7150 2650 0    60   Input ~ 0
A4_2
Text GLabel 7150 2500 0    60   Input ~ 0
A4_1
Text GLabel 7150 2950 0    60   Input ~ 0
M4_2
Text GLabel 7150 2800 0    60   Input ~ 0
M4_1
Text GLabel 7150 3100 0    60   Input ~ 0
Limit_4
Text GLabel 7150 3350 0    60   Input ~ 0
GND
$Comp
L CONN_01X06 P8
U 1 1 5C017AA2
P 7600 3700
F 0 "P8" H 7600 4050 50  0000 C CNN
F 1 "CONN_01X06" V 7700 3700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7600 3700 50  0001 C CNN
F 3 "" H 7600 3700 50  0000 C CNN
	1    7600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3350 7400 3350
Wire Wire Line
	7400 3350 7400 3450
Wire Wire Line
	7150 3500 7350 3500
Wire Wire Line
	7350 3500 7350 3550
Wire Wire Line
	7350 3550 7400 3550
Wire Wire Line
	7150 3650 7400 3650
Wire Wire Line
	7150 3800 7300 3800
Wire Wire Line
	7300 3800 7300 3750
Wire Wire Line
	7300 3750 7400 3750
Wire Wire Line
	7150 3950 7300 3950
Wire Wire Line
	7300 3950 7300 3850
Wire Wire Line
	7300 3850 7400 3850
Text GLabel 7150 3500 0    60   Input ~ 0
A5_1
Text GLabel 7150 3650 0    60   Input ~ 0
A5_2
Text GLabel 7150 3800 0    60   Input ~ 0
M5_1
Text GLabel 7150 3950 0    60   Input ~ 0
M5_2
$Comp
L CONN_01X02 P2
U 1 1 5C017DF5
P 4200 4750
F 0 "P2" H 4200 4900 50  0000 C CNN
F 1 "CONN_01X02" V 4300 4750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4200 4750 50  0001 C CNN
F 3 "" H 4200 4750 50  0000 C CNN
	1    4200 4750
	1    0    0    -1  
$EndComp
Text GLabel 3850 4850 0    60   Input ~ 0
GND
Text GLabel 3850 4650 0    60   Input ~ 0
LED_VCC
Wire Wire Line
	3850 4850 3900 4850
Wire Wire Line
	3900 4850 3900 4800
Wire Wire Line
	3900 4800 4000 4800
Wire Wire Line
	3850 4650 3900 4650
Wire Wire Line
	3900 4650 3900 4700
Wire Wire Line
	3900 4700 4000 4700
$EndSCHEMATC
