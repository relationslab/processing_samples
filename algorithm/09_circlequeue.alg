
void setup(){
  size( 800, 480 );
  noStroke();
  smooth();
  background(255);
  colorMode(HSB, 360, 100, 100);
  frameRate(30);
  strokeCap(SQUARE);
  background(210,10,100);
}

int frameNow = 0;
final int FRAME_DELAY = 0;
int x_bef = 0;
int y_bef = 0;

void draw(){
}

void mousePressed(){
//  background(0,0,0);
  x_bef = mouseX;
  y_bef = mouseY;
  frameNow = frameCount;
}

void mouseReleased(){
  frameNow = 0;
}

void mouseDragged(){
  if( frameNow != 0 && frameCount-frameNow >= FRAME_DELAY ){
    frameNow = frameCount;
    float h = frameNow*45%360;
    fill(h/10+150, 30+random(30), 30+random(30));
//    stroke(h/10+150, 30+random(30), 30+random(30));
    float weight = dist(mouseX, mouseY, x_bef, y_bef)*2;
    strokeWeight(weight);
//    line(x_bef, y_bef, mouseX, mouseY);
    ellipse(mouseX, mouseY, weight, weight);
    x_bef = mouseX;
    y_bef = mouseY;
  }
}
