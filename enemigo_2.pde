


class Enemigo2 {
  PImage cuca;
  float x, y, ancho, alto;
  float despX, despY;
  int Puntos=0;

  Enemigo2() {
    cuca = loadImage ("cuca.png");
    x= 0;
    y= 0;
    ancho=80;
    alto=40;
    aleatorio();
    despX=0;
    despY=random(1, 5);
  }

  void draw_() {
    
    pushMatrix();
    pushStyle();
    translate(x, y);
    rectMode(CENTER);
    fill(240, 10, 120);
    rect(0, 0, ancho, alto);
    imageMode (CENTER);
    image ( cuca, 0-10, 0, ancho+15, alto+15);
    
    popStyle();
    popMatrix();


    mover();
  }

  void aleatorio() {
    x=random(0, width);
  }
  void mover() {
    
    y+=despY;
   
    if (y>height+alto/2) {
      y=-alto/2;
      despX=random(-2, 2);
      aleatorio();
      Puntos++;
      println( Puntos );
    }
  }

  //evaluar colision
  boolean colision(float x_, float y_, float ancho_, float alto_ ) {
    if (
      x-ancho/2 < x_+ancho_/2
      && x+ancho/2 > x_-ancho_/2
      && y-alto/2 < y_+alto_/2
      && y+alto/2 > y_-alto_/2

      ) {
      //hay colision
      return true;
    } else {
      return false;
    }
  }
}
