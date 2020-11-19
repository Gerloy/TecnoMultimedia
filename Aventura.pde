class Aventura{
  int pantalla;
  PImage[] fondos = new PImage[37];
  PImage menu;
  PImage Bicho;
  String[] Texto_Normal;
  String[] Texto_Decisiones;
  PFont wasd;
  Juego juego;
  //Array de pantallas que se va a cargar hardcodeado
  Pantalla[] pantallas = new Pantalla[43];

  Aventura(PApplet applet){
    menu = loadImage("Menu.jpg");
    for(int i=0;i<fondos.length;i++){
      fondos[i] = loadImage("Imagen"+Integer.toString(i)+".png");
    }
    Bicho = loadImage("Chobi.png");
    Texto_Normal = loadStrings("Textos.txt");
    Texto_Decisiones = loadStrings("Decisiones.txt");
    wasd = createFont("Arial Bold",48);
    textSize(height/30);
    textAlign(CENTER,CENTER);
    pantalla = 0;
    rectMode(CENTER);
    juego = new Juego(applet);
  }
  
  void Construir(){
    /*Todas las pantallas hardcodeadas poruqe no se me ocurrió
      una forma de hacerlo automatizado sin que fuera algo más complicado
      y lento que esto.*/
    pantallas[0] = new Pantalla(menu, new int[]{1,42});
    pantallas[1] = new Pantalla(fondos[0],2,4);
    pantallas[2] = new Pantalla(fondos[1], new String[] {Texto_Normal[0],Texto_Normal[1],Texto_Normal[2],Texto_Normal[3]},3);
    pantallas[3] = new Pantalla(fondos[2], new String[] {Texto_Normal[4],Texto_Normal[5]},4);
    pantallas[4] = new Pantalla(fondos[3], new String[] {Texto_Decisiones[0], Texto_Decisiones[1]}, new int[] {33,5});
    pantallas[5] = new Pantalla(fondos[4], new String[] {Texto_Normal[6]},6);
    pantallas[6] = new Pantalla(fondos[5], new String[] {Texto_Normal[7],Texto_Normal[8]},7);
    pantallas[7] = new Pantalla(fondos[6], new String[] {Texto_Decisiones[2],Texto_Decisiones[3]},new int[] {8,26});
    pantallas[8] = new Pantalla(fondos[7], new String[] {Texto_Normal[9]},9);
    pantallas[9] = new Pantalla(fondos[8], new String[] {Texto_Normal[10]}, 10);
    pantallas[10] = new Pantalla(new String[] {Texto_Normal[11]}, 11);
    pantallas[11] = new Pantalla(fondos[9], new String[] {Texto_Normal[12]}, 12);
    pantallas[12] = new Pantalla(fondos[10], new String[] {Texto_Normal[13]}, 13);
    pantallas[13] = new Pantalla(fondos[11], new String[] {Texto_Decisiones[4], Texto_Decisiones[5]}, new int[] {14, 14});
    pantallas[14] = new Pantalla(fondos[12], 15, 3);
    pantallas[15] = new Pantalla(fondos[13], new String[] {Texto_Normal[14]}, 16);
    pantallas[16] = new Pantalla(fondos[14], new String[] {Texto_Normal[15]}, 17);
    pantallas[17] = new Pantalla(fondos[15], new String[] {Texto_Normal[16]}, 18, 7);
    pantallas[18] = new Pantalla(fondos[16], new String[] {Texto_Normal[17], Texto_Normal[18]},19);
    pantallas[19] = new Pantalla(fondos[17], new String[] {Texto_Normal[19]}, 20);
    pantallas[20] = new Pantalla(fondos[18], new String[] {Texto_Decisiones[6], Texto_Decisiones[7]}, new int[] {25,21});
    pantallas[21] = new Pantalla(fondos[19], 22, 3);
    pantallas[22] = new Pantalla(fondos[20], new String[] {Texto_Decisiones[8], Texto_Decisiones[9]}, new int[] {24,23});
    pantallas[23] = new Pantalla(fondos[21], Bicho, 24);
    pantallas[24] = new Pantalla(new String[] {Texto_Normal[20]}, 0);
    pantallas[25] = new Pantalla(new String[] {Texto_Normal[21], Texto_Normal[22]}, 0);
    pantallas[26] = new Pantalla(fondos[22], 27, 4);
    pantallas[27] = new Pantalla(fondos[23], new String[] {Texto_Normal[23], Texto_Normal[24]}, 28);
    pantallas[28] = new Pantalla(fondos[24], new String[] {Texto_Normal[25]}, 29);
    pantallas[29] = new Pantalla(fondos[25], new String[] {Texto_Normal[26]},30);
    pantallas[30] = new Pantalla(fondos[26], 31, 3);
    pantallas[31] = new Pantalla(fondos[27], new String[] {Texto_Normal[27]}, 32);
    pantallas[32] = new Pantalla(new String[] {Texto_Normal[28], Texto_Normal[29]}, 0);
    pantallas[33] = new Pantalla(fondos[28], new String[] {Texto_Normal[30], Texto_Normal[31]}, 34);
    pantallas[34] = new Pantalla(fondos[29], 35, 3);
    pantallas[35] = new Pantalla(fondos[30], new String[] {Texto_Normal[32], Texto_Normal[33], Texto_Normal[34]}, 36);
    pantallas[36] = new Pantalla(fondos[31], new String[] {Texto_Normal[35], Texto_Normal[36]}, 37);
    pantallas[37] = new Pantalla(fondos[32], new String[] {Texto_Normal[37], Texto_Normal[38], Texto_Normal[39]}, 38);
    pantallas[38] = new Pantalla(fondos[33], new String[] {Texto_Normal[40]}, 39);
    pantallas[39] = new Pantalla(fondos[34], new String[] {Texto_Normal[41]}, 40);
    pantallas[40] = new Pantalla(fondos[35], new String[] {Texto_Normal[42]}, 41);
    pantallas[41] = new Pantalla(fondos[35], createImage(1,1, ALPHA), 24);
    pantallas[42] = new Pantalla(8);
    
  }
  
  void Dibujar(){
    camera();
    perspective();
    switch (pantalla){
      case 21:
        juego.Dibujar();
      break;
      case 30:
        juego.Dibujar();
      break;
      default:
        hint(DISABLE_DEPTH_TEST);
          pantallas[pantalla].Mostrar();
        hint(ENABLE_DEPTH_TEST);
      break;
    }
  }
  
  void Actualizar(){
    if ((pantallas[pantalla].screenX != width) || (pantallas[pantalla].screenY !=height)){
      pantallas[pantalla].Resize();
    }
  }
  
  void Tecla_Press(){
    if (pantalla == 21 || pantalla == 30){
      juego.Tecla_Presionada();
    }
  }
  
  void Tecla_Rel(){
    if (pantalla == 21 || pantalla == 30){
      juego.Tecla_Soltada();
    }
  }
  
  void Mouse(){
    switch(pantalla){
      case 21:
        //juego.Mouse();
        if(juego.termino){
          pantalla = 0;
          juego.Reset();
        }
      break;
      case 30:
        //juego.Mouse();
        if(juego.termino){
          pantalla = 0;
          juego.Reset();
        }
      break;
      default:
        //pantallas[pantalla].Mouse();
        pantalla = pantallas[pantalla].Mouse(pantalla);
      break;
    }
  }
}
