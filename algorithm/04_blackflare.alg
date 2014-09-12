void setup(){
  size(800, 480);
  background(0);
  stroke(255, 255, 255, 128);
  strokeWeight(1);
}

void draw(){
}

final float R_BASE = 64;
final float R_MIN = 64;
final float R_MAX = 640;
final int COUNT = 180;
float x_bef = 0;
float y_bef = 0;

void mouseClicked(){
  float rad = 0;
  for(int i=0; rad<PI*2; i++){
    float r = (i%2==1)?R_BASE+random(R_MIN):R_BASE+random(R_MAX);
    rad += random(PI*2/COUNT);
    float x = r*cos(rad)+width/2;
    float y = r*sin(rad)+height/2;
    if(i!=0) line(x, y, x_bef, y_bef);
    x_bef = x;
    y_bef = y;
  }
}
