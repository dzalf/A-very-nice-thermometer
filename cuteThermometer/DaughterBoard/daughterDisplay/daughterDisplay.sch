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
L Connector_Generic:Conn_02x06_Counter_Clockwise J1
U 1 1 5C0A7917
P 5800 4950
F 0 "J1" H 5850 5367 50  0000 C CNN
F 1 "Conn_02x06_Counter_Clockwise" H 5850 5276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 5800 4950 50  0001 C CNN
F 3 "~" H 5800 4950 50  0001 C CNN
	1    5800 4950
	1    0    0    -1  
$EndComp
$Comp
L Atomic_Mechanics_Library:DL-430M DIS1
U 1 1 5C0A7A13
P 5850 3700
F 0 "DIS1" V 5335 3700 50  0000 C CNN
F 1 "DL-430M" V 5426 3700 50  0000 C CNN
F 2 "Package_DIP:DIP-12_W7.62mm_Socket_LongPads" H 6000 3600 50  0001 C CNN
F 3 "" H 6000 3600 50  0001 C CNN
	1    5850 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 4750 4850 3450
Wire Wire Line
	4850 3450 5400 3450
Wire Wire Line
	5600 4750 4850 4750
Wire Wire Line
	5600 4850 4900 4850
Wire Wire Line
	4900 4850 4900 3550
Wire Wire Line
	4900 3550 5400 3550
Wire Wire Line
	5600 4950 4950 4950
Wire Wire Line
	4950 4950 4950 3650
Wire Wire Line
	4950 3650 5400 3650
Wire Wire Line
	5600 5050 5000 5050
Wire Wire Line
	5000 5050 5000 3750
Wire Wire Line
	5000 3750 5400 3750
Wire Wire Line
	5050 5150 5050 3850
Wire Wire Line
	5050 3850 5400 3850
Wire Wire Line
	5600 5250 5100 5250
Wire Wire Line
	5050 5150 5600 5150
Wire Wire Line
	5100 5250 5100 3950
Wire Wire Line
	5100 3950 5400 3950
Wire Wire Line
	6100 5250 6600 5250
Wire Wire Line
	6600 5250 6600 3950
Wire Wire Line
	6600 3950 6300 3950
Wire Wire Line
	6100 5150 6650 5150
Wire Wire Line
	6650 5150 6650 3850
Wire Wire Line
	6650 3850 6300 3850
Wire Wire Line
	6100 5050 6700 5050
Wire Wire Line
	6700 5050 6700 3750
Wire Wire Line
	6700 3750 6300 3750
Wire Wire Line
	6100 4950 6750 4950
Wire Wire Line
	6750 4950 6750 3650
Wire Wire Line
	6750 3650 6300 3650
Wire Wire Line
	6100 4850 6800 4850
Wire Wire Line
	6800 4850 6800 3550
Wire Wire Line
	6800 3550 6300 3550
NoConn ~ 6100 4750
$EndSCHEMATC
