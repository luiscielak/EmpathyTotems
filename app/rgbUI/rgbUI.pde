// RGB UI 
// Works with Arduino sketch 'rgbMap.ino'
//

import processing.serial.*;

Serial myPort;
int a = 200;

float r,g,b;

void setup() {  
  println(Serial.list());
  myPort = new Serial(this, Serial.list()[4], 9600);
  myPort.buffer(1);
  size(400, 400);
  background(51);
}

void draw() {
  
  r = 200;
  g = map(mouseX,0,width,0,255);
  b = map(mouseY,0,height,0,255);
  
  background(r,g,b);
}

void mousePressed() {
  println("Coordinates: " + mouseX +"," + mouseY);
  mouseAction();
}

void mouseAction() {
  
  
  
  if ( mouseX > 0 && mouseX < 100) {
    if ( mouseY > 0 && mouseY < 200) {
      println("square 4");
      myPort.write(4);
    }
  }
  if ( mouseX > 100 && mouseX < 200) {
    if ( mouseY > 0 && mouseY < 200) {
      println("square 3");
      myPort.write(3);
    }
  }
  if ( mouseX > 200 && mouseX < 300) {
    if ( mouseY > 0 && mouseY < 200) {
      println("square 2");
      myPort.write(2);
    }
  }
  if ( mouseX > 300 && mouseX < 400) {
    if ( mouseY > 0 && mouseY < 200) {
      println("square 1");
      myPort.write(1);
    }
  }
  if ( mouseX > 0 && mouseX < 100) {
    if ( mouseY > 200 && mouseY < 400) {
      println("square 8");
      myPort.write(8);
    }
  }
  if ( mouseX > 100 && mouseX < 200) {
    if ( mouseY > 200 && mouseY < 400) {
      println("square 7");
      myPort.write(7);
    }
  }
  if ( mouseX > 200 && mouseX < 300) {
    if ( mouseY > 200 && mouseY < 400) {
      println("square 6");
      myPort.write(6);
    }
  }
  if ( mouseX > 300 && mouseX < 400) {
    if ( mouseY > 200 && mouseY < 400) {
      println("square 5");
      myPort.write(5);
    }
  }
}



void keyPressed() {

  if (keyCode==49) myPort.write(1);
  if (keyCode==50) myPort.write(2);
  if (keyCode==51) myPort.write(3);
  if (keyCode==52) myPort.write(4);
  if (keyCode==53) myPort.write(5);
  if (keyCode==54) myPort.write(6);
  if (keyCode==55) myPort.write(7);
  if (keyCode==56) myPort.write(8);
}

