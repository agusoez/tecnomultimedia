class Snor{
  float x,y;
  int alto,ancho,indice;
  FCircle snorl;
  PImage snorimg;
  Gif snorhit;
  
  Snor(){
    snorimg = loadImage("snorlax.png");
    alto =200;
    ancho =300;
    x = width/2;
    y = 60; 
    snorimg.resize(80,80);
    
    
    
    
  }
  void crear(){
     snorl = new FCircle(80);
    snorl.setName("snorrr");
    snorl.setGrabbable(false);
    snorl.setStatic(true);
    snorl.setPosition(x,y);  
    
  }
  void generar(){
    
    mundo.add(snorl);
  }
  void destruir(){
    mundo.remove(snorl);
  }
    
  void darimg(){
    
      snorl.attachImage(snorimg);
  }
  void dargif(Gif panza){
    snorl.attachImage(panza);
  }
}
