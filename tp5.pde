/*Nombre: Germán Eloy Iñiguez
  Número: 81697/3
  
  Para moverte en el juego se usan las flechas direccionales (las laterales para girar
  y las de arriba y aajo para avanzar y retroceder). El objetivo del juego sería sería
  explorar el subsuelo que descubre el personaje en las pantallas 20 y 31, así que
  esto vendría a reemplazar las pantallas 21 y 32. Hay dos posibles finales en el juego:
  que te encuentres con el bicho y te ataque, o que no te encuentres con nada.
  */

import ddf.minim.*;

Juego juego;

void setup(){
  size(800,600,P3D);
  /*Es resizable, pero todo exceptuando los textos está programado con números fijos
    Ya que al usar la cámara se renderiza en la ventana lo que se está viendo desde la misma,
    así que el tamaño de la ventana no importa (a menos que sea muy chica).*/
  surface.setResizable(true);
  textAlign(CENTER,CENTER);
  
  
  /*Se pasa this de referencia para poder iniciaizar un objeto de la clase Minim dentro de la
    clase Juego, ya que Minim pide una referenca al PApplet, que es la clase base de los sketches*/
  juego = new Juego(this);
}

void draw(){
  juego.Dibujar();
}

void keyPressed(){
  juego.Tecla_Presionada();
}

void keyReleased(){
  juego.Tecla_Soltada();
}
