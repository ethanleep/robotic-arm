#include <Encoder.h>
const byte motorotar[6][2] = {
  {2, 3},
  {4, 5},
  {6, 7},
  {8, 9},
  {10, 11},
  {12, 13}
};
  Encoder rot0(motorotar[0][0], motorotar[0][1]);
  Encoder rot1(motorotar[1][0], motorotar[1][1]);
  Encoder rot2(motorotar[2][0], motorotar[2][1]);
  Encoder rot3(motorotar[3][0], motorotar[3][1]);
  Encoder rot4(motorotar[4][0], motorotar[4][1]);
  Encoder rot5(motorotar[5][0], motorotar[5][1]);
volatile int pos[6] = {0, 0, 0, 0, 0, 0};

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  pos[0] = rot0.read();
  pos[1] = rot1.read();
  pos[2] = rot2.read();
  pos[3] = rot3.read();
  pos[4] = rot4.read();
  pos[5] = rot5.read();
  Serial.print("Pos1:");
  Serial.println(pos[0]);
  Serial.print("Pos2:");
  Serial.println(pos[1]);
  Serial.print("Pos3:");
  Serial.println(pos[2]);
  Serial.print("Pos4:");
  Serial.println(pos[3]);
  Serial.print("Pos5:");
  Serial.println(pos[4]);
  Serial.print("Pos6:");
  Serial.println(pos[5]);
  Serial.println("");
  Serial.println("");
  Serial.println("");
  Serial.println("");
  Serial.println("");
  Serial.println("");
  Serial.println("");
  Serial.println("");
  Serial.println("");
  Serial.println("");
  delay(250);
}
