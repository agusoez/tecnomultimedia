import fisica.*;
import processing.sound.*;
SoundFile brick;
SoundFile magnemite;
SoundFile gastly;
SoundFile musica;
FWorld mundo;
FBox barra;
FRevoluteJoint revolute;
FBox bloque, bloque1;
FCircle circulo, bonus, bonus1;
Boton botonover;
Boton botonjugar;
Enemigo enem;
FPoly estructura0, estructura1, estructura2, estructura3;

int posi, posi1, cantbloq, cantbloq1, puntaje, vidas, temporizador, cantidad1, cantidad2;
float pelotaX, pelotaY, damage;
String estados, per;
PFont fuente;
boolean puedoagregar;
boolean hayenemigo, puedeaparecer, puedemusica;
boolean spawnenemigo;
PImage imagenpelota, bloqimg, bumper, fondo, inicio, perdiste, ganaste;
void setup() {
  puedemusica=true;
  brick = new SoundFile(this, "clap.wav");
  magnemite = new SoundFile(this, "magnemite.mp3");
  gastly = new SoundFile(this, "gastly.mp3");
  musica = new SoundFile(this, "music.mp3");
  
  damage = 40;
  cantidad1=2;
  cantidad2=3;
  hayenemigo=false;
  puedeaparecer = true;
  enem = new Enemigo();
  puedoagregar = true;
  per = "Volver a intentar";
  //enem = new Enemigo();
  botonover = new Boton(per, width/2, 700, 350, 50, 20);
  botonjugar = new Boton("Jugar", width/2, height/2, 300, 100, 20);
  size(500, 750);
  //fuente = loadFont("04B_30__.otf");
  fuente = createFont("Early GameBoy.ttf", 16);
  bloqimg = loadImage("stoun.png");
  bumper = loadImage("basicvoltorb.gif");
  inicio = loadImage("inicio.png");
  perdiste = loadImage("equiporocketperdiste.gif");
  ganaste = loadImage("equiporocketganaste.gif");
  fondo = loadImage("fondo.png");
  estados = "menu";
  puntaje = 0;
  cantbloq = 9;
  cantbloq1= 8;
  vidas = 3;
  Fisica.init(this);
  Fisica.setScale(180);

  mundo= new FWorld();
  mundo.setEdges();
  mundo.setEdgesRestitution(5);
  estructura0 = new FPoly();
  estructura0.vertex(490,301);
  estructura0.vertex(455,364);
  estructura0.vertex(401,423);
  estructura0.vertex(400,472);
  estructura0.vertex(449,565);
  estructura0.vertex(449,699);
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
  estructura1.vertex(40,699);
  estructura1.vertex(82,740);
  estructura1.vertex(1,740);
  estructura1.setGrabbable(false);
  estructura1.setStatic(true);
  
  estructura2 = new FPoly();
  estructura2.vertex(0,288);
  estructura2.vertex(0,0);
  estructura2.vertex(166,0);
  estructura2.vertex(111,18);
  estructura2.vertex(72,48);
  estructura2.vertex(34,91);
  estructura2.vertex(0,147);
  estructura2.setGrabbable(false);
  estructura2.setStatic(true);
  
  estructura3 = new FPoly();
  estructura3.vertex(491,288);
  estructura3.vertex(491,0);
  estructura3.vertex(332,0);
  estructura3.vertex(385,13);
  estructura3.vertex(437,49);
  estructura3.vertex(472,92);
  estructura3.vertex(491,147);
  estructura3.setGrabbable(false);
  estructura3.setStatic(true);
  
  barra= new FBox(130, 30);
  barra.setName("barra");
  barra.setGrabbable(false);
  circulo = new FCircle(30);
  circulo.setName("pelota");
  circulo.setGrabbable(false);
  circulo.setDensity(50);
  bonus = new FCircle(70);
  bonus.setName("bonus");
  bonus.setGrabbable(false);
  bonus1= new FCircle(70);
  bonus1.setName("bonus1");
  bonus1.setGrabbable(false);


  bonus.setPosition(100, 300);
  bonus1.setPosition(400, 300);
  barra.setPosition(width/2, height-60);
  circulo.setPosition(width/2, height/2);
  circulo.setStatic(false);
  barra.setStatic(true);
  bonus.setStatic(true);
  bonus.attachImage(bumper);
  bonus1.setStatic(true);
  bonus1.attachImage(bumper);

  //addFormaLoca();
  circulo.setRestitution(2.5);     

  imagenpelota = loadImage("pikaball.png");

  ///ANCLA//
  FBox ancla = new FBox(15, 15);
  ancla.setPosition(width/2, height/2 );
  ancla.setStatic(true);
  ancla.setName("anccla");
  mundo.add(ancla);

  FBox movimiento = new FBox(200, 20);
  movimiento.setName("movimientoo");
  movimiento.setPosition(width/2 -5, height/2 -5);
  mundo.add(movimiento);
  for (int i=0; i<4; i++) {
    float tam = 150;
    float angulo = radians(360)/4*i;
    float dx = (tam/4)*cos(angulo);
    float dy = (tam/4)*sin(angulo);
    FBox caja = new FBox(tam, 50);
  caja.setRotation(angulo);
  caja.setPosition(dx, dy);
}
  revolute = new FRevoluteJoint(ancla, movimiento, width/2, height/2);

 spawnenemigo = false;
}

