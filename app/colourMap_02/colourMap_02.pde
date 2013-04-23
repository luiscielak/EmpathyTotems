//  colourMap.pde
//  Works RGB_LED.ino

import processing.serial.*;

int r, g, b;

int state = 0;

PImage img;	
Serial myPort;

void setup() {
  size(512, 512);

  img = loadImage("RGBR.jpg");

  myPort = new Serial(this, Serial.list()[4], 9600);

  //  Ddefault RGB value
  r = 255;
  g = 255;
  b = 255;
}

void draw() {
  background(r, g, b);

  switch(state) {

    // neutral    
  case 0:
    r = 200;
    g = 200;
    b = 200;
    break;

    // apathy
  case 1:
    r = 0;
    g = 0;
    b = 245;
    break;

    // worry
  case 2:
    r = 102;
    g = 16;
    b = 255;
    break;

    // anxiety
  case 3:
    r = 245;
    g = 0;
    b = 0;
    break;

    // boredom
  case 4:
    r = 182;
    g = 200;
    b = 200;
    break;

    // arousal
  case 5:
    r = 255;
    g = 128;
    b = 0;
    break;

    // relaxation
  case 6:
    r = 0;
    g = 255;
    b = 0;
    break;

    // control
  case 7:
    r = 122;
    g = 255;
    b = 0;
    break;

    // flow
  case 8:
    r = 255;
    g = 245;
    b = 0;
    break;

    // NA
  case 9:
    r = 10;
    g = 10;
    b = 10;
    break;
  }


  //  println(state+" "+r+" "+g+" "+b);


  //  image(img, 0, 0);
  //  img.loadPixels();


  //    myPort.write("CL");
  //    myPort.write(int(red(img.pixels[mouseX+mouseY*img.width])));
  //    myPort.write(int(green(img.pixels[mouseX+mouseY*img.width]))); 
  //    myPort.write(int(blue(img.pixels[mouseX+mouseY*img.width])));

  myPort.write("CL");
  myPort.write(r); 
  myPort.write(g);
  myPort.write(b);
}


void keyPressed() {

  if (keyCode==48) state=0;
  if (keyCode==49) state=1;
  if (keyCode==50) state=2;
  if (keyCode==51) state=3;
  if (keyCode==52) state=4;
  if (keyCode==53) state=5;
  if (keyCode==54) state=6;
  if (keyCode==55) state=7;
  if (keyCode==56) state=8;
  if (keyCode==57) state=9;

  println(keyCode+" "+state);
}

/*

 Empathy Totems color palette
 
 
 
 
 
 
 
 */
