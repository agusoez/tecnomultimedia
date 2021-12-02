class Juego {
  //propiedades del juego
  Fondo fondo;
  Enemigo2[] enemigo;
  int cantEnemigos;
  Jugador jugador1;


  //constructor juego
  Juego() {

    fondo = new Fondo();
    cantEnemigos =8;
    enemigo =new Enemigo2[cantEnemigos];
    for (int i=0; i<cantEnemigos; i++) {
      enemigo[i]=new Enemigo2();
    }
    jugador1 = new Jugador();
  }


  //
  void dibujarjuego() {
    fondo.dibujarfondo();
    for (int i=0; i<cantEnemigos; i++) {

      enemigo[i].draw_();
      fondo.dibujarHeladera();
      pushStyle();
      rectMode ( CENTER );
      pushStyle();
      fill ( 0 );
      textAlign ( CENTER, CENTER );
      textSize ( 20 );
      text ("Tiempo: "+ tiempo, 80, 50);
      popStyle();
      //colision
      if ( enemigo[i].colision(jugador1.x, jugador1.y, jugador1.ancho, jugador1.alto) ) {
        estado = 2;
      }
    }

    jugador1.dibujar();
  }
}
