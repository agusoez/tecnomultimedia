class CaminanteTri {

  float x, y, t, vel, dir;


  CaminanteTri() {
    x = 0;
    y = 0;
    vel = 15;
    dir = 0;
  }

  void dibujar(float xtri, float xtrii, float xtriii, float ytri) {
    triangle(xtri, 0, xtrii, 0, xtriii, y* ytri);
  }

  void mover() {  //NO TOCO NADA MÁS
    //  x= x+vel*cos(dir);
    y= y+vel*sin(dir);
    //paso de a dos px a un angulo determinado por dir
  }

  void cambiarDir() {

    //HASTA CIERTO PUNTO
    if (y<=-340) {
      y= -339;
    }
    if (y>-90) {
      y= -91;
    }

    //ESTRECHARSE Y ESANCHARSE
    if ( mouseY<=height/2) { //condicion a CAMBIAR de pmouseY a movimiento rapido
      dir =-90;            // se estrecha/ alarga     ---->//si c estrecha hay que cambiar tambien 
                                                           //el punto en x de los otros vertices :l
                                                          //(...veremos)
    } else if (mouseY>height/2) {//condicion a CAMBIAR de pmouseY a movimiento lento
      //se achata
      //      dirAzul = -90;
      dir =90;
    }
  }
}
