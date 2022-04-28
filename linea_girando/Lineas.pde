
class Lineas {
  PImage ln;
 
  Lineas() {
  ln = loadImage("Lineas.png");
  imageMode(CENTER);
  }
  
  void dibujar() {
   image (ln,0-150,0-170,width*1.5,height*1.5);
  
  }
 
   
  
 
  }
