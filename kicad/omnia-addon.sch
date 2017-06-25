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
LIBS:ESD_Protection
LIBS:switches
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
L LM386 U2
U 1 1 594F910B
P 7000 3600
F 0 "U2" H 7050 3900 50  0000 L CNN
F 1 "LM386" H 7050 3800 50  0000 L CNN
F 2 "" H 7100 3700 50  0001 C CNN
F 3 "" H 7200 3800 50  0001 C CNN
	1    7000 3600
	1    0    0    -1  
$EndComp
$Comp
L CP C4
U 1 1 594F91A3
P 7700 3600
F 0 "C4" H 7725 3700 50  0000 L CNN
F 1 "220u" H 7725 3500 50  0000 L CNN
F 2 "" H 7738 3450 50  0001 C CNN
F 3 "" H 7700 3600 50  0001 C CNN
	1    7700 3600
	0    -1   -1   0   
$EndComp
$Comp
L JACK_TRS_6PINS J3
U 1 1 594F91FA
P 9000 3900
F 0 "J3" H 9000 4300 50  0000 C CNN
F 1 "JACK_TRS_6PINS" H 8950 3600 50  0000 C CNN
F 2 "" H 9100 3750 50  0001 C CNN
F 3 "" H 9100 3750 50  0001 C CNN
	1    9000 3900
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 594F9296
P 6900 3950
F 0 "#PWR10" H 6900 3700 50  0001 C CNN
F 1 "GND" H 6900 3800 50  0000 C CNN
F 2 "" H 6900 3950 50  0001 C CNN
F 3 "" H 6900 3950 50  0001 C CNN
	1    6900 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR14
U 1 1 594F92B0
P 8600 4150
F 0 "#PWR14" H 8600 3900 50  0001 C CNN
F 1 "GND" H 8600 4000 50  0000 C CNN
F 2 "" H 8600 4150 50  0001 C CNN
F 3 "" H 8600 4150 50  0001 C CNN
	1    8600 4150
	1    0    0    -1  
$EndComp
$Comp
L Speaker LS1
U 1 1 594F9381
P 8250 4050
F 0 "LS1" H 8300 4275 50  0000 R CNN
F 1 "AC-1201A" H 8300 4200 50  0000 R CNN
F 2 "" H 8250 3850 50  0001 C CNN
F 3 "" H 8240 4000 50  0001 C CNN
	1    8250 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 594F9453
P 7950 4200
F 0 "#PWR13" H 7950 3950 50  0001 C CNN
F 1 "GND" H 7950 4050 50  0000 C CNN
F 2 "" H 7950 4200 50  0001 C CNN
F 3 "" H 7950 4200 50  0001 C CNN
	1    7950 4200
	1    0    0    -1  
$EndComp
$Comp
L D D4
U 1 1 594F94A3
P 6900 2650
F 0 "D4" H 6900 2750 50  0000 C CNN
F 1 "1n4001" H 6900 2550 50  0000 C CNN
F 2 "" H 6900 2650 50  0001 C CNN
F 3 "" H 6900 2650 50  0001 C CNN
	1    6900 2650
	0    -1   -1   0   
$EndComp
$Comp
L D D3
U 1 1 594F958E
P 6600 2650
F 0 "D3" H 6600 2750 50  0000 C CNN
F 1 "1n4001" H 6600 2550 50  0000 C CNN
F 2 "" H 6600 2650 50  0001 C CNN
F 3 "" H 6600 2650 50  0001 C CNN
	1    6600 2650
	0    -1   -1   0   
$EndComp
$Comp
L D D2
U 1 1 594F95D3
P 6300 2650
F 0 "D2" H 6300 2750 50  0000 C CNN
F 1 "1n4001" H 6300 2550 50  0000 C CNN
F 2 "" H 6300 2650 50  0001 C CNN
F 3 "" H 6300 2650 50  0001 C CNN
	1    6300 2650
	0    1    1    0   
$EndComp
$Comp
L D D1
U 1 1 594F95FE
P 6000 2650
F 0 "D1" H 6000 2750 50  0000 C CNN
F 1 "1n4001" H 6000 2550 50  0000 C CNN
F 2 "" H 6000 2650 50  0001 C CNN
F 3 "" H 6000 2650 50  0001 C CNN
	1    6000 2650
	0    -1   -1   0   
$EndComp
$Comp
L CP C1
U 1 1 594F9781
P 6600 3050
F 0 "C1" H 6625 3150 50  0000 L CNN
F 1 "470u" H 6625 2950 50  0000 L CNN
F 2 "" H 6638 2900 50  0001 C CNN
F 3 "" H 6600 3050 50  0001 C CNN
	1    6600 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 594F9892
