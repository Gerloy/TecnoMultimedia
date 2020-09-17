void Mostrar_Pantallas(){
  switch(pantalla){
    
    case 0:
      Mostrar_Pantalla_SinTXT();
    break;
    
    case 1:
      Mostrar_1();
    break;
    
    case 2:
      Mostrar_TXT_2Lineas();
    break;
    
    case 3:
      Mostrar_Pantalla_ConTXT_Decisiones();
    break;
    
    case 5:
      Mostrar_TXT_2Lineas();
    break;
    
    case 6:
      Mostrar_Pantalla_ConTXT_Decisiones();
    break;
    
    case 9:
      Mostrar_Pantalla_9();
    break;
    
    case 12:
      Mostrar_Pantalla_ConTXT_Decisiones();
    break;
    
    case 13:
      Mostrar_Pantalla_FundidoNegro();
    break;
    
    case 16:
      Mostrar_Pant_16();
    break;
    
    case 17:
      Mostrar_TXT_2Lineas();
    break;
    
    case 19:
      Mostrar_Pantalla_ConTXT_Decisiones();
    break;
    
    case 20:
      Mostrar_Pantalla_FundidoNegro();
    break;
    
    case 21:
      Mostrar_21();
    break;
    
    case 22:
      Mostrar_Pantalla_Corre();
    break;
    
    case 24:
      Mostrar_TXT_2Lineas();
    break;
    
    case 25:
      Mostrar_Pantalla_FundidoNegro();
    break;
    
    case 26:
      Mostrar_Pantalla_SinTXT();
    break;
    
    case 27:
      Mostrar_TXT_2Lineas();
    break;
    
    case 30:
      Mostrar_Pantalla_FundidoNegro();
    break;
    
    case 32:
      Mostrar_TXT_2Lineas();
    break;
    
    case 33:
      Mostrar_TXT_2Lineas();
    break;
    
    case 34:
      Mostrar_Pantalla_FundidoNegro();
    break;
    
    case 35:
      Mostrar_TXT_3Lineas();
    break;
    
    case 36:
      Mostrar_TXT_2Lineas();
    break;
    
    case 37:
      Mostrar_TXT_3Lineas();
    break;
    
    case 38:
      Mostrar_Pantalla_Chobi();
    break;
    
    case 40:
      Mostrar_40();
    break;
    
    case 41:
      Mostrar_41();
    break;
    
    case 98:
      Mostrar_Fin();
    break;
    
    case 99:
      Mostrar_Creditos();
    break;
    
    default:
    if (pantalla<42){
      Mostrar_Pantalla_ConTXT_Normal();
    }
    break;
  }
}

void Menu(){
  pushStyle();
    image(menu,0,0,width,height);
    fill(0,50);
    rect(PosX1,PosY1,TamX1,TamY1);
    fill(255);
    text("Comenzar",PosX1+TamX1/2,PosY1+TamY1/2);  
    fill(0,50);
    rect(PosX2,PosY2,TamX2,TamY2);
    fill(255);
    text("Créditos",PosX2+TamX2/2,PosY2+TamY2/2);
  popStyle();
}

void Mostrar_Pantalla_SinTXT(){
  image (fondos[pantalla],0,0,width,height);
}

