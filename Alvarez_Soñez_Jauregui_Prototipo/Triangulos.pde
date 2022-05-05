class Triangulo {

  CaminanteTri verticeA;
  CaminanteTri verticeB;

  Triangulo() {
    verticeA = new CaminanteTri();
    verticeB = new CaminanteTri();
  }


  void dibujar() {
    pushMatrix();
    

    pushStyle(); //ROJO
    noStroke();
    fill(200, 50, 0);
    
    verticeA.mover();
    verticeA.cambiarDir();
    verticeA.dibujar(-100, 0, random(-25+200,-50+150), 1);
    popStyle();

    pushStyle(); //AZUL
    noStroke();
    fill(0, 20, 150);
    
    verticeB.mover();
    verticeB.cambiarDir();
    verticeB.dibujar(0, 100,random(-150,-200), -1);
    popStyle();

    popMatrix();
  }
}
