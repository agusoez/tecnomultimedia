//Alvarez Lisette (81833/1), Soñez Agustín (81783/9), Jauregui Rocio (78052/4).
//Trabajo Práctico 1 - Tecnologia Multimedial 2
//Comisión 2 - Lisandro Peralta y Abril Aleuy.

//https://youtu.be/wKUaXzkcKk8 (Link a video en Youtube)

import oscP5.*; 
OscP5 osc; 
GestorSenial gAmp, gPitch;

float UMBRAL_AMPLITUD = 35;
float UMBRAL_RUIDO = 25;
float MIN_AMP = 25;
float MAX_AMP = 100;
float MIN_PITCH = 50;
float MAX_PITCH = 80;
float amortiguacion = 0.9; 
boolean monitor = true;
float umbralDeTiempo = 1000;
float variacion = 10; 
float amp, pitch;
int ruido = 0;
long marcaDeTiempo; 


float x;
float y;

Triangulo tri;

imagen lineas, rosa, amarillo, verde;


void setup() {
  
  size(600, 720);

  osc = new OscP5(this, 12345);

  tri= new Triangulo();

  lineas = new imagen("Lineas.png");
  rosa = new imagen("rosa.png");
  amarillo = new imagen("amarillo.png");
  verde = new imagen("verde.png");

  gAmp = new GestorSenial(UMBRAL_RUIDO, MAX_AMP, amortiguacion);
  gPitch = new GestorSenial(MIN_PITCH, MAX_PITCH, amortiguacion); 
}

void draw() {

  gAmp.actualizar( amp );
  gPitch.actualizar( pitch );

  println("amp + " + amp);
  println("pitch + " + pitch);
  background(255, 255, 245);
  
  tri.dibujar();
  
  push();
  translate(300, 368);
  cuadrados(map(gPitch.filtradoNorm(), 0, 1, 0, width/2));
  
  rosa.setX(width/2-30);
  rosa.setY(map(gAmp.filtradoNorm()*1.5, 0, 1, 0-height/2+30, width/2));
  rosa.dibujar();

  amarillo.setX(map(gAmp.filtradoNorm()*0.5, 0, 1, 0-width/2+30, height/2));
  amarillo.setY(height/2-30);
  amarillo.dibujar();

  verde.setX(map(gPitch.filtradoNorm(), 0, 1, 0-width/2+30, 280));
  verde.setY(map(gPitch.filtradoNorm(), 0, 1, 0-height/2+30, 300));
  verde.rebote();
  verde.dibujar();

  lineas.setX(map(gAmp.filtradoNorm(), 0, 1, 0-270, 550));
  lineas.setY(map(gPitch.filtradoNorm(), 0, 1, 0-350, 360));
  lineas.girar(map(gAmp.filtradoNorm()*1.5, 0, 1, 0, TWO_PI), 150);
  
  dibujarcircu();
  pop();
}

void dibujarcircu() {
  
  for (int i=0; i<360; i+=90) {
    
    noStroke();
    switch(i) {
    case 0:
      //ROJO
      fill(255, 0, 0, 150);
      float angulo1 = map(-gAmp.filtradoNorm()*1.5, 0, 1, 0, TWO_PI)+radians(i);
      float distancia1 = map(gAmp.filtradoNorm()*1.5, 0, 1, 200, 25);
      float x1 = distancia1*cos(angulo1);
      float y1 = distancia1*sin(angulo1);
      ellipse (x1, y1-100, map(gAmp.filtradoNorm()*1.5, 0, 1, 100, 200), map(gAmp.filtradoNorm()*1.5, 0, 1, 100, 200));
      
      break;
    case 90:
      //VERDE
      fill(0, 255, 0, 150);
      float angulo2 = map(gAmp.filtradoNorm()*5, 0, 1, 0, TWO_PI)+radians(i);
      float distancia2 = map(gPitch.filtradoNorm()*1.5, 0, 1, 10, 50);
      float x2 = distancia2*cos(angulo2);
      float y2 = distancia2*sin(angulo2);
      ellipse (x2+150, y2+150, map(gAmp.filtradoNorm()*1.5, 0, 1,150, 50), map(gAmp.filtradoNorm()*1.5, 0, 1, 150, 50));
      break;
    case 180:
      //AZUL
      fill(0, 0, 255, 190);
      float angulo3 = map(gAmp.filtradoNorm()*1.5, 0, 1, 0, TWO_PI)+radians(i);
      float distancia3 = map(-gPitch.filtradoNorm()*1.5, 0, 1, 100, 20);
      float x3 = distancia3*cos(angulo3);
      float y3 = distancia3*sin(angulo3);
      ellipse (x3-50, y3+130, map(gAmp.filtradoNorm()*1.5, 0, 1, 100, 200), map(gAmp.filtradoNorm()*1.5, 0, 1, 100, 200));
      break;
    case 270:
      //AMARILLO
      fill(255, 255, 0, 150);
      float angulo4 = map(-gAmp.filtradoNorm()*5, 0, 1, 0, TWO_PI)+radians(i);
      float distancia4 = map(gPitch.filtradoNorm()*1.5, 0, 1, 10, 50);
      float x4 = distancia4*cos(angulo4);
      float y4 = distancia4*sin(angulo4);
      ellipse (x4-180, y4-180, map(gAmp.filtradoNorm()*1.5, 0, 1, 200, 50), map(gAmp.filtradoNorm()*1.5, 0, 1, 200, 50));
      break;
    default:
    }
  }
}

void cuadrados(float aux2){
  
  noStroke();
  fill(190,0,0);
  triangle(-550,400-aux2,-100,730,0,500-aux2);
  fill(0,0,50);
  triangle(50,-400+aux2/2,600,-350,0,-700+aux2/2);;
}


void oscEvent( OscMessage m ) { 
  
  if (m.addrPattern().equals("/amp")) {

    amp = m.get(0).floatValue();
  }

  if (m.addrPattern().equals("/pitch")) {

    pitch = m.get(0).floatValue();
  }

  if (m.addrPattern().equals("/ruido")) {

    ruido = m.get(0).intValue();
  }
}
