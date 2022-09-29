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
void gameover(FBox barra, FBox bloqu, FCircle bumper,FCircle bumper1,
FCircle bola,FBox bloqu1,int cantbloqu,int cantbloqu1){
  mundo.remove(barra);
  for (int i=0;i<cantbloqu;i++){
  mundo.remove(bloqu);
  }
  
  mundo.remove(bumper);
  mundo.remove(bumper1);
  mundo.remove(bola);
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
void crearestructura(){
 estructura0 = new FPoly();
  estructura0.vertex(490,301);
  estructura0.vertex(459,367);
  estructura0.vertex(403,423);
  estructura0.vertex(400,472);
  estructura0.vertex(455,565);
  estructura0.vertex(409,740);
  estructura0.vertex(488,740);
  estructura0.setGrabbable(false);
  estructura0.setStatic(true);

  estructura1 = new FPoly();
  estructura1.vertex(0,301);
  estructura1.vertex(33,364);
  estructura1.vertex(86,423);
  estructura1.vertex(89,472);
  estructura1.vertex(39,565);
  estructura1.vertex(82,740);
  estructura1.vertex(1,740);
  estructura1.setGrabbable(false);
  estructura1.setStatic(true);

  estructura2 = new FPoly();
  estructura2.vertex(-8,288);
  estructura2.vertex(-8,0);
  estructura2.vertex(166,0);
  estructura2.vertex(111,18);
  estructura2.vertex(72,48);
  estructura2.vertex(34,91);
  estructura2.vertex(0,147);
  estructura2.vertex(0,288);
  estructura2.setGrabbable(false);
  estructura2.setStatic(true);

  estructura3 = new FPoly();
  estructura3.vertex(505,288);
  estructura3.vertex(505,0);
  estructura3.vertex(332,0);
  estructura3.vertex(385,13);
  estructura3.vertex(437,49);
  estructura3.vertex(472,92);
  estructura3.vertex(491,150);
  estructura3.vertex(491,288);
  estructura3.setGrabbable(false);
  estructura3.setStatic(true);
}
