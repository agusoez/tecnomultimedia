

class Fondo {
  //PROPIEDADES
  PImage imgFondo;
  PImage imgHeladera;
  float y;
  float velY;

  //constructor
  Fondo () {
    imgFondo = loadImage("fondo.jpg");
    imgHeladera = loadImage ("heladera.png");
    y=0;
    velY=12;
  }

  //funcionalidad
  void dibujarfondo() {
    image(imgFondo, 0, y-710, width, height*2);
    y+=velY;
    if (y>height) {
      y=58;
    }
  }
  void dibujarHeladera() {
    image (imgHeladera, 0, 0, width, height/2);
  }
}
