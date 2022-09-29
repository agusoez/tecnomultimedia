//Alvarez Lisette, Repollo Máximo y Soñez Agustín
//TP2 Etapa 4 - Comisión 2 - Prof. Lisandro Peralta y Abril Aleuy
//Tecnología Multimedial 2 - 2022


import gifAnimation.*;
import fisica.*;
import processing.sound.*;
SoundFile brick;
SoundFile magnemite;
SoundFile gastly;
SoundFile musica;
SoundFile intro;
SoundFile losem;
SoundFile Voltgrito;
SoundFile victory;
FWorld mundo;
FBox barra;
FRevoluteJoint revolute;
FBox bloque, bloque1;
FCircle circulo, bonus, bonus1;
Boton botonover;
Boton botonjugar;
Boton instructivo;
Enemigo enem;
Snor snor;
FPoly estructura0, estructura1, estructura2, estructura3;
Gif Voltanimation;
Gif Voltanimation1;
Gif Rocketanimation;
Gif magnegif;
Gif magnehit;
Gif gasgif;
Gif voltorbhit;
Gif voltorbhit1;
Gif magnesaparece;
Gif gasdesaparece;
Gif rocketwin;
Gif panzaso;
Gif rocketwin2;


int posi, posi1, cantbloq, cantbloq1, puntaje, vidas, temporizador, cantidad1, cantidad2;
float pelotaX, pelotaY, damage;
int score1,score2,score3;
String estados, per;
PFont fuente;
boolean puedoagregar;
boolean hayenemigo, puedeaparecer, puedemusica,puedevictory;
boolean spawnenemigo,animar,puedemusic,puedelose;
PImage imagenpelota, bloqimg, bumper, fondo, inicio, perdiste, ganaste,inst1,inst2,bar,vent;
void setup() {
  puedevictory = true;
  puedemusic = true;
  puedelose = true;
  animar = false;
  rocketwin2 = new Gif(this, "equiporocketganaste1.gif" );
  rocketwin2.play();
  panzaso = new Gif(this,"snorlaxcontact.gif");
  panzaso.play();
 // panzaso.resize(80,80);
  rocketwin = new Gif(this,"equiporocketganaste.gif");
  rocketwin.play();
  magnesaparece = new Gif(this,"magnemiteout.gif");
  magnesaparece.play();
  gasdesaparece = new Gif(this,"gastlyout.gif");
  gasdesaparece.play();
  magnehit = new Gif(this,"magnemiteattackkkkk.gif");
  magnehit.play();
  Voltanimation = new Gif(this, "basicvoltorb.gif");
    Voltanimation.play();
    magnegif = new Gif(this, "magnemiteattack.gif");
    magnegif.play();
    Rocketanimation = new Gif(this, "equiporocketperdiste.gif");
    Rocketanimation.play();
    gasgif = new Gif(this,"gastly.gif");
    gasgif.play();
    voltorbhit = new Gif(this,"voltorbhit.gif" );
    voltorbhit.play();
    voltorbhit1 = new Gif(this,"voltorbhit.gif" );
    voltorbhit1.play();
  puedemusica=true;
  brick = new SoundFile(this, "clap.wav");
  magnemite = new SoundFile(this, "magnemite.mp3");
  gastly = new SoundFile(this, "gastly.mp3");
  musica = new SoundFile(this, "music.mp3");
  intro = new SoundFile(this, "intro.mp3");
  losem = new SoundFile(this, "rocketmusic.mp3");
  Voltgrito = new SoundFile(this, "voltorbgrito.mp3");
  victory = new SoundFile(this,"victorymusic.mp3");
  
  score1 = 0;
  score2 = 0;
  score3 = 0;
  damage = 40;
  cantidad1=2;
  cantidad2=3;
  hayenemigo=false;
  puedeaparecer = true;
  enem = new Enemigo();
  snor = new Snor();
  
  puedoagregar = true;
  per = "Volver a intentar";
  //enem = new Enemigo();
  instructivo = new Boton("Instrucciones",width/2,height/2,250,100,20);
  botonover = new Boton(per, width/2, 700, 350, 50, 20);
  botonjugar = new Boton("Jugar", width/2, height/2-130, 300, 100, 20);
  size(500, 750);
  //fuente = loadFont("04B_30__.otf");
  fuente = createFont("Early GameBoy.ttf", 16);
  bloqimg = loadImage("stoun.png");
  bumper = loadImage("basicvoltorb.gif");
  inicio = loadImage("inicio.png");
  perdiste = loadImage("equiporocketperdiste.gif");
  ganaste = loadImage("equiporocketganaste.gif");
  fondo = loadImage("fondo.png");
  inst1 = loadImage("Intrucciones.png");
  inst2 = loadImage("intrucciones2.png");
  bar = loadImage("barra.png");
  vent = loadImage("ventilador.png");
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
  crearestructura();
  
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
  barra.attachImage(bar);
  bonus.attachImage(Voltanimation);
  bonus1.setStatic(true);
  bonus1.attachImage(Voltanimation);

  //addFormaLoca();
  circulo.setRestitution(2.5);     

  imagenpelota = loadImage("pikaball.png");

  ///ANCLA//
  FBox ancla = new FBox(15, 15);
  ancla.setPosition(width/2, height/2 +100);
  ancla.setStatic(true);
  ancla.setName("anccla");
  ancla.setNoFill();
  ancla.setNoStroke();
  mundo.add(ancla);

  FBox movimiento = new FBox(150, 15);
  movimiento.setName("movimientoo");
  movimiento.attachImage(vent);
  movimiento.setPosition(width/2 , height/2 +100);
  mundo.add(movimiento);
  for (int i=0; i<4; i++) {
    float tam = 150;
    float angulo = radians(360)/4*i;
    float dx = (tam/4)*cos(angulo);
    float dy = (tam/4)*sin(angulo);
    FBox caja = new FBox(tam, 50);
    caja.setNoFill();
  caja.setNoStroke();
  caja.setRotation(angulo);
  caja.setPosition(dx, dy);
  
}
  revolute = new FRevoluteJoint(ancla, movimiento, width/2, height/2+100);
  revolute.setNoFill();
  revolute.setNoStroke();
  revolute.setEnableMotor(true);
  revolute.setMotorSpeed(4);
  revolute.setMaxMotorTorque(5);

 spawnenemigo = false;
}

