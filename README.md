# A-very-nice-thermometer
A decorative thermometer based on the LM95071


This project consists of a decorative piece which its only purpose is to display the current temperature of your room...and nothing else :stuck_out_tongue_winking_eye: . **See images below!**

It uses an Arduino Pro Micro Leonardo and the TI LM95071 as the temperature probe; a digital SPI sensor for which I developed a [library](https://github.com/dzalf/LM95071_Temperature_Sensor). The display is a (cute) DL430M.

The PCB files were drawn in kiCAD and the schematics for the main board and daughter board are included.

The uploaded firmware drives a CD4511, a BCD to 7 segment decoder/driver. The cathodes from the display are sequentially switched and driven using BC850 SMD transistors.

This is the first revision of this project. It has been tested and during this stage a minor issue was found on the wiring of the display driver. The intensity of the display is controlled through a PWM signal adjusted by a tiny preset onboard

Cheers :beer:

dzalf :sunglasses:

**#TODO**

1. Debug the PCB designs
2. Review the power managment block from the PCB
3. Design the board with an standalone Arduino
4. Then it could be miniaturised
5. When ready I will sell this complete populated kits on Tindie!


![alt text](https://github.com/dzalf/A-very-nice-thermometer/blob/master/cuteThermometer/pic1.jpg)
![alt text](https://github.com/dzalf/A-very-nice-thermometer/blob/master/cuteThermometer/view1.png)
![alt text](https://github.com/dzalf/A-very-nice-thermometer/blob/master/cuteThermometer/view2.png)
![alt text](https://github.com/dzalf/A-very-nice-thermometer/blob/master/cuteThermometer/DaughterBoard/daughterDisplay/view1.png)
![alt text](https://github.com/dzalf/A-very-nice-thermometer/blob/master/cuteThermometer/DaughterBoard/daughterDisplay/view2.png)
