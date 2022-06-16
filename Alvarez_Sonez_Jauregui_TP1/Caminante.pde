class CaminanteTri {

  float x, y, t, vel, dir, yB;
  String estadoDeFiguraRoja;
  String estadoDeFiguraAzul;

  CaminanteTri() {
    
    x = 0;
    y = -90;
    vel = 4;
    dir = 0;
    yB = 0;
    estadoDeFiguraRoja ="piramide";
    estadoDeFiguraAzul ="piramide";
  }

//TRIANGULO ROJO
  void dibujar(float xtri1, float xtri2, float xtri3, float ytri) {

    //condición de estado___________________________
    if (y<=-300) {
      estadoDeFiguraRoja="valle";
    }
    if (y>=-50) {
      estadoDeFiguraRoja="piramide";
    }
    
    //dibujo_________________________________________
    if (estadoDeFiguraRoja=="piramide") {
      triangle(xtri1, 0, xtri2, 0, xtri3, y* ytri);
    }
    if (estadoDeFiguraRoja=="valle") {
      triangle(-200, ytri*yB, xtri2, 0, xtri3, y* ytri);
    }
  }
  
//TRIANGULO AZUL
  void dibujar(float xtri1, float xtri2, float xtri3, float ytri, float cual) {

    //condición de estado___________________________
    if (y<=-300) {
      estadoDeFiguraAzul="valle";
    }
    if (y>=-50) {
      estadoDeFiguraAzul="piramide";
    }
    
    //dibujo_________________________________________
    if (estadoDeFiguraAzul=="piramide") {
      triangle(xtri1, 0, xtri2, 0, xtri3, y* ytri);
    }
    if (estadoDeFiguraAzul=="valle") {
      triangle(xtri1, 0, 200, -yB, xtri3, y* ytri);
    }
    
  }

  void mover() {
    y = map(gPitch.filtradoNorm(), 0, 1, -MIN_PITCH, -300);
    yB= map(gPitch.filtradoNorm(), 0, 1, -MIN_PITCH, -300);
  }
}
