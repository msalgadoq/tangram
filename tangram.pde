float[] rojo = {800, 225, 650, 150, 800, 300, 950, 150};
float[] morado = {875, 300, 950, 450, 800, 300, 950, 150};
float[] verde = {875, 412.5, 950, 450, 800, 450, 875, 375};
float[] naranja = {800, 375, 800, 450, 875, 375, 800, 300, 725, 375};
float[] rosado = {762.5, 300, 725, 225, 800, 300, 725, 375};
float[] amarillo = {687.5, 262.5, 725, 225, 725, 375, 650, 300, 650, 150};
float[] azul = {687.5, 412.5, 800, 450, 650, 450, 650, 300};
color rojorgb = color(178, 34, 34);
color moradorgb = color(128, 0, 128);
color verdergb = color(124, 252, 0);
color naranjargb = color(255, 140, 0);
color rosadorgb = color(240, 128, 128);
color amarillorgb = color(255, 255, 0);
color azulrgb = color(100, 149, 237);
color color_figura;
boolean seleccion = false;

void setup() {
  size(1050, 600);
  rect(50, 50, 500, 500);
}

void draw() {
  background(200);
  fill(rojorgb);
  triangle(650, 150, 800, 300, 950, 150);
  fill(moradorgb); 
  triangle(950, 450, 800, 300, 950, 150); 
  fill(verdergb);
  triangle(950, 450, 800, 450, 875, 375); 
  fill(naranjargb);
  quad(800, 450, 875, 375, 800, 300, 725, 375); 
  fill(rosadorgb);
  triangle(725, 225, 800, 300, 725, 375); 
  fill(amarillorgb);
  quad(725, 225, 725, 375, 650, 300, 650, 150);
  fill(azulrgb);
  triangle(800, 450, 650, 450, 650, 300);
  if (mousePressed && (mouseButton == LEFT)) {
    if (seleccion == false) {
      color_figura = get(mouseX, mouseY);
      seleccion = true;
    } else {
      if (color_figura == amarillorgb) {
      }
      seleccion = false;
    }
  } else if (mousePressed && (mouseButton == RIGHT)) {
    if (seleccion == true) {
    }
  } else {
    if (color_figura < 0) {
      translate(mouseX-687.5, mouseY-262.5);
      fill(color_figura);
      quad(725, 225, 725, 375, 650, 300, 650, 150);
    }
  }
}