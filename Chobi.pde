class Chobi {

  int cooldown, frame, coolSon;
  float rot, vel, rad, volumen;
  PVector Pos, Vel, Dir;
  PShape Formita;
  AudioPlayer Arrastre;

  Chobi(Terreno terreno, Minim minim) {
    rad = 20;
    Pos = new PVector(terreno.tamX/2, terreno.tamY/2);
    vel = .2;
    Vel = new PVector(0, 0);
    Dir = new PVector(0, 0);
    rot = radians(random(360));
    cooldown = 240;
    coolSon = 100;
    volumen = 0;
    frame = 0;
    Arrastre = minim.loadFile("Sonidos/Arrastre.wav");
    Formita = loadShape("Chobi.obj");
    Formita.scale(10);
    Formita.rotateX(PI);
  }

  /*Casi todo el Bicho funciona exactametne igual que el Player, copié la misma
  clase y la asigné el cooldown para que cada tanto tiempo se cambie el ángulo de
  movimiento por uno random.*/
  void Update(Rectangulo[] rec, Terreno terreno, Player PJ) {
    if (Arrastre.position() == Arrastre.length()){Arrastre.rewind();}
    Mover();
    Colision(rec);
    Colision_Terreno(terreno);
    /*Acá está la única gran diferencia con la calse Player.
      Dependiendo de la distancia que tenga el Bicho con el jugador el sonido de
      arrastre va a sonar más o menos fuerte.
      
      No quería hacer una interfaz visual, además de que me parecía que rompía la poca
      ambientación que intenté generar, así que mientras más cerca tenga el jugador al 
      Bicho, más fuerte va a sonar el arrastre*/
    if (frameCount%coolSon == 0){Arrastre.play();}
    if(dist(Pos.x,Pos.y,PJ.Pos.x,PJ.Pos.y)<rad*20){
      volumen = map(dist(Pos.x,Pos.y,PJ.Pos.x,PJ.Pos.y),rad*20,0,-50,10);
    }else{volumen = -50;}
    Arrastre.setGain(volumen);
    
    frame += 1;
    if (frame == cooldown) {
      rot = radians(random(360));
      frame = 0;
    }
  }

  void Mostrar() {
    push();
      fill(255);
      noStroke();
      translate(Pos.x,358,Pos.y);
      shape(Formita);
    pop();
  }

  void Mover() {
    Dir.x = cos(rot)*vel;
    Dir.y = sin(rot)*vel;
    this.Vel.add(Dir);
    this.Pos.add(Vel);
    this.Vel.mult(.2);
    this.Vel.mult(.75);
  }

  void Colision(Rectangulo[] rect) {
    for (int re=0; re<rect.length; re++) {
      for (int i = 0; i<rect[re].tamY/2-rad/2; i++) {
        if ((dist(Pos.x, Pos.y, rect[re].x-rect[re].tamX/2, rect[re].y+i) <= rad) || (dist(Pos.x, Pos.y, rect[re].x-rect[re].tamX/2, rect[re].y-i) <= rad)) {
          Pos.x = rect[re].x-rect[re].tamX/2-rad;
        } else if ((dist(Pos.x, Pos.y, rect[re].x+rect[re].tamX/2, rect[re].y+i) <= rad) || (dist(Pos.x, Pos.y, rect[re].x+rect[re].tamX/2, rect[re].y-i) <= rad)) {
          Pos.x = rect[re].x+rect[re].tamX/2+rad;
        }
      }
      for (int i=0; i<rect[re].tamX/2-rad/2; i++) {
        if ((dist(Pos.x, Pos.y, rect[re].x+i, rect[re].y-rect[re].tamY/2) <= rad) || (dist(Pos.x, Pos.y, rect[re].x-i, rect[re].y-rect[re].tamY/2) <= rad)) {
          Pos.y = rect[re].y-rect[re].tamY/2-rad;
        } else if ((dist(Pos.x, Pos.y, rect[re].x+i, rect[re].y+rect[re].tamY/2) <= rad) || (dist(Pos.x, Pos.y, rect[re].x-i, rect[re].y+rect[re].tamY/2) <= rad)) {
          Pos.y = rect[re].y+rect[re].tamY/2+rad;
        }
      }
    }
  }

  void Colision_Terreno(Terreno terreno){
    if (Pos.x<0+rad){Pos.x=0+rad;}
    if (Pos.x>terreno.tamX-rad){Pos.x=terreno.tamX-rad;}
    if (Pos.y<0+rad){Pos.y=0+rad;}
    if (Pos.y>terreno.tamY-rad){Pos.y=terreno.tamY-rad;}
  }

}
