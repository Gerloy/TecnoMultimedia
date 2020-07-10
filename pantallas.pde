
void Pantalla0(){
  pushStyle();
    image(Prueba,0,0,width,height);
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

void Pantalla1(){
  image(PesadillaConChobis,0,0,width,height);
}

void Pantalla2(){
  pushStyle();
    image(Cuarto,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Otra pesadilla más.\n¿Hace cuantas semanas ya que vengo durmiendo mal por ésto?\nNo tendría que haberme mudado acá sin importar\nque fuera la casa con el alquiler más barato.",width/2,height/2);
  popStyle();
}

void Pantalla3(){
  pushStyle();
    image(Raton,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Otra vez abrieron toda la pared.\nQue ratas de mierda que no me dejan vivir en paz.",width/2,height/2);
  popStyle();
}

void Pantalla4(){
  pushStyle();
    image(Raton,0,0,width,height);
    stroke(255);
    fill(0,50);
    rectMode(CENTER);
    rect(PosX3,PosY3,TamX3,TamY3);
    fill(255);
    text("Ignorar a las ratas e ir a estudiar",PosX3,PosY3);
    fill(0,50);
    rect(PosX4,PosY4,TamX4,TamY4);
    fill(255);
    text("Buscar el cemento y empezar a tapar los agujeros",PosX4,PosY4);
  popStyle();
}
void Pantalla5(){
  pushStyle();
    image(Raton2,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Bien. Ahora a ver si abrieron más agujeros",width/2,height/2);
  popStyle();
  
}

void Pantalla6(){
  pushStyle();
    image(Piso,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Que raro. Suena como si estuviera hueco.\nPodría ir a buscar las herraminetas a ver se hay algo abajo",width/2,height/2);
  popStyle();
  
}

void Pantalla7(){
  pushStyle();
    image(Piso,0,0,width,height);
    stroke(255);
    fill(0,50);
    rectMode(CENTER);
    rect(PosX3,PosY3,TamX3,TamY3);
    fill(255);
    text("Ir a buscar las herramientas para sacar las tablas",PosX3,PosY3);
    fill(0,50);
    rect(PosX4,PosY4,TamX4,TamY4);
    fill(255);
    text("Te cansaste tapando agujeros así que te vas a dormir",PosX4,PosY4);
  popStyle();
  
}

void Pantalla8(){
  pushStyle();
    image(Subsuelo,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Uau. ¿Esto siempre estuvo acá abajo?",width/2,height/2);
  popStyle();
  
}

void Pantalla9(){
  pushStyle();
    image(SubZoom,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Que cosas raras. No entiendo nada de esto.",width/2,height/2);
  popStyle();  
}

void Pantalla10(){
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

void Pantalla11(){
  pushStyle();
    image(Pesadilla,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("¿Que es este lugar?.",width/2,height/2);
  popStyle(); 
}

void Pantalla12(){
  pushStyle();
    image(Pesadilla,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Se escucha algo a lo lejos. Como si alguien estuviera gritando.",width/2,height/2);
  popStyle(); 
}
void Pantalla13(){
  pushStyle();
    image(Pesadilla,0,0,width,height);
    stroke(255);
    fill(0,50);
    rectMode(CENTER);
    rect(PosX3,PosY3,TamX3,TamY3);
    fill(255);
    text("Ir a buscar a la fuente del grito.",PosX3,PosY3);
    fill(0,50);
    rect(PosX4,PosY4,TamX4,TamY4);
    fill(255);
    text("Correr en el sentido contrario al que viene la voz.",PosX4,PosY4);
  popStyle();  
}

void Pantalla14(){
  pushStyle();
    image(Pesadilla,0,0,width,height);
    noStroke();
    fill(0,trans);
    rect(0,0,width,height);
  popStyle();   
  if(trans>0){trans-=5;}
}

void Pantalla15(){
  pushStyle();
    image(Pesadilla,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Por mucho que corra ésto parece no terminar nunca.",width/2,height/2);
  popStyle(); 
}

void Pantalla16(){
  pushStyle();
    image(Chabon,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Por fin otra persona. Pero... ¿Qué está haciendo?",width/2,height/2);
  popStyle();
}

void Pantalla17(){
  pushStyle();
    image(ChabonChobi,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    textSize(height/8);
    pushMatrix();
    translate(width/2,height/2);
    rotate(-QUARTER_PI);
    text("¡¿QUÉ CARAJO ES ESO?!",0,0);
    popMatrix();
  popStyle();
}

void Pantalla18(){
  pushStyle();
    image(Pieza2,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Bueno... Pare que volv-\n¿Qué es eso que está manchando todo el piso?",width/2,height/2);
  popStyle();
}

void Pantalla19(){
  pushStyle();
    image(Piso2,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Tiene pinta de que bajó.",width/2,height/2);
  popStyle();
}

void Pantalla20(){
  pushStyle();
    image(Piso2,0,0,width,height);
    stroke(255);
    fill(0,50);
    rectMode(CENTER);
    rect(PosX3,PosY3,TamX3,TamY3);
    fill(255);
    text("Pegar la vuelta al pueblo y no volver nunca a la casa.",PosX3,PosY3);
    fill(0,50);
    rect(PosX4,PosY4,TamX4,TamY4);
    fill(255);
    text("Seguir el líquido viscoso por el pasillo de abajo.",PosX4,PosY4);
  popStyle();  
}

void Pantalla21(){
  pushStyle();
    image(Sub2,0,0,width,height);
    noStroke();
    fill(0,trans);
    rect(0,0,width,height);
  popStyle();   
  if(trans>0){trans-=5;}
}

void Pantalla22(){
  pushStyle();
    image(Sub2,0,0,width,height);
    imageMode(CENTER);
    image(Bicho,width/2,height/2,height/4,height/4);
    stroke(255);
    fill(0,50);
    rectMode(CENTER);
    rect(PosX3,PosY3,TamX3,TamY3);
    fill(255);
    text("Rendirte y aceptar la muerte inminente.",PosX3,PosY3);
    fill(0,50);
    rect(PosX4,PosY4,TamX4,TamY4);
    fill(255);
    text("Correr para afuera a toda velocidad.",PosX4,PosY4);
  popStyle();  
  
}

void Pantalla23(){
  pushStyle();
    image(Sub2,0,0,width,height);
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

void Pantalla24(){
  pushStyle();
    background(0);
    fill(255);
    text("El terror te paralizó, y el ser aprovecho para atacarte.",width/2,height/2);
  popStyle();
}
void Pantalla25(){
  pushStyle();
    background(0);
    fill(255);
    text("Volviste a tu pueblo y decidiste nunca hablar\ncon nadie sobre lo que pasó en esa casa.",width/2,height/2);
  popStyle();
}

void Pantalla26(){
  pushStyle();
    image(Pesadilla,0,0,width,height);
    noStroke();
    fill(0,trans);
    rect(0,0,width,height);
  popStyle();   
  if(trans>0){trans-=5;}
}

void Pantalla27(){
    image(ChabonChobi,0,0,width,height);
}

void Pantalla28(){
  pushStyle();
    image(Pieza2,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Otra vez una pesadilla. Pero esta fue distinta a las demás\n¿Qué fue ese ruido?",width/2,height/2);
  popStyle();
}
void Pantalla29(){
  pushStyle();
    image(Piso3,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("¿Qué es esta cosa que sale del piso?",width/2,height/2);
  popStyle();
}

void Pantalla30(){
  pushStyle();
    image(Piso3,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("¿Qué es esta cosa que sale del piso?",width/2,height/2);
  popStyle();
}

void Pantalla31(){
  pushStyle();
    image(Sub2,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Uau. ¿Esto siempre estuvo acá abajo?",width/2,height/2);
  popStyle();   
}

void Pantalla32(){
  pushStyle();
    image(Sub2,0,0,width,height);
    noStroke();
    fill(0,trans);
    rect(0,0,width,height);
  popStyle();   
  if(trans>0){trans-=5;}
}
void Pantalla33(){
  pushStyle();
    image(Sub2,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Al final o había nada",width/2,height/2);
  popStyle();   
}

void Pantalla34(){
  pushStyle();
    background(0);
    fill(255);
    text("A partir de ese día no hubo más pesadillas\nni cosas raras y pudiste seguir viviendo en paz",width/2,height/2);
  popStyle();
}

void Pantalla35(){
   pushStyle();
    image(Librito,0,0,width,height);
    noStroke();
    fill(0,80);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Geometría no euclidiana. Tiene pinta de ser jodido.\nVoy a estar un buenrato acá",width/2,height/2);
  popStyle(); 
}

void Pantalla36(){
  pushStyle();
    image(Librito,0,0,width,height);
    noStroke();
    fill(0,trans);
    rect(0,0,width,height);
  popStyle();   
  if(trans>0){trans-=5;}
}

void Pantalla37(){
  pushStyle();
    image(Librito,0,0,width,height);
    noStroke();
    fill(0,80);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Es re jodido esto.\nNo entiendo nada y no me salen los problemas.\nMejor me voy a domir",width/2,height/2);
  popStyle(); 
}

void Pantalla38(){
  pushStyle();
    image(Subsuelo,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("¿Otra vez una pesadilla?\nAl menos ésta es en un lugar distinto.",width/2,height/2);
  popStyle(); 
}

void Pantalla39(){
  pushStyle();
    image(SubZoom,0,0,width,height);
    noStroke();
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Esto es lo que estuve estudaindo hoy.\nAhí están las fórmulas para el Area de un triángulo\n y para el radio de un círculo en geometría hiperbólica.",width/2,height/2);
  popStyle();
}

void Pantalla40(){
  pushStyle();
    image(Sub2,0,0,width,height);
    imageMode(CENTER);
    image(Bicho,width/2,height/2,height/4,height/4);
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("¿Qué es ese bicho?",width/2,height/2);
  popStyle();  
}

void Pantalla41(){
  pushStyle();
    image(Sub2,0,0,width,height);
    imageMode(CENTER);
    image(Bicho,width/2,height/2,height/2,height/2);
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("¿Qué es ese bicho?",width/2,height/2);
  popStyle();  
}

void Pantalla42(){
  pushStyle();
    image(Cuarto,0,0,width,height);
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("Por fin me desperté. No soporto más esto.",width/2,height/2);
  popStyle();
}

void Pantalla43(){
  pushStyle();
    image(Pieza2,0,0,width,height);
    imageMode(CENTER);
    image(Bicho,width/2,height/2,height/1.5,height/1.5);
    fill(0,50);
    rect(width/10,height/10,width-(width/10)*2,height-(height/10)*2);
    fill(255);
    text("¿Qué carajo?",width/2,height/2);
  popStyle();
}

void Pantalla44(){
  pushStyle();
    image(Pieza2,0,0,width,height);
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

void Pantalla98(){
  pushStyle();
    background(0);
    textSize(height/4);
    text("Fin",width/2,height/2);
  popStyle();
}

void Pantalla99(){
  background(0);
  text("Programación: Germán Eloy Iñiguez",width/2,height/2-height/10);
  text("Ilustraciones: Germán Eloy Iñiguez",width/2,height/2+height/10);
}
