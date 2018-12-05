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
LIBS:Individual motor driver-cache
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
L BluePill_STM32F103C U1
U 1 1 5BDB0275
P 2850 3150
F 0 "U1" H 2400 1800 50  0000 C CNN
F 1 "BluePill_STM32F103C" H 2900 4000 50  0000 C CNN
F 2 "BluePill_breakouts:BluePill_STM32F103C" H 2900 1550 50  0001 C CNN
F 3 "www.rogerclark.net" H 2850 1650 50  0001 C CNN
	1    2850 3150
	1    0    0    -1  
$EndComp
$Comp
L L293D Motor1
U 1 1 5BDB0325
P 9600 1900
F 0 "Motor1" H 9199 2741 50  0000 L BNN
F 1 "L293D" H 9199 998 50  0000 L BNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9600 1900 50  0001 L BNN
F 3 "SOIC-20 STMicroelectronics" H 9600 1900 50  0001 L BNN
F 4 "Driver; 36V; Power DIP; 600mA Low LevelO/P; 1.2A O/P High Level; 4 Drivers; 7V" H 9600 1900 50  0001 L BNN "Field4"
F 5 "L293D" H 9600 1900 50  0001 L BNN "Field5"
F 6 "Unavailable" H 9600 1900 50  0001 L BNN "Field6"
F 7 "STMicroelectronics" H 9600 1900 50  0001 L BNN "Field7"
F 8 "None" H 9600 1900 50  0001 L BNN "Field8"
	1    9600 1900
	1    0    0    -1  
$EndComp
Text GLabel 8750 1900 0    60   Input ~ 0
GND
Text GLabel 10400 1900 2    60   Input ~ 0
GND
Text GLabel 1700 4300 0    60   Input ~ 0
GND
Text GLabel 2500 6250 0    60   Input ~ 0
Rotary_Encoder_2A
Text GLabel 2500 4850 0    60   Input ~ 0
Rotary_Encoder_2B
$Comp
L BluePill_STM32F103C U2
U 1 1 5BDB1700
P 6450 3150
F 0 "U2" H 6000 1800 50  0000 C CNN
F 1 "BluePill_STM32F103C" H 6500 4000 50  0000 C CNN
F 2 "BluePill_breakouts:BluePill_STM32F103C" H 6500 1550 50  0001 C CNN
F 3 "www.rogerclark.net" H 6450 1650 50  0001 C CNN
	1    6450 3150
	1    0    0    -1  
$EndComp
Text GLabel 5450 4300 0    60   Input ~ 0
GND
Text GLabel 4050 2650 2    60   Input ~ 0
5V
Text GLabel 7650 2650 2    60   Input ~ 0
5V
Text GLabel 8750 1200 0    60   Input ~ 0
5V
Text GLabel 10450 1200 2    60   Input ~ 0
5V
Text GLabel 10450 2600 2    60   Input ~ 0
5V
Text GLabel 8750 2600 0    60   Input ~ 0
VCC
$Comp
L CONN_01X02 P5
U 1 1 5BE06FF6
P 5100 6900
F 0 "P5" H 5100 7050 50  0000 C CNN
F 1 "CONN_01X02" V 5200 6900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5100 6900 50  0001 C CNN
F 3 "" H 5100 6900 50  0000 C CNN
	1    5100 6900
	1    0    0    -1  
$EndComp
Text GLabel 4700 6800 0    60   Input ~ 0
VCC
Text GLabel 4700 7000 0    60   Input ~ 0
GND
$Comp
L CONN_01X02 P6
U 1 1 5BE079F3
P 5100 7400
F 0 "P6" H 5100 7550 50  0000 C CNN
F 1 "CONN_01X02" V 5200 7400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5100 7400 50  0001 C CNN
F 3 "" H 5100 7400 50  0000 C CNN
	1    5100 7400
	1    0    0    -1  
