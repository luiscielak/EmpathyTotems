class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  ParticleSystem(PVector location) {
    origin = location.get();
    particles = new ArrayList<Particle>();
  }

  void addParticle() {
    //    particles.add(new Particle(origin));

    particles.add(new Particle(new PVector(random(0, 100), random(0, 100))));
  }


  void addParticle(float x, float y) {
    particles.add(new Particle(new PVector(x, y)));
  }

  void run() {


    Iterator<Particle> it = particles.iterator();
    while (it.hasNext ()) {
      Particle p = it.next();
      p.run();
      if (p.isDead()) {
        it.remove();
      }
    }
    /*

     
     Iterator<Particle> it = particles.iterator();
     while (it.hasNext ()) {
     Particle p = it.next();
     //      p.run;
     if (p.isDead()) {
     it.remove();
     }
     }
     */
  }
}

