/*
 * interface map with Processing to light up LEDs on arduino
 * Works with Processing sketch 'pdxMap'
 *
 *  code from: http://www.instructables.com/id/How-to-control-LEDs-with-Processing-and-Arduino/
 */

int Pin[] = {0,2,3,4,5,6,7,8,9};  //Array of pins to controll lights
int value = 0;  // variable to keep the actual value
void setup() 
{ 
 //Initialize pins as OUTPUTS and begin serial connection
 for(int i=1; i<9 ; i++){
  pinMode(Pin[i], OUTPUT); 
 }
 Serial.begin(9600);
} 
 
void loop() 
{
  int input = Serial.read();  // read serial 
  switch (input){
    case 1:  //If processing passes a '1' do case one
      if(input == 1){
        digitalWrite(Pin[1],HIGH);
        delay(1000);
        digitalWrite(Pin[1],LOW);
        //For fading un-comment
        /*Serial.write(input);
        for(value = 0 ; value <= 255; value++){ // ramp up the LED
          analogWrite(Pin[1], value);
          delay(30); 
        }
       delay(5000); 
        for(value = 255; value >=0; value--){   //ramp down the LED
          analogWrite(Pin[1], value);
          delay(30);
        }*/
       }
       break;
    case 2:
      if(input == 2){  //If Processing passes a '2' do case two
      digitalWrite(Pin[2],HIGH);
        delay(1000);
        digitalWrite(Pin[2],LOW);
        /*for(value = 0 ; value <= 255; value++){ 
          analogWrite(Pin[2], value);
          delay(30); 
        }
       delay(5000); 
        for(value = 255; value >=0; value--){ 
          analogWrite(Pin[2], value);
          delay(30);
        }*/
       }
       break;
    case 3:
      if(input == 3){  //If Processing passes a '3' do case three
      digitalWrite(Pin[3],HIGH);
        delay(1000);
        digitalWrite(Pin[3],LOW);
       /* for(value = 0 ; value <= 255; value++){ 
          analogWrite(Pin[3], value);
          delay(30); 
        }
       delay(5000); 
        for(value = 255; value >=0; value--){ 
          analogWrite(Pin[3], value);
          delay(30);
        }*/
       }
       break;
    case 4:
      if(input == 4){  //If Processing passes a '4' do case four
      digitalWrite(Pin[4],HIGH);
        delay(1000);
        digitalWrite(Pin[4],LOW);
        /*for(value = 0 ; value <= 255; value++){ 
          analogWrite(Pin[4], value);
          delay(30); 
        }
       delay(5000); 
        for(value = 255; value >=0; value--){ 
          analogWrite(Pin[4], value);
          delay(30);
        }*/
       }
       break;
    case 5:
      if(input == 5){  //If Processing passes a '5' do case five
      digitalWrite(Pin[5],HIGH);
        delay(1000);
        digitalWrite(Pin[5],LOW);
        /*for(value = 0 ; value <= 255; value++){ 
          analogWrite(Pin[5], value);
          delay(30); 
        }
       delay(5000); 
        for(value = 255; value >=0; value--){ 
          analogWrite(Pin[5], value);
          delay(30);
        }*/
       }
       break;
   case 6:
      if(input == 6){  //If Processing passes a '6' do case six
      digitalWrite(Pin[6],HIGH);
        delay(1000);
        digitalWrite(Pin[6],LOW);
        /*for(value = 0 ; value <= 255; value++){ 
          analogWrite(Pin[6], value);
          delay(30); 
        }
       delay(5000); 
        for(value = 255; value >=0; value--){ 
          analogWrite(Pin[6], value);
          delay(30);
        }*/
       }
       break;
    case 7:
      if(input == 7){  //If Processing passes a '7' do case seven
      digitalWrite(Pin[7],HIGH);
        delay(1000);
        digitalWrite(Pin[7],LOW);
        /*for(value = 0 ; value <= 255; value++){ 
          analogWrite(Pin[7], value);
          delay(30); 
        }
       delay(5000); 
        for(value = 255; value >=0; value--){ 
          analogWrite(Pin[7], value);
          delay(30);
        }*/
       }
       break;
    case 8:
      if(input == 8){  //If Processing passes a '8' do case eight
      digitalWrite(Pin[8],HIGH);
        delay(1000);
        digitalWrite(Pin[8],LOW);
        /*for(value = 0 ; value <= 255; value++){ 
          analogWrite(Pin[8], value);
          delay(30); 
        }
       delay(5000); 
        for(value = 255; value >=0; value--){ 
          analogWrite(Pin[8], value);
          delay(30);
        }*/
       }
       break;
  }
} 

