class Pantalla{
  /*Variables básicas que tienen todas las pantallas.
    Las que sean explusivas de tipos específicos de pantalla
    se van a crear en el constructor de cada una*/
  PImage fondo;
  PImage chobi;
  int tipo;
  float screenX, screenY;
  int[] pase;
  String[] texto;
  int trans = 0;
  int cant = 0;
  
  //Creo los botones de las dos decisiones
  float[] bot1,bot2;
  
  /*Un montón de constructores que van a tener en cuenta todas las formas de
    instanciar una pantalla de todos los tipos que pueden ser (por ahora son 8 tipos
    de pantallas, con 5 tipos de constructores para la clase)
    
    Falta:
      - Pantallas con txt pero sin imagen de fondo
        (con background(0);), como los finales y los creditos*/
  
  /*Pantalla del menu (tipo 0)*/
  Pantalla(PImage imagen, int[] pass){
    fondo = imagen;
    tipo = 0;
    screenX = width;
    screenY = height;
    
    pase = pass;
    
    bot1 = new float[4]; bot2 = new float[4];
    
    //Los primeros dos ints del array son la posición, y los últimos 2 son los tamaños
    bot1[0] = screenX/2; bot1[1] = (screenY/2)-(screenY/20);
    bot1[2] = screenX/1.3; bot1[3] = screenY/20;
    
    bot2[0] = screenX/2; bot2[1] = (screenY/2)+(screenY/20);
    bot2[2] = screenX/1.3; bot2[3] = screenY/20;
    
    texto = new String[] {"Comenzar","Créditos"};
    
  }
  
  /*Pantallas normales con texto (tipo 1)*/
  Pantalla(PImage imagen, String[] txt, int pass){
    fondo = imagen;
    tipo = 1;
    screenX = width;
    screenY = height;
    
    pase = new int[]{pass};
    String tex = join(txt,"\n"); 
    texto = new String[]{tex};
  }
  
  /*Pantallas de desiciones (tipo 2)*/
  Pantalla(PImage imagen, String[] txt, int[] pass){
    fondo = imagen;
    tipo = 2;
    screenX = width;
    screenY = height;
    
    texto = txt;
    pase = pass;
    
    bot1 = new float[4]; bot2 = new float[4];
    
    //Los primeros dos ints del array son la posición, y los últimos 2 son los tamaños
    bot1[0] = screenX/2; bot1[1] = (screenY/2)-(screenY/20);
    bot1[2] = screenX/1.3; bot1[3] = screenY/20;
    
    bot2[0] = screenX/2; bot2[1] = (screenY/2)+(screenY/20);
    bot2[2] = screenX/1.3; bot2[3] = screenY/20;
  }
  
  /*Pantallas con fundido negro(tipo 3), y normales sin txt (tipo 4)*/
  Pantalla(PImage imagen, int pass, int type){
      fondo = imagen;
      tipo = type;
      screenX = width;
      screenY = height;
      pase = new int[] {pass};
  }
  
  //Pantalla de corré (tipo 5)
  Pantalla (PImage imagen, PImage bicho, int pass){
    fondo = imagen;
    tipo = 5;
    screenX = width;
    screenY = height;
    chobi = bicho;
    pase = new int[] {pass};
  }
  
  //Pantalla con texto normal y fondo negro (tipo 6)
  Pantalla(String[] txt,int pass){
    tipo = 6;
    screenX = width;
    screenY = height;
    
    pase = new int[]{pass};
    String tex = join(txt,"\n"); 
    texto = new String[]{tex};
  }
  
  //Pantalla con texto a 45° (tipo 7)
  Pantalla(PImage imagen,String[] txt,int pass,int type){
    fondo = imagen;
    tipo = type;
    screenX = width;
    screenY = height;
    
    pase = new int[]{pass};
    String tex = join(txt,"\n");
    texto = new String[]{tex};
  }
  
  //Pantalla de créditos (tipo 8)
  Pantalla(int type){
    tipo = type;
    screenX = width;
    screenY = height;
    pase = new int[] {0};
  }
  //fin de los constructores
  
