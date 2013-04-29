// Empathy Totems
// Luis Cielak
// 2013-04-28

Totem to;

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

