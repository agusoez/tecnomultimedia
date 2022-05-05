float x;
float y;
GestorDeInteraccion g;
Triangulo tri;
imagen lineas,rosa,amarillo,verde,trian;




void setup(){
 size(600,720);
 
 g = new GestorDeInteraccion();
 tri= new Triangulo();
 lineas = new imagen("Lineas.png");
 rosa = new imagen("rosa.png");
 amarillo = new imagen("amarillo.png");
 verde = new imagen("verde.png");
 
 //trian = new imagen("triangulos.png");
 
}

void draw(){
  g.movimiento();
  
  if (g.movGrande){
   
    
    
    
  }else if(g.movPeque){
    
   
  }
  
  translate(300,368);//refrescar pantalla
  background(255,255,245);//refrescar pantalla
  
  tri.dibujar();
  dibujarcircu();//circulos girando

  rosa.setX(200);
  rosa.setY(mouseY/2);
  rosa.dibujar();
  
  amarillo.setX(mouseX/2);
  amarillo.setY(200);

  amarillo.dibujar();
  
  verde.setX(mouseX/2);
  verde.setY(mouseY/2);
  verde.rebote();
  verde.dibujar();
  
 // trian.setX(mouseX);
 // trian.setY(mouseY);
  
  lineas.setX(-150);
  lineas.setY(-192);
  lineas.girarY();
  
  
  
}
void dibujarcircu() {
    for (int i=0; i<360; i+=90) {
      float angulo = map(mouseX, 0, width, 0, TWO_PI)+radians(i);//para modificar la velocidad multiplicar mouseX (mousex*2)
      float distancia = 250;
      float x = distancia*cos(angulo);
      float y = distancia*sin(angulo);
      noStroke();
      switch(i){
        case 0:
          fill(255, 0, 0, 150);
          ellipse (x, y, 100, 100);
          break;
        case 90:
          fill(0, 255, 0, 150);
          ellipse (x, y, 100, 100);
          break;
        case 180:
          fill(0, 0, 255, 150);
          ellipse (x, y, 100, 100);
          break;
        case 270:
          fill(255, 255, 0, 150);
          ellipse (x, y, 100, 100);
          break;
        default:
      }
      
    }
  
  }
  
