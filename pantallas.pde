
class Pantalla {
  int estado_ = 0;
  PImage A;
  // PImage B;
  //PImage C;
  PImage D;
  // PImage E;
  // PImage F;
  PImage G;
  // PImage H;
  //PImage I;
  //PImage J;
  //PImage K;
  //PImage L;



  Pantalla() {
    A = loadImage ("Escena0.jpg");
    //B = loadImage ("Escena1.jpg");
    //C = loadImage ("Escena2.jpg");
    D = loadImage ("Escena3.jpg");
    //E = loadImage ("Escena4.jpg");
    //F = loadImage ("Escena5.jpg");
    G = loadImage ("Escena6.jpg");
    //H = loadImage ("Escena7.jpg");
    //I = loadImage ("Escena8.jpg");
    //J = loadImage ("Escena9.jpg");
    //K = loadImage ("Escena10.jpg");
    //L = loadImage ("Escena11.jpg");


    if (estado_ == 0) {
      //pantalla inicial
      image (A, 0, 0);
    } else if (estado_ == 1) {
      //primer pantalla aventura
      //image (B, 0, 0);
    } else if (estado_ == 2) {
      //segunda pantalla aventura
      //image (C, 0, 0);
    } else if (estado_ == 3) {
      //pantalla opción "cocinar"
      image (D, 0, 0);
    } else if (estado_ == 4) {
      //pantalla opcion "revolver"
      //image (E, 0, 0);
    } else if (estado_ == 5) {
      //pantalla no hay nada al revolver
      //image (F, 0, 0);
    } else if (estado_ == 6) {
      //pantalla anterior al juego
      image (G, 0, 0);
    } else if (estado_ == 7) {
      //pantalla explicacion del juego
      //image (H, 0, 0);
    } else if (estado_ == 8) {
      //pantalla ganaste
      //image (I, 0, 0);
    } else if (estado_ == 9) {
      //pantalla perdiste
      //image (J, 0, 0);
    } else if (estado_ == 10) {
      //pantalla final bueno
      //image (K, 0, 0);
    } else if (estado_ == 11) {
      //final malo
      //image (L, 0, 0);
    }
  }
  void actualizar() {
    pantalla.actualizar();
  }
}
