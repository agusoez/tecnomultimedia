// Soñez Agustín 81783/9
// TP1 - Comisión 3
void setup(){
 size(600,600);  
}  

void draw(){
  
  noFill();
  strokeWeight(3);
  stroke(255);
  ellipse(300,300,450,450);
  line(300,75,110,405);
  line(110,405,500,400);
  line(500,400,300,75);
  line(300,525,110,180);
  line(110,180,500,180);
  line(500,180,300,525);
  noStroke();
  
  //RGB
  fill(255,0,0);
  ellipse(300,75,110,110);
  
  fill(0,255,0);
  ellipse(100,405,110,110);
  
  fill(0,0,255);
  ellipse(500,405,110,110);
  
  
  //CMY
  noStroke();
  fill(0,255,255);
  ellipse(300,525,110,110);
  
  fill(255,255,0);
  ellipse(100,180,110,110);
  
  fill(255,0,255);
  ellipse(500,180,110,110);
  
  //intermedios
  fill(200,255,0);
  ellipse(75.5,292.5,90,90);
  fill(150,0,255);
  ellipse(522.5,292.5,90,90);
  fill(255,150,0);
  ellipse(185.5,102.5,90,90);
  fill(255,0,100);
  ellipse(412.5,102.5,90,90);
  fill(0,255,190);
  ellipse(180.5,492.5,90,90);
  fill(0,150,255);
  ellipse(412.5,492.5,90,90);
  

  textSize(15);
  fill(0);
  textAlign(CENTER);
  text("Rojo",300,80);
  text("Azul",500,410);
  text("Verde",100,410);
  text("Cyan",300,530);
  text("Magenta",500,185);
  text("Amarillo",100,185);
}
