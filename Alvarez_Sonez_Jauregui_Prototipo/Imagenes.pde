class imagen {
  //atributos
  PImage imagen;
  float xImg;
  float yImg;
  float grados;
  imagen() {
    //constructor
    imageMode(CENTER);
    xImg=0;
    yImg=0;
  }
  imagen(String nombre) {
    imagen = loadImage(nombre);
    imageMode(CENTER);
    xImg=0;
    yImg=0;
  }

  void setImagen(String nombre) {
    imagen = loadImage(nombre);
  }
  void setX(float a) {
    xImg=a;
  }
  void setY(float b) {
    yImg=b;
  }
  void dibujar() {
    image (imagen, xImg, yImg);
  }

  void girar(float aux) {
    pushMatrix();
    translate(xImg, yImg);
    grados= map(aux, -134, height, -150, TWO_PI);
    rotate(radians(grados-10));

    image (imagen, 0, 0, width*3, height*3);
    popMatrix();
  }
  void girar(float aux, int mul) {
    pushMatrix();
    translate(xImg, yImg);
    grados= map(-aux, -134, height, -150, TWO_PI);
    rotate(radians(grados)*mul);

    image (imagen, 0, 0, width*3, height*3);
    popMatrix();
  }
  void rebote() {
    if ( xImg > width && yImg > height ) {
      xImg = xImg-1;
      yImg = yImg-1;
    }
  }
}
