//TP4
//Soñez Agustín, 81783/9
//Comisión 3 - David Bedoian
//Link a video publicado en Youtube: https://youtu.be/HOgribtNKZ0
String [] relato = new String [21];
int pantalla = 0;
boolean DEBUG = false;


void setup() {
  size(600, 600);
  relato[0] = " -¿Qué voy a cenar?- ";
  relato[1] = "Llegas a casa después de pasar la\ntarde con tus amigos, se acerca\nla hora de la cena pero estas cansado.\n ¿Qué vas a hacer?"; 
  relato[2] = "Entras a la app de delivery";
  relato[3] = "Decidiste cocinar de\ntodas formas";
  relato[4] = "Vas y revuelves la cocina a ver\nsi hay algo rápido para comer";
  relato[5] = "Hay dos opciones\nque parecen prometedoras";
  relato[6] = "No hay comida\n¿Qué hago?";
  relato[7] = "Vas a comprar al super";
  relato[8] = "Pediste la promo\nde 2 pizzas + bebida";
  relato[9] = "Pediste el\nsanguche de milanesa";
  relato[10] = "Qué compro?";
  relato[11] = "La comida es suficiente\npara el almuerzo del día\nsiguiente, pero tendrás que\nrebuscártelas para cocinarte el\nresto del mes :(";
  relato[12] = "No fue el mejor sanguche del\nmundo, pero salvó la cena.\nAún tienes dinero para comer\nel resto del mes";
  relato[13] = "Compras los fideos instantáneos\ncon unas papas fritas y gaseosa";
  relato[14] = "Compras los cortes de\ncarne para milanesa y\nunas verduras para una ensalada";
  relato[15] = "Te sacaste el antojo, comiste\ny te quedo un poco de la\nnoche libre antes de dormir\n¿Qué haces?";
  relato[16] = "Vuelves a casa, cocinas, casi\nmueres de cansancio pero comiste bien.\nVas a dormir un poco tarde\npor el tiempo que llevo salir\na comprar y cocinar tarde\n:D";
  relato[17] = "Juegas un rato en la PC";
  relato[18] = "Vas a dormir igual";
  relato[19] = "Luego de unas cuantas partidas,\nte da hambre otra vez. No\npuedes dormir y ya esta todo\ncerrado como para comprar algo :(";
  relato[20] = "Algunas horas después, te\ndespiertas de hambre, aún falta para\nque abran los negocios y\nno puedes volver a dormir :(";
}