$EndComp
Text GLabel 4700 7500 0    60   Input ~ 0
GND
Text GLabel 4700 7300 0    60   Input ~ 0
5V
Text GLabel 8800 1400 0    60   Input ~ 0
M1:C1
Text GLabel 8800 2400 0    60   Input ~ 0
M1:C2
Text GLabel 10400 2400 2    60   Input ~ 0
M2:C2
Text GLabel 10400 1400 2    60   Input ~ 0
M2:C1
Text GLabel 8800 1600 0    60   Input ~ 0
M1:O1
Text GLabel 8800 2200 0    60   Input ~ 0
M1:O2
Text GLabel 10400 2200 2    60   Input ~ 0
M2:O2
Text GLabel 10400 1600 2    60   Input ~ 0
M2:O1
Text GLabel 8700 4450 0    60   Input ~ 0
M1:O1
Text GLabel 8700 4650 0    60   Input ~ 0
M1:O2
Text GLabel 8700 4850 0    60   Input ~ 0
M2:O1
Text GLabel 8700 5050 0    60   Input ~ 0
M2:O2
Text GLabel 4850 3100 0    60   Input ~ 0
M1:C1
Text GLabel 4650 3600 0    60   Input ~ 0
M1:C2
Text GLabel 1050 3050 0    60   Input ~ 0
M2:C1
Text GLabel 850  3550 0    60   Input ~ 0
M2:C2
Text GLabel 6000 6750 0    60   Input ~ 0
VCC
Text GLabel 6600 7200 3    60   Input ~ 0
GND
$Comp
L R R1
U 1 1 5BE0B1DB
P 6300 6750
F 0 "R1" V 6380 6750 50  0000 C CNN
F 1 "100" V 6300 6750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6230 6750 50  0001 C CNN
F 3 "" H 6300 6750 50  0000 C CNN
	1    6300 6750
	0    1    1    0   
$EndComp
$Comp
L Led_Small D1
U 1 1 5BE0B33D
P 6600 6950
F 0 "D1" H 6550 7075 50  0000 L CNN
F 1 "Led_Small" H 6425 6850 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" V 6600 6950 50  0001 C CNN
F 3 "" V 6600 6950 50  0000 C CNN
	1    6600 6950
	0    -1   -1   0   
$EndComp
$Comp
L ACS711xLCTR-12AB U4
U 1 1 5BE0C069
P 9550 5700
F 0 "U4" H 9900 5950 50  0000 L CNN
F 1 "ACS711xLCTR-12AB" H 9900 5850 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9900 5650 50  0001 L CIN
F 3 "" H 9550 5700 50  0001 C CNN
	1    9550 5700
	1    0    0    -1  
$EndComp
$Comp
L ACS711xLCTR-12AB U3
U 1 1 5BE0C344
P 9500 3900
F 0 "U3" H 9850 4150 50  0000 L CNN
F 1 "ACS711xLCTR-12AB" H 9850 4050 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9850 3850 50  0001 L CIN
F 3 "" H 9500 3900 50  0001 C CNN
	1    9500 3900
	1    0    0    -1  
$EndComp
Text GLabel 4100 2900 2    60   Input ~ 0
SDA
Text GLabel 4100 3100 2    60   Input ~ 0
SCL
Text GLabel 7850 2900 2    60   Input ~ 0
SDA
Text GLabel 7850 3100 2    60   Input ~ 0
SCL
$Comp
L CONN_01X02 P3
U 1 1 5BE30CD2
P 6200 7350
F 0 "P3" H 6200 7500 50  0000 C CNN
F 1 "CONN_01X02" V 6300 7350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6200 7350 50  0001 C CNN
F 3 "" H 6200 7350 50  0000 C CNN
	1    6200 7350
	1    0    0    -1  
$EndComp
Text GLabel 5850 7250 0    60   Input ~ 0
SDA
Text GLabel 5850 7450 0    60   Input ~ 0
SCL
Text GLabel 9600 4400 2    60   Input ~ 0
GND
Text GLabel 9600 6200 2    60   Input ~ 0
GND
Text GLabel 10100 3900 2    60   Input ~ 0
M1:Current
Text GLabel 10100 5700 2    60   Input ~ 0
M2:Current
Text GLabel 5200 2700 0    60   Input ~ 0
M1:Current
Text GLabel 1450 2600 0    60   Input ~ 0
M2:Current
$Comp
L PN2222A Q3
U 1 1 5BE46052
P 4900 3850
F 0 "Q3" H 5100 3925 50  0000 L CNN
F 1 "PN2222A" H 5100 3850 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5100 3775 50  0001 L CIN
F 3 "" H 4900 3850 50  0000 L CNN
	1    4900 3850
	-1   0    0    1   
