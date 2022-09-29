

class Enemigo{
  float x,y;
  int alto,ancho,indice;
  float selector;
  PImage [] poke = new PImage [10];
  Gif [] pokes = new Gif [3];
  FCircle pokem;
  Gif magnegif;
  
  Enemigo(){
    
    alto =200;
    ancho =300;
    
    
    
    
  }
  void crear(){
     pokem = new FCircle(80);
    pokem.setName("pokemm");
    pokem.setGrabbable(false);
    pokem.setStatic(true);
    pokem.setPosition(x,y);
    selector = random(0,2);
    poke [0]= loadImage("magne.png");
    poke [1]= loadImage("gastobstacle.png" );
    poke [0]= magnegif;
    indice = int(selector);
    
    
    
    
  }
  void aparecer(){
    
    mundo.add(pokem);
  }
  void destruir(){
    mundo.remove(pokem);
  }
    
  void mover(){
    if(x<= 250){
    x++;
    }
  }
  void darimg(Gif enegif){
    
      pokem.attachImage(enegif);
  }
}
