


class Enemigo2 {
  PImage cuca;
  float x, y, ancho, alto;
  float despX, despY;

  Enemigo2() {
    cuca = loadImage ("cuca.png");
    x= 0;
    y= 0;
    ancho=40;
    alto=80;
    aleatorio();
    despX=0;
    despY=random(3, 7);
  }

  void draw_() {

    pushMatrix();
    pushStyle();

    translate(x, y);   
    imageMode (CENTER);
    image ( cuca, 0, 0, ancho+20, alto);

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