void draw() {
  
  println(estados);
  if (estados == "menu") {
     
    image (inicio, 0, 0);
    image(fondo,0,0);
    botonjugar.dibujar();
    instructivo.dibujar();

    pushStyle();
    stroke(0, 0, 255);
    textSize(90);
    textAlign(CENTER);
    textFont(fuente);
    popStyle();
    if (puedemusic) {
      intro.play();
      intro.loop();
      puedemusic=false;
    }
  }
  
  if (estados == "instruccion"){
    background(0);
    image(inst2,0,0);
    image(fondo,0,0);
  }
  if (estados == "instruccion1"){
    background(0);
    image(inst1 ,0,0);
    image(fondo,0,0);
  }

  if (estados == "inicio") {
    background(255,253,231);
    intro.stop();
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
    
    if (vidas <=-1 &&  puntaje < 100 ) {    
      estados = "gameover";
    }
    if (vidas <=-1 && puntaje >100){
      if(puntaje > score1){
        score3 = score2;
        score2 = score1;
       score1 = puntaje;
       
     }
     if(puntaje < score1 && puntaje > score2){
       score3 = score2;
       score2 = puntaje;
     }
     if(puntaje < score2 && puntaje > score3){
       score3 = puntaje;
     }
      estados = "win";
      puedevictory = true;
    }
    if (hayenemigo == false) {
      temporizador ++;
      contadorenemigo(temporizador, hayenemigo);
      if (temporizador >= 600) {
        if (enem.indice == 0){
        enem.darimg(magnegif);
        }
        else if (enem.indice == 1){
          enem.darimg(gasgif);
        }
        hayenemigo=true;
        temporizador = 0;
      }
    }

    if (puedoagregar) {
      snor.crear();
      snor.darimg();
      mundo.add(revolute);
      mundo.add(bonus);
      mundo.add(bonus1);
      mundo.add(barra);
      mundo.add(circulo);
      mundo.add(estructura0);
      mundo.add(estructura1);
      mundo.add(estructura2);
      mundo.add(estructura3);
      snor.generar();
      


      for (int i=0; i<cantbloq; i = i+1) {
        bloque = new FBox(50, 20);
        bloque.setName("bloque");
        bloque.attachImage(bloqimg);
        posi += 51;
        bloque.setPosition(0+posi, 150);
        bloque.setStatic(true); 
        bloque.setGrabbable(false);
        mundo.add(bloque);
      }
      for (int i=0; i<cantbloq1; i = i+1) {
        bloque1 = new FBox(50, 20);
        bloque1.setName("bloques");
        bloque1.attachImage(bloqimg);
        posi1 +=51;
        bloque1.setPosition(20+posi1, 171);
        bloque1.setStatic(true);
        bloque1.setGrabbable(false);
        mundo.add(bloque1);
      }

      puedoagregar = false;
    }
    //println(circulo.getVelocityY());
    mundo.step();
    mundo.draw();
    image(fondo,0,0);
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
        if (enem.indice == 0){
          enem.darimg(magnesaparece);
        }
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
    //image(fondo,0,0);
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

  if(estados == "win"){
    musica.stop();
    if (puedevictory) {
      victory.play();
      victory.loop();
      puedevictory=false;
    }
    image(rocketwin2,0,0);
    image(fondo,0,0);
    gameover((FBox)barra, (FBox)bloque, (FCircle)circulo, (FCircle)bonus, 
      (FCircle)bonus1, (FBox)bloque1, cantbloq, cantbloq1);
      if (hayenemigo) {
      enem.destruir();
      hayenemigo=false;
      puedeaparecer=true;
      temporizador = 0;
    }
    pushStyle();
    fill(0);
    pushStyle();
    textSize(30);
    textAlign(CENTER);
    text("Felicidades!", width/2, height/2-200);
    popStyle();
    pushStyle();
    textSize(23);
    textAlign(CENTER);
     text("Tu puntaje fue de:"+puntaje,width/2,height/2-100);
     popStyle();
    textAlign(CENTER, CENTER);
    textSize(25);
    text("1-"+score1,width/2,height/2);
    text("2-"+score2,width/2,height/2+100);
     text("3-"+score3,width/2,height/2+200);
    
    
    
    stroke(0, 0, 0);

    textFont(fuente);
    botonover.dibujar();
    popStyle();
  }
  if (estados == "gameover") {
    musica.stop();
     if (puedelose) {
      losem.play();
      losem.loop();
      puedelose=false;
    }
    image(Rocketanimation,0,0);
    image(fondo,0,0);
    gameover((FBox)barra, (FBox)bloque, (FCircle)circulo,(FCircle)bonus, 
      (FCircle)bonus1, (FBox)bloque1, cantbloq, cantbloq1);
    if (hayenemigo) {
      enem.destruir();
      hayenemigo=false;
      puedeaparecer=true;
      temporizador = 0;
    }
    pushStyle();
    fill(0);
    textSize(27);
    textAlign(CENTER, CENTER);
    text("Fin del juego", width/2, height/2-300);
    // fill(255,40,50);
    stroke(255, 0, 0);

    textFont(fuente);
    botonover.dibujar();
    popStyle();
    pushStyle();
    fill(0);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Vuelve a intentarlo!", width/2, height/2-200);
    popStyle();
  }
  if (estados == "reinicio") {
    victory.stop();
    losem.stop();
    cantbloq=9;
    cantbloq1=8;
    posi=0;
    posi1=0;

    estados = "inicio";
  }
}

void keyPressed() {
  if (estados == "menu"){
    if (keyCode == UP){
      estados = "win";
    }
    if(keyCode == DOWN){
      estados = "gameover";
      intro.stop();
    }
  }
  if (keyCode==CONTROL) {
    circulo.setPosition(width/2, height/2);
  }
  if (keyCode==LEFT && hayenemigo) {
    damage--;
    println(damage);
  }
  if (estados == "instruccion"){
    if (keyCode ==LEFT){
      estados = "instruccion1";
    }
  }
  if ((estados == "instruccion") || (estados=="instruccion1")){
    if(keyCode ==CONTROL){
      estados = "menu";
    }
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
      circulo.resetForces();
    }
  }
   if (estados=="win") {
    if (botonover.encima()) {
      estados = "reinicio";
      puedoagregar = true;
      vidas = 3;
      puntaje = 0;
      puedemusica = true;
      circulo.resetForces();
    }
  }
  if (estados=="menu") {
    if (botonjugar.encima()) {
      estados = "inicio";
    }
    if (instructivo.encima()){
      estados = "instruccion";
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
      bloque.setPosition(0+posi, 150);
      bloque.setStatic(true); 
      bloque.setGrabbable(false);
      mundo.add(bloque);
    }
    for (int i=0; i<cantbloq1; i = i+1) { 
      bloque1 = new FBox(50, 20);
      bloque1.setName("bloques");
      bloque1.attachImage(bloqimg);
      posi1 +=51;
      bloque1.setPosition(20+posi1, 171);
      bloque1.setStatic(true);
      bloque1.setGrabbable(false);
      mundo.add(bloque1);
    }
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
  if (nombre1=="bonus" && nombre2=="pelota" || nombre1=="pelota" && nombre2=="bonus") {
    Voltgrito.play();
    println("contacto");
    puntaje +=5;
    circulo.setRestitution(2);
    bonus.attachImage(voltorbhit);
  }
  else{
    bonus.attachImage(Voltanimation);
  }
  
  //if (nombre1=="pelota" && nombre2=="bonus") {
   // println("contacto");
    //puntaje +=5;
   // circulo.setRestitution(2);
    //bonus.attachImage(voltorbhit);
  //} 
  //else{
    //bonus.attachImage(Voltanimation);
  //}
  
  if (nombre1=="bonus1" && nombre2=="pelota" || nombre1=="pelota" && nombre2=="bonus1") {
    Voltgrito.play();
    println("contacto");
    puntaje +=5;
    circulo.setRestitution(4);
    bonus1.attachImage(voltorbhit1);
  } 
  else {
    circulo.setRestitution(2.5);
    bonus1.attachImage(Voltanimation);
  }
  
   //if (nombre1=="pelota" && nombre2=="bonus1") {
   // println("contacto");
   // puntaje +=5;
   // circulo.setRestitution(4);
   // bonus1.attachImage(voltorbhit1);
  //} 
  //else {
   // circulo.setRestitution(2.5);
   // bonus1.attachImage(Voltanimation);
  //}
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
    if (enem.indice == 0){
      enem.darimg(magnehit);
    }
    vidas--;
  }
  if (nombre1=="pelota" && nombre2=="snorrr"){
    puntaje +=20;
    snor.dargif(panzaso);
  }
  else {
    snor.darimg();
  }
   if (vidas <=-1 &&  puntaje < 100 ) {    
      estados = "gameover";
    }
    if (vidas <=-1 && puntaje >100){
      if(puntaje > score1){
        score3 = score2;
        score2 = score1;
       score1 = puntaje;
       
     }
     if(puntaje < score1 && puntaje > score2){
       score3 = score2;
       score2 = puntaje;
     }
     if(puntaje < score2 && puntaje > score3){
       score3 = puntaje;
     }
      estados = "win";
    }
 
}
