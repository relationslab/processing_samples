
void setup(){
  size(720, 480);
  background(0);
  colorMode(HSB, 360, 100, 100, 100);
  noFill();
}

void draw(){
}

void mousePressed(){
  fill(0, 0, 0, 10);
  noStroke();
  rect(0,0,width,height);
  noFill();

  drawCurve(mouseX, mouseY);
}

final int HUE = 300;
final int RANGE = 30;
final int COUNT = 20;
final int THICK = 10;

void drawCurve(float x3, float y3){
  float x0 = width/2;
  float y0 = height/2;
  x3 += x3-x0;
  y3 += y3-y0;
//  float x3 = random(x0-width, x0+width);
//  float y3 = random(y0-height, y0+height);

  for(int i=0; i<COUNT; i++){
    float x1 = random(0, width);
    float y1 = random(0, height);
    float x2 = random(0, width);
    float y2 = random(0, height);
    float b = random(THICK/2, THICK);
    float h = random(HUE-RANGE, HUE+RANGE);
    if(h<0) h+=360; if(h>=360) h-=360;

    strokeWeight(b);
    stroke(h, 0, 0);
    bezier(x0+1, y0+1, x1+1, y1+1, x2+1, y2+1, x3+1, y3+1);
    stroke(h, random(60, 100), random(60, 100));
    bezier(x0, y0, x1, y1, x2, y2, x3, y3);
  }
}
