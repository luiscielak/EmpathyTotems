// Simple Particle System
// Daniel Shiffman

ParticleSystem ps;

//ArrayList<Mood> moods = new ArrayList();

Mood md;

void setup() {
  size(640, 360);
  smooth();
  ps = new ParticleSystem(new PVector(width/2, 50));

  md = new Mood();
}


void draw() {
  background(0);
//  md.render();
  //  ps.addParticle();
  ps.run();
}

