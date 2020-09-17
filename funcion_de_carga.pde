//Carga las imágenes y los textos en un thread aparte.
//Cuando termina, cambia el valor de la variable "cargando" a true para que se empiecen a mostrar las pantallas.
void Cargar(){
  for(int i=0;i<fondos.length;i++){
    fondos[i] = loadImage("Imagen"+Integer.toString(i)+".png");
  }
  Bicho = loadImage("Chobi.png");
  Texto_Normal = loadStrings("Textos.txt");
  Texto_Decisiones = loadStrings("Decisiones.txt");
  cargado = true;
}
