//TP5 Juego
//Soñez Agustín, Roa Cilinski Agustín.
//Comisión 3 David Bedoian
//Link al video explicativo de Soñez Agustín: https://youtu.be/NDg19xb1ev0
int estado = 0;
PImage Inicio;
PImage Win;
PImage GameOver;
Juego juego;


void setup() {
  size(600, 800);
  estado = 0;
  juego = new Juego();
  Inicio = loadImage ("pantallainicio.png");
  Win = loadImage ("pantallaganaste.png");
  GameOver = loadImage ("pantallaperdiste.png");
}

void draw() {


  if ( estado == 0 ) {
    image (Inicio, 0, 0);
    rectMode ( CENTER );
    rect ( width/2, height/2-100, 100, 50 );
    pushStyle();
    fill ( 0 );
    textAlign ( CENTER, CENTER );
    textSize ( 20 );
    text ( "Iniciar", width/2, height/2-100 );
    popStyle();
  } else if ( estado == 1 ) {
    image (Win, 0, 0);
    rectMode ( CENTER );
    rect ( 300, 550, 100, 50 );
    pushStyle();
    fill ( 0 );
    textAlign ( CENTER, CENTER );
    textSize ( 20 );
    text ( "Volver", 300, 550 );
    popStyle();
  } else if ( estado == 2 ) {
    image (GameOver, 0, 0);
    rectMode ( CENTER );
    rect ( 300, 550, 100, 50 );
    pushStyle();
    fill ( 0 );
    textAlign ( CENTER, CENTER );
    textSize ( 20 );
    text ( "Volver", 300, 550 );
    popStyle();
  } else if (estado == 3) {
    juego.dibujarjuego();
  }
} 


void mousePressed() {
  if (estado == 0) { 
    if ( mouseX > 250 && mouseY > 275 && mouseX < 250 + 100 && mouseY < 275 + 50 ) {

      estado = 3;
    }
  } else if ( estado == 1 ) {
    if ( mouseX > 250 && mouseY > 525 & mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      estado = 0;
    }
  } else if ( estado == 2 ) {
    if ( mouseX > 250 && mouseY > 525 & mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      estado = 0;
    }
  }
}
