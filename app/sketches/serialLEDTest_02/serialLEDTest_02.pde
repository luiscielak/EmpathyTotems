
import processing.serial.*;

Serial myPort;
int a = 200;

void setup() {  
  println(Serial.list());
  myPort = new Serial(this, Serial.list()[4], 9600);
  myPort.buffer(1);
  size(400, 400);
  background(51);

  smooth();
}

void draw() {
  noStroke();


  ellipse(width/2, height/2, 60, 60);


  if (overCircle(width/2, height/2, 60)) {
    fill(100, 100, 200);
    myPort.write(1);
  } 
  else {
    fill(200, 100, 100);
//    myPort.write(2);
  }
}

void mousePressed() {
  println("Coordinates: " + mouseX +"," + mouseY);
  //  mouseAction();
}


void keyPressed() {

  keyAction();
}


void keyAction() {



  // Turn on/off LED based keyboard input

  if (keyCode==49) myPort.write(1);
  if (keyCode==50) myPort.write(2);
  if (keyCode==51) myPort.write(3);
  if (keyCode==52) myPort.write(4);
  if (keyCode==53) myPort.write(5);
  if (keyCode==54) myPort.write(6);
  if (keyCode==55) myPort.write(7);
  if (keyCode==56) myPort.write(8);
}



boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}
