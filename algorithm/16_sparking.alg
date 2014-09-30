
float x, y, hue;
void setup(){
  size(480, 480);
  background(0);
  colorMode(HSB, 360, 100, 100, 100);
  noFill();

  x = random(0, width);
  y = random(0, height);
  hue = random(0, 360);
}

void draw(){
}

void mousePressed(){
  fill(0,0,0,5);
  rect(0,0,width,height);
  drawBezier(mouseX, mouseY);
  x = mouseX;
  y = mouseY;
}

int COUNT = 32;
void drawBezier(float x3, float y3){
  noFill();
  for(int i=0; i<COUNT; i++){
    float x1 = random(x, x3)+random(-50,50);
    float y1 = random(y, y3)+random(-50,50);
    float x2 = random(x, x3)+random(-50,50);
    float y2 = random(y, y3)+random(-50,50);
    float b = random(0, 3);

    float h = hue + random(0, 60);
    if(h>=360) h-=360;

    strokeWeight(b);
    stroke(h, random(80, 100), random(80, 100), random(0, 100));
    bezier(x, y, x1, y1, x2, y2, x3, y3);
  }
}
