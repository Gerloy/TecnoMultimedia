class Player {
  AudioPlayer Corazon;
  boolean M_Ad, M_At, R_Iz, R_Der;
  float rot, rotCam, vel, rad, angBicho;
  PVector Pos, Vel, Dir, Cam_Pos;
  float Dis;
  int tiempo, coolSon;

  Player(Terreno terreno, Minim minim) {
    M_Ad = false;
    M_At = false;
    R_Iz = false;
    R_Der = false;
    rad = 10;
    Pos = new PVector(terreno.tamX/2, rad);
    vel = .5;
    Vel = new PVector(0, 0);
    Dir = new PVector(0, 0);
    rot = QUARTER_PI;
    Dis = -rad;
    tiempo = 0;
    coolSon = 60;
    Corazon = minim.loadFile("Sonidos/Corazon.wav");
    Corazon.setGain(40);
  }

  void Update(Rectangulo[] rec, Terreno terreno) {
    Mover();
    Colision(rec);
    Colision_Terreno(terreno);

    //Cámara
    /*Define la perspectiva:
      FOV: 90 grados (lo estandar en juegos en primera persona de PC)
      
      Relación de aspecto: 720p (es una relación maso menos estandar actualmente, pero la elegí porque si ponía la relació 640/480, al agrandar la pantalla se renderizaba todo en esa resolución en la esquina inferior izquierda, dejando todo lo demás en negro)
      
      Clipping Plane (near): El punto en el que la cámara empieza a ver es a su posición sumada a la mitad del radio de colisión. Si lo ponía más cerca podía generar problemas y ver detrás de algunas paredes si las tenía a las espaldas
      
      Clipping Plane (far): Distancia máxima a la que la cámara renderiza lo que ve. Es una distancia medio corta porque quería que se viera poco, pero los efectos de luz no funcionan cuando uso texturas porque los shaders estándar de Processing no están programados para eso, así que limité bastante la distancia de dibujado para generar el efecto más parecido que pude*/
    perspective(HALF_PI, 1280/720, rad/2, rad*15);
    
    //Normaliza el valor del ángulo de rotación para que no se haga demasiado alto
    if(rot>radians(360)){rot-=radians(360);}
    if(rot<radians(0)){rot+=radians(360);}
    rotCam = rot;
    
    /*Pongo la cámara mirando a la posición del vector Pos,
    pero la posiciono un poco atrás de esos valores para que se
    genere la rotación bien (si ponía la posición e la cámara y el
    punto al que mira en las mismas coordenadas generaba roblemas y la
    cámara no rotaba)*/
    Cam_Pos = new PVector(Dis*cos(rotCam)+Pos.x, 300, Dis*sin(rotCam)+Pos.y);
    camera(Cam_Pos.x, Cam_Pos.y, Cam_Pos.z, Pos.x, Cam_Pos.y, Pos.y, 0, 1, 0);
    
    //sonido
    /*Si el sonido Corazon se termina de reproducir,
    se vuelve a la posición de inicio para que esté preparado nuevamente*/    
    if (Corazon.position() == Corazon.length()){Corazon.rewind();}
    /*Cada segundo tiempo se aumenta en 1, y para usar los latidos
    de referencia para el tiempo que falta hice que en momentos
    específicos se reproduzca cada vez más seguido*/
    if(frameCount%60 == 0){tiempo++;}
    switch(tiempo){
      case 20:
        coolSon = 30;
      break;
      case 40:
        coolSon = 15;
      break;
      case 50:
        coolSon = 5;
      break;
    }
    if (frameCount%coolSon == 0){Corazon.play();}    
  }
  
  /*Uso el mismo algoritmo para el movimiento que el que usé para el Pong;
  lo único que acá las flechas de los costados cambian el ángulo de visión,
  y las flechas de arriba y abajo avanzan o retroceden según la dirección del ángulo*/
  void Mover() {
    if (R_Iz) {
      rot-=radians(2);
    }
    if (R_Der) {
      rot+=radians(2);
    }
    Dir.x = cos(rot)*vel;
    Dir.y = sin(rot)*vel;
    if (M_Ad) {
      this.Vel.add(Dir);
    }
    if (M_At) {
      this.Vel.sub(Dir);
    }
    this.Pos.add(Vel);
    /*La verdad que esto no me acuerdo por qué está así, lo saqué de un
    proyecto anterior que era una copia de Asteroids, así que supongo
    que debe ser para manejar la fricción y que la nave desacelere de a poco,
    pero con la velocidad tan baja como acá no se nota (igual por las dudas no lo saco)*/
    this.Vel.mult(.2);
    this.Vel.mult(.75);
  }

/*Para la colisión uso el mismo algoritmo que usé para el de la pelota en el Pong,
sólo que acá también toma en cuenta los lados puestos sobre X.

A pesar que todo se renderiza en 3D, las colisiones y movimientos están hechos en 2D, 
por eso en varios translate, la variable Y del vector de posición es asignada a la
posición en Z del translate*/
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
  
  /*Esto es mucho más básico que la colisión con los rectángulos
    Si el objeto se pasa en X se lo pone al borde, y lo mismo para Y*/
  void Colision_Terreno(Terreno terreno){
    if (Pos.x<0+rad){Pos.x=0+rad;}
    if (Pos.x>terreno.tamX-rad){Pos.x=terreno.tamX-rad;}
    if (Pos.y<0+rad){Pos.y=0+rad;}
    if (Pos.y>terreno.tamY-rad){Pos.y=terreno.tamY-rad;}
  }

  /*Funciones para cambiar las booleanas del movimiento para que no ocurran problemas al
    cambiar muy rápico las teclas que se tocan para moverse, o si se tocan varias*/
  void Det_Key_Press() {
    if (keyCode == UP) {
      M_Ad = true;
    }
    if (keyCode == DOWN) {
      M_At = true;
    }
    if (keyCode == RIGHT) {
      R_Der = true;
    }
    if (keyCode == LEFT) {
      R_Iz = true;
    }
  }

  void Det_Key_Rel() {
    if (keyCode == UP) {
      M_Ad = false;
    }
    if (keyCode == DOWN) {
      M_At = false;
    }
    if (keyCode == RIGHT) {
      R_Der = false;
    }
    if (keyCode == LEFT) {
      R_Iz = false;
    }
  }
  
}
