# A-very-nice-thermometer
A decorative thermometer based on the LM95071. This project emerged from my very first self-training on KiCAD :sunglasses:


This project consists of a decorative piece which its only purpose is to display the current temperature of your room...and nothing else :stuck_out_tongue_winking_eye: . **See images below!**

It uses an Arduino Pro Micro Leonardo and the TI LM95071 as the temperature probe; a digital SPI sensor for which I developed a [library](https://github.com/dzalf/LM95071_Temperature_Sensor). The display is a (cute) [DL430M](https://www.electronicaembajadores.com/en/Productos/Detalle/SMDL430M/semiconductors/led-diodes/dl430m-numeric-red-display-3-digits).

The PCB files were drawn in kiCAD and the schematics for the main board and daughter board are included.

**Brief description**
The uploaded firmware drives a CD4511, a BCD to 7 segment decoder/driver. The cathodes from the display are sequentially switched and driven using BC850 SMD transistors. The intensity of the display is controlled through a PWM signal adjusted by a tiny preset onboard.

**Notes**
Please keep in mind that this is the first revision of this project. 

It has been fully tested and during this stage minor issues were found on the wiring of the display driver and the regulator section. Please read the issues/disclaimer [file](https://github.com/dzalf/A-very-nice-thermometer/blob/master/Issues.md)

Cheers :beer:

dzalf :sunglasses:

**#TODO**

1. Debug the PCB designs
2. Review the power managment block from the PCB
3. Design the board with an standalone Arduino
4. Then it could be miniaturised
5. When ready I will sell this as a kit complete populated  on Tindie!


![alt text](https://github.com/dzalf/A-very-nice-thermometer/blob/master/cuteThermometer/pic1.jpg)
![alt text](https://github.com/dzalf/A-very-nice-thermometer/blob/master/cuteThermometer/view1.png)
![alt text](https://github.com/dzalf/A-very-nice-thermometer/blob/master/cuteThermometer/view2.png)
![alt text](https://github.com/dzalf/A-very-nice-thermometer/blob/master/cuteThermometer/DaughterBoard/daughterDisplay/view1.png)
![alt text](https://github.com/dzalf/A-very-nice-thermometer/blob/master/cuteThermometer/DaughterBoard/daughterDisplay/view2.png)
