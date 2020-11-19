import ddf.minim.*;

Aventura aventura;

void setup(){
  size(800,600,P3D);
  surface.setResizable(true);
  
  aventura = new Aventura(this);
  
  aventura.Construir();
}

void draw(){
  aventura.Actualizar();
  aventura.Dibujar();
  //println("Pantalla: "+aventura.pantalla);
}

void keyPressed(){
  aventura.Tecla_Press();
}

void keyReleased(){
  aventura.Tecla_Rel();
}

void mouseClicked(){
  aventura.Mouse();
}
