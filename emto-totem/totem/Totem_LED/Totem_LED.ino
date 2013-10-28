// Empathy Totems
// Luis Cielak
// 2013-04-28
//
// Totem_LED.ino
// Works with EmpathyTotems.pde

int i = 0; // counter
int MAX_BRIGHTNESS = 200;

// Output
int redPin   = 9;
int greenPin = 10;
int bluePin  = 11;


long int inByte; 
int wait = 100; //10ms

void setup() {
  pinMode(redPin,   OUTPUT);   // sets the pins as output
  pinMode(greenPin, OUTPUT);   
  pinMode(bluePin,  OUTPUT);


  // bring the LED up nicely from being off
  for(i = 0 ; i <= MAX_BRIGHTNESS; i+=1)
  {
    analogWrite(redPin, i);
    analogWrite(greenPin, i);
    analogWrite(bluePin, i);
    delay(15);
  }



  Serial.begin(9600); 
}


void outputColor(int red, int green, int blue) {

  analogWrite(redPin, red);    
  analogWrite(bluePin, blue);
  analogWrite(greenPin, green);    

}



int* getColour() {
  int* colour;
  int i;

  i = 0;

  //for some reason it only works if we put a dud value between the C and 
  // the R value
  while (i < 4)
  {
    if (Serial.available() > 0) {
      colour[i] = Serial.read();
      i++;
    }
  }

  return colour;
}

// Main program
void loop() {
  if (Serial.available() > 0) {
    // get incoming byte:
    inByte = Serial.read();

    if (inByte == 'C') {
      int* one;
      one =  getColour();

      //1 2 3 not 0 1 2 due to the dud value
      outputColor(one[1],one[2],one[3]);
    } 
  }

  delay(wait);


}











