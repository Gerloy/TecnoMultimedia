//Este código es medio un quilombo porque me di cuenta mientras lo iba haciendo que había
//muchas pantallas con características únicas y tuve que hacer muchas más funciones
//y excepciones de lo esperado
//Aún así ahorré algo de lineas de código. Este tiene en total unas 422 lineas, y el tp3 tenía 1180.
//Y acá me tomé la libertal de agregar una pantalla de carga para que no esté la pantalla blanca mucho rato. 
PImage[] fondos = new PImage[42];
PImage menu;
PImage Bicho;
String[] Texto_Normal;
int Normal = 0;
String[] Texto_Decisiones;
int Decisiones = 0;
PFont wasd;
int pantalla = 0;
int cant = 0;
int cant22 = 0;
int trans = 0;
boolean cargado=false;
boolean iniciado=false;

//Botones a los costados
float TamX1,TamY1,PosX1,PosY1,TamX2,TamY2,PosX2,PosY2;

//Botones en el medio
float TamX3,TamY3,PosX3,PosY3,TamX4,TamY4,PosX4,PosY4;

void setup(){
  size(800,600,P2D);
  //surface.setResizable(true);
  menu = loadImage("Menu.jpg");
  
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
  
  
  //for(int i=0;i<fondos.length;i++){
  //  fondos[i] = loadImage("Imagen"+Integer.toString(i)+".png");
  //}
  //Bicho = loadImage("Chobi.png");
  //Texto_Normal = loadStrings("Textos.txt");
  //Texto_Decisiones = loadStrings("Decisiones.txt");
  //cargado=true;
  
}

void draw(){
  if (iniciado==false){
    Menu();
  }else{
    if (cargado){
      Mostrar_Pantallas();
    }else if (pantalla>99){
      Mostrar_Creditos();
    }else{
      background(0);
      pushMatrix();
        fill(255);
        translate(width/2,height/2);
        text("Cargando",0,0);
      popMatrix();
    }
  }
}

void mousePressed(){
  if(iniciado){
    if (cargado){
      Selec_Mouse();
    }
    if (pantalla>99){
      Mouse_FinalyCreditos();
    }
  }else {Mouse_Menu();}
  println("Pantalla: "+pantalla);
  println("Text: "+Normal);
}
