const int motorPin1 = 2; 
const int motorPin2 = 3; 
const int motorPin3 = 4; 
const int motorPin4 = 5;

const int relayPin1 = 6; 
const int relayPin2 = 7; 

void setup() {
 
  pinMode(motorPin1, OUTPUT);
  pinMode(motorPin2, OUTPUT);
  pinMode(motorPin3, OUTPUT);
  pinMode(motorPin4, OUTPUT);
  pinMode(relayPin1, OUTPUT);
  pinMode(relayPin2, OUTPUT);

 
  digitalWrite(relayPin1, LOW);
  digitalWrite(relayPin2, LOW);

 
  stopAllMotors();
}

void loop() {
  forward();
  delay(2000); 
  
  stopAllMotors();
  delay(1000); 

  
  backward();
  delay(2000); 
  
  stopAllMotors();
  delay(1000); 
  
  turnLeft();
  delay(2000); 

  
  stopAllMotors();
  delay(1000);  

  
  turnRight();
  delay(2000); 

  
  stopAllMotors();
  delay(1000); 
}

void forward() {
  digitalWrite(relayPin1, HIGH);
  digitalWrite(relayPin2, LOW);
  digitalWrite(motorPin1, HIGH);
  digitalWrite(motorPin2, LOW);
  digitalWrite(motorPin3, HIGH);
  digitalWrite(motorPin4, LOW);
}

void backward() {
  digitalWrite(relayPin1, HIGH);
  digitalWrite(relayPin2, LOW);
  digitalWrite(motorPin1, LOW);
  digitalWrite(motorPin2, HIGH);
  digitalWrite(motorPin3, LOW);
  digitalWrite(motorPin4, HIGH);
}

void turnLeft() {
  digitalWrite(relayPin1, HIGH);
  digitalWrite(relayPin2, LOW);
  digitalWrite(motorPin1, LOW);
  digitalWrite(motorPin2, HIGH);
  digitalWrite(motorPin3, HIGH);
  digitalWrite(motorPin4, LOW);
}

void turnRight() {
  digitalWrite(relayPin1, HIGH);
  digitalWrite(relayPin2, LOW);
  digitalWrite(motorPin1, HIGH);
  digitalWrite(motorPin2, LOW);
  digitalWrite(motorPin3, LOW);
  digitalWrite(motorPin4, HIGH);
}

void stopAllMotors() {
  digitalWrite(motorPin1, LOW);
  digitalWrite(motorPin2, LOW);
  digitalWrite(motorPin3, LOW);
  digitalWrite(motorPin4, LOW);
}
