// Array list 
// float list para numeros flotantes, tiene operaciones especificas

ArrayList <Particle> pSystem;


void setup() {
  size(400, 400);
  background(0);
  pSystem = new ArrayList <Particle>();
  int nP = 100;
  for (int i = 0; i < nP; i++) {
    Particle newParticle = new Particle ();
    pSystem.add(newParticle);
  }
}

void draw() {
  //for (Particle theParticle : pSystem) 
    /// Usamos el cilo for abreviado, solo si no se modifica el ArrayList dentro del ciclo

    //theParticle.run(); 
    
  for ( int i = pSystem.size()-1 ; i >= 0; i--) {
    Particle theParticle = pSystem.get(i);
    if (theParticle.alive) {
      theParticle.run();
    } else {
      pSystem.remove(theParticle);
    }
  }

  println("Particulas: "+pSystem.size());
}

void mouseMoved() {
  println("move");
  Particle newParticle = new Particle(mouseX, mouseY);
  pSystem.add(newParticle);
}