  void Mostrar(){
    switch(tipo){
      case 0:
        pushStyle();
          image(fondo,0,0,screenX,screenY);
          fill(0,50);
          rect(bot1[0],bot1[1],bot1[2],bot1[3]);
          fill(255);
          text(texto[0],bot1[0],bot1[1]);  
          fill(0,50);
          rect(bot2[0],bot2[1],bot2[2],bot2[3]);
          fill(255);
          text(texto[1],bot2[0],bot2[1]);
        popStyle();
      break;
      
      case 1:
        pushStyle();
          rectMode(CORNER);
          image(fondo,0,0,screenX,screenY);
          noStroke();
          fill(0,50);
          rect(screenX/10,screenY/10,screenX-(screenX/10)*2,screenY-(screenY/10)*2);
          fill(255);
          text(texto[0],screenX/2,screenY/2);
        popStyle();
      break;
      
      case 2:
        pushStyle();
          image(fondo,0,0,screenX,screenY);
          stroke(255);
          fill(0,50);
          rectMode(CENTER);
          rect(bot1[0],bot1[1],bot1[2],bot1[3]);
          fill(255);
          text(texto[0],bot1[0],bot1[1]);
          fill(0,50);
          rect(bot2[0],bot2[1],bot2[2],bot2[3]);
          fill(255);
          text(texto[1],bot2[0],bot2[1]);
        popStyle();
      break;
      
      case 3:
        pushStyle();
          rectMode(CORNER);
          image(fondo,0,0,screenX,screenY);
          noStroke();
          fill(0,trans);
          rect(0,0,screenX,screenY);
        popStyle();   
        if(trans>0){trans-=5;}
      break;
      
      case 4:
        image(fondo,0,0,screenX,screenY);
      break;
      
      case 5:
        pushStyle();
          image(fondo,0,0,screenX,screenY);
          imageMode(CENTER);
          image(chobi,screenX/2,screenY/2,screenY/4,screenY/4);
          fill(255);
          textSize(screenY/10);
          text("CORRÉ",screenX/2,screenY/2);
          if(cant>0){
            textSize(screenY/8);
            pushMatrix();
              translate(screenX/2,screenY/2);
              rotate(QUARTER_PI/4);
              text("CORRÉ",0,0);
            popMatrix();
          }if(cant>1){
            textSize(screenY/7);
            pushMatrix();
              translate(screenX/2,screenY/2);
              rotate(QUARTER_PI/2);
              text("CORRÉ",0,0);
            popMatrix();
          }if(cant>2){
            textSize(screenY/6);
            pushMatrix();
              translate(screenX/2,screenY/2);
              rotate(QUARTER_PI);
              text("CORRÉ",0,0);
            popMatrix();
          }if(cant>3){
            textSize(screenY/2);
            pushMatrix();
              translate(screenX/2,screenY/2);
              rotate(QUARTER_PI+QUARTER_PI/4);
              text("CORRÉ",0,0);
            popMatrix();
          }
        popStyle();
      break;
      
      case 6:
        pushStyle();
          background(0);
          noStroke();
          fill(255);
          //textFont(aventura.wasd);
          textSize(screenY/30);
          text(texto[0],screenX/2,screenY/2);
        popStyle();
      break;
      
      case 7:
        pushStyle();
          rectMode(CORNER);
          image(fondo,0,0,screenX,screenY);
          noStroke();
          fill(0,50);
          rect(screenX/10,screenY/10,screenX-(screenX/10)*2,screenY-(screenY/10)*2);
          fill(255);
          textSize(screenY/8);
        pushMatrix();
          translate(screenX/2,screenY/2);
          rotate(-QUARTER_PI);
          text(texto[0],0,0);
        popMatrix();
        popStyle();
      break;
      
      case 8:
        background(0);
        text("Programación: Germán Eloy Iñiguez",screenX/2,screenY/2-screenY/10);
        text("Ilustraciones: Germán Eloy Iñiguez",screenX/2,screenY/2+screenY/10);
      break;
    }
  }
  
  void Resize(){
    screenX = width;
    screenY = height;
    if(bot1!=null){
      //Los primeros dos ints del array son la posición, y los últimos 2 son los tamaños
      bot1[0] = screenX/2; bot1[1] = (screenY/2)-(screenY/20);
      bot1[2] = screenX/1.3; bot1[3] = screenY/20;
      
      bot2[0] = screenX/2; bot2[1] = (screenY/2)+(screenY/20);
      bot2[2] = screenX/1.3; bot2[3] = screenY/20;
    }
  }
  
  int Mouse(int pantalla){
    switch(tipo){
      case 0:
        if(((mouseX>=bot1[0]-bot1[2]/2) && (mouseX<=bot1[0]+bot1[2]/2)) && ((mouseY>=bot1[1]-bot1[3]/2) && (mouseY<=bot1[1]+bot1[3]/2))){
          //aventura.pantalla = pase[0];
          return pase[0];
        }
        if(((mouseX>=bot2[0]-bot2[2]/2) && (mouseX<=bot2[0]+bot2[2]/2)) && ((mouseY>=bot2[1]-bot2[3]/2) && (mouseY<=bot2[1]+bot2[3]/2))){
          //aventura.pantalla = pase[1];
          return pase[1];
        }
      break;
      
      case 2:
        if(((mouseX>=bot1[0]-bot1[2]/2) && (mouseX<=bot1[0]+bot1[2]/2)) && ((mouseY>=bot1[1]-bot1[3]/2) && (mouseY<=bot1[1]+bot1[3]/2))){
          //aventura.pantalla = pase[0];
          return pase[0];
        }
        if(((mouseX>=bot2[0]-bot2[2]/2) && (mouseX<=bot2[0]+bot2[2]/2)) && ((mouseY>=bot2[1]-bot2[3]/2) && (mouseY<=bot2[1]+bot2[3]/2))){
          //aventura.pantalla = pase[1];
          return pase[1];
        }
      break;
      
      case 3:
        if (cant<4){
          trans=255;
          cant++;
        }else{
          //aventura.pantalla=pase[0];
          return pase[0];
        }
      break;
      
      case 5:
        if (cant<4){
          cant++;
        }else{
          //aventura.pantalla = pase[0];
          return pase[0];
        }
      break;
      
      default:
        aventura.pantalla = pase[0];
        return pase[0];
    }
    return pantalla;
  }
}
