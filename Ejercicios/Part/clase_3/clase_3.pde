ArrayList<Particle> pSystem;
  int limit;
void setup() {
  background(0);

  size(800, 600);
  limit =100;
  pSystem = new ArrayList <Particle>();
  for (int i=0; i < limit; i++) {
    Particle  newParticle = new Particle();
    pSystem.add(newParticle);
  }
}

void draw() {
  background(0);
   for (int i=0; i < limit; i++) {
   Particle thisParticle = pSystem.get(i);
   thisParticle.run();
  }
}