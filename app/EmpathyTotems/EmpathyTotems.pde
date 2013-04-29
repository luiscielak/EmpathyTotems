// Empathy Totems
// Luis Cielak
// 2013-04-28
//
// Works with Totem_LED.ino

import processing.serial.*;
import geomerative.*;

Serial myPort;
Totem totem;

void setup() {
  size(512, 512);
  smooth();
  frameRate(10);

  // Initialize geometry
  RG.init(this);

  // Initialize Arduino port
  myPort = new Serial(this, Serial.list()[4], 9600);

  // Create totem object  
  totem = new Totem();
}


void draw() {

  // Render totem
  totem.run();
}

