/*Estas variables van a simbolizar la posición de las figuras, y al cambio en el movimiento.*/

  int pxT1; int CambiopxT1;
  int pyT1; int CambiopyT1;
  
  int pxT2; int CambiopxT2;
  int pyT2; int CambiopyT2;
  
  int pxT3; int CambiopxT3;
  int pyT3; int CambiopyT3;
  
  int pxT4; int CambiopxT4;
  int pyT4; int CambiopyT4;
  
  int pxT5; int CambiopxT5;
  int pyT5; int CambiopyT5;
  
  int pxQ1; int CambiopxQ1;
  int pyQ1; int CambiopyQ1;
  
  int pxQ2;  int CambiopxQ2;
  int pyQ2;  int CambiopyQ2;

/*Estas son las variables de color*/

  color cT1 = color(255, 0, 0); //Triángulo 1 = Rojo.
  color cT2 = color(0, 255, 0); //Triángulo 2 = Verde.
  color cT3 = color(0, 0, 255); //Triángulo 3 = Azul Oscuro.
  color cT4 = color(255, 255, 0); //Triángulo 4 = Amarillo.
  color cT5 = color(255, 0, 255); //Triángulo 5 = Morado.
  color cQ1 = color(0, 255, 255); //Cuadrilátero 1 = Azul Claro.
  color cQ2 = color(255, 120, 0); //Cuadrilátero 2 = Anaranjado.
  color leercolor;

/*Estas variables son las de los niveles*/

  boolean INICIO = true;
  boolean CUADRADO = false;
  boolean PEZ = false;
  boolean CONEJO = false;

/*Estas variables se usan para que las funciones del mouse funcionen.
 Al hacer click inicial; Al arrastrarlas; Al moverlas y soltarlas */

  int MouseXi; int MouseXf; int CambioX;
  int MouseYi; int MouseYf; int CambioY;

/*Estas varaibles se usan para el movimiento de figuras.*/

  boolean movT1;
  boolean movT2;
  boolean movT3;
  boolean movT4;
  boolean movT5;
  boolean movQ1;
  boolean movQ2;

/*Estas variables se usan para la rotación de figuras.*/

  int rotT1 = 2;
  int rotT2 = 0;
  int rotT3 = 2;
  int rotT4 = 1;
  int rotT5 = -1;
  int rotQ1 = 0;
  int rotQ2 = -1;

/*Estas variables sirven para saber si se completó el nivel leyendo los pixeles blancos. */
 
  color White = color(255);
  int CountPixelsWhite;
  boolean Complete;

/*En el setup va sólamente el tamaño, pues se reproduce una vez*/

void setup() {
 size(1200, 600);
}

/*Función al tener el click presionado. No hay movimiento, y se asignan valores a las variables y a la que lee el color.*/

void mousePressed() {
  
   if (mousePressed) {
     
     movT1 = false;
     movT2 = false;
     movT3 = false;
     movT4 = false;
     movT5 = false;
     movQ1 = false;
     movQ2 = false;
     MouseXi = mouseX;
     MouseYi = mouseY;
     MouseXf = mouseX;
     MouseYf = mouseY;
     leercolor = get(mouseX, mouseY);
 }
}

/*Función al soltar el click. Reinicia las variables de mov a false. Las posiciones cambian: se le suma el cambio a la posición. Luego reinicia el cambio a 0.*/

void mouseReleased() {
  
   MouseXi = mouseX;
   MouseYi = mouseY;
   MouseXf = mouseX;
   MouseYf = mouseY;
   movT1 = false;
   movT2 = false;
   movT3 = false;
   movT4 = false;
   movT5 = false;
   movQ1 = false;
   movQ2 = false;

   pxT1 += CambiopxT1;
   pyT1 += CambiopyT1;
   pxT2 += CambiopxT2;
   pyT2 += CambiopyT2;
   pxT3 += CambiopxT3;
   pyT3 += CambiopyT3;
   pxT4 += CambiopxT4;
   pyT4 += CambiopyT4;
   pxT5 += CambiopxT5;
   pyT5 += CambiopyT5;
   pxQ1 += CambiopxQ1;
   pyQ1 += CambiopyQ1;
   pxQ2 += CambiopxQ2;
   pyQ2 += CambiopyQ2;

   CambioX =0;
   CambioY =0;
   CambiopxT1 = 0;
   CambiopyT1 = 0;
   CambiopxT2 = 0;
   CambiopyT2 = 0;
   CambiopxT3 = 0;
   CambiopyT3 = 0;
   CambiopxT4 = 0;
   CambiopyT4 = 0;
   CambiopxT5 = 0;
   CambiopyT5 = 0;
   CambiopxQ1 = 0;
   CambiopyQ1 = 0;
   CambiopxQ2 = 0;
   CambiopyQ2 = 0;
}

