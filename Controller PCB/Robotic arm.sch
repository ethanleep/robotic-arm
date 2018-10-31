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
LIBS:Arduino_Mega-cache
LIBS:w_connectors
LIBS:motor_drivers
LIBS:L293D
LIBS:Robotic arm-cache
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
L Arduino_Mega_Header J1
U 1 1 5B9283A2
P 3800 2300
F 0 "J1" H 3800 3550 60  0000 C CNN
F 1 "Arduino_Mega_Header" H 3800 1050 60  0000 C CNN
F 2 "" H 3800 2300 60  0000 C CNN
F 3 "" H 3800 2300 60  0000 C CNN
	1    3800 2300
	1    0    0    -1  
$EndComp
$Comp
L L293D IC?
U 1 1 5B928651
P 9050 1550
F 0 "IC?" H 8649 2391 50  0000 L BNN
F 1 "L293D" H 8649 648 50  0000 L BNN
F 2 "DIL16" H 9050 1550 50  0001 L BNN
F 3 "SOIC-20 STMicroelectronics" H 9050 1550 50  0001 L BNN
F 4 "Driver; 36V; Power DIP; 600mA Low LevelO/P; 1.2A O/P High Level; 4 Drivers; 7V" H 9050 1550 50  0001 L BNN "Field4"
F 5 "L293D" H 9050 1550 50  0001 L BNN "Field5"
F 6 "Unavailable" H 9050 1550 50  0001 L BNN "Field6"
F 7 "STMicroelectronics" H 9050 1550 50  0001 L BNN "Field7"
F 8 "None" H 9050 1550 50  0001 L BNN "Field8"
	1    9050 1550
	1    0    0    -1  
$EndComp
$Comp
L L293D IC?
U 1 1 5B9287B3
P 9050 3450
F 0 "IC?" H 8649 4291 50  0000 L BNN
F 1 "L293D" H 8649 2548 50  0000 L BNN
F 2 "DIL16" H 9050 3450 50  0001 L BNN
F 3 "SOIC-20 STMicroelectronics" H 9050 3450 50  0001 L BNN
F 4 "Driver; 36V; Power DIP; 600mA Low LevelO/P; 1.2A O/P High Level; 4 Drivers; 7V" H 9050 3450 50  0001 L BNN "Field4"
F 5 "L293D" H 9050 3450 50  0001 L BNN "Field5"
F 6 "Unavailable" H 9050 3450 50  0001 L BNN "Field6"
F 7 "STMicroelectronics" H 9050 3450 50  0001 L BNN "Field7"
F 8 "None" H 9050 3450 50  0001 L BNN "Field8"
	1    9050 3450
	1    0    0    -1  
$EndComp
$Comp
L L293D IC?
U 1 1 5B928843
P 9050 5350
F 0 "IC?" H 8649 6191 50  0000 L BNN
F 1 "L293D" H 8649 4448 50  0000 L BNN
F 2 "DIL16" H 9050 5350 50  0001 L BNN
F 3 "SOIC-20 STMicroelectronics" H 9050 5350 50  0001 L BNN
F 4 "Driver; 36V; Power DIP; 600mA Low LevelO/P; 1.2A O/P High Level; 4 Drivers; 7V" H 9050 5350 50  0001 L BNN "Field4"
F 5 "L293D" H 9050 5350 50  0001 L BNN "Field5"
F 6 "Unavailable" H 9050 5350 50  0001 L BNN "Field6"
F 7 "STMicroelectronics" H 9050 5350 50  0001 L BNN "Field7"
F 8 "None" H 9050 5350 50  0001 L BNN "Field8"
	1    9050 5350
	1    0    0    -1  
