class ParticleSystem {
  ArrayList particles;
  PVector origin;

  ParticleSystem(PVector location) {
    origin = location.get();
    particles = new ArrayList();
  }

  void addParticle() {
    particles.add(new Particle(origin));
  }

  void run() {
    Iterator<Particle> it = particles.iterator();
    while (it.hasNext ()) {
      Particle p = it.next();
      //      p.run;
      if (p.isDead()) {
        it.remove();
      }
    }
  }
}

