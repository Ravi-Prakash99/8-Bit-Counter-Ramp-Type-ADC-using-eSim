EESchema Schematic File Version 2
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:eSim_SKY130
LIBS:eSim_SKY130_Subckts
LIBS:rropamp31
LIBS:RAVI_ADC-cache
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
L ravi_counter U5
U 1 1 633EFE8A
P 3000 950
F 0 "U5" H 5850 2750 60  0000 C CNN
F 1 "ravi_counter" H 5850 2950 60  0000 C CNN
F 2 "" H 5850 2900 60  0000 C CNN
F 3 "" H 5850 2900 60  0000 C CNN
	1    3000 950 
	1    0    0    1   
$EndComp
$Comp
L ravi_an U1
U 1 1 633EFF9C
P 1300 4400
F 0 "U1" H 4150 6200 60  0000 C CNN
F 1 "ravi_an" H 4150 6400 60  0000 C CNN
F 2 "" H 4150 6350 60  0000 C CNN
F 3 "" H 4150 6350 60  0000 C CNN
	1    1300 4400
	1    0    0    -1  
$EndComp
$Comp
L avsddac_3v3_sky130_v2 X2
U 1 1 633F001D
P 9100 4200
F 0 "X2" H 9100 4200 60  0000 C CNN
F 1 "avsddac_3v3_sky130_v2" H 9100 4100 60  0000 C CNN
F 2 "" H 9100 4200 60  0001 C CNN
F 3 "" H 9100 4200 60  0001 C CNN
	1    9100 4200
	0    1    1    0   
$EndComp
$Comp
L dac_bridge_8 U9
U 1 1 633F22A5
P 7700 2200
F 0 "U9" H 7700 2200 60  0000 C CNN
F 1 "dac_bridge_8" H 7700 2350 60  0000 C CNN
F 2 "" H 7700 2200 60  0000 C CNN
F 3 "" H 7700 2200 60  0000 C CNN
	1    7700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2150 7100 2150
Wire Wire Line
	6550 2250 7100 2250
Wire Wire Line
	6550 2350 7100 2350
Wire Wire Line
	6550 2450 7100 2450
Wire Wire Line
	6550 2550 7100 2550
Wire Wire Line
	6550 2650 7100 2650
Wire Wire Line
	6550 2750 7100 2750
Wire Wire Line
	6550 2850 7100 2850
Wire Wire Line
	8250 2850 10650 2850
Wire Wire Line
	8400 2850 8400 3300
Wire Wire Line
	8250 2750 10200 2750
Wire Wire Line
	8550 2750 8550 3300
Wire Wire Line
	8250 2650 9900 2650
Wire Wire Line
	8700 2650 8700 3300
Wire Wire Line
	8250 2550 8850 2550
Wire Wire Line
	8850 2550 8850 3300
Wire Wire Line
	8250 2450 9000 2450
Wire Wire Line
	9000 2450 9000 3300
Wire Wire Line
	8250 2350 9150 2350
Wire Wire Line
	9150 2350 9150 3300
Wire Wire Line
	8250 2250 9300 2250
Wire Wire Line
	9300 2250 9300 3300
Wire Wire Line
	8250 2150 9450 2150
Wire Wire Line
	9450 2150 9450 3300
$Comp
L eSim_GND #PWR01
U 1 1 633F309E
P 10200 2900
F 0 "#PWR01" H 10200 2650 50  0001 C CNN
F 1 "eSim_GND" H 10200 2750 50  0000 C CNN
F 2 "" H 10200 2900 50  0001 C CNN
F 3 "" H 10200 2900 50  0001 C CNN
	1    10200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3300 9600 2900
Wire Wire Line
	9600 2900 10200 2900
$Comp
L DC v5
U 1 1 633F386E
P 10700 4150
F 0 "v5" H 10500 4250 60  0000 C CNN
F 1 "DC" H 10500 4100 60  0000 C CNN
F 2 "R1" H 10400 4150 60  0000 C CNN
F 3 "" H 10700 4150 60  0000 C CNN
	1    10700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 3700 10000 3700
Wire Wire Line
	10000 4200 10000 3850
Wire Wire Line
	10000 3850 10200 3850
Wire Wire Line
	10200 3850 10200 3700
Connection ~ 10200 3700
$Comp
L eSim_GND #PWR02
U 1 1 633F392A
P 10700 4950
F 0 "#PWR02" H 10700 4700 50  0001 C CNN
F 1 "eSim_GND" H 10700 4800 50  0000 C CNN
F 2 "" H 10700 4950 50  0001 C CNN
F 3 "" H 10700 4950 50  0001 C CNN
	1    10700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 4600 10700 4950
