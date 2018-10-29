#include <Encoder.h>

/* This code was made by Ethan
  Yes I know it's terrible I'm sorry, I really tried
  I have tried to add comments to make things more clear but it's just a dumpster fire at this point
  Have fun!
*/

int serial = false;


// Enable or Disable homing on startup. True for enable, false to disable
bool startuphome = false;

String mess;
int prev = 0;
int prevrot = 0;

// Motor pin numbers
const byte motor[6][2] = {
  {28, 32},
  {34, 36},
  {40, 38},
  {44, 42},
  {46, 48},
  {50, 52}
};

// Motor encoder pin numbers
const byte motorotar[6][2] = {
  {2, 3},
  {4, 5},
  {6, 7},
  {8, 9},
  {11, 10},
  {13, 12}
};

// Limit switch pins
const byte limit[6] = {18, 17, 16, 15, 14, 13};

// Value to see if an axis is homed or not
byte homed[6] = {0, 0, 0, 0, 0, 0};

// Current position value for each axis
volatile int pos[6] = {0, 0, 0, 0, 0, 0};

// Position requested for each axis
int reqpos[8] = {0, 0, 0, 0, 0, 0, 0, 0};

Encoder rot0(motorotar[0][0], motorotar[0][1]);
Encoder rot1(motorotar[1][0], motorotar[1][1]);
Encoder rot2(motorotar[2][0], motorotar[2][1]);
Encoder rot3(motorotar[3][0], motorotar[3][1]);
Encoder rot4(motorotar[4][0], motorotar[4][1]);
Encoder rot5(motorotar[5][0], motorotar[5][1]);

void setup() {
  Serial.begin(115200);

  // Setting motor pins to outputs and rotary encoder pins to inputs
  for (int number = 0; int motors = 0; number != 6, motors++) {
    pinMode(motor[number][motors], OUTPUT);
    digitalWrite(motor[number][motors], LOW);
    if (motors == 2) {
      motors = 0;
      number++;
    }
  }

  // Setting limit switch inputs to pullup inputs
  for (int number = 0; number != 6; number++) {
    pinMode(limit[number], INPUT_PULLUP);
  }

  // Attatching interrupts to the rotary encoder pins

  Serial.println("Arduino ready");
  Serial.println("Homing...");
  delay(1000);

  // Check to see if homing on startup is enabled
  if (startuphome == true) {

    // For loop for homing the 3 main axis
    for (int number = 0; number != 3; number++) {
      homing(number);
    }

    // Calling function for homing the hand of the arm
    spechom();

    Serial.println("Homing done. All axis ready for semi-accurate movement");
  }

  // If startup homing is disabled print this
  else {
    Serial.println("Startup homing disabled");
    Serial.println("Arm ready");
  }
}

// Homing function for the 3 main axis
void homing(int y) {
  while (homed[y] == 0) {
    // Turn motor on
    digitalWrite(motor[y][1], HIGH);
    digitalWrite(motor[y][0], LOW);
    // If the limit switch is triggerd then turn off motor
    if (digitalRead(limit[y]) == 0) {
      digitalWrite(motor[y][1], LOW);
      digitalWrite(motor[y][0], LOW);
      // Set position to 0 and the "homing" value to 1
      pos[y] = 0;
      if (y == 0) {
        rot0.write(0);
      }
      if (y == 1) {
        rot0.write(0);
      }
      if (y == 2) {
        rot0.write(0);
      }
      homed[y] = 1;
    }
  }
}

// Special homing function for the hand part of the arm
void spechom() {
  // While axis 4 and 5 arent homed, turn on both motors to start homing process
  while (homed[5] == 0 and homed[4] == 0) {
    // Turn on respective motors for axis 4 and 5
    digitalWrite(motor[3][0], HIGH);
    digitalWrite(motor[4][0], HIGH);
    digitalWrite(motor[3][1], LOW);
    digitalWrite(motor[4][1], LOW);
    // If limit switch for axis 5 is activated, disable all motors
    if (digitalRead(limit[4]) == 0) {
      digitalWrite(motor[3][0], LOW);
      digitalWrite(motor[4][0], LOW);
      digitalWrite(motor[3][1], LOW);
      digitalWrite(motor[4][1], LOW);
      // Record that axis 5 is homed
      homed[5] = 1;
    }
  }
  // While axis 5 is homed and 4 isnt, enable respective motors to home axis 4
  while (homed[5] == 1 and homed[4] == 0) {
    digitalWrite(motor[3][0], HIGH);
    digitalWrite(motor[4][1], HIGH);
    digitalWrite(motor[3][1], LOW);
    digitalWrite(motor[4][0], LOW);
    // If limit switch 4 is activated, then disable all motors
    if (digitalRead(limit[3]) == 0) {
      digitalWrite(motor[3][0], LOW);
      digitalWrite(motor[4][1], LOW);
      digitalWrite(motor[3][1], LOW);
      digitalWrite(motor[4][0], LOW);
      // Record that axis 4 is homed and set position for axis 3 and 4 to 0.
      homed[4] = 1;
      pos[3] = 0;
      pos[4] = 0;
      rot3.write(0);
      rot4.write(0);
    }
  }
}

