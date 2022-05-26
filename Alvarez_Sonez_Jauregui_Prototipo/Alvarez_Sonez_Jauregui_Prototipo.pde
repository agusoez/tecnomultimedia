import oscP5.*; 
OscP5 osc; 
GestorSenial gAmp, gPitch;

float UMBRAL_AMPLITUD =35;
float UMBRAL_RUIDO = 45;
float MIN_AMP = 35;
float MAX_AMP = 100;
float MIN_PITCH = 45;
float MAX_PITCH = 80;
float amortiguacion = 0.9; 
boolean monitor = true;
float umbralDeTiempo = 1000;
float variacion = 10; 
float amp, pitch;
int ruido = 0;
long marcaDeTiempo; 

boolean haySonido = false;
boolean antesHabiaSonido = false;
boolean empezoElSonido = false;
boolean terminoElSonido = false;

float x;
float y;

imagen lineas, rosa, amarillo, verde;
Triangulo tri;

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

  haySonido = gAmp.filtradoNorm() > 0.9; 

  empezoElSonido = !antesHabiaSonido && haySonido; 
  terminoElSonido = antesHabiaSonido && !haySonido; 

  gAmp.actualizar( amp );
  gPitch.actualizar( pitch );

  println("amp + " + amp);
  println("pitch + " + pitch);
  translate(300, 368);
  background(255, 255, 245);

  tri.dibujar();

  dibujarcircu();

  rosa.setX(width/2-30);
  rosa.setY(map(gAmp.filtradoNorm()*1.5, 0, 1, 0-height/2+30, width/2));
  rosa.dibujar();

  amarillo.setX(map(gAmp.filtradoNorm()*1.5, 0, 1, 0-width/2+30, height/2));
  amarillo.setY(height/2-30);
  amarillo.dibujar();

  verde.setX(map(gPitch.filtradoNorm(), 0, 1, 0-width/2+30, width/2));
  verde.setY(map(gPitch.filtradoNorm(), 0, 1, 0-height/2+30, height/2));
  verde.rebote();
  verde.dibujar();

  lineas.setX(-150);
  lineas.setY(-192);
  lineas.girar(map(gAmp.filtradoNorm()*1.5, 0, 1, 0, TWO_PI), 150);
}

void dibujarcircu() {
  for (int i=0; i<360; i+=90) {
    float angulo = map(gAmp.filtradoNorm()*1.5, 0, 1, 0, TWO_PI)+radians(i);
    float distancia = 250;
    float x = distancia*cos(angulo);
    float y = distancia*sin(angulo);
    noStroke();
    switch(i) {
    case 0:
      fill(255, 0, 0, 150);
      ellipse (x, y, 100, 100);
      break;
    case 90:
      fill(0, 255, 0, 150);
      ellipse (x, y, 100, 100);
      break;
    case 180:
      fill(0, 0, 255, 150);
      ellipse (x, y, 100, 100);
      break;
    case 270:
      fill(255, 255, 0, 150);
      ellipse (x, y, 100, 100);
      break;
    default:
    }
  }
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
