class Circulo {
  //atributos del objeto (¿Como es?
  float x, y, w, h,speed, acc;
  // inicializador (¿Como genero este objeto?)
  Circulo() {
    x = 0;
    y = 0;
    w = 50;
    h = w;
    speed = 10;
    acc = 1;
  }
  Circulo(float nx, float ny, float nw, float nh){
  
  x = nx;
    y = ny;
    w = nw;
    h = nh;
    speed = 10;
    acc = 1;
  }
//Métodos - ¿Que hace?
  void dibujar() {
    ellipse(x, y, w, h);
  }
}