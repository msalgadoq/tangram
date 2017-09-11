float pxt1= random(50, 550);
float pxT1= round(pxt1);
float pyt1= random(50, 550);
float pyT1= round(pyt1);

float pxt2= random(50, 550);
float pxT2= round(pxt2);
float pyt2= random(50, 550);
float pyT2= round(pyt2);

float pxt3= random(50, 550);
float pxT3= round(pxt3);
float pyt3= random(50, 550);
float pyT3= round(pyt3);

float pxt4= random(50, 550);
float pxT4= round(pxt4);
float pyt4= random(50, 550);
float pyT4= round(pyt4);

float pxt5= random(50, 550);
float pxT5= round(pxt5);
float pyt5= random(50, 550);
float pyT5= round(pyt5);

float pxq1= random(50, 550);
float pxQ1= round(pxq1);
float pyq1= random(50, 550);
float pyQ1= round(pyq1);

float pxq2= random(50, 550);
float pxQ2= round(pxq2);
float pyq2= random(50, 550);
float pyQ2= round(pyq2);

color T1 = color(30, 254, 0);
color T2 = color(234, 255 ,0);
color T3 = color(255, 123, 6);
color T4 = color(7, 1, 255);
color T5 = color(6, 254, 245);
color Q1 = color(255, 2, 2);
color Q2 = color(251, 6, 225);

boolean sobreficha = false;
boolean locked = false;
float xOffset = 0.0; 
float yOffset = 0.0; 


void setup(){
    size(600, 600);
      background(138, 72, 1);
    fill(247,172,164);
    strokeWeight(2.5);
      rect(60, 200, 480, 60);  
      rect(60, 300, 480, 60);  
      rect(60, 400, 480, 60);  

    fill(0);
    textSize(70);
      text("ELIGE EL NIVEL", 55, 139);
    textSize(50);
      text("CUADRADO", 160, 250);
      text("PEZ", 230, 350);
      text("CISNE", 225, 450);
    textSize(20);
      text("Presiona 1, 2, o 3 por favor", 300, 550);
}

void draw(){
 
      if (key == '1'){
        
        background(138, 72, 1);
        
        //Muestra cuadrado blanco:
        
        stroke(255);
        fill(255);
        triangle(120, 120, 480, 120, 300, 300);    
        triangle(480, 120, 300, 300, 480, 480);   
        triangle(120, 300, 300, 480, 120, 480); 
        triangle(300, 480, 390, 390, 480, 480);
        triangle(210, 210, 300, 300, 210, 390); 
        quad(300, 300, 390, 390, 300, 480, 210, 390);  
        quad(120, 120, 210, 210, 210, 390, 120, 300);    
     
        //Fichas:
        
       strokeWeight(2.5);
       stroke(0);
       fill(T1);
       triangle(pxT1, pyT1, pxT1+360, pyT1, pxT1+180, pyT1+180);
       fill(T2);
       triangle(pxT2, pyT2-360, pxT2-180, pyT2-180, pxT2, pyT2);
       fill(T3);
       triangle(pxT3-180, pyT3, pxT3, pyT3+180, pxT3-180, pyT3+180);
       fill(T4);
       triangle(pxT4-180, pyT4, pxT4-90, pyT4-90, pxT4, pyT4);
       fill(T5);
       triangle(pxT5, pyT5, pxT5+90, pyT5+90, pxT5, pyT5+180);
       fill(Q1);
       quad(pxQ1, pyQ1, pxQ1+90, pyQ1+90, pxQ1, pyQ1+180, pxQ1-90, pyQ1+90); 
       fill(Q2);
       quad(pxQ2-90, pyQ2-90, pxQ2, pyQ2, pxQ2, pyQ2+180, pxQ2-90, pyQ2+90); 
      }else if (key=='2'){
        
        background(138, 72, 1);
        
        //Muestra Pez Blanco:
        
        stroke(255);
        fill(255);
        triangle(60, 240, 240, 60, 240, 420);    
        triangle(240, 60, 480, 60, 240, 330);   
        triangle(420, 330, 540, 210, 540, 450); 
        triangle(330, 240, 420, 120, 420, 330);
        triangle(150, 330, 240, 420, 150, 510); 
        quad(330, 240, 420, 330, 330, 420, 240, 330);  
        quad(240, 330, 330, 420, 330, 600, 240, 510);
        
        //Fichas:
          
         strokeWeight(2.5);
       stroke(0);
       fill(T1);
       triangle(pxT1, pyT1, pxT1+360, pyT1, pxT1+180, pyT1+180);
       fill(T2);
       triangle(pxT2, pyT2-360, pxT2-180, pyT2-180, pxT2, pyT2);
       fill(T3);
       triangle(pxT3-180, pyT3, pxT3, pyT3+180, pxT3-180, pyT3+180);
       fill(T4);
       triangle(pxT4-180, pyT4, pxT4-90, pyT4-90, pxT4, pyT4);
       fill(T5);
       triangle(pxT5, pyT5, pxT5+90, pyT5+90, pxT5, pyT5+180);
       fill(Q1);
       quad(pxQ1, pyQ1, pxQ1+90, pyQ1+90, pxQ1, pyQ1+180, pxQ1-90, pyQ1+90); 
       fill(Q2);
       quad(pxQ2-90, pyQ2-90, pxQ2, pyQ2, pxQ2, pyQ2+180, pxQ2-90, pyQ2+90);
         }else if (key=='3'){
        
        background(138, 72, 1);
        
        //Muestra Cisne Blanco:
        
        stroke(255);
        fill(255);
        triangle(150, 390, 540, 390, 360, 540);    
        triangle(150, 390, 180, 600, 420, 600);   
        triangle(150, 390, 60, 480, 180, 600); 
        triangle(60, 300, 120, 420, 60, 480);
        triangle(30, 150, 150, 30, 150, 150); 
        quad(150, 210, 240, 300, 120, 420, 60, 300);  
        quad(150, 30, 240, 120, 240, 300, 150, 210);
        
        //Fichas:
          
         strokeWeight(2.5);
       stroke(0);
       fill(T1);
       triangle(pxT1, pyT1, pxT1+360, pyT1, pxT1+180, pyT1+180);
       fill(T2);
       triangle(pxT2, pyT2-360, pxT2-180, pyT2-180, pxT2, pyT2);
       fill(T3);
       triangle(pxT3-180, pyT3, pxT3, pyT3+180, pxT3-180, pyT3+180);
       fill(T4);
       triangle(pxT4-180, pyT4, pxT4-90, pyT4-90, pxT4, pyT4);
       fill(T5);
       triangle(pxT5, pyT5, pxT5+90, pyT5+90, pxT5, pyT5+180);
       fill(Q1);
       quad(pxQ1, pyQ1, pxQ1+90, pyQ1+90, pxQ1, pyQ1+180, pxQ1-90, pyQ1+90); 
       fill(Q2);
       quad(pxQ2-90, pyQ2-90, pxQ2, pyQ2, pxQ2, pyQ2+180, pxQ2-90, pyQ2+90);

         }

if (mousePressed && (mouseButton == LEFT) && T1 == get(mouseX,mouseY))  { 
    locked = true; 
  } else {
    locked = false;
  }
  xOffset = mouseX-pxT1; 
  yOffset = mouseY-pyT1; 

}


void mouseDragged() {
  if(locked) {
    pxT1 = mouseX-xOffset; 
    pyT1 = mouseY-yOffset; 
  }
}

void mouseReleased() {
  locked = false;
}