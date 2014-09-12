final int SIZE = 70;
final int R = 120;
final int RECT_COUNT = 10;
void setup(){
  size(640, 480);
  background(255);
  frameRate(60);
  noStroke();
}

void draw(){
  float rad = frameCount/15.0;
  // float x = R*cos(rad) + width/2;
  // float y = R*sin(rad) + height/2;
  float x = mouseX;
  float y = mouseY;

  background(255);

  for(int i=0; i<RECT_COUNT; i++){
    for(int j=0; j<RECT_COUNT; j++){
      float xr = (j+0.5)*width/RECT_COUNT;
      float yr = (i+0.5)*width/RECT_COUNT;
      float d = dist(x, y, xr, yr);
      float r = d/width * SIZE / 2 + 8;
      fill(51, 204, 51, r*3);
      ellipse(xr, yr, r*2, r*2);
    }
  }
}