$EndComp
$Comp
L PN2222A Q4
U 1 1 5BE46C8F
P 5100 3400
F 0 "Q4" H 5300 3475 50  0000 L CNN
F 1 "PN2222A" H 5300 3400 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5300 3325 50  0001 L CIN
F 3 "" H 5100 3400 50  0000 L CNN
	1    5100 3400
	-1   0    0    1   
$EndComp
Text GLabel 4700 4150 0    60   Input ~ 0
5V
Text GLabel 5050 3700 2    60   Input ~ 0
5V
$Comp
L PN2222A Q2
U 1 1 5BE48898
P 1250 3350
F 0 "Q2" H 1450 3425 50  0000 L CNN
F 1 "PN2222A" H 1450 3350 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1450 3275 50  0001 L CIN
F 3 "" H 1250 3350 50  0000 L CNN
	1    1250 3350
	-1   0    0    1   
$EndComp
Text GLabel 900  4100 0    60   Input ~ 0
5V
Text GLabel 1250 3650 2    60   Input ~ 0
5V
$Comp
L R R2
U 1 1 5BE4C3F5
P 2350 5350
F 0 "R2" V 2430 5350 50  0000 C CNN
F 1 "10k" V 2350 5350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2280 5350 50  0001 C CNN
F 3 "" H 2350 5350 50  0000 C CNN
	1    2350 5350
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5BE4C45E
P 2350 5750
F 0 "R3" V 2430 5750 50  0000 C CNN
F 1 "10k" V 2350 5750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2280 5750 50  0001 C CNN
F 3 "" H 2350 5750 50  0000 C CNN
	1    2350 5750
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5BE4CFF3
P 2600 5100
F 0 "R4" V 2680 5100 50  0000 C CNN
F 1 "10k" V 2600 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2530 5100 50  0001 C CNN
F 3 "" H 2600 5100 50  0000 C CNN
	1    2600 5100
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5BE4D050
P 2600 6000
F 0 "R5" V 2680 6000 50  0000 C CNN
F 1 "10k" V 2600 6000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2530 6000 50  0001 C CNN
F 3 "" H 2600 6000 50  0000 C CNN
	1    2600 6000
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5BE4EA84
P 2950 5100
F 0 "C1" H 2975 5200 50  0000 L CNN
F 1 "0.01uF" H 2975 5000 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 2988 4950 50  0001 C CNN
F 3 "" H 2950 5100 50  0000 C CNN
	1    2950 5100
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5BE4EB3F
P 2950 5950
F 0 "C2" H 2975 6050 50  0000 L CNN
F 1 "0.01uF" H 2975 5850 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 2988 5800 50  0001 C CNN
F 3 "" H 2950 5950 50  0000 C CNN
	1    2950 5950
	0    1    1    0   
$EndComp
Text GLabel 3250 5950 2    60   Input ~ 0
GND
Text GLabel 3250 5100 2    60   Input ~ 0
GND
Text GLabel 5850 6250 0    60   Input ~ 0
Rotary_Encoder_1A
Text GLabel 5850 4850 0    60   Input ~ 0
Rotary_Encoder_1B
$Comp
L R R7
U 1 1 5BE50C80
P 5700 5350
F 0 "R7" V 5780 5350 50  0000 C CNN
F 1 "10k" V 5700 5350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5630 5350 50  0001 C CNN
F 3 "" H 5700 5350 50  0000 C CNN
	1    5700 5350
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5BE50C86
P 5700 5750
F 0 "R8" V 5780 5750 50  0000 C CNN
F 1 "10k" V 5700 5750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5630 5750 50  0001 C CNN
F 3 "" H 5700 5750 50  0000 C CNN
	1    5700 5750
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5BE50C95
P 5950 5100
F 0 "R9" V 6030 5100 50  0000 C CNN
F 1 "10k" V 5950 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5880 5100 50  0001 C CNN
F 3 "" H 5950 5100 50  0000 C CNN
	1    5950 5100
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5BE50C9B
P 5950 6000
F 0 "R10" V 6030 6000 50  0000 C CNN
F 1 "10k" V 5950 6000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5880 6000 50  0001 C CNN
F 3 "" H 5950 6000 50  0000 C CNN
	1    5950 6000
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5BE50CA9
P 6300 5100
F 0 "C3" H 6325 5200 50  0000 L CNN
F 1 "0.01uF" H 6325 5000 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 6338 4950 50  0001 C CNN
F 3 "" H 6300 5100 50  0000 C CNN
	1    6300 5100
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 5BE50CAF
P 6300 5950
F 0 "C4" H 6325 6050 50  0000 L CNN
F 1 "0.01uF" H 6325 5850 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 6338 5800 50  0001 C CNN
F 3 "" H 6300 5950 50  0000 C CNN
	1    6300 5950
	0    1    1    0   
