const byte motor[2][2] = {
  {42, 44},
  {46, 48}
};
void setup() {
  // put your setup code here, to run once:
pinMode(motor[0][0], OUTPUT);
pinMode(motor[0][1], OUTPUT);
pinMode(motor[1][0], OUTPUT);
pinMode(motor[1][1], OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(motor[0][1], HIGH);
  digitalWrite(motor[1][0], HIGH);
  delay(500);
  digitalWrite(motor[0][1], LOW);
  digitalWrite(motor[1][0], LOW);
  delay(1000);
}
