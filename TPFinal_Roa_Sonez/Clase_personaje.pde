class Jugador {
  //Propiedades
  PImage player;
  float x, y, alto, ancho;
  float desp=-5;

  //Constructor 
  Jugador() {
    player = loadImage ("jugador.png");
    x=width/2;
    y=600;
    alto = 80;
    ancho = 40;
    rectMode(CENTER);
  }

  void dibujar () {
    pushMatrix();
    pushStyle();   

    imageMode (CENTER);
    image (player, x, y, ancho+15, alto+10);

    popMatrix();
    popStyle();

    if (keyPressed) {
      if (keyCode==LEFT) {
        x+=desp;
      } else if (keyCode==RIGHT) {
        x-=desp;
      }
      x=constrain(x, 0, width);
    }
  }
}
