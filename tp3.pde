//Soñez Agustín, Legajo 81783/9 
//Comisión 3 David Bedoian
//Link a video-explicación en Youtube >> https://youtu.be/YDyaQ1x9RPg <<
void setup () {
  size(600, 600);
}
void draw () {
  background(75);

  colorMode(HSB);
  stroke(random(255), 200, 200, frameCount);
  strokeWeight(2);

  for ( int a=0; a<width; a=a+21) {
    line( width/2, height/2, a, 0);
    line( width/2, height/2, a, height);
  }
  for (int b = 0; b<height; b=b+21) {
    line( width/2, height/2, 0, b);
    line( width/2, height/2, width, b);
  }
  fill(0);
  ellipseMode(CENTER);
  ellipse(width/2, height/2, 100, 100);
  stroke(0);
  if (mousePressed) {
    line (mouseX-55, 0, mouseX-55, height);
    line (mouseX+55, 0, mouseX+55, height);
  } else {
    line (0, mouseY+55, width, mouseY+55);
    line (0, mouseY-55, width, mouseY-55);
  }
  pushStyle();
  fill(75);
  noStroke();
  rectMode(CENTER);
  rect(width/2, 590, 300, 15);
  fill(0);
  textSize(15);
  textAlign(CENTER);
  text("Mantenga presionado click para rotar", width/2, 595);
  popStyle();
}
