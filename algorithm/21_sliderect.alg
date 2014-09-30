
void setup(){
  size(720, 480);
  background(0);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
}

void draw(){
}

final float R = 32;
final int SLIDE = 80;
final int VMAX = 8;
void mousePressed(){
  float x = mouseX, y = mouseY;
  float h = random(0, 360);
  float s = 0;
  float b = random(0, 10);
  for(int i=0; i<SLIDE; i++){
    x += random(0, VMAX);
    s += random(-8, 10);
    if(s<0) s=0; if(s>100) s=100;
    b += random(-8, 10);
    if(b<0) b=0; if(b>100) b=100;

    fill(h, s, b, b);
    rect(x, y, R/4, R);
  }
}