Wire Wire Line
	10000 4600 10450 4600
Wire Wire Line
	10450 4600 10450 4800
Wire Wire Line
	10450 4800 10700 4800
Connection ~ 10700 4800
$Comp
L eSim_GND #PWR03
U 1 1 633F39A7
P 8100 4350
F 0 "#PWR03" H 8100 4100 50  0001 C CNN
F 1 "eSim_GND" H 8100 4200 50  0000 C CNN
F 2 "" H 8100 4350 50  0001 C CNN
F 3 "" H 8100 4350 50  0001 C CNN
	1    8100 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4200 8100 4350
Connection ~ 9750 2900
Wire Wire Line
	4850 2850 5150 2850
$Comp
L adc_bridge_1 U4
U 1 1 633F6490
P 2850 2200
F 0 "U4" H 2850 2200 60  0000 C CNN
F 1 "adc_bridge_1" H 2850 2350 60  0000 C CNN
F 2 "" H 2850 2200 60  0000 C CNN
F 3 "" H 2850 2200 60  0000 C CNN
	1    2850 2200
	1    0    0    -1  
$EndComp
$Comp
L DC v1
U 1 1 633F65A2
P 1250 3350
F 0 "v1" H 1050 3450 60  0000 C CNN
F 1 "DC" H 1050 3300 60  0000 C CNN
F 2 "R1" H 950 3350 60  0000 C CNN
F 3 "" H 1250 3350 60  0000 C CNN
	1    1250 3350
	0    -1   -1   0   
$EndComp
$Comp
L eSim_GND #PWR04
U 1 1 633F666A
P 2000 3300
F 0 "#PWR04" H 2000 3050 50  0001 C CNN
F 1 "eSim_GND" H 2000 3150 50  0000 C CNN
F 2 "" H 2000 3300 50  0001 C CNN
F 3 "" H 2000 3300 50  0001 C CNN
	1    2000 3300
	1    0    0    -1  
$EndComp
$Comp
L DC v2
U 1 1 633F6992
P 1800 1050
F 0 "v2" H 1600 1150 60  0000 C CNN
F 1 "DC" H 1600 1000 60  0000 C CNN
F 2 "R1" H 1500 1050 60  0000 C CNN
F 3 "" H 1800 1050 60  0000 C CNN
	1    1800 1050
	0    -1   -1   0   
$EndComp
$Comp
L eSim_GND #PWR05
U 1 1 633F6A39
P 2550 1050
F 0 "#PWR05" H 2550 800 50  0001 C CNN
F 1 "eSim_GND" H 2550 900 50  0000 C CNN
F 2 "" H 2550 1050 50  0001 C CNN
F 3 "" H 2550 1050 50  0001 C CNN
	1    2550 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1050 2550 1050
$Comp
L pulse v3
U 1 1 633F6C1D
P 3500 4000
F 0 "v3" H 3300 4100 60  0000 C CNN
F 1 "pulse" H 3300 3950 60  0000 C CNN
F 2 "R1" H 3200 4000 60  0000 C CNN
F 3 "" H 3500 4000 60  0000 C CNN
	1    3500 4000
	0    -1   -1   0   
$EndComp
$Comp
L adc_bridge_1 U6
U 1 1 633F6C91
P 3100 3150
F 0 "U6" H 3100 3150 60  0000 C CNN
F 1 "adc_bridge_1" H 3100 3300 60  0000 C CNN
F 2 "" H 3100 3150 60  0000 C CNN
F 3 "" H 3100 3150 60  0000 C CNN
	1    3100 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 2600 3450 2600
Wire Wire Line
	600  5500 9100 5500
Wire Wire Line
	9100 5500 9100 4950
Wire Wire Line
	3050 3750 3050 4000
$Comp
L eSim_GND #PWR06
U 1 1 633F7E9F
P 4350 4000
F 0 "#PWR06" H 4350 3750 50  0001 C CNN
F 1 "eSim_GND" H 4350 3850 50  0000 C CNN
F 2 "" H 4350 4000 50  0001 C CNN
F 3 "" H 4350 4000 50  0001 C CNN
	1    4350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4000 4350 4000
$Comp
L plot_v1 U7
U 1 1 633F90F7
P 5100 5050
F 0 "U7" H 5100 5550 60  0000 C CNN
F 1 "plot_v1" H 5300 5400 60  0000 C CNN
F 2 "" H 5100 5050 60  0000 C CNN
F 3 "" H 5100 5050 60  0000 C CNN
	1    5100 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4850 5100 5500