void draw() {
  
  
  if (estados == "menu") {
   
    image (inicio, 0, 0);
    botonjugar.dibujar();

    pushStyle();
    stroke(0, 0, 255);
    textSize(90);
    textAlign(CENTER);
    textFont(fuente);
    popStyle();
  }

  if (estados == "inicio") {
    background(255,253,231);
    
    if(spawnenemigo == false){
    
    enem.x = random(90,410);
    enem.y= random(height/2, 600);
    enem.crear();
    spawnenemigo = true;
    }
    if (puedemusica) {
      musica.play();
      musica.loop();
      puedemusica=false;
    }
    
    if (vidas <=-1) {
      estados = "gameover";
    }
    if (hayenemigo == false) {
      temporizador ++;
      contadorenemigo(temporizador, hayenemigo);
      if (temporizador >= 600) {
        
        enem.darimg();
        hayenemigo=true;
        temporizador = 0;
      }
    }

    if (puedoagregar) {
      image(fondo,0,0);
      mundo.add(revolute);
      mundo.add(bonus);
      mundo.add(bonus1);
      mundo.add(barra);
      mundo.add(circulo);
      mundo.add(estructura0);
      mundo.add(estructura1);
      mundo.add(estructura2);
      mundo.add(estructura3);
      


      for (int i=0; i<cantbloq; i = i+1) {
        bloque = new FBox(50, 20);
        bloque.setName("bloque");
        bloque.attachImage(bloqimg);
        posi += 51;
        bloque.setPosition(0+posi, 100);
        bloque.setStatic(true); 
        bloque.setGrabbable(false);
        mundo.add(bloque);
      }
      for (int i=0; i<cantbloq1; i = i+1) {
        bloque1 = new FBox(50, 20);
        bloque1.setName("bloques");
        bloque1.attachImage(bloqimg);
        posi1 +=51;
        bloque1.setPosition(20+posi1, 121);
        bloque1.setStatic(true);
        bloque1.setGrabbable(false);
        mundo.add(bloque1);
      }

      puedoagregar = false;
    }
    //println(circulo.getVelocityY());
    mundo.step();
    mundo.draw();
    
    if (hayenemigo && puedeaparecer) {
      enem.aparecer();
      if (enem.indice == 0) {
        magnemite.play();
        
      }
      if (enem.indice == 1) {
        gastly.play();
        
      }
      puedeaparecer = false;
    }
    if (hayenemigo) {
      
      if (damage == 0) {
        enem.destruir();
        damage = 40;
        hayenemigo=false;
        puedeaparecer=true;
        temporizador = 0;
        spawnenemigo = false;
      }
    }

    circulo.attachImage(imagenpelota);
    


    barra.setPosition(mouseX, height-60);
    pelotaY = circulo.getY();
    //println(pelotaY);
    //println(cantbloq);
    if (pelotaY>= height-30) {
      circulo.setPosition(width/2, height/2);
      vidas--;
    }

    //PVector v= new PVector(circulo.getVelocityX(),circulo.getVelocityY());
    float velocidad = dist(0, 0, circulo.getVelocityX(), circulo.getVelocityY());

    if (velocidad>800) {
      float angulo = atan2(circulo.getVelocityY(), circulo.getVelocityX());
      float vx = 800*cos(angulo);
      float vy = 800*sin(angulo);
      circulo.setVelocity(vx, vy );
    }
    image(fondo,0,0);
    pushStyle();
    fill(0);
    text("puntaje:"+ puntaje, 261, 210);

    textSize(20);
    textAlign(CENTER);
    textFont(fuente);
    popStyle();
    //Vidas
    pushStyle();
    fill(0);
    text("vidas:"+ vidas, 62, 210);

    textSize(20);
    textAlign(CENTER);
    textFont(fuente);
    popStyle();
  }
  //PANTALLA DE GAMEOVER


  if (estados == "gameover") {
    musica.stop();
    image(perdiste,0,0);
    gameover((FBox)barra, (FBox)bloque, (FCircle)circulo, (FCircle)bonus, 
      (FCircle)bonus1, (FBox)bloque1, cantbloq, cantbloq1);
    if (hayenemigo) {
      enem.destruir();
      hayenemigo=false;
      puedeaparecer=true;
      temporizador = 0;
    }
    pushStyle();
    text("Fin del juego", width/2, height/2-100);
    textSize(80);
    textAlign(CENTER, CENTER);
    // fill(255,40,50);
    stroke(255, 0, 0);

    textFont(fuente);
    botonover.dibujar();
    popStyle();
  }
  if (estados == "reinicio") {


    cantbloq=9;
    cantbloq1=8;
    posi=0;
    posi1=0;

    estados = "inicio";
  }
}

