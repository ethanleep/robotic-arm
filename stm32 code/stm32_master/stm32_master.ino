#include <Wire.h>

int32_t bigNum = 12345678;
const int led = PC13;
int reqpos[6] = {0, 0, 0, 0, 0, 0};
int addresses[5] = {2, 3, 4, 5, 6};
int serial = false;
String mess;

void setup() {
  // put your setup code here, to run once:
  Wire.begin();
  Serial.begin(9600);
  Serial.setTimeout(50);
  pinMode(led, OUTPUT);
}

void loop() {
  noTone(led);
  // put your main code here, to run repeatedly:
  // Store the serial data in a string
  if (serial == false) {
    mess = Serial.readString();
  }
  // Parse the lengths of the string and save it as a byte
  byte len = mess.length();
  // Check to make sure the string is longer than 0 characters
  if (len > 0) {
    // Save the first character in the string as a character
    char fir = mess.charAt(0);
    // Check to see if the first character matches any known prefixes
    if (fir == 'M' or fir == 'm') {
      // Save the motor number as a character
      char numb = mess.charAt(1);
      // This is doing some weird stuff to fix the motor numbers that are always off by 48, no idea why this works
      int num = int(numb) - 48;
      // Check to ensure the motor number given matches any known motors
      if (num < 8 and num > -1) {
        // This parsses the number after the colon, converts the data type, then sends it to the moving function and also sets the requested position varaible
        String po = mess.substring(3);
        int serpos = po.toInt();
        num++;
        reqpos[num] = serpos;
        bigNum = serpos;
        sendpos(num);
      }
      // If the motor number doesnt match known types then print an error
      else {
        Serial.println("Improper motor number. Please choose a number between 0 and 7. Type h or help for help");
      }
    }
    // Check to see if the command sent is requesting help and if so, send a help string
    else if (mess == "help" or mess == "Help") {
      Serial.println("Type M followed by motor number, colon, and then position required");
      Serial.println("Example: M2:500 would be motor 2 to position 500");
    }
    else if (fir == 'p' or fir == 'P') {
      char numb = mess.charAt(1);
      int num = int(numb) - 48;
      num++;
      requestpos(num);
    }
    else if (fir == 'h' or fir == 'H') {
      char numb = mess.charAt(1);
      int num = int(numb) - 48;
      num++;
      Wire.beginTransmission(num);
      Wire.write('h');
      Wire.endTransmission();
      Serial.print("Homing motor ");
      Serial.println(num--);
    }
    // If the command doesnt match any known ones, then print an error
    else {
      Serial.println("Unknown command");
    }
    if (mess.indexOf('&') > 0) {
      serial = true;
      int del = mess.indexOf('&') + 2;
      mess.remove(0, del);
    }
    else {
      serial = false;
    }
  }
}

void sendpos(int adr) {
  byte myArray[4];

  myArray[0] = (bigNum >> 24) & 0xFF;
  myArray[1] = (bigNum >> 16) & 0xFF;
  myArray[2] = (bigNum >> 8) & 0xFF;
  myArray[3] = bigNum & 0xFF;
  tone(led, 10);
  Wire.beginTransmission(adr);
  Wire.write('m');
  Serial.print("Position ");
  Serial.print(bigNum);
  Serial.print(" sent to motor ");
  adr--;
  Serial.println(adr);
  Wire.write(myArray, 4);
  Wire.endTransmission();
  delay(250);
}

void requestpos(int adr) {
  Wire.requestFrom(adr, 4);
  int32_t pos;
  byte a, b, c, d;
  a = Wire.read();
  b = Wire.read();
  c = Wire.read();
  d = Wire.read();

  pos = a;
  pos = (pos << 8) | b;
  pos = (pos << 8) | c;
  pos = (pos << 8) | d;
  Serial.print("Motor ");
  adr--;
  Serial.print(adr);
  Serial.print(" is at position: ");
  Serial.println(pos);
}
