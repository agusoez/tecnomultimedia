class Triangulo {

  CaminanteTri verticeA;
  CaminanteTri verticeB;
  float x, y;
  float grados;
  float aux;

  Triangulo() {
    
    verticeA = new CaminanteTri();
    verticeB = new CaminanteTri();
  }

  void dibujar() {
    
    push();

    //en X se mueve con PITCH
    //en Y se mueve con AMPLITUD
    x = map(gPitch.filtradoNorm(), 0, 1, 220, 380);
    y = map(gAmp.filtradoNorm(), 0, 1, 320, 440);
    translate(x, y);
    
    //ROJO
    pushStyle(); 
    noStroke();
    fill(255, 0, 0, 170);
    verticeA.dibujar(-100, 0, -50, 1);
    verticeA.mover();
    popStyle();
    
    //AZUL
    pushStyle(); 
    noStroke();
    fill(0, 0, 255, 170);
    verticeB.dibujar(0, 100, 50, -1, 1);
    verticeB.mover();
    popStyle();

    pop();
  }
}
