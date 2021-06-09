//Soñez Agustín 81783/9
//TP2
int estado = 0;
float x1;
float x2;
float x3;
float x4;
float x5;
float x6;
float x7;
float x8;
PImage A;
PImage B;
PImage C;
PImage D;
PImage E;
PFont fuente;
void setup (){
  size(600,600);
  estado = 0;
  fuente = loadFont ("SegoeUIBlack-Italic-48.vlw");
  textAlign(CENTER);
  textFont(fuente);
  x1 = 650;
  x2 = -50;
  x3 = 650;
  x4 = -50;
  x5 = -50;
  x6 = 650;
  x7 = -50;
  x8 = 650;
}

void draw (){
  if (estado ==0 ) {
    A = loadImage ("Primera Imagen.png");
    image( A , 0 , 0 ); 
    textSize(20);
    text ( ">CLICK PARA SIGUIENTE<", width/2, 550);
  
  } else if (estado == 1)  {
    
    B = loadImage ("Segunda Imagen.png");
    image ( B , 0 , 0 );
    textSize(35);
    textAlign(CENTER);
    
    pushStyle();
    fill(0);
    text ("SCOTT PILGRIM",x1,152);
    fill(255);
    text ("SCOTT PILGRIM",x1,150);
    popStyle();
    textSize(20);
    fill(0);
    text ("Michael Cera",x1,182);
    fill(255);
    text ("Michael Cera",x1,180);
    
    pushStyle();
    textSize(35);
    fill(0);
    text("RAMONA FLOWERS",x2,452);
    fill(255);
    text("RAMONA FLOWERS",x2,450);
    popStyle();
    fill(0);
    text("Mary-Elizabeth Winstead",x2,482);
    fill(255);
    text("Mary-Elizabeth Winstead",x2,480);
    textSize(15);
    text (">CLICK PARA SIGUIENTE<", width/2, 580);
    
    if (x1 > 450) {
      x1 = x1-50;
    }
    if (x2 < 180) {
      x2 = x2+50; 
    }
    
  } else if (estado == 2)  {
    C = loadImage ("Tercera Imagen.png");
    image ( C , 0, 0);
    textSize(25);
    
    pushStyle();
    fill(0);
    text("ENVY ADAMS",x3,252);
    fill(255);
    text("ENVY ADAMS",x3,250);
    fill(0);
    text("WALLACE WELLS",x4,302);
    fill(255);
    text("WALLACE WELLS",x4,300);
    fill(0);
    text("KNIVES CHAU",x3,537);
    fill(255);
    text("KNIVES CHAU",x3,535);
    popStyle();
    
    textSize(20);
    fill(0);
    text("Brie Larson",x3,282);
    text("Kieran Culkin",x4,332);
    text("Ellen Wong",x3,567);
    fill(255);
    text("Brie Larson",x3,280);
    text("Kieran Culkin",x4,330);
    text("Ellen Wong",x3,565);
    textSize(15);
    text (">CLICK PARA SIGUIENTE<", width/2, 585);
    
    if ( x3 > 450 ){
      x3 = x3-50;  
    }  
    if ( x4 < 180 ) {
      x4 = x4+50;
    }  
    
  } else if (estado == 3)  {
    D = loadImage ("Cuarta Imagen.png");
    image ( D, 0, 0 );
    textSize(35);
    
    pushStyle();
    textSize(25);
    fill(0);
    text("Dirección",x5,232);
    text("Basado en el cómic de",x6,302);
    fill(255);
    text("Dirección",x5,230);
    text("Basado en el cómic de",x6,300);
    popStyle();
    
    fill(0);
    text("EDGAR WRIGHT",x5,262);
    text("BRYAN LEE O'MALLEY",x6,332);
    fill(255);
    text("EDGAR WRIGHT",x5,260);
    text("BRYAN LEE O'MALLEY",x6,330);
    textSize(15);
    text (">CLICK PARA SIGUIENTE<", width/2, 580);
    
    if ( x5 < 300 ) {
      x5 = x5+50;
    }  
    if ( x6 > 300 ) {
      x6 = x6-50;
    }
    
  } else if (estado == 4)  {
    E = loadImage ("Quinta Imagen.png");
    image ( E, 0, 0 );
    textSize(30);
    
    pushStyle();
    textSize(20);
    fill(0);
    text("Producción",x7,162);
    text("Música",x8,362);
    fill(255);
    text("Producción",x7,160);
    text("Música",x8,360);
    popStyle();
    
    fill(0);
    text("EDGAR WRIGHT\nMARC PLATT\nERIC GITTER\nNIRA PARK",x7,192);
    text("NIGEL GODRICH",x8,392);
    fill(255);
    text("EDGAR WRIGHT\nMARC PLATT\nERIC GITTER\nNIRA PARK",x7,190);
    text("NIGEL GODRICH",x8,390);
    
    if ( x7 < 300 ) {
      x7 = x7+50;
    }
    if ( x8 > 300 ) {
      x8 = x8-50;
    }  
  }
}

void mousePressed() {
    if (estado == 0) {
    estado = 1;
    } else if (estado == 1) {
    estado = 2;
    } else if (estado == 2) {
    estado = 3;
    } else if (estado == 3) {
    estado = 4;
    } else if (estado == 4) {
    estado = 5;
    } else if (estado == 5) {
    estado = 0;
    }
}
