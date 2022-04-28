Caminante c;
//Caminante d;
Caminante e;
Caminante f;
void setup() {
  size(700,600);
  c = new Caminante();
   //d = new Caminante(random(width,height),random(width,height));
    e= new Caminante();
      f=new Caminante();
}

void draw() {
  background(255);
  c.rebotes();
  c.dibujar();
  c.mover();
  //d.dibujar();
  //d.mover();
  //d.rebotes();
   e.dibujar();
 e.mover();
e.rebotes();
f.dibujar();
f.mover();
f.rebotes();
  
}