void keyPressed() {
  if (keyCode==CONTROL) {
    circulo.setPosition(width/2, height/2);
  }
  if (keyCode==LEFT && hayenemigo) {
    damage--;
    println(damage);
  }
}
void mousePressed() {
  if (estados=="gameover") {
    if (botonover.encima()) {
      estados = "reinicio";
      puedoagregar = true;
      vidas = 3;
      puntaje = 0;
      puedemusica = true;
    }
  }
  if (estados=="menu") {
    if (botonjugar.encima()) {
      estados = "inicio";
    }
  }
}

void contactStarted(FContact contacto)
{
  FBody body1 = contacto.getBody1();
  FBody body2= contacto.getBody2();

  println(body1.getName());
  String nombre1 = darnombre(body1);
  String nombre2 = darnombre(body2);
  println(nombre1, "y", nombre2);

  if (cantbloq<=0 && cantbloq1<=0) {
    cantbloq=9;
    cantbloq1=8;
    posi=0;
    posi1=0;

    for (int i=0; i<cantbloq; i = i+1) {
      bloque = new FBox(50, 20);
      bloque.setName("bloque");
      bloque.attachImage(bloqimg);
      posi += 51;
      bloque.setPosition(0+posi, 100);
      bloque.setStatic(true); 
      bloque.setGrabbable(false);
      mundo.add(bloque);
    }
    for (int i=0; i<cantbloq1; i = i+1) { 
      bloque1 = new FBox(50, 20);
      bloque1.setName("bloques");
      bloque1.attachImage(bloqimg);
      posi1 +=51;
      bloque1.setPosition(20+posi1, 121);
      bloque1.setStatic(true);
      bloque1.setGrabbable(false);
      mundo.add(bloque1);
    }
  }

  if (vidas == -1) {
    estados = "gameover";
  }


  if (nombre1 == "bloques" && nombre2 == "pelota") {
    desaparecer((FBox)body1);
    println("contacto");
    puntaje += 10;
    cantbloq1--;
    brick.play();
  }
  if (nombre1 == "bloque" && nombre2 == "pelota") {
    desaparecer((FBox)body1);
    println("contacto");
    puntaje += 10;
    cantbloq--;
    brick.play();
  }
  if (nombre2 == "bloques" && nombre1 == "pelota") {
    //desaparecer((FBox)body1);
    println("contacto");
  }
  if (nombre1=="bonus" && nombre2=="pelota") {
    println("contacto");
    puntaje +=5;
    circulo.setRestitution(2);
  }
  if (nombre1=="bonus1" && nombre2=="pelota") {
    println("contacto");
    puntaje +=5;
    circulo.setRestitution(4);
  } else {
    circulo.setRestitution(2.5);
  }
  if (nombre1=="barra" && nombre2=="pelota") {
    println("contacto");
    circulo.setRestitution(4);
  } else {
    circulo.setRestitution(2.5);
  }
  if (nombre1=="nada" && nombre2=="pelota") {
    println("contacto");
    circulo.setRestitution(4);
  } else {
    circulo.setRestitution(2.5);
  }
  if (nombre1=="pelota" && nombre2=="pokemm") {
    vidas--;
  }
}
