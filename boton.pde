class Boton{
  float x,y;
  int ancho,alto,tam;
  String label;
  
  Boton(String label_, float x_, float y_,int ancho_, int alto_,int tam_){
    x= x_;
    y= y_;
    label= label_;
    ancho= ancho_;
    alto= alto_;
    tam= tam_;
  }
  void actual(){
    dibujar();
  }
 //Programa que dibuja el boton.
  void dibujar(){
    pushMatrix();
    pushStyle();
    translate(x,y);
    //Comprobar estado,si el mouse esta o no encima.
    if (encima()){
      fill(0,200,0);
    }else{
    fill(200,0,0);
          }
    rectMode(CENTER);
    noStroke();
    rect(0,0,ancho,alto,5);
    fill(255);
  textFont(fuente);
    textAlign(CENTER,CENTER);
    textSize(tam);
    text( label , 0 , 0);
    popMatrix();
    popStyle();
  }
  //Funcion booleana para comprobar la colision del mouse con el boton
  boolean encima(){
    if( mouseX > x-ancho/2 && mouseX < x+ancho/2 
       && mouseY > y-alto/2 && mouseY < y+alto/2){
         return true;
  }else{
    return false;
  }
  }
}