$EndComp
Text GLabel 6600 5950 2    60   Input ~ 0
GND
Text GLabel 6600 5100 2    60   Input ~ 0
GND
$Comp
L PN2222A Q1
U 1 1 5BE48737
P 1100 3800
F 0 "Q1" H 1300 3875 50  0000 L CNN
F 1 "PN2222A" H 1300 3800 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1300 3725 50  0001 L CIN
F 3 "" H 1100 3800 50  0000 L CNN
	1    1100 3800
	-1   0    0    1   
$EndComp
Text GLabel 7650 2450 2    60   Input ~ 0
3.3v
Text GLabel 4050 2450 2    60   Input ~ 0
3.3v
Text GLabel 9600 3400 2    60   Input ~ 0
3.3v
Text GLabel 9650 5200 2    60   Input ~ 0
3.3v
Text GLabel 4000 4350 3    60   Input ~ 0
Rotary_Encoder_2A
Text GLabel 4200 4350 3    60   Input ~ 0
Rotary_Encoder_2B
Text GLabel 7600 4350 3    60   Input ~ 0
Rotary_Encoder_1A
Text GLabel 7800 4350 3    60   Input ~ 0
Rotary_Encoder_1B
Text GLabel 1450 2400 0    60   Input ~ 0
Limit2
Text GLabel 5200 2500 0    60   Input ~ 0
Limit1
$Comp
L Led_Small D3
U 1 1 5BE4C627
P 6200 850
F 0 "D3" H 6150 975 50  0000 L CNN
F 1 "Led_Small" H 6025 750 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" V 6200 850 50  0001 C CNN
F 3 "" V 6200 850 50  0000 C CNN
	1    6200 850 
	-1   0    0    1   
$EndComp
Text GLabel 5950 850  0    60   Input ~ 0
Stall_1
$Comp
L R R11
U 1 1 5BE4CEAF
P 6600 850
F 0 "R11" V 6680 850 50  0000 C CNN
F 1 "50" V 6600 850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 850 50  0001 C CNN
F 3 "" H 6600 850 50  0000 C CNN
	1    6600 850 
	0    1    1    0   
$EndComp
Text GLabel 6950 850  2    60   Input ~ 0
GND
$Comp
L Led_Small D2
U 1 1 5BE4DE53
P 2650 900
F 0 "D2" H 2600 1025 50  0000 L CNN
F 1 "Led_Small" H 2475 800 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm" V 2650 900 50  0001 C CNN
F 3 "" V 2650 900 50  0000 C CNN
	1    2650 900 
	-1   0    0    1   
$EndComp
Text GLabel 2400 900  0    60   Input ~ 0
Stall_2
$Comp
L R R6
U 1 1 5BE4DE5A
P 3050 900
F 0 "R6" V 3130 900 50  0000 C CNN
F 1 "50" V 3050 900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2980 900 50  0001 C CNN
F 3 "" H 3050 900 50  0000 C CNN
	1    3050 900 
	0    1    1    0   
$EndComp
Text GLabel 3400 900  2    60   Input ~ 0
GND
Text GLabel 5200 2300 0    60   Input ~ 0
Stall_1
Text GLabel 1450 2200 0    60   Input ~ 0
Stall_2
Text GLabel 7400 2550 2    60   Input ~ 0
GND
Text GLabel 3800 2550 2    60   Input ~ 0
GND
Wire Wire Line
	8750 1900 9000 1900
Wire Wire Line
	9000 1800 9000 2000
Connection ~ 9000 1900
Wire Wire Line
	10400 1900 10200 1900
