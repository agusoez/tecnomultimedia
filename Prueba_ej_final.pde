


//String [] relato = new String [21];


String estado = "aventura";
Pantalla pantalla;

void setup() {
  size(600, 800);
  pantalla = new Pantalla();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(15);
  //relato[0] = " -¿Qué voy a cenar?- ";
}


void draw() {
  if (estado=="aventura") {
    pantalla.actualizar();
  }
}