// Check to see if the position requested is greater than or less than the current position and moves accordingly
void moving(int x) {
  if (x == 6) {
    if (reqpos[x] > prev) {
      pos[3] = rot3.read() + (reqpos[x] - prev);
      pos[4] = rot4.read() + (reqpos[x] - prev);
    }
    else {
      pos[3] = rot3.read() - (prev - reqpos[x]);
      pos[4] = rot4.read() - (prev - reqpos[x]);
    }
    while (rot3.read() != pos[3] and rot4.read() != pos[4]) {
      while (rot3.read() > pos[3] and rot4.read() > pos[4]) {
        digitalWrite(motor[3][1], HIGH);
        digitalWrite(motor[3][0], LOW);
        digitalWrite(motor[4][1], HIGH);
        digitalWrite(motor[4][0], LOW);
      }
      while (rot3.read() < pos[3] and rot4.read() > pos[4]) {
        digitalWrite(motor[3][1], LOW);
        digitalWrite(motor[3][0], HIGH);
        digitalWrite(motor[4][1], HIGH);
        digitalWrite(motor[4][0], LOW);
      }
      while (rot3.read() > pos[3] and rot4.read() < pos[4]) {
        digitalWrite(motor[3][1], HIGH);
        digitalWrite(motor[3][0], LOW);
        digitalWrite(motor[4][1], LOW);
        digitalWrite(motor[4][0], HIGH);
      }
      while (rot3.read() == pos[3] and rot4.read() > pos[4]) {
        digitalWrite(motor[3][1], LOW);
        digitalWrite(motor[3][0], LOW);
        digitalWrite(motor[4][1], HIGH);
        digitalWrite(motor[4][0], LOW);
      }
      while (rot3.read() > pos[3] and rot4.read() == pos[4]) {
        digitalWrite(motor[3][1], HIGH);
        digitalWrite(motor[3][0], LOW);
        digitalWrite(motor[4][1], LOW);
        digitalWrite(motor[4][0], LOW);
      }
      while (rot3.read() < pos[3] and rot4.read() < pos[4]) {
        digitalWrite(motor[3][1], LOW);
        digitalWrite(motor[3][0], HIGH);
        digitalWrite(motor[4][1], LOW);
        digitalWrite(motor[4][0], HIGH);
      }
      while (rot3.read() == pos[3] and rot4.read() < pos[4]) {
        digitalWrite(motor[3][1], LOW);
        digitalWrite(motor[3][0], LOW);
        digitalWrite(motor[4][1], LOW);
        digitalWrite(motor[4][0], HIGH);
      }
      while (rot3.read() < pos[3] and rot4.read() == pos[4]) {
        digitalWrite(motor[3][1], LOW);
        digitalWrite(motor[3][0], HIGH);
        digitalWrite(motor[4][1], LOW);
        digitalWrite(motor[4][0], LOW);
      }
      if (rot3.read() == pos[3] and rot4.read() == pos[4]) {
        digitalWrite(motor[3][1], LOW);
        digitalWrite(motor[3][0], LOW);
        digitalWrite(motor[4][1], LOW);
        digitalWrite(motor[4][0], LOW);
        Serial.print("Motor 6 to position ");
        Serial.println(reqpos[x]);
        prev = reqpos[x];
        break;
      }
    }
  }
  else if (x == 7) {
    if (reqpos[x] > prev) {
      pos[3] = rot3.read() - (reqpos[x] - prevrot);
      pos[4] = rot4.read() + (reqpos[x] - prevrot);
    }
    else {
      pos[3] = rot3.read() + (prevrot - reqpos[x]);
      pos[4] = rot4.read() - (prevrot - reqpos[x]);
    }
    while (rot3.read() != pos[3] and rot4.read() != pos[4]) {
      while (rot3.read() > pos[3] and rot4.read() > pos[4]) {
        digitalWrite(motor[3][1], HIGH);
        digitalWrite(motor[3][0], LOW);
        digitalWrite(motor[4][1], HIGH);
        digitalWrite(motor[4][0], LOW);
      }
      while (rot3.read() < pos[3] and rot4.read() > pos[4]) {
        digitalWrite(motor[3][1], LOW);
        digitalWrite(motor[3][0], HIGH);
        digitalWrite(motor[4][1], HIGH);
        digitalWrite(motor[4][0], LOW);
      }
      while (rot3.read() > pos[3] and rot4.read() < pos[4]) {
        digitalWrite(motor[3][1], HIGH);
        digitalWrite(motor[3][0], LOW);
        digitalWrite(motor[4][1], LOW);
        digitalWrite(motor[4][0], HIGH);
      }
      while (rot3.read() == pos[3] and rot4.read() > pos[4]) {
        digitalWrite(motor[3][1], LOW);
        digitalWrite(motor[3][0], LOW);
        digitalWrite(motor[4][1], HIGH);
        digitalWrite(motor[4][0], LOW);
      }
      while (rot3.read() > pos[3] and rot4.read() == pos[4]) {
        digitalWrite(motor[3][1], HIGH);
        digitalWrite(motor[3][0], LOW);
        digitalWrite(motor[4][1], LOW);
        digitalWrite(motor[4][0], LOW);
      }
      while (rot3.read() < pos[3] and rot4.read() < pos[4]) {
        digitalWrite(motor[3][1], LOW);
        digitalWrite(motor[3][0], HIGH);
        digitalWrite(motor[4][1], LOW);
        digitalWrite(motor[4][0], HIGH);
      }
      while (rot3.read() == pos[3] and rot4.read() < pos[4]) {
        digitalWrite(motor[3][1], LOW);
        digitalWrite(motor[3][0], LOW);
        digitalWrite(motor[4][1], LOW);
        digitalWrite(motor[4][0], HIGH);
      }
      while (rot3.read() < pos[3] and rot4.read() == pos[4]) {
        digitalWrite(motor[3][1], LOW);
        digitalWrite(motor[3][0], HIGH);
        digitalWrite(motor[4][1], LOW);
        digitalWrite(motor[4][0], LOW);
      }
      if (rot3.read() == pos[3] and rot4.read() == pos[4]) {
        digitalWrite(motor[3][1], LOW);
        digitalWrite(motor[3][0], LOW);
        digitalWrite(motor[4][1], LOW);
        digitalWrite(motor[4][0], LOW);
        Serial.print("Motor 7 to position ");
        Serial.println(reqpos[x]);
        prevrot = reqpos[x];
        break;
      }
    }
  }

  else {
    pos[0] = rot0.read();
    pos[1] = rot1.read();
    pos[2] = rot2.read();
    pos[3] = rot3.read();
    pos[4] = rot4.read();
    pos[5] = rot5.read();
    while (pos[x] > reqpos[x]) {
      digitalWrite(motor[x][1], HIGH);
      digitalWrite(motor[x][0], LOW);
      pos[0] = rot0.read();
      pos[1] = rot1.read();
      pos[2] = rot2.read();
      pos[3] = rot3.read();
      pos[4] = rot4.read();
      pos[5] = rot5.read();
    }
    while (pos[x] < reqpos[x]) {
      digitalWrite(motor[x][1], LOW);
      digitalWrite(motor[x][0], HIGH);
      pos[0] = rot0.read();
      pos[1] = rot1.read();
      pos[2] = rot2.read();
      pos[3] = rot3.read();
      pos[4] = rot4.read();
      pos[5] = rot5.read();
    }
    if (pos[x] == reqpos[x]) {
      digitalWrite(motor[x][0], LOW);
      digitalWrite(motor[x][1], LOW);
      pos[0] = rot0.read();
      pos[1] = rot1.read();
      pos[2] = rot2.read();
      pos[3] = rot3.read();
      pos[4] = rot4.read();
      pos[5] = rot5.read();
      if (pos[x] == reqpos[x]) {
        Serial.print("Motor ");
        Serial.print(x);
        Serial.print(" to position ");
        Serial.println(reqpos[x]);
      }
      else {
        moving(x);
      }
    }
  }
}

// Serial command processing
void loop() {
  reqpos[2] = -1500;
  moving(2);
  delay(250);
  reqpos[1] = -2000;
  moving(1);
  delay(250);
  reqpos[0] = -4000;
  moving(0);
  delay(250);
  reqpos[6] = -500;
  moving(6);
  reqpos[7] = 500;
  moving(7);
  reqpos[7] = 0;
  moving(7);
  reqpos[6] = 0;
  moving(6);
  reqpos[1] = 0;
  moving(1);
  delay(250);
  delay(250);
  reqpos[0] = 0;
  moving(0);
  delay(250);
  reqpos[2] = 0;
  moving(2);
  delay(250);
}
