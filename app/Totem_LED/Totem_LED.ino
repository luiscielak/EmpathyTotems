// Totem_LED.ino
// Works with EmpathyTotems.pde

int i = 0; // counter

// Output
int redPin   = 9;   // Red LED,   connected to digital pin 9
int greenPin = 10;  // Green LED, connected to digital pin 10
int bluePin  = 11;  // Blue LED,  connected to digital pin 11


long int inByte; 
int wait = 100; //10ms

void setup()
{
  pinMode(redPin,   OUTPUT);   // sets the pins as output
  pinMode(greenPin, OUTPUT);   
  pinMode(bluePin,  OUTPUT);

  Serial.begin(9600); 
}


void outputColour(int red, int green, int blue) {

  /*
  // Red fade in  
   for (i=0; i<red; i++){
   analogWrite(redPin, i);
   delay(10);
   }
   
   
   // Green fade in  
   for (i=0; i<green; i++){
   analogWrite(greenPin, i);
   delay(10);
   }
   
   // Blue fade in  
   for (i=0; i<blue; i++){
   analogWrite(bluePin, i);
   delay(10);
   }
   
   // Red fade out  
   for (i=red; i>0; i--){
   analogWrite(redPin, i);
   delay(10);
   }
   
   
   // Green fade out  
   for (i=green; i>0; i--){
   analogWrite(greenPin, i);
   delay(10);
   }
   
   
   // Blue fade out  
   for (i=blue; i>0; i--){
   analogWrite(bluePin, i);
   delay(10);
   }
   
   */

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
void loop()
{
  if (Serial.available() > 0) {
    // get incoming byte:
    inByte = Serial.read();

    if (inByte == 'C') {
      int* one;
      one =  getColour();

      //1 2 3 not 0 1 2 due to the dud value
      outputColour(one[1],one[2],one[3]);
    } 
  }

  //  delay(wait);
}