Wire Wire Line
	10200 1800 10200 2000
Connection ~ 10200 1900
Wire Wire Line
	1700 4300 2000 4300
Wire Wire Line
	2000 4250 2000 4350
Connection ~ 2000 4300
Wire Wire Line
	5450 4300 5600 4300
Wire Wire Line
	5600 4250 5600 4350
Connection ~ 5600 4300
Wire Wire Line
	7350 2650 7650 2650
Wire Wire Line
	3750 2650 4050 2650
Wire Wire Line
	8750 1200 9000 1200
Wire Wire Line
	10200 1200 10450 1200
Wire Wire Line
	10450 2600 10200 2600
Wire Wire Line
	7350 2950 7700 2950
Wire Wire Line
	7700 3050 7350 3050
Wire Wire Line
	3750 2950 3950 2950
Wire Wire Line
	3950 3050 3750 3050
Wire Wire Line
	8750 2600 9000 2600
Wire Wire Line
	4700 6800 4800 6800
Wire Wire Line
	4800 6800 4800 6850
Wire Wire Line
	4800 6850 4900 6850
Wire Wire Line
	4700 7000 4800 7000
Wire Wire Line
	4800 7000 4800 6950
Wire Wire Line
	4800 6950 4900 6950
Wire Wire Line
	4700 7300 4800 7300
Wire Wire Line
	4800 7300 4800 7350
Wire Wire Line
	4800 7350 4900 7350
Wire Wire Line
	4700 7500 4800 7500
Wire Wire Line
	4800 7500 4800 7450
Wire Wire Line
	4800 7450 4900 7450
Wire Wire Line
	8800 2400 9000 2400
Wire Wire Line
	8800 1400 9000 1400
Wire Wire Line
	10200 1400 10400 1400
Wire Wire Line
	10200 2400 10400 2400
Wire Wire Line
	8800 1600 9000 1600
Wire Wire Line
	9000 2200 8800 2200
Wire Wire Line
	10200 2200 10400 2200
Wire Wire Line
	10200 1600 10400 1600
Wire Wire Line
	8700 4450 8800 4450
Wire Wire Line
	8700 5050 8800 5050
Wire Wire Line
	6000 6750 6150 6750
Wire Wire Line
	6450 6750 6600 6750
Wire Wire Line
	6600 6750 6600 6850
Wire Wire Line
	6600 7050 6600 7200
Wire Wire Line
	3950 2950 3950 2900
Wire Wire Line
	3950 2900 4100 2900
Wire Wire Line
	3950 3050 3950 3100
Wire Wire Line
	3950 3100 4100 3100
Wire Wire Line
	7700 2900 7850 2900
Wire Wire Line
	7700 3100 7850 3100
Wire Wire Line
	7700 2950 7700 2900
Wire Wire Line
	7700 3050 7700 3100
Wire Wire Line
	5850 7250 5900 7250
Wire Wire Line
	5900 7250 5900 7300
Wire Wire Line
	5900 7300 6000 7300
Wire Wire Line
	5850 7450 5900 7450
Wire Wire Line
	5900 7450 5900 7400
Wire Wire Line
	5900 7400 6000 7400
Wire Wire Line
	9500 3500 9500 3400
Wire Wire Line
	9500 3400 9600 3400
Wire Wire Line
	9550 5300 9550 5200
Wire Wire Line
	9550 5200 9650 5200
Wire Wire Line
	8800 5050 8800 5900
Wire Wire Line
	8800 5900 9150 5900
Wire Wire Line
	8800 4450 8800 3700
Wire Wire Line
	8800 3700 9100 3700
Wire Wire Line
	9600 4400 9500 4400
Wire Wire Line
	9500 4400 9500 4300
Wire Wire Line
	9550 6100 9550 6200
Wire Wire Line
	9550 6200 9600 6200
Wire Wire Line
	9950 5700 10100 5700
Wire Wire Line
	9900 3900 10100 3900
Wire Wire Line
	5050 3700 5000 3700
Wire Wire Line
	5000 3700 5000 3600
Wire Wire Line
	4800 4050 4800 4150
Wire Wire Line
	4800 4150 4700 4150
Wire Wire Line
	5000 3200 5000 3100
