// Simple Particle System
// Daniel Shiffman

ParticleSystem ps;

void setup() {
  size(640, 360);
  smooth();
  ps = new ParticleSystem(new PVector(width/2, 50));
}


void draw() {
  background(0);
  ps.addParticle();
  ps.run();
}

