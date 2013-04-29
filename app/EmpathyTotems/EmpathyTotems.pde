// Empathy Totems
// Luis Cielak
// 2013-04-28
//
// Works with Totem_LED.ino

Totem to;

int state = 0;
String currentEmo;


void setup() {
  size(512, 512);
  smooth();

  // Create totem object  
  to = new Totem();
}


void draw() {
  background(255);

  // Run totem object
  to.run();
}