Connection ~ 5100 5500
Text GLabel 5350 5000 2    60   Output ~ 0
dac_out
Wire Wire Line
	5350 5000 5100 5000
Connection ~ 5100 5000
$Comp
L SKY130mode scmode1
U 1 1 633FD75A
P 1600 4650
F 0 "scmode1" H 1600 4800 98  0000 C CNB
F 1 "SKY130mode" H 1600 4550 118 0000 C CNB
F 2 "" H 1600 4800 60  0001 C CNN
F 3 "" H 1600 4800 60  0001 C CNN
	1    1600 4650
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U3
U 1 1 633FFA24
P 2600 4000
F 0 "U3" H 2600 4500 60  0000 C CNN
F 1 "plot_v1" H 2800 4350 60  0000 C CNN
F 2 "" H 2600 4000 60  0000 C CNN
F 3 "" H 2600 4000 60  0000 C CNN
	1    2600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3800 3050 3800
Connection ~ 3050 3800
Text GLabel 2750 4000 3    60   Input ~ 0
clk
Wire Wire Line
	2750 3800 2750 4000
Connection ~ 2750 3800
$Comp
L plot_v1 U2
U 1 1 634038AB
P 2150 2150
F 0 "U2" H 2150 2650 60  0000 C CNN
F 1 "plot_v1" H 2350 2500 60  0000 C CNN
F 2 "" H 2150 2150 60  0000 C CNN
F 3 "" H 2150 2150 60  0000 C CNN
	1    2150 2150
	1    0    0    -1  
$EndComp
Text GLabel 2000 2100 0    60   Input ~ 0
comp_out1
Wire Wire Line
	2000 2100 2150 2100
Connection ~ 2150 2100
Wire Wire Line
	2250 2150 2250 2200
Wire Wire Line
	2150 2200 2400 2200
Wire Wire Line
	2150 1950 2150 2200
Connection ~ 2250 2200
Wire Wire Line
	1200 1650 1350 1650
Connection ~ 1350 1650
Wire Wire Line
	1350 1650 1350 1050
Wire Wire Line
	3400 2500 3450 2500
Wire Wire Line
	1700 3300 2000 3300
Wire Wire Line
	1700 3300 1700 3350
Connection ~ 1850 3300
Wire Wire Line
	600  2500 600  5500
$Comp
L rropamp31 X1
U 1 1 633FD158
P 1850 2750
F 0 "X1" H 1850 2700 60  0000 C CNN
F 1 "rropamp31" H 1850 2850 60  0000 C CNN
F 2 "" H 1850 2750 60  0001 C CNN
F 3 "" H 1850 2750 60  0001 C CNN
	1    1850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3250 1850 3300
Wire Wire Line
	600  2500 1100 2500
Wire Wire Line
	1100 2950 800  2950
Wire Wire Line
	800  2950 800  3350
Wire Wire Line
	1200 1650 1200 2200
Wire Wire Line
	1200 2200 1850 2200
Wire Wire Line
	2650 2700 2650 2300
Wire Wire Line
	2650 2300 2400 2300
Wire Wire Line
	2400 2300 2400 2200
Wire Wire Line
	5150 2150 5150 2750
Wire Wire Line
	5300 2150 5150 2150
Wire Wire Line
	3400 2150 3400 2500
Wire Wire Line
	5300 1250 5300 2150
Wire Wire Line
	9750 1250 9750 3300
Wire Wire Line
	4850 2500 4850 2850
$Comp
L pulse v4
U 1 1 63403766
P 8150 1250
F 0 "v4" H 7950 1350 60  0000 C CNN
F 1 "pulse" H 7950 1200 60  0000 C CNN
F 2 "R1" H 7850 1250 60  0000 C CNN
F 3 "" H 8150 1250 60  0000 C CNN
	1    8150 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 1250 5900 1250
$Comp
L plot_v1 U8
U 1 1 63404392
P 7450 1200
F 0 "U8" H 7450 1700 60  0000 C CNN
F 1 "plot_v1" H 7650 1550 60  0000 C CNN
F 2 "" H 7450 1200 60  0000 C CNN
F 3 "" H 7450 1200 60  0000 C CNN
	1    7450 1200
	1    0    0    -1  
