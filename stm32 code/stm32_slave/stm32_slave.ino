
const char address = 2;

#include <Wire_slave.h>

const int led = PC13;
const int r1 = PB14;
const int r2 = PB15;
volatile int32_t pos = 0;
int32_t reqpos = 0;
const int motor1 = PB0;
const int motor2 = PB1;
volatile bool mov = 0;

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
  Wire.onRequest(posend);
  pinMode(led, OUTPUT);
  digitalWrite(led, LOW);

}

void loop() {
  if (mov == 1) {
    moving();
    mov = 0;
  }
  else {
    noTone(3);
  }
}

void com(int num) {
  char z = Wire.read();
  if (z == 'm') {
    byte a, b, c, d;
    a = Wire.read();
    b = Wire.read();
    c = Wire.read();
    d = Wire.read();

    reqpos = a;
    reqpos = (reqpos << 8) | b;
    reqpos = (reqpos << 8) | c;
    reqpos = (reqpos << 8) | d;
    mov = 1;
    Serial.print("movin` to ");
    Serial.println(reqpos);
  }
}
void posend() {
  tone(led, 20);
  byte myArray[4];
  myArray[0] = (pos >> 24) & 0xFF;
  myArray[1] = (pos >> 16) & 0xFF;
  myArray[2] = (pos >> 8) & 0xFF;
  myArray[3] = pos & 0xFF;
  Wire.write(myArray, 4);
}

void moving() {
  while (reqpos != pos) {
    if (reqpos > pos) {
      digitalWrite(motor1, HIGH);
      digitalWrite(motor2, LOW);
    }
    if (reqpos < pos) {
      digitalWrite(motor1, LOW);
      digitalWrite(motor2, HIGH);
    }
  }
  digitalWrite(motor1, LOW);
  digitalWrite(motor2, LOW);
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