$EndComp
Text GLabel 8050 1550 0    60   UnSpc ~ 0
GND
Text GLabel 10100 1550 2    60   UnSpc ~ 0
GND
Text GLabel 10050 3450 2    60   UnSpc ~ 0
GND
Text GLabel 10000 5350 2    60   UnSpc ~ 0
GND
Text GLabel 8150 3450 0    60   UnSpc ~ 0
GND
Text GLabel 8150 5350 0    60   UnSpc ~ 0
GND
Text GLabel 8150 4150 0    60   BiDi ~ 0
5V
Text GLabel 10000 4150 2    60   BiDi ~ 0
5V
Text GLabel 10000 2750 2    60   BiDi ~ 0
5V
Text GLabel 8150 2750 0    60   BiDi ~ 0
5V
Text GLabel 8150 2250 0    60   BiDi ~ 0
5V
Text GLabel 8150 850  0    60   BiDi ~ 0
5V
Text GLabel 10000 2250 2    60   BiDi ~ 0
5V
Text GLabel 10000 850  2    60   BiDi ~ 0
5V
Text GLabel 10000 4650 2    60   BiDi ~ 0
5V
Text GLabel 10000 6050 2    60   BiDi ~ 0
5V
Text GLabel 8150 4650 0    60   BiDi ~ 0
5V
Text GLabel 8150 6050 0    60   BiDi ~ 0
5V
$Comp
L PN2222A Q?
U 1 1 5B9A9403
P 7600 1150
F 0 "Q?" H 7800 1225 50  0000 L CNN
F 1 "PN2222A" H 7800 1150 50  0000 L CNN
F 2 "" H 7800 1075 50  0000 L CIN
F 3 "" H 7600 1150 50  0000 L CNN
	1    7600 1150
	0    -1   -1   0   
$EndComp
$Comp
L PN2222A Q?
U 1 1 5B9A9661
P 7600 2000
F 0 "Q?" H 7800 2075 50  0000 L CNN
F 1 "PN2222A" H 7800 2000 50  0000 L CNN
F 2 "" H 7800 1925 50  0000 L CIN
F 3 "" H 7600 2000 50  0000 L CNN
	1    7600 2000
	0    1    1    0   
$EndComp
$Comp
L PN2222A Q?
U 1 1 5B9A97B2
P 7650 3000
F 0 "Q?" H 7850 3075 50  0000 L CNN
F 1 "PN2222A" H 7850 3000 50  0000 L CNN
F 2 "" H 7850 2925 50  0000 L CIN
F 3 "" H 7650 3000 50  0000 L CNN
	1    7650 3000
	0    -1   -1   0   
$EndComp
$Comp
L PN2222A Q?
U 1 1 5B9A988D
P 7650 3900
F 0 "Q?" H 7850 3975 50  0000 L CNN
F 1 "PN2222A" H 7850 3900 50  0000 L CNN
F 2 "" H 7850 3825 50  0000 L CIN
F 3 "" H 7650 3900 50  0000 L CNN
	1    7650 3900
	0    1    1    0   
$EndComp
$Comp
L PN2222A Q?
U 1 1 5B9A99AA
P 7650 4900
F 0 "Q?" H 7850 4975 50  0000 L CNN
F 1 "PN2222A" H 7850 4900 50  0000 L CNN
F 2 "" H 7850 4825 50  0000 L CIN
F 3 "" H 7650 4900 50  0000 L CNN
	1    7650 4900
	0    -1   -1   0   
$EndComp
$Comp
L PN2222A Q?
U 1 1 5B9A9AB6
P 7650 5800
F 0 "Q?" H 7850 5875 50  0000 L CNN
F 1 "PN2222A" H 7850 5800 50  0000 L CNN
F 2 "" H 7850 5725 50  0000 L CIN
F 3 "" H 7650 5800 50  0000 L CNN
	1    7650 5800
	0    1    1    0   
$EndComp
$Comp
L PN2222A Q?
U 1 1 5B9A9FDF
P 10400 1100
F 0 "Q?" H 10600 1175 50  0000 L CNN
F 1 "PN2222A" H 10600 1100 50  0000 L CNN
F 2 "" H 10600 1025 50  0000 L CIN
F 3 "" H 10400 1100 50  0000 L CNN
	1    10400 1100
	0    -1   -1   0   
