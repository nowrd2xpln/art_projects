float x = 0;
float y = 0;
float z = 0;

float a = 0.01;
float b = 0.01;
float c = 0.01;

void setup() {
  size(1024,768);
}

void draw() {
  float dt = 1;
  float dx = (a * (y - x)) * dt;
  float dy = (x * (b - z) - y) * dt;
  float dz = (x * y - c * z) * dt;
  
  x = x + dx;
  y = y + dy;
  z = z + dz;  
  
  println(x, y, z);
}