$EndComp
Text GLabel 7450 1500 3    60   Input ~ 0
reset
$Comp
L adc_bridge_1 U10
U 1 1 63408687
P 6450 1200
F 0 "U10" H 6450 1200 60  0000 C CNN
F 1 "adc_bridge_1" H 6450 1350 60  0000 C CNN
F 2 "" H 6450 1200 60  0000 C CNN
F 3 "" H 6450 1200 60  0000 C CNN
	1    6450 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8600 1250 9750 1250
Wire Wire Line
	7050 1250 7700 1250
Wire Wire Line
	7450 1000 7450 1500
Connection ~ 7450 1250
$Comp
L plot_v1 U15
U 1 1 634272B1
P 9400 2200
F 0 "U15" H 9400 2700 60  0000 C CNN
F 1 "plot_v1" H 9600 2550 60  0000 C CNN
F 2 "" H 9400 2200 60  0000 C CNN
F 3 "" H 9400 2200 60  0000 C CNN
	1    9400 2200
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U14
U 1 1 634282F8
P 9150 2200
F 0 "U14" H 9150 2700 60  0000 C CNN
F 1 "plot_v1" H 9350 2550 60  0000 C CNN
F 2 "" H 9150 2200 60  0000 C CNN
F 3 "" H 9150 2200 60  0000 C CNN
	1    9150 2200
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U13
U 1 1 63428371
P 8900 2200
F 0 "U13" H 8900 2700 60  0000 C CNN
F 1 "plot_v1" H 9100 2550 60  0000 C CNN
F 2 "" H 8900 2200 60  0000 C CNN
F 3 "" H 8900 2200 60  0000 C CNN
	1    8900 2200
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U12
U 1 1 634283F8
P 8650 2200
F 0 "U12" H 8650 2700 60  0000 C CNN
F 1 "plot_v1" H 8850 2550 60  0000 C CNN
F 2 "" H 8650 2200 60  0000 C CNN
F 3 "" H 8650 2200 60  0000 C CNN
	1    8650 2200
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U11
U 1 1 6342845F
P 8350 2200
F 0 "U11" H 8350 2700 60  0000 C CNN
F 1 "plot_v1" H 8550 2550 60  0000 C CNN
F 2 "" H 8350 2200 60  0000 C CNN
F 3 "" H 8350 2200 60  0000 C CNN
	1    8350 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2000 9400 2150
Connection ~ 9400 2150
Wire Wire Line
	9150 2000 9150 2250
Connection ~ 9150 2250
Wire Wire Line
	8900 2000 8900 2350
Connection ~ 8900 2350
Wire Wire Line
	8650 2000 8650 2450
Connection ~ 8650 2450
Wire Wire Line
	8350 2000 8350 2550
Connection ~ 8350 2550
$Comp
L plot_v1 U16
U 1 1 634287B2
P 9900 2750
F 0 "U16" H 9900 3250 60  0000 C CNN
F 1 "plot_v1" H 10100 3100 60  0000 C CNN
F 2 "" H 9900 2750 60  0000 C CNN
F 3 "" H 9900 2750 60  0000 C CNN
	1    9900 2750
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U17
U 1 1 63428833
P 10200 2850
F 0 "U17" H 10200 3350 60  0000 C CNN
F 1 "plot_v1" H 10400 3200 60  0000 C CNN
F 2 "" H 10200 2850 60  0000 C CNN
F 3 "" H 10200 2850 60  0000 C CNN
	1    10200 2850
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U18
U 1 1 634288BE
P 10650 2950
F 0 "U18" H 10650 3450 60  0000 C CNN
F 1 "plot_v1" H 10850 3300 60  0000 C CNN
F 2 "" H 10650 2950 60  0000 C CNN
F 3 "" H 10650 2950 60  0000 C CNN
	1    10650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2650 9900 2550
Connection ~ 8700 2650
Wire Wire Line
	10200 2750 10200 2650
Connection ~ 8550 2750
Wire Wire Line
	10650 2850 10650 2750
Connection ~ 8400 2850
Text GLabel 9450 2150 2    60   Output ~ 0
out0
Text GLabel 9300 2300 2    60   Output ~ 0
out1
Text GLabel 9150 2400 2    60   Output ~ 0
out2
Text GLabel 9000 2500 2    60   Output ~ 0
out3
Text GLabel 8850 2550 2    60   Output ~ 0
out4
Text GLabel 9900 2600 2    60   Output ~ 0
out5
Text GLabel 10200 2700 2    60   Output ~ 0
out6
Text GLabel 10650 2800 2    60   Output ~ 0
out7
$EndSCHEMATC
