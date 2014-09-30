
void setup(){
  size( 640, 640 );
  noStroke();
  smooth();
  background(255);
  colorMode(HSB, 360, 100, 100);
  frameRate(60);
}

int frameStart = 0;
int x_start = 320;
int y_start = 320;
float h=0;
void draw(){
  int frameNow = (frameCount-frameStart);
  if(frameNow>100) return;

  float rad = frameNow/30.0f*PI*4;
  float r = frameNow * 2;
  fill(h+random(0, 30), random(50, 100), random(50, 100));
  ellipse(x_start+r*cos(rad),
    y_start+r*sin(rad),
    30+random(30),
    30+random(30)
  );
}

void mouseClicked(){
  x_start = mouseX;
  y_start = mouseY;
  frameStart = frameCount;
  h = random(0, 330);
}