P 6600 3200
F 0 "#PWR8" H 6600 2950 50  0001 C CNN
F 1 "GND" H 6600 3050 50  0000 C CNN
F 2 "" H 6600 3200 50  0001 C CNN
F 3 "" H 6600 3200 50  0001 C CNN
	1    6600 3200
	1    0    0    -1  
$EndComp
$Comp
L CP C3
U 1 1 594F993C
P 7400 3050
F 0 "C3" H 7425 3150 50  0000 L CNN
F 1 "10u" H 7425 2950 50  0000 L CNN
F 2 "" H 7438 2900 50  0001 C CNN
F 3 "" H 7400 3050 50  0001 C CNN
	1    7400 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 594F9942
P 7400 3200
F 0 "#PWR12" H 7400 2950 50  0001 C CNN
F 1 "GND" H 7400 3050 50  0000 C CNN
F 2 "" H 7400 3200 50  0001 C CNN
F 3 "" H 7400 3200 50  0001 C CNN
	1    7400 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 594F9A77
P 6700 3800
F 0 "#PWR9" H 6700 3550 50  0001 C CNN
F 1 "GND" H 6700 3650 50  0000 C CNN
F 2 "" H 6700 3800 50  0001 C CNN
F 3 "" H 6700 3800 50  0001 C CNN
	1    6700 3800
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 594F9AC5
P 7350 3800
F 0 "C2" H 7375 3900 50  0000 L CNN
F 1 "47n" H 7375 3700 50  0000 L CNN
F 2 "" H 7388 3650 50  0001 C CNN
F 3 "" H 7350 3800 50  0001 C CNN
	1    7350 3800
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 594F9B41
P 7350 4150
F 0 "R4" V 7430 4150 50  0000 C CNN
F 1 "10" V 7350 4150 50  0000 C CNN
F 2 "" V 7280 4150 50  0001 C CNN
F 3 "" H 7350 4150 50  0001 C CNN
	1    7350 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 594F9BA2
P 7350 4350
F 0 "#PWR11" H 7350 4100 50  0001 C CNN
F 1 "GND" H 7350 4200 50  0000 C CNN
F 2 "" H 7350 4350 50  0001 C CNN
F 3 "" H 7350 4350 50  0001 C CNN
	1    7350 4350
	1    0    0    -1  
$EndComp
$Comp
L POT_TRIM RV1
U 1 1 594F9DC0
P 6400 3700
F 0 "RV1" V 6225 3700 50  0000 C CNN
F 1 "10k" V 6300 3700 50  0000 C CNN
F 2 "" H 6400 3700 50  0001 C CNN
F 3 "" H 6400 3700 50  0001 C CNN
	1    6400 3700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR6
U 1 1 594F9E15
P 6400 3900
F 0 "#PWR6" H 6400 3650 50  0001 C CNN
F 1 "GND" H 6400 3750 50  0000 C CNN
F 2 "" H 6400 3900 50  0001 C CNN
F 3 "" H 6400 3900 50  0001 C CNN
	1    6400 3900
	1    0    0    -1  
$EndComp
$Comp
L C 220n1
U 1 1 594F9FCD
P 5600 3700
F 0 "220n1" H 5625 3800 50  0000 L CNN
F 1 "C" H 5625 3600 50  0000 L CNN
F 2 "" H 5638 3550 50  0001 C CNN
F 3 "" H 5600 3700 50  0001 C CNN
	1    5600 3700
	0    1    1    0   
$EndComp
$Comp
L C 4n7
U 1 1 594FA04C
P 5300 3950
F 0 "4n7" H 5325 4050 50  0000 L CNN
F 1 "C" H 5325 3850 50  0000 L CNN
F 2 "" H 5338 3800 50  0001 C CNN
F 3 "" H 5300 3950 50  0001 C CNN
	1    5300 3950
	1    0    0    -1  
$EndComp
$Comp
L USB6B1 U1
U 1 1 594FAC97
P 4000 3600
F 0 "U1" H 3750 3800 50  0000 C CNN
F 1 "USB6B1" H 4175 3800 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3975 3300 50  0001 C CNN
F 3 "" H 4000 3600 50  0001 C CNN
	1    4000 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 594FADA0
P 3600 3950
F 0 "#PWR2" H 3600 3700 50  0001 C CNN
F 1 "GND" H 3600 3800 50  0000 C CNN
F 2 "" H 3600 3950 50  0001 C CNN
F 3 "" H 3600 3950 50  0001 C CNN
	1    3600 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 594FADD4