void draw () {
  background(172);
  pushStyle();
  fill(0);
  textSize(10);
  textAlign(CENTER,CENTER);
  text(" presionar r para volver al inicio ", 520, 10); 
  popStyle();
    
  if ( pantalla == 0 ) {
    txt ( relato[0], width/2, height/2, 40, CENTER, 0);

    rectMode ( CENTER );
    rect ( 300, 550, 100, 50 );
    pushStyle();
    fill ( 0 );
    textAlign ( CENTER, CENTER );
    textSize ( 20 );
    text ( "Iniciar", 300, 550 );
    popStyle();

    
  
} else if (pantalla == 1 ) {
  
  txt( relato[1], width/2, 200, 30, CENTER, 0);

  rect ( 100, 550, 170, 90);
  pushStyle();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(15);
  text("Pido delivery", 100, 550);
  popStyle();

  rect ( 300, 550, 170, 90);
  pushStyle();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(15);
  text("Cocino de\ntodas formas", 300, 550);
  popStyle();

  rect ( 500, 550, 170, 90);
  pushStyle();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(15);
  text("Revuelvo la cocina\na ver si hay algo\nrápido para comer", 500, 550);
  popStyle();

} else if (pantalla ==2) {
  txt( relato[2], width/2, 200, 30, CENTER, 0);

  rectMode ( CENTER );
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Siguiente", 300, 550 );
  popStyle();

} else if (pantalla ==3) {
  txt( relato[3], width/2, 200, 30, CENTER, 0);

  rectMode ( CENTER );
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Siguiente", 300, 550 );
  popStyle();

} else if (pantalla ==4) {
  txt( relato[4], width/2, 200, 30, CENTER, 0);

  rectMode ( CENTER );
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Siguiente", 300, 550 );
  popStyle();

} else if (pantalla ==5) {
  txt( relato[5], width/2, 200, 30, CENTER, 0);

  rect ( 150, 500, 170, 90);
  pushStyle();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(15);
  text("Promo de 2 Pizzas\n+ Bebida\n(más caro) ", 150, 500);
  popStyle();

  rect ( 450, 500, 170, 90);
  pushStyle();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(15);
  text("Sanguche de Milanesa", 450, 500);
  popStyle();

} else if (pantalla ==6) {
  txt( relato[6], width/2, 200, 30, CENTER, 0);

  rect ( 150, 500, 170, 90);
  pushStyle();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(15);
  text("Pido delivery", 150, 500);
  popStyle();

  rect ( 450, 500, 170, 90);
  pushStyle();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(15);
  text("Voy al super", 450, 500);
  popStyle();

} else if (pantalla ==7) {
  txt( relato[7], width/2, 200, 30, CENTER, 0);

  rectMode ( CENTER );
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Siguiente", 300, 550 );
  popStyle();

} else if (pantalla ==8) {
  txt( relato[8], width/2, 200, 30, CENTER, 0);

  rectMode ( CENTER );
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Siguiente", 300, 550 );
  popStyle();

} else if (pantalla ==9) {
  txt( relato[9], width/2, 200, 30, CENTER, 0);

  rectMode ( CENTER );
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Siguiente", 300, 550 );
  popStyle();

} else if (pantalla ==10) {
  txt( relato[10], width/2, 200, 30, CENTER, 0);

  rect ( 150, 500, 170, 90);
  pushStyle();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize ( 15 );
  text("Fideos instantáneos,\nunas papas fritas\ny gaseosa", 150, 500);
  popStyle();

  rect ( 450, 500, 170, 90);
  pushStyle();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize( 15 );
  text("Unas milanesas y\nunas verduras para\nuna ensalada", 450, 500);
  popStyle();

} else if (pantalla ==11) {
  txt( relato[11], width/2, 200, 35, CENTER, 0);
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Volver al\ninicio", 300, 550 );
  popStyle();

} else if (pantalla ==12) {
  txt( relato[12], width/2, 200, 35, CENTER, 0);

  rectMode ( CENTER );
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Siguiente", 300, 550 );
  popStyle();

} else if (pantalla ==13) {
  txt( relato[13], width/2, 200, 35, CENTER, 0);

  rectMode ( CENTER );
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Siguiente", 300, 550 );
  popStyle();

} else if (pantalla ==14) {
  txt( relato[14], width/2, 200, 35, CENTER, 0);

  rectMode ( CENTER );
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Siguiente", 300, 550 );
  popStyle();

} else if (pantalla ==15) {
  txt( relato[15], width/2, 200, 40, CENTER, 0);

  rect ( 150, 500, 170, 90);
  pushStyle();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize ( 15 );
  text("Juego un rato en la PC", 150, 500);
  popStyle();

  rect ( 450, 500, 170, 90);
  pushStyle();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize( 15 );
  text("Voy a dormir igual", 450, 500);
  popStyle();

} else if (pantalla ==16) {
  txt( relato[16], width/2, 200, 30, CENTER, 0);
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Volver al\ninicio", 300, 550 );
  popStyle();

} else if (pantalla ==17) {
  txt( relato[17], width/2, 200, 40, CENTER, 0);

  rectMode ( CENTER );
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Siguiente", 300, 550 );
  popStyle();

} else if (pantalla ==18) {
  txt( relato[18], width/2, 200, 40, CENTER, 0);

  rectMode ( CENTER );
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Siguiente", 300, 550 );
  popStyle();

} else if (pantalla ==19) {
  txt( relato[19], width/2, 200, 30, CENTER, 0);
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Volver al\ninicio", 300, 550 );
  popStyle();

} else if (pantalla ==20) {
  txt( relato[20], width/2, 200, 30, CENTER, 0);
  rect ( 300, 550, 100, 50 );
  pushStyle();
  fill ( 0 );
  textAlign ( CENTER, CENTER );
  textSize ( 15 );
  text ( "Volver al\ninicio", 300, 550 );
  popStyle();

}
if ( DEBUG ) {
 pushStyle();
 textSize(15);
 text ("pantalla: " + pantalla, 10, 20);
 popStyle();
 }
}

