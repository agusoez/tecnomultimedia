//Agustin roa cilinski - Agustin soñez
// 

int estado = 0;
PImage Inicio;
PImage Win;
PImage GameOver;
Juego juego;
int tiempo = 0;

void setup() {
  size(600, 700);
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
    fill(0);
    rectMode(CENTER);
    rect(width/2, 50, width, 50);
    textSize(15);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Créditos: Roa Cilinski Agustín (88344/9) y Soñez Agustín (81783/9)\nTrabajo Práctico n°5 Tecnologia Multimedial I, 2021", width/2, 50);
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

    tiempo ++;
    if (tiempo>=500) {
      estado=1;
    }
    juego.dibujarjuego();
  }
  println(tiempo);
} 


void mousePressed() {
  if (estado == 0) { 
    if ( mouseX > 250 && mouseY > 220 && mouseX < 250 + 100 && mouseY < 220 + 50 ) {
      juego = new Juego();
      estado = 3;
    }
  } else if ( estado == 1 ) {
    if ( mouseX > 250 && mouseY > 525 & mouseX < 250 + 100 && mouseY < 525 + 50 ) {
      juego = new Juego();
      tiempo=0;
      estado = 0;
    }
  } else if ( estado == 2 ) {
    if ( mouseX > 250 && mouseY > 525 & mouseX < 250 + 100 && mouseY < 525 + 50 ) {
      juego = new Juego();
      tiempo=0;
      estado = 0;
    }
  }
}