P 4400 3900
F 0 "#PWR3" H 4400 3650 50  0001 C CNN
F 1 "GND" H 4400 3750 50  0000 C CNN
F 2 "" H 4400 3900 50  0001 C CNN
F 3 "" H 4400 3900 50  0001 C CNN
	1    4400 3900
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 594FB4BD
P 4500 3350
F 0 "R1" V 4580 3350 50  0000 C CNN
F 1 "10k" V 4500 3350 50  0000 C CNN
F 2 "" V 4430 3350 50  0001 C CNN
F 3 "" H 4500 3350 50  0001 C CNN
	1    4500 3350
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 594FB560
P 5050 3700
F 0 "R3" V 5130 3700 50  0000 C CNN
F 1 "3k3" V 5050 3700 50  0000 C CNN
F 2 "" V 4980 3700 50  0001 C CNN
F 3 "" H 5050 3700 50  0001 C CNN
	1    5050 3700
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 594FB5EF
P 4700 3350
F 0 "R2" V 4780 3350 50  0000 C CNN
F 1 "3k3" V 4700 3350 50  0000 C CNN
F 2 "" V 4630 3350 50  0001 C CNN
F 3 "" H 4700 3350 50  0001 C CNN
	1    4700 3350
	1    0    0    -1  
$EndComp
$Comp
L +5VD #PWR1
U 1 1 594FC464
P 3550 3400
F 0 "#PWR1" H 3550 3250 50  0001 C CNN
F 1 "+5VD" H 3550 3540 50  0000 C CNN
F 2 "" H 3550 3400 50  0001 C CNN
F 3 "" H 3550 3400 50  0001 C CNN
	1    3550 3400
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW3
U 1 1 594FC5D2
P 7600 5100
F 0 "SW3" H 7650 5200 50  0000 L CNN
F 1 "SW_Push" H 7600 5040 50  0000 C CNN
F 2 "" H 7600 5300 50  0001 C CNN
F 3 "" H 7600 5300 50  0001 C CNN
	1    7600 5100
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW2
U 1 1 594FC6D0
P 7200 5100
F 0 "SW2" H 7250 5200 50  0000 L CNN
F 1 "SW_Push" H 7200 5040 50  0000 C CNN
F 2 "" H 7200 5300 50  0001 C CNN
F 3 "" H 7200 5300 50  0001 C CNN
	1    7200 5100
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW1
U 1 1 594FC72A
P 6700 5100
F 0 "SW1" H 6750 5200 50  0000 L CNN
F 1 "SW_Push" H 6700 5040 50  0000 C CNN
F 2 "" H 6700 5300 50  0001 C CNN
F 3 "" H 6700 5300 50  0001 C CNN
	1    6700 5100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR7
U 1 1 594FCA8E
P 6500 5450
F 0 "#PWR7" H 6500 5200 50  0001 C CNN
F 1 "GND" H 6500 5300 50  0000 C CNN
F 2 "" H 6500 5450 50  0001 C CNN
F 3 "" H 6500 5450 50  0001 C CNN
	1    6500 5450
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 594FCB2B
P 6450 4750
F 0 "R5" V 6530 4750 50  0000 C CNN
F 1 "1k5" V 6450 4750 50  0000 C CNN
F 2 "" V 6380 4750 50  0001 C CNN
F 3 "" H 6450 4750 50  0001 C CNN
	1    6450 4750
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 594FCB96
P 6950 4750
F 0 "R6" V 7030 4750 50  0000 C CNN
F 1 "1k5" V 6950 4750 50  0000 C CNN
F 2 "" V 6880 4750 50  0001 C CNN
F 3 "" H 6950 4750 50  0001 C CNN
	1    6950 4750
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 594FCC33
P 7450 4750
F 0 "R7" V 7530 4750 50  0000 C CNN
F 1 "1k5" V 7450 4750 50  0000 C CNN
F 2 "" V 7380 4750 50  0001 C CNN
F 3 "" H 7450 4750 50  0001 C CNN
	1    7450 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3600 8600 3600
Wire Wire Line
	7800 4050 8050 4050
Wire Wire Line
	7800 4050 7800 3750
Wire Wire Line
	7800 3750 8450 3750
Wire Wire Line
	8450 3700 8600 3700
Wire Wire Line
	7950 4200 7950 4150
Wire Wire Line
	7950 4150 8050 4150
Wire Wire Line
	8600 4150 8600 4100
Wire Wire Line
	7300 3600 7550 3600
Wire Wire Line
	6900 2500 6600 2500
Wire Wire Line
	6600 2800 6300 2800
Wire Wire Line
	6000 2500 6300 2500
Wire Wire Line
	6900 2800 6900 3300
Wire Wire Line
	6600 2900 6900 2900
