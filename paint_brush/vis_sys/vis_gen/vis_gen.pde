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
  float dx = a * (y - x);
  float dy = x * (b - z) - y;
  float dz = x * y - c * z;
  
  x = x + dx;
  y = y + dy;
  z = z + dz;  
}