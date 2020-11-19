class Rectangulo {

  float tamX, tamY, x, y, alto;
  PShape Formita;
  PImage Tex;

  /*Se le pasan al Rectángulo las posiciones y los tamaños en X e Y que va a tener*/
  Rectangulo(float posX, float posY, float tX, float tY) {
    tamX = tX;
    tamY = tY;
    x = posX;
    y= posY;
    alto = 600;
  }

  /*Para armar al Rectángulo copié el código de un proyecto anterior.
    Lo que hace es tomar la posición (X,Y) y la mitad de la altura como centro
    y armar las 6 caras de un cubo en base a esas posiciones. Caras que después
    une como childs en un grupo de formas llamado Formita.
    
    los vértices tienen 5 parámetro, poruqe los últimos 2 son los vértices UV,
    que definen que pixel de la textura va a tener asignado ese vértice.
    Acá están normalizados, así que sin importar la resolución de
    la textura que se le asigne, se va a asignar igual a cada esquina de la shape.
    
    Con los UV normalizados, una imagen de, por ejemplo, 800/600, pasaría de tener que ser
    asignada con los vértices (0,0)(800,0)(800,600)(0,600)(0,0) para encajarla
    perfectamente con la shape, a tener que ser asignada con los vérices
    (0,0)(1,0)(1,1)(0,1)(0,0)*/
  void Armar() {
    Formita = createShape(GROUP);
    Tex = loadImage("tex.png");

    PShape Car_Tra=createShape();
    Car_Tra.beginShape(QUAD);
    Car_Tra.textureMode(NORMAL);
    Car_Tra.texture(Tex);
    Car_Tra.vertex(-tamX/2, 0, -tamY/2, 0, 0);
    Car_Tra.vertex(tamX/2, 0, -tamY/2, 0, 1);
    Car_Tra.vertex(tamX/2, alto, -tamY/2, 1, 1);
    Car_Tra.vertex(-tamX/2, alto, -tamY/2, 1, 0);
    Car_Tra.endShape();

    PShape Car_Iz=createShape();
    Car_Iz.beginShape(QUAD);
    Car_Iz.textureMode(NORMAL);
    Car_Iz.texture(Tex);
    Car_Iz.vertex(-tamX/2, 0, tamY/2, 0, 0);
    Car_Iz.vertex(-tamX/2, alto, tamY/2, 0, 1);
    Car_Iz.vertex(-tamX/2, alto, -tamY/2, 1, 1);
    Car_Iz.vertex(-tamX/2, 0, -tamY/2, 1, 0);
    Car_Iz.endShape();

    PShape Car_Sup=createShape();
    Car_Sup.beginShape(QUAD);
    Car_Sup.textureMode(NORMAL);
    Car_Sup.texture(Tex);
    Car_Sup.vertex(-tamX/2, 0, tamY/2, 0, 0);
    Car_Sup.vertex(tamX/2, 0, tamY/2, 0, 1);
    Car_Sup.vertex(tamX/2, 0, -tamY/2, 1, 1);
    Car_Sup.vertex(-tamX/2, 0, -tamY/2, 1, 0);
    Car_Sup.endShape();

    PShape Car_Der=createShape();
    Car_Der.beginShape(QUAD);
    Car_Der.textureMode(NORMAL);
    Car_Der.texture(Tex);
    Car_Der.vertex(tamX/2, 0, tamY/2, 0, 0);
    Car_Der.vertex(tamX/2, alto, tamY/2, 0, 1);
    Car_Der.vertex(tamX/2, alto, -tamY/2, 1, 1);
    Car_Der.vertex(tamX/2, 0, -tamY/2, 1, 0);
    Car_Der.endShape();

    PShape Car_Inf=createShape();
    Car_Inf.beginShape(QUAD);
    Car_Inf.textureMode(NORMAL);
    Car_Inf.texture(Tex);
    Car_Inf.vertex(tamX/2, alto, tamY/2, 0, 0);
    Car_Inf.vertex(-tamX/2, alto, tamY/2, 0, 1);
    Car_Inf.vertex(-tamX/2, alto, -tamY/2, 1, 1);
    Car_Inf.vertex(tamX/2, alto, -tamY/2, 1, 0);
    Car_Inf.endShape();

    PShape Car_Del=createShape();
    Car_Del.beginShape(QUAD);
    Car_Del.textureMode(NORMAL);
    Car_Del.texture(Tex);
    Car_Del.vertex(-tamX/2, alto, tamY/2, 0, 0);
    Car_Del.vertex(-tamX/2, 0, tamY/2, 0, 1);
    Car_Del.vertex(tamX/2, 0, tamY/2, 1, 1);
    Car_Del.vertex(tamX/2, alto, tamY/2, 1, 0);
    Car_Del.endShape();

    Formita.addChild(Car_Tra);
    Formita.addChild(Car_Iz);
    Formita.addChild(Car_Sup);
    Formita.addChild(Car_Der);
    Formita.addChild(Car_Inf);
    Formita.addChild(Car_Del);
  }

  void Mostrar() {
    pushMatrix();
    translate(x, 0, y);
    shape(Formita);
    popMatrix();
  }
}