Wire Wire Line
	5000 3100 4850 3100
Wire Wire Line
	4800 3650 4800 3600
Wire Wire Line
	4800 3600 4650 3600
Wire Wire Line
	1000 4000 1000 4100
Wire Wire Line
	1250 3650 1150 3650
Wire Wire Line
	1150 3650 1150 3550
Wire Wire Line
	1000 3600 1000 3550
Wire Wire Line
	1000 3550 850  3550
Wire Wire Line
	1150 3150 1150 3050
Wire Wire Line
	1150 3050 1050 3050
Wire Wire Line
	2100 5550 2200 5550
Wire Wire Line
	2200 5350 2200 5750
Connection ~ 2200 5550
Wire Wire Line
	2500 5350 2700 5350
Wire Wire Line
	2700 5350 2700 5500
Wire Wire Line
	2700 5500 2900 5500
Wire Wire Line
	2500 5750 2700 5750
Wire Wire Line
	2700 5750 2700 5600
Wire Wire Line
	2700 5600 2900 5600
Wire Wire Line
	2600 5850 2600 5750
Connection ~ 2600 5750
Wire Wire Line
	2600 5250 2600 5350
Connection ~ 2600 5350
Wire Wire Line
	2500 6250 2600 6250
Wire Wire Line
	2600 6250 2600 6150
Wire Wire Line
	2500 4850 2600 4850
Wire Wire Line
	2600 4850 2600 4950
Wire Wire Line
	2800 5100 2750 5100
Wire Wire Line
	3100 5100 3250 5100
Wire Wire Line
	3100 5950 3250 5950
Wire Wire Line
	5450 5550 5550 5550
Wire Wire Line
	5550 5350 5550 5750
Connection ~ 5550 5550
Wire Wire Line
	5850 5350 6050 5350
Wire Wire Line
	6050 5350 6050 5500
Wire Wire Line
	6050 5500 6250 5500
Wire Wire Line
	5850 5750 6050 5750
Wire Wire Line
	6050 5750 6050 5600
Wire Wire Line
	6050 5600 6250 5600
Wire Wire Line
	5950 5850 5950 5750
Connection ~ 5950 5750
Wire Wire Line
	5950 5250 5950 5350
Connection ~ 5950 5350
Wire Wire Line
	5850 6250 5950 6250
Wire Wire Line
	5950 6250 5950 6150
Wire Wire Line
	5850 4850 5950 4850
Wire Wire Line
	5950 4850 5950 4950
Wire Wire Line
	6150 5100 6100 5100
Wire Wire Line
	6450 5100 6600 5100
Wire Wire Line
	6450 5950 6600 5950
Wire Wire Line
	1450 2600 1600 2600
Wire Wire Line
	1600 2600 1600 2950
Wire Wire Line
	1600 2950 2000 2950
Wire Wire Line
	1000 4100 900  4100
Wire Wire Line
	2000 3750 1900 3750
Wire Wire Line
	1900 3750 1900 3800
Wire Wire Line
	1900 3800 1300 3800
Wire Wire Line
	1450 3650 2000 3650
Wire Wire Line
	5200 2700 5350 2700
Wire Wire Line
	5350 2700 5350 2950
Wire Wire Line
	5350 2950 5600 2950
Wire Wire Line
	5100 3850 5500 3850
Wire Wire Line
	5500 3850 5500 3750
Wire Wire Line
	5500 3750 5600 3750
Wire Wire Line
	5600 3650 5350 3650
Wire Wire Line
	5350 3650 5350 3400
Wire Wire Line
	5350 3400 5300 3400
Wire Wire Line
	7650 2450 7350 2450
Wire Wire Line
	4050 2450 3750 2450
Wire Wire Line
	4000 4350 4000 4150
Wire Wire Line
	4000 4150 3750 4150
Wire Wire Line
	4200 4350 4200 4050
Wire Wire Line
	4200 4050 3750 4050
Wire Wire Line
	7600 4350 7600 4150
Wire Wire Line
	7600 4150 7350 4150
Wire Wire Line
	7800 4350 7800 4050
Wire Wire Line
	7800 4050 7350 4050
Wire Wire Line
	1450 2400 1700 2400
Wire Wire Line
	1700 2400 1700 2850
