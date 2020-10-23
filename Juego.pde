class Juego{
  
  Minim minim;
  Terreno terreno;
  Player PJ;
  Chobi Bicho;
  boolean termino;
  int fin;
  
  Juego(PApplet Jorge){
    termino = false;
    minim = new Minim (Jorge);
    terreno = new Terreno(1000,1000);
    terreno.Armar();
    PJ = new Player(terreno, minim);
    Bicho = new Chobi(terreno, minim);
  }
  
  void Dibujar(){
     /*La variable termino indica si se llegó a algún final, si no es así, se actualizan y se muestran el terreno y el monstruo,
     sino, se muestra un fondo negro con un texto relativo al final que se obtuvo en medio de la pantalla*/
    background(0);
      if(!termino){
        Bicho.Update(terreno.recta, terreno, PJ);
        PJ.Update(terreno.recta, terreno);
      
        terreno.Mostrar();
        Bicho.Mostrar();
        
        
        /*Con esto se define el final. Si pasó másd e un minuto y el jugador no se
        encontró con el monstruo sale el final 1, en caso de que se haya acercado
        demasiado al monstruo, sale el final 2*/
        if (PJ.tiempo == 60){fin = 1; termino = true;}
        if(dist(Bicho.Pos.x,Bicho.Pos.y,PJ.Pos.x,PJ.Pos.y)<= PJ.rad*12){fin = 2; termino = true;}
        
      }else{
        finales();
      }
  }
  
  void finales(){
    /*Se reinician la perpectiva y la cámara para que el texto pueda
      aparecer sin probleams*/
    perspective();
    camera();
    if (fin == 1){text("Al final no había nada",width/2,height/2);}
    if (fin == 2){text("El miedo te paralizó y el ser aprovechó para atacarte",width/2,height/2);}
  }
  
  void Tecla_Presionada(){
    PJ.Det_Key_Press();
  }
  
  void Tecla_Soltada(){
    PJ.Det_Key_Rel();
  }

}
