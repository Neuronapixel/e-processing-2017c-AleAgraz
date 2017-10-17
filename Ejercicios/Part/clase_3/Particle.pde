class Particle {
  PVector  position, speed, acc;
  float size, topSpeed;

  Particle () {
    position = new PVector(random (0,width), random(0, height),0);
    speed = new PVector(random(-2,2),random(0,2),0);
    acc = new PVector(-0.001, 0.01, 0);
    size = 10;
    topSpeed = 10;
  }

  void run () {
    paint (); // dibujar
    mover();
    checkEdges();
    gravity();
    //interes
    //
  }

  void paint() {
    fill(random(0, 255), random(0, 255), random(0, 255));
    rect(position.x, position.y, size, size);
  }

  /*void checkEdges() {
   
   if (position.x > width) {
   position.x = 0;
   } else if (position.x < 0) {
   position.x = width;
   }
   
   if (position.y > height) {
   position.y = 0;
   } else if (position.y < 0) {
   position.y = height;
   }
   }*/

  void checkEdges() {
    if ((position.x > width) || (position.x < 0)) {
      speed.x = speed.x *-1;
    }

    if ((position.y > height) || (position.y < 0)) {
      speed.y = speed.y *-1;
    }
  }

  void mover () {
    PVector mouseP = new PVector(mouseX,mouseY,0);
    PVector dir =PVector.sub(mouseP,position);
    dir.normalize();
    
    speed.add(acc);
    speed.limit(topSpeed);
    position.add(speed);
  }

  void gravity() {
    PVector gravedad = new PVector(0, 0.2, 0);
    speed.add(gravedad);
  }
}