void Mostrar_Pantalla_ConTXT_Normal(){
  pushStyle();
    image(fondos[pantalla],0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text(Texto_Normal[Normal],width/2,height/2);
  popStyle();
}

void Mostrar_Pantalla_ConTXT_Decisiones(){
  pushStyle();
    image(fondos[pantalla],0,0,width,height);
    stroke(255);
    fill(0,50);
    rectMode(CENTER);
    rect(PosX3,PosY3,TamX3,TamY3);
    fill(255);
    text(Texto_Decisiones[Decisiones],PosX3,PosY3);
    fill(0,50);
    rect(PosX4,PosY4,TamX4,TamY4);
    fill(255);
    text(Texto_Decisiones[Decisiones+1],PosX4,PosY4);
  popStyle();
}

void Mostrar_Pantalla_FundidoNegro(){
  pushStyle();
    image(fondos[pantalla],0,0,width,height);
    noStroke();
    fill(0,trans);
    rect(0,0,width,height);
  popStyle();   
  if(trans>0){trans-=5;}
}

void Mostrar_Pant_16(){
  pushStyle();
    image(fondos[pantalla],0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    textSize(height/8);
    pushMatrix();
    translate(width/2,height/2);
    rotate(-QUARTER_PI);
    text(Texto_Normal[Normal],0,0);
    popMatrix();
  popStyle();
}

void Mostrar_Pantalla_9(){
  pushStyle();
    background(0);
    noStroke();
    fill(255);
    textFont(wasd);
    textSize(width/4);
    pushMatrix();
        translate(width/2,height/2);
        rotate(-QUARTER_PI);
        text("PUM",0,0);
    popMatrix();
  popStyle();  
}

void Mostrar_Pantalla_Corre(){
  pushStyle();
    image(fondos[pantalla],0,0,width,height);
    imageMode(CENTER);
    image(Bicho,width/2,height/2,height/4,height/4);
    fill(255);
    textSize(height/10);
    text("CORRÉ",width/2,height/2);
    if(cant22>0){
      textSize(height/8);
      pushMatrix();
        translate(width/2,height/2);
        rotate(QUARTER_PI/4);
        text("CORRÉ",0,0);
      popMatrix();
    }if(cant22>1){
      textSize(height/7);
      pushMatrix();
        translate(width/2,height/2);
        rotate(QUARTER_PI/2);
        text("CORRÉ",0,0);
      popMatrix();
    }if(cant22>2){
      textSize(height/6);
      pushMatrix();
        translate(width/2,height/2);
        rotate(QUARTER_PI);
        text("CORRÉ",0,0);
      popMatrix();
    }if(cant22>3){
      textSize(height/2);
      pushMatrix();
        translate(width/2,height/2);
        rotate(QUARTER_PI+QUARTER_PI/4);
        text("CORRÉ",0,0);
      popMatrix();
    }
  popStyle();
}

void Mostrar_Pantalla_Chobi(){
  pushStyle();
    image(fondos[pantalla],0,0,width,height);
    imageMode(CENTER);
    image(Bicho,width/2,height/2,height/4,height/4);
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text(Texto_Normal[Normal],width/2,height/2);
  popStyle();  
}

void Mostrar_Fin(){
  pushStyle();
    background(0);
    textSize(height/4);
    text("Fin",width/2,height/2);
  popStyle();
}

void Mostrar_Creditos(){
  background(0);
  text("Programación: Germán Eloy Iñiguez",width/2,height/2-height/10);
  text("Ilustraciones: Germán Eloy Iñiguez",width/2,height/2+height/10);
}

void Mostrar_21(){
  pushStyle();
    image(fondos[pantalla],0,0,width,height);
    imageMode(CENTER);
    image(Bicho,width/2,height/2,height/4,height/4);
    stroke(255);
    fill(0,50);
    rectMode(CENTER);
    rect(PosX3,PosY3,TamX3,TamY3);
    fill(255);
    text(Texto_Decisiones[Decisiones],PosX3,PosY3);
    fill(0,50);
    rect(PosX4,PosY4,TamX4,TamY4);
    fill(255);
    text(Texto_Decisiones[Decisiones+1],PosX4,PosY4);
  popStyle();
}

void Mostrar_40(){
  pushStyle();
    image(fondos[pantalla],0,0,width,height);
    imageMode(CENTER);
    image(Bicho,width/2,height/2,height/1.5,height/1.5);
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text(Texto_Normal[Normal],width/2,height/2);
  popStyle();
}

void Mostrar_41(){
  pushStyle();
    image(fondos[pantalla],0,0,width,height);
    imageMode(CENTER);
    image(Bicho,width/2,height/2,height/1.5,height/1.5);
    fill(255);
    textSize(height/10);
    text("CORRÉ",width/2,height/2);
    if(cant22>0){
      textSize(height/8);
      pushMatrix();
        translate(width/2,height/2);
        rotate(QUARTER_PI/4);
        text("CORRÉ",0,0);
      popMatrix();
    }if(cant22>1){
      textSize(height/7);
      pushMatrix();
        translate(width/2,height/2);
        rotate(QUARTER_PI/2);
        text("CORRÉ",0,0);
      popMatrix();
    }if(cant22>2){
      textSize(height/6);
      pushMatrix();
        translate(width/2,height/2);
        rotate(QUARTER_PI);
        text("CORRÉ",0,0);
      popMatrix();
    }if(cant22>3){
      textSize(height/2);
      pushMatrix();
        translate(width/2,height/2);
        rotate(QUARTER_PI+QUARTER_PI/4);
        text("CORRÉ",0,0);
      popMatrix();
    }
  popStyle();
}

void Mostrar_1(){
  pushStyle();
    image(fondos[pantalla],0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text(Texto_Normal[Normal]+"\n"+Texto_Normal[Normal+1]+"\n"+Texto_Normal[Normal+2]+"\n"+Texto_Normal[Normal+3],width/2,height/2);
  popStyle();
}

void Mostrar_TXT_3Lineas(){
  pushStyle();
    image(fondos[pantalla],0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text(Texto_Normal[Normal]+"\n"+Texto_Normal[Normal+1]+"\n"+Texto_Normal[Normal+2],width/2,height/2);
  popStyle();
}

void Mostrar_TXT_2Lineas(){
  pushStyle();
    image(fondos[pantalla],0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text(Texto_Normal[Normal]+"\n"+Texto_Normal[Normal+1],width/2,height/2);
  popStyle();
}