void mousePressed() {
  if (pantalla == 0) { 
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 1;
    }
  } else if ( pantalla == 1 ) {
    if ( mouseX > 15 && mouseY > 505 && mouseX < 15 + 170 && mouseY < 505 + 90 ) {   

      pantalla = 2;
    } else if ( mouseX > 215 && mouseY > 505 && mouseX < 215 + 170 && mouseY < 505 + 90 ) { 

      pantalla = 3;
    } else if ( mouseX > 415 && mouseY > 505 && mouseX < 415 + 170 && mouseY < 505 + 90 ) {

      pantalla = 4;
    }
  } else if ( pantalla == 2 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 5;
    }
  } else if ( pantalla == 3 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 6;
    }
  } else if ( pantalla == 4 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 6;
    }
  } else if ( pantalla == 5 ) {
    if ( mouseX > 65 && mouseY > 455 && mouseX < 65 + 170 && mouseY < 455 + 90 ) {

      pantalla = 8;
    } else if ( mouseX > 365 && mouseY > 455 && mouseX < 365 + 170 && mouseY < 455 + 90 ) {

      pantalla = 9;
    }
  } else if ( pantalla == 6 ) {
    if ( mouseX > 65 && mouseY > 455 && mouseX < 65 + 170 && mouseY < 455 + 90 ) {

      pantalla = 2;
    } else if ( mouseX > 365 && mouseY > 455 && mouseX < 365 + 170 && mouseY < 455 + 90 ) {

      pantalla = 7;
    }
  } else if ( pantalla == 7 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 10;
    }
  } else if ( pantalla == 8 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 11;
    }
  } else if ( pantalla == 9 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 12;
    }
  } else if ( pantalla == 10 ) {
    if ( mouseX > 65 && mouseY > 455 && mouseX < 65 + 170 && mouseY < 455 + 90 ) {

      pantalla = 13;
    } else if ( mouseX > 365 && mouseY > 455 && mouseX < 365 + 170 && mouseY < 455 + 90 ) {

      pantalla = 14;
    }
  } else if ( pantalla == 11 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 0;
    }
  } else if ( pantalla == 12 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 20;
    }
  } else if ( pantalla == 13 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 15;
    }
  } else if ( pantalla == 14 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 16;
    }
  } else if ( pantalla == 15 ) {
    if ( mouseX > 65 && mouseY > 455 && mouseX < 65 + 170 && mouseY < 455 + 90 ) {

      pantalla = 17;
    } else if ( mouseX > 365 && mouseY > 455 && mouseX < 365 + 170 && mouseY < 455 + 90 ) {

      pantalla = 18;
    }
  } else if ( pantalla == 16 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 0;
    }
  } else if ( pantalla == 17 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 19;
    }
  } else if ( pantalla == 18 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 20;
    }
  } else if ( pantalla == 19 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 0;
    }
  } else if ( pantalla == 20 ) {
    if ( mouseX > 250 && mouseY > 525 && mouseX < 250 + 100 && mouseY < 525 + 50 ) {

      pantalla = 0;
    }
  }
}
void keyPressed() {
  if ((key == 'r') || (key == 'R')) {
  pantalla = 0;
}

}
 
 
