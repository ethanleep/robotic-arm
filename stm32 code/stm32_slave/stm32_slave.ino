const char address = 2;

#include <Wire_slave.h>

const int r1 = PB14;
const int r2 = PB15;
volatile int pos = 0;
int32_t reqpos = 0;
const int motor1 = PB0;
const int motor2 = PB1;

void setup() {
  pinMode(r1, INPUT_PULLUP);
  pinMode(r2, INPUT_PULLUP);
  pinMode(motor1, OUTPUT);
  pinMode(motor2, OUTPUT);
  attachInterrupt(digitalPinToInterrupt(r1), rot1, CHANGE);
  attachInterrupt(digitalPinToInterrupt(r1), rot2, CHANGE);
  Serial.begin(9600);
  Wire.begin(address);
  Wire.onReceive(com);

}

void loop() {
  delay(250);
}

void com(int num) {
  char z = Wire.read();
  if(z == 'm') {
    byte a,b,c,d;
    a = Wire.read();
    b = Wire.read();
    c = Wire.read();
    d = Wire.read();

    reqpos = a;
    reqpos = (reqpos << 8) | b;
    reqpos = (reqpos << 8) | c;
    reqpos = (reqpos << 8) | d;
    moving();
    Serial.print("movin` to ");
    Serial.println(reqpos);
  }
}

void moving() {
  if(reqpos > pos) {
    digitalWrite(motor1, HIGH);
    digitalWrite(motor2, LOW);
  }
  else if (reqpos < pos) {
    digitalWrite(motor1, LOW);
    digitalWrite(motor2, HIGH);
  }
  else {
    digitalWrite(motor1, LOW);
    digitalWrite(motor2, LOW);
  }
}

void rot1() {
  if (digitalRead(r1) == HIGH) {
    if (digitalRead(r2) == LOW) {
      pos++;
    }
    else {
      pos--;
    }
  }
  else
  {
    if (digitalRead(r2) == HIGH) {
      pos++;
    }
    else {
      pos--;
    }
  }
}

void rot2() {
  if (digitalRead(r2) == HIGH) {
    if (digitalRead(r1) == HIGH) {
      pos++;
    }
    else {
      pos--;
    }
  }
  else {
    if (digitalRead(r1) == LOW) {
      pos++;
    }
    else {
      pos--;
    }
  }
}

