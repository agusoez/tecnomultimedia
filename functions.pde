String darnombre(FBody cuerpo){
 String nombre = "nada";
  
  if (cuerpo != null)
  {
    nombre = cuerpo.getName();
    
    if (nombre == null)
    {
      nombre = "nada";
    }
  }
  
  return nombre;
}


void desaparecer(FBox bloq)
{
  float ancho = bloq.getWidth();
  float alto = bloq.getHeight();
  float x = bloq.getX();
  float y = bloq.getY();
  mundo.remove(bloq);
}
void gameover(FBox barra, FBox bloqu, FCircle bola,FCircle bumper,FCircle bumper1,
FBox bloqu1,int cantbloqu,int cantbloqu1){
  mundo.remove(barra);
  for (int i=0;i<cantbloqu;i++){
  mundo.remove(bloqu);
  }
  mundo.remove(bola);
  mundo.remove(bumper);
  mundo.remove(bumper1);
  for (int i=0;i<cantbloqu1;i++){
  mundo.remove(bloqu1);
  }
}
 void contadorenemigo(int tiempo_,boolean hay){
  int tiempo = tiempo_;
  println(tiempo);
  println(hay);
  if (tiempo >= 600){
    hay=true;
  }
}
