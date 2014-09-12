
void setup(){
  size(480, 480);
  background(0);
  stroke(0);
  strokeWeight(1);
}

void draw(){
}

final int COUNT = 240;
final float R = 180;
final float D = 360;
int c=0;
void mouseClicked(){
  for(int i=0; i<16; i++){
    float b = c*255.0/COUNT*random(0.8, 1.2);
    float r = c*D/COUNT*random(0.75, 1.25);
    float rad = random(0, TWO_PI);
    float x = r*cos(rad)+mouseX;
    float y = r*sin(rad)+mouseY;

    fill(b);
    ellipse(x, y, r, r);
    ++c;
  }
}
