
void setup(){
  size(800, 480);
  background(255);
  smooth();
  noFill();
  strokeCap(SQUARE);
  colorMode(HSB, 360, 100, 100, 255);
}

void draw(){
}

float x_begin = 0;
float y_begin = 0;
int c = 0;
void mouseDragged(){
  if(x_begin==0){
    x_begin = mouseX;
    y_begin = mouseY;
  }
  ++c; if(c%2!=0) return;

  noFill();
  float d = dist(mouseX, mouseY, x_begin, y_begin);
  float r = random(160, 240+d);

  float cw = r-random(0,d/2);
  float a1 = random(0, TWO_PI);
  float a2 = random(0, TWO_PI);
  float aa = random(0, TWO_PI);
  a1+=aa; a2+=aa;

  strokeWeight(random(4, 16));
  stroke(random(60, 180), random(60, 80), random(60, 100));
  arc(mouseX, mouseY, cw, r, a1, a2);
}

void mouseReleased(){
  x_begin = 0;
  y_begin = 0;
}
