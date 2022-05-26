class Triangulo {

  CaminanteTri verticeA;
  CaminanteTri verticeB;

  Triangulo() {
    verticeA = new CaminanteTri();
    verticeB = new CaminanteTri();
  }

  void dibujar() {
    pushStyle(); //ROJO
    noStroke();
    fill(255, 0, 0, 170);
    verticeA.dibujar(-100, 0, random(-25+200, -50+150), 1);
    verticeA.mover();
    popStyle();

    pushStyle(); //AZUL
    noStroke();
    fill(0, 20, 150, 170);
    verticeB.dibujar(0, 100, random(-150, -200), -1);
    verticeB.mover();
    popStyle();
  }
}
