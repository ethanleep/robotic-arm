#include <Wire.h>
int32_t bigNum = 12345678;
void setup() {
  // put your setup code here, to run once:
Wire.begin();
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
byte myArray[4];

myArray[0] = (bigNum >> 24) & 0xFF;
myArray[1] = (bigNum >> 16) & 0xFF;
myArray[2] = (bigNum >> 8) & 0xFF;
myArray[3] = bigNum & 0xFF;

Wire.beginTransmission(2);
Wire.write('m');
Serial.println("Sent m");
Wire.write(myArray, 4);
Wire.endTransmission();
delay(250);
}
