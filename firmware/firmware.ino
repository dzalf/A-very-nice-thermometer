#include <LM95071.h>

#define DEBUGGING DEBUG_OFF

// Variables declaration
float temperature;
float acumulator;
byte intensity;
int num[3] = {0, 0, 0};

// Pinout declaration
const int SSP = 17;
const int dimPin = 10;
const int potDim = A3;
const int samples = 50;
int outputs[4] = {6, 7, 8, 9}; // A,B,C,D inputs from the CD4511 driver
int cathodes[3] = {A2, A1, A0};

// States declaration
byte cathodeOn[3][3] = {{HIGH, LOW, LOW}, {LOW, HIGH, LOW}, {LOW, LOW, HIGH}};

//BCD code
byte BCD[10][4] = {
  {0, 0, 0, 0},
  {1, 0, 0, 0},
  {0, 1, 0, 0},
  {1, 1, 0, 0},
  {0, 0, 1, 0},
  {1, 0, 1, 0},
  {0, 1, 1, 0},
  {1, 1, 1, 0},
  {0, 0, 0, 1},
  {1, 0, 0, 1},
};

LM95071 SPI_Sensor(SSP, DEBUGGING); // Instantiation of LM95071 Sensor...DEBUGGING is off by default

void setup() {

  if (DEBUGGING == DEBUG_ON) Serial.begin(115200);

  initializeDisplayDecoder();

  pinMode(dimPin, OUTPUT);
  pinMode(potDim, INPUT);

  acumulator = 0.0;

  SPI_Sensor.begin();

}

void loop() {

  intensity =  map(analogRead(potDim), 10, 1010, 80, 255); // With this we are sure that the brightness is adequate

  analogWrite(dimPin, intensity);

  for (int i = 0; i < samples; i++) {
    acumulator +=  SPI_Sensor.getTemperature();
  }

  temperature = acumulator / samples; // To obtain a smoother response

  displayTemperature(temperature);

  acumulator = 0.0;
 
}

void initializeDisplayDecoder(void) {

  for (int i = 0; i < 4; i++) {
    pinMode(outputs[i], OUTPUT);
  }

  for (int i = 0; i < 3; i++) {
    pinMode(cathodes[i], OUTPUT);
  }

  for (int anode = 0; anode < 4; anode++) {
    digitalWrite(outputs[anode], BCD[0][anode]);
  }

  for (int index = 0; index < 4; index++) {
    digitalWrite(cathodes[index], LOW);
  }

}

// This is where the magic happens!

void displayTemperature(float temp) {
  
  // The value of the temperature is segmented in units, tens and tenths
  num[0] =  (unsigned int)(temp * 10)  % 10;
  num[1] = ((unsigned int)(temp * 10 / 10)) % 10;
  num[2] = ((unsigned int)(temp * 10 / 100)) % 10;
  
  // The cathodes are driven according to the BCD code and the result from the previous modulo values
  
  for (int numIndex = 0; numIndex < 3; numIndex++) {
    for (int catIndex = 0; catIndex < 3; catIndex++) {
      digitalWrite(cathodes[catIndex], cathodeOn[numIndex][catIndex]);
    }
    for (int anode = 0; anode < 4; anode++) {
      digitalWrite(outputs[anode], BCD[num[numIndex]][anode]);
    }
    delay(5);
  }

}
