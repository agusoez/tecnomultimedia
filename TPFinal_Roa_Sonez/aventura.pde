class Aventura {
  int cantBoton = 14;
  Boton[] boton;
  PImage A;
  PImage B;
  PImage C;
  PImage D;
  PImage E;
  PImage F;
  PImage G;
  PImage H;
  PImage I;
  PImage J;
  PImage K;
  PImage L;

  PImage Inicio;
  PImage Win;
  PImage GameOver;

  String [] textos = {

    //boton 0
    "Empezar", 
    //boton 1
    "Siguiente", 
    //boton 2  
    "Cocinar", 
    //boton 3
    "Buscar Para Picar", 
    //boton 4
    "Siguiente", 
    //boton 5
    "Siguiente", 
    //boton 6
    "Siguiente", 
    //boton 7
    "Siguiente", 
    //boton 8
    "Comenzar", 
    //boton 9
    "Siguiente", 
    //boton 10
    "Siguiente", 
    //boton 11
    "Volver", 
    //boton 12
    "Volver", 
    //boton 13
    "", 
  };

  String estado ="0";

  Juego juego;



  Aventura () {

    juego = new Juego();
    Inicio = loadImage ("pantallainicio.png");
    Win = loadImage ("pantallaganaste.png");
    GameOver = loadImage ("pantallaperdiste.png");

    A = loadImage ("Escena0.jpg");
    B = loadImage ("Escena1.jpg");
    C = loadImage ("Escena2.jpg");
    D = loadImage ("Escena3.jpg");
    E = loadImage ("Escena4.jpg");
    F = loadImage ("Escena5.jpg");
    G = loadImage ("Escena6.jpg");
    H = loadImage ("Escena7.jpg");
    I = loadImage ("Escena8.jpg");
    J = loadImage ("Escena9.jpg");
    K = loadImage ("Escena10.jpg");
    L = loadImage ("Escena11.jpg");

    boton = new Boton[cantBoton];
    for (int i=0; i <cantBoton; i++) {
      boton[i] = new Boton (textos[i], 200, 400);
    }
  }

  void actualizar() {

    if (estado.equals("0")) {
      //pantalla inicial
      image (A, 0, 0);

      boton[0].actualizar();
      pushStyle();
      fill(0);
      rectMode(CENTER);
      rect(width/2, 50, width, 50);
      fill(255);
      textAlign(CENTER,CENTER);
      text("Créditos: Roa Cilinski Agustín (88344/9) y Soñez Agustín (81783/9)\nTrabajo Práctico Final Tecnologia Multimedial I, 2021", width/2, 50);
      popStyle();
      
    } else if (estado.equals("1")) {
      //primer pantalla aventura
      image (B, 0, 0);
      boton[1].actualizar();
      pushStyle();
      rectMode(CENTER);
      fill(0,75);
      rect(width/2, height/2, 650, 100);
      fill(255);
      text("LLegas a casa cansado luego de pasar toda la tarde\ncon amigos y notas que ya es hora de cenar", width/2, height/2);
      popStyle();
    } else if (estado.equals("2")) {
      //segunda pantalla aventura
      image (C, 0, 0);
      pushStyle();
      fill(255);
      rectMode(CENTER);
      textAlign(CENTER, CENTER);
      fill(255);
      rect(150, 650, 200, 50);
      fill(0);
      text("Cocinar", 150, 650);
      fill(255);
      rect(450, 650, 200, 50);
      fill(0);
      text("Buscar Para picar", 450, 650);
      popStyle();
      pushStyle();
      rectMode(CENTER);
      fill(0,75);
      rect(width/2, height/2, 650, 100);
      fill(255);
      text("Qué vas a hacer? Usarás la poca energía que te queda para cocinar\no vas a buscar lo que sea que haya para picar rápido e ir a dormir?", width/2, height/2);
      popStyle();
    } else if (estado.equals("3")) {
      //pantalla opción "cocinar"
      image (D, 0, 0);
      boton[4].actualizar();
      pushStyle();
      rectMode(CENTER);
      fill(0,75);
      rect(width/2, height/2, 650, 100);
      fill(255);
      text("Decidiste juntar fuerzas para cocinar", width/2, height/2);
      popStyle();
    } else if (estado.equals("4")) {
      //pantalla opcion "revolver"
      image (E, 0, 0);
      boton[5].actualizar();
      pushStyle();
      rectMode(CENTER);
      fill(0,75);
      rect(width/2, height/2, 650, 100);
      fill(255);
      text("Decidiste buscar algo para picar", width/2, height/2);
      popStyle();
    } else if (estado.equals("5")) {
      //pantalla no hay nada al revolver
      image (F, 0, 0);
      boton[6].actualizar();
      pushStyle();
      rectMode(CENTER);
      fill(0,75);
      rect(width/2, height/2, 650, 100);
      fill(255);
      text("No hay nada. Habrá que cocinar de todas formas", width/2, height/2);
      popStyle();
    } else if (estado.equals("6")) {
      //pantalla anterior al juego
      image (G, 0, 0);
      boton[7].actualizar();
      pushStyle();
      rectMode(CENTER);
      fill(0,75);
      rect(width/2, height/2, 650, 100);
      fill(255);
      text("Debes ir a la heladera pero.. Oh no!\nUna oleada de cucarachas se acerca!", width/2, height/2);
      popStyle();
    } else if (estado.equals("7")) {
      //pantalla explicacion del juego
      image (H, 0, 0);
      boton[8].actualizar();
      pushStyle();
      fill(255);
      text("Pulsa las teclas direccionales izquierda y derecha para\nesquivar las cucarachas hasta que el tiempo llegue a 500.", width/2, 250);
      text("Si alguna cucaracha te toca, estaras muerto D:", width/2, 500);
      popStyle();
    } else if (estado.equals("8")) {
      //pantalla ganaste
      image (I, 0, 0);
      boton[9].actualizar();
      pushStyle();
      rectMode(CENTER);
      fill(0,75);
      rect(width/2, height/2, 650, 100);
      fill(255);
      text("Lo lograste! Llegaste a la heladera sano y salvo.\nCocinaste, comiste y por fin es hora de dormir", width/2, height/2);
      popStyle();
    } else if (estado.equals("9")) {
      //pantalla perdiste
      image (J, 0, 0);
      boton[10].actualizar();
      pushStyle();
      rectMode(CENTER);
      fill(0,75);
      rect(width/2, 250, 650, 100);
      fill(255);
      text("Oh no.. Las cucarachas te atraparon!", width/2, 250);
      popStyle();
    } else if (estado.equals("10")) {
      //pantalla final bueno
      image (K, 0, 0);
      boton[11].actualizar();
      pushStyle();
      fill(255);
      text("Felicidades! Lograste el final feliz! :D", width/2, 250);
      popStyle();
    } else if (estado.equals("11")) {
      //final malo
      image (L, 0, 0);
      boton[12].actualizar();
      pushStyle();
      fill(255);
      text("Que pena, conseguiste el final triste :'(\nIntenta de nuevo para lograr el final feliz!", width/2, 250);
      popStyle();
    } else if (estado.equals("14")) {
      //perdio
      image (GameOver, 0, 0);
      pushStyle();
      fill(255);
      rectMode(CENTER);
      textAlign(CENTER, CENTER);
      fill(255);
      rect(width/2, 600, 100, 50);
      fill(0);
      text("Siguiente", width/2, 600);
      popStyle();
    } else if (estado.equals("13")) {
      //ganó
      image (Win, 0, 0);
      pushStyle();
      fill(255);
      rectMode(CENTER);
      textAlign(CENTER, CENTER);
      fill(255);
      rect(width/2, 600, 100, 50);
      fill(0);
      text("Siguiente", width/2, 600);
      popStyle();
    } else if (estado == "jugando") {

      juego.dibujarjuego();
      if (juego.gano()) {
        estado="14";
      }
      tiempo ++;
      if (tiempo>=500) {
        estado="13";
      }
    }
  }


  void click() {

    if (estado.equals("0")) {
      if ( boton[0].mouseOver()) {
        estado = "1";
      } 
    } else if (estado.equals("1")) {
      if ( boton[1].mouseOver()) {
        estado="2";
      }
    } else if (estado.equals("2")) {
      if ( mouseX > 150 && mouseY > 625 && mouseX < 150 + 100 && mouseY < 625 + 50 ) {
        estado="3";
      }
      if ( mouseX > 350 && mouseY > 625 && mouseX < 350 + 100 && mouseY < 625 + 50 ) {
        estado="4";
      }
    } else if (estado.equals("2")) {
      if ( boton[3].mouseOver()) {
        estado="5";
      }
    } else if (estado.equals("3")) {
      if ( boton[4].mouseOver()) {
        estado="6";
      }
    } else if (estado.equals("4")) {
      if ( boton[5].mouseOver()) {
        estado="5";
      }
    } else if (estado.equals("5")) {
      if ( boton[6].mouseOver()) {
        estado="6";
      }
    } else if (estado.equals("6")) {
      if ( boton[7].mouseOver()) {
        estado="7";
      }
    } else if (estado.equals("7")) {
      if ( boton[8].mouseOver()) {
        estado="jugando";
        tiempo=0;
      }
    } else if (estado.equals("8")) {
      if ( boton[9].mouseOver()) {
        estado="10";
      }
    } else if (estado.equals("9")) {
      if ( boton[10].mouseOver()) {
        estado="11";
      }
    } else if (estado.equals("10")) {
      if ( boton[11].mouseOver()) {
        estado="0";
      }
    } else if (estado.equals("11")) {
      if ( boton[12].mouseOver()) {
        estado="0";
      }
    } else if (estado.equals("14")) {
      if ( mouseX > 250 && mouseY > 575 && mouseX < 250 + 100 && mouseY < 575 + 50 ) {
        juego = new Juego();
        tiempo=0;
        estado = "9";
      }
    } else if (estado.equals("13")) {
      if ( mouseX > 250 && mouseY > 575 && mouseX < 250 + 100 && mouseY < 575 + 50 ) {
        juego = new Juego();
        tiempo=0;
        estado = "8";
      } 
    }
  }
}