$EndComp
$Comp
L PN2222A Q?
U 1 1 5B9AA022
P 10400 2000
F 0 "Q?" H 10600 2075 50  0000 L CNN
F 1 "PN2222A" H 10600 2000 50  0000 L CNN
F 2 "" H 10600 1925 50  0000 L CIN
F 3 "" H 10400 2000 50  0000 L CNN
	1    10400 2000
	0    1    1    0   
$EndComp
$Comp
L PN2222A Q?
U 1 1 5B9AA1AF
P 10450 3000
F 0 "Q?" H 10650 3075 50  0000 L CNN
F 1 "PN2222A" H 10650 3000 50  0000 L CNN
F 2 "" H 10650 2925 50  0000 L CIN
F 3 "" H 10450 3000 50  0000 L CNN
	1    10450 3000
	0    -1   -1   0   
$EndComp
$Comp
L PN2222A Q?
U 1 1 5B9AA33C
P 10450 3950
F 0 "Q?" H 10650 4025 50  0000 L CNN
F 1 "PN2222A" H 10650 3950 50  0000 L CNN
F 2 "" H 10650 3875 50  0000 L CIN
F 3 "" H 10450 3950 50  0000 L CNN
	1    10450 3950
	0    1    1    0   
$EndComp
$Comp
L PN2222A Q?
U 1 1 5B9AA46D
P 10400 4900
F 0 "Q?" H 10600 4975 50  0000 L CNN
F 1 "PN2222A" H 10600 4900 50  0000 L CNN
F 2 "" H 10600 4825 50  0000 L CIN
F 3 "" H 10400 4900 50  0000 L CNN
	1    10400 4900
	0    -1   -1   0   
$EndComp
$Comp
L PN2222A Q?
U 1 1 5B9AA4A6
P 10400 5800
F 0 "Q?" H 10600 5875 50  0000 L CNN
F 1 "PN2222A" H 10600 5800 50  0000 L CNN
F 2 "" H 10600 5725 50  0000 L CIN
F 3 "" H 10400 5800 50  0000 L CNN
	1    10400 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 5450 8300 5450
Wire Wire Line
	8300 5450 8300 5250
Wire Wire Line
	8300 5250 8450 5250
Wire Wire Line
	8300 5350 8150 5350
Connection ~ 8300 5350
Wire Wire Line
	9650 5250 9800 5250
Wire Wire Line
	9800 5250 9800 5450
Wire Wire Line
	9800 5450 9650 5450
Wire Wire Line
	9800 5350 10000 5350
Connection ~ 9800 5350
Wire Wire Line
	8450 3350 8300 3350
Wire Wire Line
	8300 3350 8300 3550
Wire Wire Line
	8300 3550 8450 3550
Wire Wire Line
	8300 3450 8150 3450
Connection ~ 8300 3450
Wire Wire Line
	9650 3350 9850 3350
Wire Wire Line
	9850 3350 9850 3550
Wire Wire Line
	9850 3550 9650 3550
Wire Wire Line
	9850 3450 10050 3450
Connection ~ 9850 3450
Wire Wire Line
	8450 1450 8250 1450
Wire Wire Line
	8250 1450 8250 1650
Wire Wire Line
	8250 1650 8450 1650
Wire Wire Line
	8250 1550 8050 1550
Connection ~ 8250 1550
Wire Wire Line
	9650 1650 9850 1650
Wire Wire Line
	9850 1650 9850 1450
Wire Wire Line
	9850 1450 9650 1450
Wire Wire Line
	9850 1550 10100 1550
Connection ~ 9850 1550
Wire Wire Line
	8150 850  8450 850 
Wire Wire Line
	9650 850  10000 850 
Wire Wire Line
	8450 2250 8150 2250
Wire Wire Line
	9650 2250 10000 2250
Wire Wire Line
	10000 2750 9650 2750
Wire Wire Line
	8150 2750 8450 2750
Wire Wire Line
	8150 4150 8450 4150
Wire Wire Line
	9650 4150 10000 4150
Wire Wire Line
	8150 4650 8450 4650
Wire Wire Line
	9650 4650 10000 4650
Wire Wire Line
	9650 6050 10000 6050
