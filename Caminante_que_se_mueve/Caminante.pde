class Caminante {

  float x, y;
  float t;
  float vel;
  float dir;
  Caminante() {
    x = width/2.0;
    y = height/2.0;
    t  = 20;
    vel = 2;
    dir = random(360);
    
    if(x >= width) {
  dir = 180;
}
if(x <= 0) {
  dir = 0;
}
if(y >= height) {
  dir = 270;
}
if(y <= 0) {
  dir = 90;
}
  }
  Caminante(float x_ ,float y_ ) {
    x_ = x;
    y_ = y;
    t  = 20;
    vel = 2;
    dir = random(160);
   
  }

  void dibujar() {
    noStroke();
    fill(0,255,0);
    ellipse(x, y, t, t);
  }

  void mover() {
    if (mousePressed) {
      dir += 2;
    }
    x = x+vel*cos(radians(dir));
    y = y+vel*sin(radians(dir));
  }

void rebotes () {
if(x >= width) {
  dir = 180;
}
if(x <= 0) {
  dir = 0;
}
if(y >= height) {
  dir = 270;
}
if(y <= 0) {
  dir = 90;
}

}}
