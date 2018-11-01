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
LIBS:bluepill_breakouts
LIBS:L293D
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
L BluePill_STM32F103C U?
U 1 1 5BDB0275
P 2350 3650
F 0 "U?" H 1900 2300 50  0000 C CNN
F 1 "BluePill_STM32F103C" H 2400 4500 50  0000 C CNN
F 2 "BluePill_breakouts:BluePill_STM32F103C" H 2400 2050 50  0001 C CNN
F 3 "www.rogerclark.net" H 2350 2150 50  0001 C CNN
	1    2350 3650
	1    0    0    -1  
$EndComp
$Comp
L L293D Motor
U 1 1 5BDB0325
P 9450 1900
F 0 "Motor Driver" H 9049 2741 50  0000 L BNN
F 1 "L293D" H 9049 998 50  0000 L BNN
F 2 "DIL16" H 9450 1900 50  0001 L BNN
F 3 "SOIC-20 STMicroelectronics" H 9450 1900 50  0001 L BNN
F 4 "Driver; 36V; Power DIP; 600mA Low LevelO/P; 1.2A O/P High Level; 4 Drivers; 7V" H 9450 1900 50  0001 L BNN "Field4"
F 5 "L293D" H 9450 1900 50  0001 L BNN "Field5"
F 6 "Unavailable" H 9450 1900 50  0001 L BNN "Field6"
F 7 "STMicroelectronics" H 9450 1900 50  0001 L BNN "Field7"
F 8 "None" H 9450 1900 50  0001 L BNN "Field8"
	1    9450 1900
	1    0    0    -1  
$EndComp
Text GLabel 8600 1900 0    60   Input ~ 0
GND
Text GLabel 10250 1900 2    60   Input ~ 0
GND
Wire Wire Line
	8600 1900 8850 1900
Wire Wire Line
	8850 1800 8850 2000
Connection ~ 8850 1900
Wire Wire Line
	10250 1900 10050 1900
Wire Wire Line
	10050 1800 10050 2000
Connection ~ 10050 1900
Text GLabel 1350 4800 0    60   Input ~ 0
GND
Wire Wire Line
	1350 4800 1500 4800
Wire Wire Line
	1500 4750 1500 4850
Connection ~ 1500 4800
$Comp
L CONN_01X02 P?
U 1 1 5BDB0741
P 3700 4300
F 0 "P?" H 3700 4450 50  0000 C CNN
F 1 "CONN_01X02" V 3800 4300 50  0000 C CNN
F 2 "" H 3700 4300 50  0000 C CNN
F 3 "" H 3700 4300 50  0000 C CNN
	1    3700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4250 3500 4250
Wire Wire Line
	3500 4350 3250 4350
$Comp
L CONN_01X02 P?
U 1 1 5BDB0C49
P 2950 5500
F 0 "P?" H 2950 5650 50  0000 C CNN
F 1 "CONN_01X02" V 3050 5500 50  0000 C CNN
F 2 "" H 2950 5500 50  0000 C CNN
F 3 "" H 2950 5500 50  0000 C CNN
	1    2950 5500
	1    0    0    -1  
$EndComp
Text GLabel 2650 5400 0    60   Input ~ 0
Rotary_Encoder_1A
Text GLabel 2650 5600 0    60   Input ~ 0
Rotary_Encoder_1B
Wire Wire Line
	2650 5400 2700 5400
Wire Wire Line
	2700 5400 2700 5450
Wire Wire Line
	2700 5450 2750 5450
Wire Wire Line
	2650 5600 2700 5600
Wire Wire Line
	2700 5600 2700 5550
Wire Wire Line
	2700 5550 2750 5550
$Comp
L BluePill_STM32F103C U?
U 1 1 5BDB1700
P 5900 3650
F 0 "U?" H 5450 2300 50  0000 C CNN
F 1 "BluePill_STM32F103C" H 5950 4500 50  0000 C CNN
F 2 "BluePill_breakouts:BluePill_STM32F103C" H 5950 2050 50  0001 C CNN
F 3 "www.rogerclark.net" H 5900 2150 50  0001 C CNN
	1    5900 3650
	1    0    0    -1  
$EndComp
Text GLabel 4900 4800 0    60   Input ~ 0
GND
Wire Wire Line
	4900 4800 5050 4800
Wire Wire Line
	5050 4750 5050 4850
Connection ~ 5050 4800
$Comp
L CONN_01X02 P?
U 1 1 5BDB170A
P 7250 4300
F 0 "P?" H 7250 4450 50  0000 C CNN
F 1 "CONN_01X02" V 7350 4300 50  0000 C CNN
F 2 "" H 7250 4300 50  0000 C CNN
F 3 "" H 7250 4300 50  0000 C CNN
	1    7250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4250 7050 4250
Wire Wire Line
	7050 4350 6800 4350
$Comp
L CONN_01X02 P?
U 1 1 5BDB1712
P 6500 5500
F 0 "P?" H 6500 5650 50  0000 C CNN
F 1 "CONN_01X02" V 6600 5500 50  0000 C CNN
F 2 "" H 6500 5500 50  0000 C CNN
F 3 "" H 6500 5500 50  0000 C CNN
	1    6500 5500
	1    0    0    -1  
$EndComp
Text GLabel 6200 5400 0    60   Input ~ 0
Rotary_Encoder_2A
Text GLabel 6200 5600 0    60   Input ~ 0
Rotary_Encoder_2B
Wire Wire Line
	6200 5400 6250 5400
Wire Wire Line
	6250 5400 6250 5450
Wire Wire Line
	6250 5450 6300 5450
Wire Wire Line
	6200 5600 6250 5600
Wire Wire Line
	6250 5600 6250 5550
Wire Wire Line
	6250 5550 6300 5550
Text GLabel 3450 3150 2    60   Input ~ 0
5V
Text GLabel 7200 3150 2    60   Input ~ 0
5V
Wire Wire Line
	6800 3150 7200 3150
Wire Wire Line
	3250 3150 3450 3150
Text GLabel 8600 1200 0    60   Input ~ 0
5V
Text GLabel 10300 1200 2    60   Input ~ 0
5V
Wire Wire Line
	8600 1200 8850 1200
Wire Wire Line
	10050 1200 10300 1200
Text GLabel 10300 2600 2    60   Input ~ 0
5V
Wire Wire Line
	10300 2600 10050 2600
$EndSCHEMATC