/*Función al arrastrar con el click oprimido. */

void mouseDragged() {
  
 MouseXf = mouseX;
 MouseYf = mouseY;
 
}
 
/*Función al rodar la rueda del mouse. Le suma a las variables de rotación +1 o -1.*/

void mouseWheel(MouseEvent event) {
 
 if (movT1) {
 rotT1 = rotT1 + event.getCount();
 }
 if (movT2) {
 rotT2 = rotT2 + event.getCount();
 }
 if (movT3) {
 rotT3 = rotT3 + event.getCount();
 }
 if (movT4) {
 rotT4 = rotT4 + event.getCount();
 }
 if (movT5) {
 rotT5 = rotT5 + event.getCount();
 }
 if (movQ1) {
 rotQ1 = rotQ1 + event.getCount();
 }
 if (movQ2) {
 rotQ2 = rotQ2 + event.getCount();
 }
}

/*Función draw que se ejecuta indefinidamente*/

void draw() {
  background(138, 72, 1);
  CountPixelsWhite = 0; //Reinicia la cuenta de pixeles.

/*Pantalla de Inicio*/

 if (INICIO) {

   fill(0);
   textSize(70);
   text("ELIGE EL NIVEL", 55, 139);
   fill(247,172,164);
   strokeWeight(2.5);
   rect(60, 200, 480, 60);  
   rect(60, 300, 480, 60);  
   rect(60, 400, 480, 60);  
   fill(0);
   textSize(50);
   text("CUADRADO", 160, 250);
   text("PEZ", 250, 350);
   text("CONEJO", 200, 450);
   textSize(30);
   text("Bienvenido al tangram:", 600, 50);
   text("Hay tres niveles.", 600, 150);
   text("PARA SELECCIONAR UNA FIGURA", 600, 250);
   text("Click encima y arrastras.", 600, 300);
   text("PARA ROTAR UNA FIGURA", 600, 350);
   text("Rueda del mouse mientras seleccionada.", 600, 400);
   text("- Si logras armar la figura", 600, 500);
   text("...aparecerá un mensaje de GANASTE.", 600, 550);
 
/*Permite elegir el nivel, y pinta las figuras en lugares ALEATORIOS.*/

     if (mousePressed==true && mouseX>60 && mouseX<540 && mouseY>200 && mouseY<260) {
       INICIO = false;
       CUADRADO = true;
       pxT1 = round(random(200,1000));
       pyT1 = round(random(100,500));
       pxT2 = round(random(200,1000));
       pyT2 = round(random(100,500));
       pxT3 = round(random(200,1000));
       pyT3 = round(random(100,500));
       pxT4 = round(random(200,1000));
       pyT4 = round(random(100,500));
       pxT5 = round(random(200,1000));
       pyT5 = round(random(100,500));
       pxQ1 = round(random(200,1000));
       pyQ1 = round(random(100,500));
       pxQ2 = round(random(200,1000));
       pyQ2 = round(random(100,500));
       rotT1 = 2;
       rotT2 = 0;
       rotT3 = 2;
       rotT4 = 1;
       rotT5 = -1;
       rotQ1 = 0;
       rotQ2 = -2;
}
   if (mousePressed==true && mouseX>60 && mouseX<540 && mouseY>300 && mouseY<360) {
     INICIO = false;
     PEZ = true;
     pxT1 = round(random(200,1000));
     pyT1 = round(random(100,500));
     pxT2 = round(random(200,1000));
     pyT2 = round(random(100,500));
     pxT3 = round(random(200,1000));
     pyT3 = round(random(100,500));
     pxT4 = round(random(200,1000));
     pyT4 = round(random(100,500));
     pxT5 = round(random(200,1000));
     pyT5 = round(random(100,500));
     pxQ1 = round(random(200,1000));
     pyQ1 = round(random(100,500));
     pxQ2 = round(random(200,1000));
     pyQ2 = round(random(100,500));
     rotT1 = 2;
     rotT2 = 0;
     rotT3 = 2;
     rotT4 = 1;
     rotT5 = -1;
     rotQ1 = 0;
     rotQ2 = -2;
 }
   if (mousePressed==true && mouseX>60 && mouseX<540 && mouseY>400 && mouseY<460) {
     INICIO = false;
     CONEJO = true;
     pxT1 = round(random(200,1000));
     pyT1 = round(random(100,500));
     pxT2 = round(random(200,1000));
     pyT2 = round(random(100,500));
     pxT3 = round(random(200,1000));
     pyT3 = round(random(100,500));
     pxT4 = round(random(200,1000));
     pyT4 = round(random(100,500));
     pxT5 = round(random(200,1000));
     pyT5 = round(random(100,500));
     pxQ1 = round(random(200,1000));
     pyQ1 = round(random(100,500));
     pxQ2 = round(random(200,1000));
     pyQ2 = round(random(100,500));
     rotT1 = 2;
     rotT2 = 0;
     rotT3 = 2;
     rotT4 = 1;
     rotT5 = -1;
     rotQ1 = 0;
     rotQ2 = -2;
   }
 }

 /*Dibuja las figuras de muestra en blanco*/
 
 if (CUADRADO) {
   noStroke();
   fill(255);
   rect(120, 120, 360, 360);
 }

 if (PEZ) {
   fill(255);
   stroke(255);
   triangle(60, 240, 240, 60, 240, 420);    
   triangle(240, 50, 490, 50, 240, 300);   
   triangle(420, 300, 540, 180, 540, 420); 
   triangle(330, 210, 420, 120, 420, 300);
   triangle(150, 330, 240, 420, 150, 510); 
   quad(240, 300, 330, 210, 420, 300, 330, 390);  
   quad(240, 300, 330, 390, 330, 570, 240, 480);
 }
 if (CONEJO) {
   fill(255);
   stroke(255);
   triangle(240, 90, 240, 345, 495, 345);    
   triangle(240, 345, 495, 345, 495, 600);   
   triangle(315, 420, 315, 600, 495, 600); 
   triangle(315, 420, 315, 600, 225, 510);
   triangle(150, 330, 240, 240, 240, 420); 
   quad(120, 90, 240, 90, 240, 210, 120, 210);  
   quad(240, 90, 330, 0, 510, 0, 420, 90);
 }

/*Se dibujan las figuras en función de las variables, hace que cambien de color y de grosor al seleccionar.*/

 if (INICIO==false) {
  strokeWeight(1);
  color cT1 = color(255, 0, 0); 
  color cT2 = color(0, 255, 0); 
  color cT3 = color(0, 0, 255); 
  color cT4 = color(255, 255, 0);
  color cT5 = color(255, 0, 255);
  color cQ1 = color(0, 255, 255); 
  color cQ2 = color(255, 120, 0); 
  
    if (movT1) {
     stroke(0);
     cT1=color(255, 30, 30);
     strokeWeight(4);
 }
 
     pushMatrix();
     fill(cT1);
     translate(pxT1+CambiopxT1+200, pyT1+CambiopyT1-100);
     rotate(rotT1*PI/4);
     stroke(0);
     translate(-(pxT1+CambiopxT1+180), -(pyT1+CambiopyT1-100));
     translate(pxT1+CambiopxT1, pyT1+CambiopyT1);
     triangle(0, 0, 360, 0, 180, -180);
     stroke(0);
     strokeWeight(1);
     popMatrix();
 
    if (movT2) {
     stroke(0);
     cT2 = color(30, 255, 30); 
     strokeWeight(4);
 }
     pushMatrix();
     fill(cT2);
     translate(pxT2+CambiopxT2-100, pyT2+CambiopyT2+200);
     rotate(rotT2*PI/4);
     stroke(0);
     translate(-(pxT2+CambiopxT2-100), -(pyT2+CambiopyT2+200));
     translate(pxT2+CambiopxT2, pyT2+CambiopyT2); 
     triangle(0, 0, 0, 362, -182, 182);
     stroke(0);
     strokeWeight(1);
     popMatrix();
 
    if (movT3) {
     stroke(0);
     cT3 = color(30, 30, 255);
     strokeWeight(4);
 }
     pushMatrix();
     fill(cT3);
     translate(pxT3+CambiopxT3+50, pyT3+CambiopyT3+50);
     rotate(rotT3*PI/4);
     translate(-(pxT3+CambiopxT3+50), -(pyT3+CambiopyT3+50));
     translate(pxT3+CambiopxT3, pyT3+CambiopyT3); 
     triangle(0, 0, 0, 182, 182, 0);
     stroke(0);
     strokeWeight(1);
     popMatrix();

    if (movT4) {
     stroke(0);
     cT4 = color(255, 255, 30);
     strokeWeight(4);
 }
     pushMatrix();
     fill(cT4);
     translate(pxT4+CambiopxT4+100, pyT4+CambiopyT4+50);
     rotate(rotT4*PI/4);
     translate(-(pxT4+CambiopxT4+100), -(pyT4+CambiopyT4+50));
     translate(pxT4+CambiopxT4, pyT4+CambiopyT4);
     triangle(0, 0, 182, 0, 92, 92);
     stroke(0);
     strokeWeight(1);
     popMatrix();
 
    if (movT5) {
     stroke(0);
     cT5 = color(255, 30, 255);
     strokeWeight(4);
 }
     pushMatrix();
     fill(cT5);
     translate(pxT5+CambiopxT5+50, pyT5+CambiopyT5-100);
     rotate(rotT5*PI/4);   
     translate(-(pxT5+CambiopxT5+50), -(pyT5+CambiopyT5-100));
     translate(pxT5+CambiopxT5, pyT5+CambiopyT5);
     triangle(0, 0, 0, -182, 92, -92);
     stroke(0);
     strokeWeight(1);
     popMatrix();
 
    if (movQ1) {
     stroke(0);
     cQ1 = color(60, 255, 255); 
     strokeWeight(4);
 }
     pushMatrix();
     fill(cQ1);
     translate(pxQ1+CambiopxQ1+100, pyQ1+CambiopyQ1);
     rotate(rotQ1*PI/4);  
     translate(-(pxQ1+CambiopxQ1+100), -(pyQ1+CambiopyQ1));
     translate(pxQ1+CambiopxQ1, pyQ1+CambiopyQ1);
     quad(0, 0, 92, -92, 182, 0, 92, 92);
     stroke(0);
     strokeWeight(1);
     popMatrix();
 
    if (movQ2) {
     stroke(0);
     cQ2 = color(255, 120, 60); 
     strokeWeight(4);
 }
     pushMatrix();
     fill(cQ2);
     translate(pxQ2+CambiopxQ2+50, pyQ2+CambiopyQ2-150);
     rotate(rotQ2*PI/4);
     translate(-(pxQ2+CambiopxQ2+50), -(pyQ2+CambiopyQ2-150));
     translate(pxQ2+CambiopxQ2, pyQ2+CambiopyQ2);
     quad(0, 0, 0, -130, 130, -260, 130, -130);
     stroke(0);
     strokeWeight(1);
     popMatrix();
 }
 
 /*Selección de las piezas con la variable de leercolor.*/
 
 if ((mousePressed==true&&(mouseButton==LEFT))&&(leercolor==cT1)) {
 movT1 = true;
 }

 if ((mousePressed==true)&&(mouseButton==LEFT)&&(leercolor==cT2)) {
 movT2 = true;
 }

 if ((mousePressed==true)&&(mouseButton==LEFT)&&(leercolor==cT3)) {
 movT3 = true;
 }

 if ((mousePressed==true)&&(mouseButton==LEFT)&&(leercolor==cT4)) {
 movT4 = true;
 }

 if ((mousePressed==true)&&(mouseButton==LEFT)&&(leercolor==cT5)) {
 movT5 = true;
 }

 if ((mousePressed==true)&&(mouseButton==LEFT)&&(leercolor==cQ1)) {
 movQ1 = true;
 }

 if ((mousePressed==true)&&(mouseButton==LEFT)&&(leercolor==cQ2)) {
 movQ2 = true;
 }
 
 /*Movimiento de las piezas. Asigna los cambios en px y en py.*/
 
 if (movT1) {
 CambiopxT1 = MouseXf-MouseXi;
 CambiopyT1 = MouseYf-MouseYi;
 } else {
 }
 if (movT2) {
 CambiopxT2 = MouseXf-MouseXi;
 CambiopyT2 = MouseYf-MouseYi;
 } else {
 }
 if (movT3) {
 CambiopxT3 = MouseXf-MouseXi;
 CambiopyT3 = MouseYf-MouseYi;
 } else {
 }
 if (movT4) {
 CambiopxT4 = MouseXf-MouseXi;
 CambiopyT4 = MouseYf-MouseYi;
 } else {
 }
 if (movT5) {
 CambiopxT5 = MouseXf-MouseXi;
 CambiopyT5 = MouseYf-MouseYi;
 } else {
 }
 if (movQ1) {
 CambiopxQ1 = MouseXf-MouseXi;
 CambiopyQ1 = MouseYf-MouseYi;
 } else {
 }
 if (movQ2) {
 CambiopxQ2 = MouseXf-MouseXi;
 CambiopyQ2 = MouseYf-MouseYi;
 } else {
 }

 /*Cuenta los pixeles blancos. Si es igual a 0, imprime el mensaje de haber completado el nivel.*/

 loadPixels();
 for (int i = 0; i < (width*height); i++) {
 if (pixels[i] == White) {
 CountPixelsWhite += 1;
 }
 }

 updatePixels();
 if (INICIO==false) {
 if (CountPixelsWhite==0) {
 Complete = true;
 textSize(100);
 fill(0, 254, 0);
 text("GANASTE", 600, 350);
 }
 else {
 }
 }

 }