Wire Wire Line
	8450 6050 8150 6050
Wire Wire Line
	10600 5900 10600 6350
Wire Wire Line
	10600 6350 9900 6350
Wire Wire Line
	9900 6350 9900 6050
Connection ~ 9900 6050
Wire Wire Line
	10200 4800 9950 4800
Wire Wire Line
	9950 4800 9950 4650
Connection ~ 9950 4650
Wire Wire Line
	10650 4050 10650 4300
Wire Wire Line
	10650 4300 9900 4300
Wire Wire Line
	9900 4300 9900 4150
Connection ~ 9900 4150
Wire Wire Line
	10250 2900 9900 2900
Wire Wire Line
	9900 2900 9900 2750
Connection ~ 9900 2750
Wire Wire Line
	10600 2100 10600 2400
Wire Wire Line
	10600 2400 9850 2400
Wire Wire Line
	9850 2400 9850 2250
Connection ~ 9850 2250
Wire Wire Line
	10200 1000 9900 1000
Wire Wire Line
	9900 1000 9900 850 
Connection ~ 9900 850 
Wire Wire Line
	7400 1050 7400 600 
Wire Wire Line
	7400 600  8250 600 
Wire Wire Line
	8250 600  8250 850 
Connection ~ 8250 850 
Wire Wire Line
	7800 2100 8250 2100
Wire Wire Line
	8250 2100 8250 2250
Connection ~ 8250 2250
Wire Wire Line
	7450 2900 7450 2600
Wire Wire Line
	7450 2600 8300 2600
Wire Wire Line
	8300 2600 8300 2750
Connection ~ 8300 2750
Wire Wire Line
	7850 4000 8300 4000
Wire Wire Line
	8300 4000 8300 4150
Connection ~ 8300 4150
Wire Wire Line
	7450 4800 7450 4500
Wire Wire Line
	7450 4500 8250 4500
Wire Wire Line
	8250 4500 8250 4650
Connection ~ 8250 4650
Wire Wire Line
	7850 5900 8250 5900
Wire Wire Line
	8250 5900 8250 6050
Connection ~ 8250 6050
Wire Wire Line
	7800 1050 8450 1050
Wire Wire Line
	7400 2100 7400 1700
Wire Wire Line
	7400 1700 7950 1700
Wire Wire Line
	7950 1700 7950 2050
Wire Wire Line
	7950 2050 8450 2050
Wire Wire Line
	10600 1000 10600 1400
Wire Wire Line
	10600 1400 10200 1400
Wire Wire Line
	10200 1400 10200 1050
Wire Wire Line
	10200 1050 9650 1050
Wire Wire Line
	10200 2100 9650 2100
Wire Wire Line
	9650 2100 9650 2050
Wire Wire Line
	10650 2900 10650 3300
Wire Wire Line
	10650 3300 10250 3300
Wire Wire Line
	10250 3300 10250 2950
Wire Wire Line
	10250 2950 9650 2950
Wire Wire Line
	7850 2900 8450 2900
Wire Wire Line
	8450 2900 8450 2950
Wire Wire Line
	7450 4000 7450 3650
Wire Wire Line
	7450 3650 7900 3650
Wire Wire Line
	7900 3650 7900 3950
Wire Wire Line
	7900 3950 8450 3950
Wire Wire Line
	10250 4050 9650 4050
Wire Wire Line
	9650 4050 9650 3950
Wire Wire Line
	7850 4800 8450 4800
Wire Wire Line
	8450 4800 8450 4850
Wire Wire Line
	7450 5900 7450 5550
Wire Wire Line
	7450 5550 7850 5550
Wire Wire Line
	7850 5550 7850 5850
Wire Wire Line
	7850 5850 8450 5850
Wire Wire Line
	10200 5900 9650 5900
Wire Wire Line
	9650 5900 9650 5850
Wire Wire Line
	10600 4800 10600 5150
Wire Wire Line
	10600 5150 10200 5150
Wire Wire Line
	10200 5150 10200 4850
Wire Wire Line
	10200 4850 9650 4850
$EndSCHEMATC
