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

boolean DEBUG;  // Debug flag

void setup() {
  size(512, 512);

  smooth();
  frameRate(10);

  // Initialize geometry
  RG.init(this);

  // Initialize Arduino port
  try {
    myPort = new Serial(this, Serial.list()[4], 9600);
  } 
  catch (Exception ex) {
    ex.printStackTrace();
    System.out.println("ERROR: "+ex.getMessage());
  }

  // Create totem object  
  totem = new Totem();
}


void draw() {

  // Render totem
  totem.run();
}