Connection ~ 6900 2900
Wire Wire Line
	7000 3300 7000 2900
Wire Wire Line
	7000 2900 7400 2900
Wire Wire Line
	6700 3800 6700 3700
Wire Wire Line
	6900 3900 6900 3950
Wire Wire Line
	7350 3950 7350 4000
Wire Wire Line
	7350 4300 7350 4350
Wire Wire Line
	7350 3600 7350 3650
Connection ~ 7350 3600
Wire Wire Line
	6400 3500 6700 3500
Wire Wire Line
	6400 3500 6400 3550
Wire Wire Line
	6400 3850 6400 3900
Wire Wire Line
	8450 3750 8450 3700
Wire Wire Line
	4300 3700 4900 3700
Wire Wire Line
	3550 3400 3550 3500
Wire Wire Line
	3550 3500 3600 3500
Wire Wire Line
	3700 3600 3700 3800
Wire Wire Line
	3700 3800 3600 3800
Wire Wire Line
	3600 3800 3600 3950
Wire Wire Line
	4400 3800 4400 3900
Wire Wire Line
	4400 3500 4500 3500
Wire Wire Line
	4400 3600 4700 3600
Wire Wire Line
	4700 3600 4700 3500
Wire Wire Line
	4500 3200 4500 3150
Wire Wire Line
	4700 3150 4700 3200
Wire Wire Line
	7600 5350 7600 5300
Wire Wire Line
	7200 5350 7200 5300
Wire Wire Line
	6700 5350 6700 5300
Connection ~ 7200 5350
Connection ~ 6700 5350
Wire Wire Line
	7600 4900 7600 4750
Wire Wire Line
	6700 4900 6700 4750
Wire Wire Line
	6800 4750 6600 4750
Connection ~ 6700 4750
Wire Wire Line
	7100 4750 7300 4750
Wire Wire Line
	7200 4900 7200 4750
Connection ~ 7200 4750
Connection ~ 4700 3150
Wire Wire Line
	4850 4750 6300 4750
Wire Wire Line
	6500 5350 7600 5350
Wire Wire Line
	6500 5350 6500 5450
$Comp
L GND #PWR5
U 1 1 594FF98A
P 5300 4200
F 0 "#PWR5" H 5300 3950 50  0001 C CNN
F 1 "GND" H 5300 4050 50  0000 C CNN
F 2 "" H 5300 4200 50  0001 C CNN
F 3 "" H 5300 4200 50  0001 C CNN
	1    5300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4100 5300 4200
Wire Wire Line
	5200 3700 5450 3700
Wire Wire Line
	5750 3700 6250 3700
Wire Wire Line
	5300 3800 5300 3700
Connection ~ 5300 3700
Wire Wire Line
	4500 3150 4850 3150
Wire Wire Line
	4850 3150 4850 4750
$Comp
L CONN_01X01 J1
U 1 1 59500561
P 3200 3600
F 0 "J1" H 3200 3700 50  0000 C CNN
F 1 "P1[5]" V 3300 3600 50  0000 C CNN
F 2 "" H 3200 3600 50  0001 C CNN
F 3 "" H 3200 3600 50  0001 C CNN
	1    3200 3600
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 J2
U 1 1 595005E2
P 3200 3900
F 0 "J2" H 3200 4000 50  0000 C CNN
F 1 "P1[4]" V 3300 3900 50  0000 C CNN
F 2 "" H 3200 3900 50  0001 C CNN
F 3 "" H 3200 3900 50  0001 C CNN
	1    3200 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 3600 3600 3600
Wire Wire Line
	3600 3700 3400 3700
Wire Wire Line
	3400 3700 3400 3900
$Comp
L +12V #PWR4
U 1 1 59500AD7
P 4850 2800
F 0 "#PWR4" H 4850 2650 50  0001 C CNN
F 1 "+12V" H 4850 2940 50  0000 C CNN
F 2 "" H 4850 2800 50  0001 C CNN
F 3 "" H 4850 2800 50  0001 C CNN
	1    4850 2800
	1    0    0    -1  
$EndComp
Wire Notes Line
	5800 5700 5800 2300
Text Notes 3150 2250 0    98   ~ 0
Omnia board
Text Notes 6000 2250 0    98   ~ 0
Add-on board
Wire Wire Line
	4850 2800 6000 2800
Text Notes 8150 3100 0    98   ~ 0
sidetone
Text Notes 6900 5650 0    98   ~ 0
keyer buttons
Text Notes 2850 3450 0    59   ~ 0
boot\npin header
Text Notes 2850 4250 0    59   ~ 0
programming\nheader
Text Notes 3700 3150 0    59   ~ 0
ESD protection
$EndSCHEMATC