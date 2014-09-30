
void setup(){
  size(720, 480);
  colorMode(HSB, 360, 100, 100);
  background(210, 50, 80);
  noFill();
  stroke(210, 20, 100);
}

void draw(){
}

final int THRE = 32;
int count = 0;
void mouseDragged(){
  if(++count<THRE) return;

  count = 0;
  drawBezier(mouseX, mouseY);
}

int COUNT = 20;
void drawBezier(float x3, float y3){
  float x = width/2;
  float y = height/2;

  for(int i=0; i<COUNT; i++){
    float x1 = random(0, width);
    float y1 = random(0, height);
    float x2 = random(0, width);
    float y2 = random(0, height);
    float b = random(0, 1);

    strokeWeight(b);
//    stroke(random(0, 360), random(80, 100), random(80, 100));
    bezier(x, y, x1, y1, x2, y2, x3, y3);
  }
}
