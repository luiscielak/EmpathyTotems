// Empathy Totems
// Luis Cielak
// 2013-04-28
//
// Works with Totem_LED.ino

import processing.serial.*;

Serial myPort;
Totem to;

void setup() {
  size(512, 512);
  smooth();

  // Define Arduino port
  myPort = new Serial(this, Serial.list()[4], 9600);

  // Create totem object  
  to = new Totem();
}


void draw() {
  background(255);

  // Run totem object
  to.run();
}