Wire Wire Line
	1700 2850 2000 2850
Wire Wire Line
	5200 2500 5400 2500
Wire Wire Line
	5400 2500 5400 2850
Wire Wire Line
	5400 2850 5600 2850
Wire Wire Line
	5950 850  6100 850 
Wire Wire Line
	6300 850  6450 850 
Wire Wire Line
	6750 850  6950 850 
Wire Wire Line
	2400 900  2550 900 
Wire Wire Line
	2750 900  2900 900 
Wire Wire Line
	3200 900  3400 900 
Wire Wire Line
	5200 2300 5450 2300
Wire Wire Line
	5450 2300 5450 2750
Wire Wire Line
	5450 2750 5600 2750
Wire Wire Line
	1450 2200 1800 2200
Wire Wire Line
	1800 2200 1800 2750
Wire Wire Line
	1800 2750 2000 2750
Wire Notes Line
	4250 4200 4250 3250
Wire Notes Line
	4250 3250 4350 3250
Wire Notes Line
	4350 3250 4350 500 
Wire Notes Line
	4250 4200 4400 4200
Wire Notes Line
	4400 4200 4400 6550
Wire Notes Line
	550  6550 6600 6550
Wire Notes Line
	6600 6550 6600 6200
Wire Notes Line
	6600 6200 8150 6200
Wire Notes Line
	8150 6200 8150 500 
Wire Wire Line
	7400 2550 7350 2550
Wire Wire Line
	3800 2550 3750 2550
Wire Wire Line
	1450 3650 1450 3350
$Comp
L CONN_01X02 P9
U 1 1 5BED8ED6
P 6000 7000
F 0 "P9" H 6000 7150 50  0000 C CNN
F 1 "CONN_01X02" V 6100 7000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6000 7000 50  0001 C CNN
F 3 "" H 6000 7000 50  0000 C CNN
	1    6000 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 7200 5950 7300
Connection ~ 5950 7300
Wire Wire Line
	6050 7200 6050 7350
Wire Wire Line
	6050 7350 5950 7350
Wire Wire Line
	5950 7350 5950 7400
Connection ~ 5950 7400
Text GLabel 5450 5550 0    60   Input ~ 0
3.3v
Text GLabel 2100 5550 0    60   Input ~ 0
3.3v
Wire Wire Line
	6100 5100 6100 4900
Wire Wire Line
	6100 4900 5950 4900
Connection ~ 5950 4900
Wire Wire Line
	6150 5950 6150 6200
Wire Wire Line
	6150 6200 5950 6200
Connection ~ 5950 6200
Wire Wire Line
	2750 5100 2750 4900
Wire Wire Line
	2750 4900 2600 4900
Connection ~ 2600 4900
Wire Wire Line
	2800 5950 2750 5950
Wire Wire Line
	2750 5950 2750 6200
Wire Wire Line
	2750 6200 2600 6200
Connection ~ 2600 6200
Text GLabel 9150 4450 2    60   Input ~ 0
M1:1
Text GLabel 9150 4650 2    60   Input ~ 0
M1:2
Text GLabel 9150 4850 2    60   Input ~ 0
M2:1
Text GLabel 9150 5050 2    60   Input ~ 0
M2:2
Wire Wire Line
	9100 4100 8950 4100
Wire Wire Line
	8950 4100 8950 4450
Wire Wire Line
	8950 4450 9150 4450
Wire Wire Line
	9150 4650 8700 4650
Wire Wire Line
	8700 4850 9150 4850
Wire Wire Line
	9150 5500 9000 5500
Wire Wire Line
	9000 5500 9000 5050
Wire Wire Line
	9000 5050 9150 5050
$Comp
L CONN_01X06 P4
U 1 1 5C06BB0C
P 3600 7150
F 0 "P4" H 3600 7500 50  0000 C CNN
F 1 "CONN_01X06" V 3700 7150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 3600 7150 50  0001 C CNN
F 3 "" H 3600 7150 50  0000 C CNN
	1    3600 7150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P7
