Here I describe the issues from this first revision

1. Pin 5 from the CD4511 was mistakenly (by me :unamused:) left without connection. 
This is an enable pin (RBI) that **MUST** be tied to GND in order to activate the segments. For now the solution is to use a little
jumper to connect is to the nearest GND plane.

2. The thermal mass released by the voltage regulator dangerously reached the tempearture sensor affecting the temp readings ( :cry: ). 

Brainstorm:

a. Ignore this linear power supply and power up the board using the USB from the arduino USB

b. Rellocate the power supply to be far away from the sensor.
   
   b.2 Change the position of the sensor to be mounted on the daughter board
    
c. **Disclaimer**: This is NOT  a fault rather a technical detail from the Arduino board. The SS pin for the SPI communication is taken by the Tx pin of the Pro Micro. 

The solution was to include a testpoint pin labelled as CS on the board which should be connected to the anode pad from the Tx LED (you will require a nice magnifying glass :mag: or ideally a microscope, plenty of flux and a lot of patience to do this)

    .
    .
    .

 more to be found (hopefully not)
 
 
 dzalf
