Lineas l;
float x;
float y;



void setup(){
  size(600,768);
  l = new Lineas();
  
 
}
void draw(){
  translate(300,368);
  background(255);
  
  
  float angulo = map (mouseX,0,width,0,360);
  float dx = cos (radians(angulo));
  float dy = sin (radians(angulo));
  
  x = x+dx;
  y = y+dy;
  
  fill(255,0,0);
  noStroke();
  ellipse (x, y, 100, 100);
  
  l.dibujar();
  
 
  
}