U 1 1 5C06C715
P 6050 1200
F 0 "P7" H 6050 1300 50  0000 C CNN
F 1 "CONN_01X01" V 6150 1200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6050 1200 50  0001 C CNN
F 3 "" H 6050 1200 50  0000 C CNN
	1    6050 1200
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P2
U 1 1 5C06C798
P 2450 1200
F 0 "P2" H 2450 1300 50  0000 C CNN
F 1 "CONN_01X01" V 2550 1200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 2450 1200 50  0001 C CNN
F 3 "" H 2450 1200 50  0000 C CNN
	1    2450 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 1000 2450 900 
Connection ~ 2450 900 
Wire Wire Line
	6050 1000 6050 850 
Connection ~ 6050 850 
Text GLabel 3200 6850 0    60   Input ~ 0
GND
Text GLabel 2950 5450 2    60   Input ~ 0
A2:1
Text GLabel 2950 5650 2    60   Input ~ 0
A2:2
Wire Wire Line
	2900 5500 2900 5450
Wire Wire Line
	2900 5450 2950 5450
Wire Wire Line
	2900 5600 2900 5650
Wire Wire Line
	2900 5650 2950 5650
Text GLabel 6300 5450 2    60   Input ~ 0
A1:1
Text GLabel 6300 5650 2    60   Input ~ 0
A1:2
Wire Wire Line
	6250 5500 6250 5450
Wire Wire Line
	6250 5450 6300 5450
Wire Wire Line
	6250 5600 6250 5650
Wire Wire Line
	6250 5650 6300 5650
Text GLabel 3200 7000 0    60   Input ~ 0
A1:1
Text GLabel 3200 7150 0    60   Input ~ 0
A1:2
Text GLabel 3200 7300 0    60   Input ~ 0
M1:1
Text GLabel 3200 7450 0    60   Input ~ 0
M1:2
Wire Wire Line
	3200 6850 3350 6850
Wire Wire Line
	3350 6850 3350 6900
Wire Wire Line
	3350 6900 3400 6900
Wire Wire Line
	3200 7000 3400 7000
Wire Wire Line
	3200 7150 3300 7150
Wire Wire Line
	3300 7150 3300 7100
Wire Wire Line
	3300 7100 3400 7100
Wire Wire Line
	3200 7300 3300 7300
Wire Wire Line
	3300 7300 3300 7200
Wire Wire Line
	3300 7200 3400 7200
Wire Wire Line
	3200 7450 3350 7450
Wire Wire Line
	3350 7450 3350 7300
Wire Wire Line
	3350 7300 3400 7300
Text GLabel 3200 7600 0    60   Input ~ 0
Limit1
Wire Wire Line
	3200 7600 3400 7600
Wire Wire Line
	3400 7600 3400 7400
$Comp
L CONN_01X06 P1
U 1 1 5C070F02
P 2150 7150
F 0 "P1" H 2150 7500 50  0000 C CNN
F 1 "CONN_01X06" V 2250 7150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 2150 7150 50  0001 C CNN
F 3 "" H 2150 7150 50  0000 C CNN
	1    2150 7150
	1    0    0    -1  
$EndComp
Text GLabel 1750 6850 0    60   Input ~ 0
GND
Text GLabel 1750 7000 0    60   Input ~ 0
A2:1
Text GLabel 1750 7150 0    60   Input ~ 0
A2:2
Text GLabel 1750 7300 0    60   Input ~ 0
M2:1
Text GLabel 1750 7450 0    60   Input ~ 0
M2:2
Wire Wire Line
	1750 6850 1900 6850
Wire Wire Line
	1900 6850 1900 6900
Wire Wire Line
	1900 6900 1950 6900
Wire Wire Line
	1750 7000 1950 7000
Wire Wire Line
	1750 7150 1850 7150
Wire Wire Line
	1850 7150 1850 7100
Wire Wire Line
	1850 7100 1950 7100
Wire Wire Line
	1750 7300 1850 7300
Wire Wire Line
	1850 7300 1850 7200
Wire Wire Line
	1850 7200 1950 7200
Wire Wire Line
	1750 7450 1900 7450
Wire Wire Line
	1900 7450 1900 7300
Wire Wire Line
	1900 7300 1950 7300
Text GLabel 1750 7600 0    60   Input ~ 0
Limit2
Wire Wire Line
	1750 7600 1950 7600
Wire Wire Line
	1950 7600 1950 7400
$EndSCHEMATC
