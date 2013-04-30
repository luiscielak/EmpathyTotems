// Empathy Totems
// Luis Cielak
// 2013-04-28
//
// EmpathyTotems.pde
// Works with Totem_LED.ino

import processing.serial.*;
import geomerative.*;

Serial myPort;
Totem totem;

boolean DEBUG = false;  // Debug flag

void setup() {
  size(1024, 768);

  smooth();
  frameRate(10);

  // Initialize geometry
  RG.init(this);

  // Initialize Arduino port
    myPort = new Serial(this, Serial.list()[4], 9600);

  // Make totem
  totem = new Totem();
}


void draw() {

  // Render totem
  totem.run();
}

