import peasy.*;

float x = 0.01;
float y = 0;
float z = 0;

float a = 10;
float b = 28;
float c = 8.0/3.0;

PeasyCam cam;

void setup() {
  size(800, 600, P3D);
  background(0);
  
  cam = new PeasyCam(this, 500);
}

void draw() {
  float dt = 0.01;
  float dx = (a * (y - x)) * dt;
  float dy = (x * (b - z) - y) * dt;
  float dz = (x * y - c * z) * dt;
  
  x = x + dx;
  y = y + dy;
  z = z + dz;  
 
  translate(width / 2, height / 2);
  stroke(255);
  point(x, y, z);
 
  //println(x, y, z);
}