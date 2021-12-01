//Roa Cilinski (88344/9) y Soñez Agustín (81783/9)
//Trabajo Práctico Final Tecnologia Multimedial
//Comisión 3 David Bedoian

//String [] relato = new String [21];

int tiempo = 0;
String estado = "aventura";

Aventura aventura;

void setup() {

  aventura = new Aventura();

  size(600, 700);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(15);
}


void draw() {
  if (estado=="aventura") {

    aventura.actualizar();
  }
}

void mousePressed() {
  aventura.click();
}
