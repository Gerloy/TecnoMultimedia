//final float alto=600, ancho=800;
PImage Cuarto,Subsuelo,Bicho,Piso2,Sub2,Pesadilla,PesadillaConChobis,ChabonChobi,Librito,Piso,Prueba,Chabon,Raton,Raton2,SubZoom,Pieza2,Piso3;
int Pantalla = 0;
PFont wasd;
int trans;
int cant=0;
int cant22=0;

//Botones a los costados
float TamX1,TamY1,PosX1,PosY1,TamX2,TamY2,PosX2,PosY2;

//Botones en el medio
float TamX3,TamY3,PosX3,PosY3,TamX4,TamY4,PosX4,PosY4;

void setup(){
  size(800,600,P2D);
  
  //Imagenes
  Cuarto = loadImage("Pieza.png");
  Subsuelo = loadImage("Subsuelo.png");
  Pesadilla = loadImage("Pesadilla.png");
  PesadillaConChobis = loadImage("Pesadilla_Con_Chobis.png");
  Librito = loadImage("Librito.png");
  Piso = loadImage("Piso.png");
  Prueba = loadImage("hola.jpg");
  Chabon = loadImage("Chabon.png");
  Raton = loadImage("Raton.png");
  Raton2 = loadImage("Raton_Tapado.png");
  SubZoom = loadImage("Sub_Ecua.png");
  Pieza2 = loadImage("Fondo_Pieza2.png");
  ChabonChobi = loadImage("ChabonChobi.png");
  Piso2 = loadImage("Piso2.png");
  Sub2 = loadImage("Fondo_Sub2.png");
  Bicho = loadImage("Chobi.png");
  Piso3 = loadImage("Piso3.png");
  
  //Botones a los costados
  TamX1=width/6;
  TamY1=height/10;
  PosX1=width/10;
  PosY1=height/4+height/2;
  
  TamX2=width/6;
  TamY2=height/10;
  PosX2=width-TamX2-width/10;
  PosY2=height/4+height/2;
  
  //Botones en el centro
  TamX3=width/1.3;
  TamY3=height/20;
  PosX3=width/2;
  PosY3=height/2-TamY3;
  
  TamX4=width/1.3;
  TamY4=height/20;
  PosX4=width/2;
  PosY4=height/2+TamY4;
  
  //Texto
  wasd = createFont("Arial Bold",48);
  textSize(height/30);
  textAlign(CENTER,CENTER);
}

void draw(){
  switch(Pantalla){
    case 0:
      Pantalla0();
    break;
    case 1:
      Pantalla1();
    break;
    case 2:
      Pantalla2();
    break;
    case 3:
      Pantalla3();
    break;
    case 4:
      Pantalla4();
    break;
    case 5:
      Pantalla5();
    break;
    case 6:
      Pantalla6();
    break;
    case 7:
      Pantalla7();
    break;
    case 8:
      Pantalla8();
    break;
    case 9:
      Pantalla9();
    break;
    case 10:
      Pantalla10();
    break;
    case 11:
      Pantalla11();
    break;
    case 12:
      Pantalla12();
    break;
    case 13:
      Pantalla13();
    break;
    case 14:
      Pantalla14();
    break;
    case 15:
      Pantalla15();
    break;
    case 16:
      Pantalla16();
    break;
    case 17:
      Pantalla17();
    break;
    case 18:
      Pantalla18();
    break;
    case 19:
      Pantalla19();
    break;
    case 20:
      Pantalla20();
    break;
    case 21:
      Pantalla21();
    break;
    case 22:
      Pantalla22();
    break;
    case 23:
      Pantalla23();
    break;
    case 24:
      Pantalla24();
    break;
    case 25:
      Pantalla25();
    break;
    case 26:
      Pantalla26();
    break;
    case 27:
      Pantalla27();
    break;
    case 28:
      Pantalla28();
    break;
    case 29:
      Pantalla29();
    break;
    case 30:
      Pantalla30();
    break;
    case 31:
      Pantalla31();
    break;
    case 32:
      Pantalla32();
    break;
    case 33:
      Pantalla33();
    break;
    case 34:
      Pantalla34();
    break;
    case 35:
      Pantalla35();
    break;
    case 36:
      Pantalla36();
    break;
    case 37:
      Pantalla37();
    break;
    case 38:
      Pantalla38();
    break;
    case 39:
      Pantalla39();
    break;
    case 40:
      Pantalla40();
    break;
    case 41:
      Pantalla41();
    break;
    case 42:
      Pantalla42();
    break;
    case 43:
      Pantalla43();
    break;
    case 44:
      Pantalla44();
    break;
    case 98:
      Pantalla98();
    break;
    case 99:
      Pantalla99();
    break;
  }
}

void mousePressed(){
  switch(Pantalla){
    case 0:
      MousePantalla0();
    break;
    case 1:
      MousePantalla1();
    break;
    case 2:
      MousePantalla2();
    break;
    case 3:
      MousePantalla3();
    break;
    case 4:
      MousePantalla4();
    break;
    case 5:
      MousePantalla5();
    break;
    case 6:
      MousePantalla6();
    break;
    case 7:
      MousePantalla7();
    break;
    case 8:
      MousePantalla8();
    break;
    case 9:
      MousePantalla9();
    break;
    case 10:
      MousePantalla10();
    break;
    case 11:
      MousePantalla11();
    break;
    case 12:
      MousePantalla12();
    break;
    case 13:
      MousePantalla13();
    break;
    case 14:
      MousePantalla14();
    break;
    case 15:
      MousePantalla15();
    break;
    case 16:
      MousePantalla16();
    break;
    case 17:
      MousePantalla17();
    break;
    case 18:
      MousePantalla18();
    break;
    case 19:
      MousePantalla19();
    break;
    case 20:
      MousePantalla20();
    break;
    case 21:
      MousePantalla21();
    break;
    case 22:
      MousePantalla22();
    break;
    case 23:
      MousePantalla23();
    break;
    case 24:
      MousePantalla24();
    break;
    case 25:
      MousePantalla25();
    break;
    case 26:
      MousePantalla26();
    break;
    case 27:
      MousePantalla27();
    break;
    case 28:
      MousePantalla28();
    break;
    case 29:
      MousePantalla29();
    break;
    case 30:
      MousePantalla30();
    break;
    case 31:
      MousePantalla31();
    break;
    case 32:
      MousePantalla32();
    break;
    case 33:
      MousePantalla33();
    break;
    case 34:
      MousePantalla34();
    break;
    case 35:
      MousePantalla35();
    break;
    case 36:
      MousePantalla36();
    break;
    case 37:
      MousePantalla37();
    break;
    case 38:
      MousePantalla38();
    break;
    case 39:
      MousePantalla39();
    break;
    case 40:
      MousePantalla40();
    break;
    case 41:
      MousePantalla41();
    break;
    case 42:
      MousePantalla42();
    break;
    case 43:
      MousePantalla43();
    break;
    case 44:
      MousePantalla44();
    break;
    case 98:
      MousePantalla98();
    break;
    case 99:
      MousePantalla99();
    break;
  }
}
