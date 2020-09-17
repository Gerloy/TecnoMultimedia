void Selec_Mouse(){
  switch(pantalla){
  
    case 0:
      Mouse_SinTXT();
    break;
    
    case 1:
      Mouse_1();
    break;
    
    case 2:
      Mouse_2Lineas();
    break;
    
    case 3:
      Mouse_Decisiones();
    break;
    
    case 5:
      Mouse_2Lineas();
    break;
    
    case 6:
      Mouse_Decisiones();
    break;
    
    case 12:
      Mouse_Decisiones();
    break;
    
    case 13:
      Mouse_FundidoNegro();
    break;
    
    case 17:
      Mouse_2Lineas();
    break;
    
    case 19:
      Mouse_Decisiones();
    break;
    
    case 20:
      Mouse_FundidoNegro();
    break;
    
    case 21:
      Mouse_Decisiones();
    break;
    
    case 22:
      Mouse_Pantalla_Chobi();
    break;
    
    case 23:
      Mouse_al_Final();
    break;
    
    case 24:
      Mouse_al_Final();
    break;
    
    case 25:
      Mouse_FundidoNegro();
    break;
    
    case 26:
      Mouse_SinTXT();
    break;
    
    case 27:
      Mouse_2Lineas();
    break;
    
    case 30:
      Mouse_FundidoNegro();
    break;
    
    case 32:
      Mouse_al_Final();
    break;
    
    case 33:
      Mouse_2Lineas();
    break;
    
    case 34:
      Mouse_FundidoNegro();
    break;
    
    case 35:
      Mouse_3Lineas();
    break;
    
    case 36:
      Mouse_2Lineas();
    break;
    
    case 37:
      Mouse_3Lineas();
    break;
    
    case 41:
      Mouse_Pantalla_Chobi();
    break;
    
    case 98:
      Mouse_FinalyCreditos();
    break;
    
    default:
      Mouse_Normal();
    break;
    
  }
}

void Mouse_Menu(){
  if (((mouseX>=PosX1) &&(mouseX<=PosX1+TamX1)) && ((mouseY>=PosY1) && (mouseY<=PosY1+TamY1))){
    pantalla=0;
    iniciado=true;
    if (!cargado){thread("Cargar");}
  }else if(((mouseX>=PosX2) &&(mouseX<=PosX2+TamX2)) && ((mouseY>=PosY2) && (mouseY<=PosY2+TamY2))){
    pantalla=99;
    iniciado=true;
  }
}

void Mouse_Normal(){
  cant=0;
  cant22=0;
  trans=0;
  pantalla++;
  Normal++;
}

void Mouse_Decisiones(){
  switch(pantalla){
    case 3:
      if(((mouseX>=PosX3-TamX3/2) && (mouseX<=PosX3+TamX3/2)) && ((mouseY>=PosY3-TamY3/2) && (mouseY<=PosY3+TamY3/2))){
        pantalla=33;
        Decisiones+=2;
        Normal=30;
      }else if (((mouseX>=PosX4-TamX4/2) && (mouseX<=PosX4+TamX4/2)) && ((mouseY>=PosY4-TamY4/2) && (mouseY<=PosY4+TamY4/2))){
        pantalla++;
        Decisiones+=2;
      }
    break;
    case 6:
      if(((mouseX>=PosX3-TamX3/2) && (mouseX<=PosX3+TamX3/2)) && ((mouseY>=PosY3-TamY3/2) && (mouseY<=PosY3+TamY3/2))){
        pantalla++;
        Decisiones+=2;
      }else if (((mouseX>=PosX4-TamX4/2) && (mouseX<=PosX4+TamX4/2)) && ((mouseY>=PosY4-TamY4/2) && (mouseY<=PosY4+TamY4/2))){
        pantalla=26;
        Decisiones+=2;
        Normal=23;
      }
    break;
    case 12:
      if(((mouseX>=PosX3-TamX3/2) && (mouseX<=PosX3+TamX3/2)) && ((mouseY>=PosY3-TamY3/2) && (mouseY<=PosY3+TamY3/2))){
        pantalla=25;
        Decisiones+=2;
      }else if (((mouseX>=PosX4-TamX4/2) && (mouseX<=PosX4+TamX4/2)) && ((mouseY>=PosY4-TamY4/2) && (mouseY<=PosY4+TamY4/2))){
        pantalla++;
        Decisiones+=2;
      }
    break;
    case 19:
      if(((mouseX>=PosX3-TamX3/2) && (mouseX<=PosX3+TamX3/2)) && ((mouseY>=PosY3-TamY3/2) && (mouseY<=PosY3+TamY3/2))){
        pantalla=24;
        Decisiones+=2;
        Normal=21;
      }else if (((mouseX>=PosX4-TamX4/2) && (mouseX<=PosX4+TamX4/2)) && ((mouseY>=PosY4-TamY4/2) && (mouseY<=PosY4+TamY4/2))){
        pantalla++;
        Decisiones+=2;
      }
    break;
    case 21:
      if(((mouseX>=PosX3-TamX3/2) && (mouseX<=PosX3+TamX3/2)) && ((mouseY>=PosY3-TamY3/2) && (mouseY<=PosY3+TamY3/2))){
        pantalla+=2;
        Decisiones=0;
      }else if (((mouseX>=PosX4-TamX4/2) && (mouseX<=PosX4+TamX4/2)) && ((mouseY>=PosY4-TamY4/2) && (mouseY<=PosY4+TamY4/2))){
        pantalla++;
        Decisiones=0;
      }
    break;
  }
  cant=0;
  cant22=0;
  trans=0;
}

void Mouse_al_Final(){
  pantalla=98;
}

void Mouse_FundidoNegro(){
  if (cant<4){
    trans=255;
    cant++;
  }else{
    if(pantalla==25){
      pantalla=14;
      cant=0;
      cant22=0;
      trans=0;
    }else{
      pantalla++;
      cant=0;
      cant22=0;
      trans=0;
    }
  }
}

void Mouse_Pantalla_Chobi(){
  if(cant22<4){
    cant22++;
  }else{
    if(pantalla==41){
      pantalla=98;
      cant=0;
      cant22=0;
      trans=0;
    }else if (pantalla == 22){
      pantalla++;
      cant=0;
      cant22=0;
      trans=0;
      Normal=20;
    }
  }
}

void Mouse_FinalyCreditos(){
  //noLoop();
  iniciado=false;
  pantalla=0;
  cant=0;
  cant22=0;
  trans=0;
  Normal=0;
  Decisiones=0;
  //loop();
}

void Mouse_SinTXT(){
  cant=0;
  cant22=0;
  trans=0;
  pantalla++;
}

void Mouse_1(){
  pantalla++;
  Normal+=4;
}

void Mouse_3Lineas(){
  pantalla++;
  Normal+=3;
}

void Mouse_2Lineas(){
  pantalla++;
  Normal+=2;
}
