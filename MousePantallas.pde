void MousePantalla0(){
  if (((mouseX>=PosX1) &&(mouseX<=PosX1+TamX1)) && ((mouseY>=PosY1) && (mouseY<=PosY1+TamY1))){
    Pantalla++;
  }else if(((mouseX>=PosX2) &&(mouseX<=PosX2+TamX2)) && ((mouseY>=PosY2) && (mouseY<=PosY2+TamY2))){
    Pantalla=99;
  }
}

void MousePantalla1(){
  Pantalla++;
}

void MousePantalla2(){
  Pantalla++;
}

void MousePantalla3(){
  Pantalla++;
}

void MousePantalla4(){
  if(((mouseX>=PosX3-TamX3/2) && (mouseX<=PosX3+TamX3/2)) && ((mouseY>=PosY3-TamY3/2) && (mouseY<=PosY3+TamY3/2))){
    Pantalla=35;
  }else if (((mouseX>=PosX4-TamX4/2) && (mouseX<=PosX4+TamX4/2)) && ((mouseY>=PosY4-TamY4/2) && (mouseY<=PosY4+TamY4/2))){
    Pantalla++;
  }
}

void MousePantalla5(){
  Pantalla++;
}

void MousePantalla6(){
  Pantalla++;
}

void MousePantalla7(){
  if(((mouseX>=PosX3-TamX3/2) && (mouseX<=PosX3+TamX3/2)) && ((mouseY>=PosY3-TamY3/2) && (mouseY<=PosY3+TamY3/2))){
   Pantalla++;
  }else if (((mouseX>=PosX4-TamX4/2) && (mouseX<=PosX4+TamX4/2)) && ((mouseY>=PosY4-TamY4/2) && (mouseY<=PosY4+TamY4/2))){
    Pantalla=27;
  }
}

void MousePantalla8(){
  Pantalla++;
  
}

void MousePantalla9(){
  Pantalla++;
}

void MousePantalla10(){
  Pantalla++;
}

void MousePantalla11(){
  Pantalla++;
}

void MousePantalla12(){
  Pantalla++;
}

void MousePantalla13(){
  if(((mouseX>=PosX3-TamX3/2) && (mouseX<=PosX3+TamX3/2)) && ((mouseY>=PosY3-TamY3/2) && (mouseY<=PosY3+TamY3/2))){
    trans=255;
    cant=0;
    Pantalla=26;
  }else if (((mouseX>=PosX4-TamX4/2) && (mouseX<=PosX4+TamX4/2)) && ((mouseY>=PosY4-TamY4/2) && (mouseY<=PosY4+TamY4/2))){
    trans=255;
    cant=0;
    Pantalla++;
  }
}

void MousePantalla14(){
  if (cant<4){
    trans=255;
    cant++;
  }else{Pantalla++;}
}

void MousePantalla15(){
  Pantalla++;
}

void MousePantalla16(){
  Pantalla++;
}

void MousePantalla17(){
  Pantalla++;
}

void MousePantalla18(){
  Pantalla++;
}

void MousePantalla19(){
  Pantalla++;
}

void MousePantalla20(){
  if(((mouseX>=PosX3-TamX3/2) && (mouseX<=PosX3+TamX3/2)) && ((mouseY>=PosY3-TamY3/2) && (mouseY<=PosY3+TamY3/2))){
   Pantalla=25;
  }else if (((mouseX>=PosX4-TamX4/2) && (mouseX<=PosX4+TamX4/2)) && ((mouseY>=PosY4-TamY4/2) && (mouseY<=PosY4+TamY4/2))){
    trans=255;
    cant=0;
    Pantalla++;
  }
}

void MousePantalla21(){
  if (cant<4){
    trans=255;
    cant++;
  }else{Pantalla++;}
}

void MousePantalla22(){
  if(((mouseX>=PosX3-TamX3/2) && (mouseX<=PosX3+TamX3/2)) && ((mouseY>=PosY3-TamY3/2) && (mouseY<=PosY3+TamY3/2))){
   Pantalla+=2;
  }else if (((mouseX>=PosX4-TamX4/2) && (mouseX<=PosX4+TamX4/2)) && ((mouseY>=PosY4-TamY4/2) && (mouseY<=PosY4+TamY4/2))){
    trans=255;
    cant=0;
    Pantalla++;
  }
}

void MousePantalla23(){
  if(cant22<4){
    cant22++;
  }else{Pantalla++;}
}

void MousePantalla24(){
  Pantalla=98;
}
void MousePantalla25(){
  Pantalla=98;
}

void MousePantalla26(){
  if (cant<4){
    trans=255;
    cant++;
  }else{Pantalla=16;}
}

void MousePantalla27(){
  Pantalla++;
}

void MousePantalla28(){
  Pantalla++;
}
void MousePantalla29(){
  Pantalla++;
}

void MousePantalla30(){
  Pantalla++;
}

void MousePantalla31(){
  Pantalla++;
  cant=0;
  trans=255;
}

void MousePantalla32(){
  if (cant<4){
    trans=255;
    cant++;
  }else{Pantalla++;}
}
void MousePantalla33(){
  Pantalla++;
}

void MousePantalla34(){
  Pantalla=98;
}

void MousePantalla35(){
  trans=255;
  cant=0;
  Pantalla++;
}

void MousePantalla36(){
  if (cant<4){
    trans=255;
    cant++;
  }else{Pantalla++;}
}

void MousePantalla37(){
  Pantalla++;
}

void MousePantalla38(){
  Pantalla++;
}

void MousePantalla39(){
  Pantalla++;
}

void MousePantalla40(){
  Pantalla++;
}

void MousePantalla41(){
  Pantalla++;
}

void MousePantalla42(){
  Pantalla++;
}

void MousePantalla43(){
  Pantalla++;
}

void MousePantalla44(){
  if(cant22<4){
    cant22++;
  }else{Pantalla=98;}
}

void MousePantalla98(){
  Pantalla=0;
}

void MousePantalla99(){
  Pantalla=0;
}
