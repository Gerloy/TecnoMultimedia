class Terreno {
  Rectangulo[] recta;
  float tamX, tamY;
  PVector pos;
  
  Terreno(float X, float Y) {
    tamX = X;
    tamY = Y;
    recta = new Rectangulo[21];
  }

  void Armar() {
    
    //Rectangulos hardcodeados
    /*Intenté hacer que los rectángulos se generaran de forma maso menos randomizada,
      pero no funcionó.
      Haciendo una grilla se generaban demasiados rectángulos y el framerate caía bajo tierra.
      Y haciéndolo completamente random obviamente podía pasar que quedaran espacios vacía o que
      se generaran rectángulos muy grandes o muy pequeños, o incluso que el personaje  y el monstruo
      aparecieran dentro de un rectángulo*/
    recta[0] = new Rectangulo(150,100,100,200);
    recta[1] = new Rectangulo(300,100,100,200);
    recta[2] = new Rectangulo(450,100,100,200);
    recta[3] = new Rectangulo(600,100,100,200);
    recta[4] = new Rectangulo(750,100,100,200);
    recta[5] = new Rectangulo(900,100,100,200);
    
    recta[6] = new Rectangulo(100,500,100,200);
    recta[7] = new Rectangulo(250,500,100,200);
    recta[8] = new Rectangulo(400,500,100,200);
    recta[9] = new Rectangulo(650,500,100,200);
    recta[10] = new Rectangulo(700,500,100,200);
    recta[11] = new Rectangulo(950,500,100,200);
    
    recta[12] = new Rectangulo(150,900,100,200);
    recta[13] = new Rectangulo(300,900,100,200);
    recta[14] = new Rectangulo(450,900,100,200);
    recta[15] = new Rectangulo(600,900,100,200);
    recta[16] = new Rectangulo(750,900,100,200);
    recta[17] = new Rectangulo(900,900,100,200);
    
    recta[18] = new Rectangulo(500,300,900,100);
    
    recta[19] = new Rectangulo(150,700,300,100);
    recta[20] = new Rectangulo(850,700,300,100);
    
    for (int i=0; i<recta.length; i++){recta[i].Armar();}
  }

  void Mostrar() {
    for (int i=0; i<recta.length; i++) {
      recta[i].Mostrar();
    }
    push();
    translate(tamX/2, 300, tamY/2);
    stroke(0);
    strokeWeight(5);
    fill(64);
    box(tamX, 100, tamY);
    pop();
  }
}
