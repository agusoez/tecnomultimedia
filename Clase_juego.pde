class Juego {
  //propiedades del juego
  Fondo fondo;
  Enemigo2[] enemigo;
  int cantEnemigos;
  Jugador jugador1;
  int puntos = 0;

  //constructor juego
  Juego() {
    fondo = new Fondo();
    cantEnemigos =5;
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

      //colision
      if ( enemigo[i].colision(jugador1.x, jugador1.y, jugador1.ancho, jugador1.alto) ) {
        estado = 2;
        puntos++;
        println( puntos );
        
        // pantalla = pantalla game over;
      }
    }

    jugador1.dibujar();
  }
}
