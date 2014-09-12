
void setup(){
  size(840, 360);
  background(255);
  colorMode(HSB, 360, 100, 100);
  noStroke();
}

void draw(){

}

final int COUNT = 120;
final int COUNT_LINE = COUNT*3;
void mouseClicked(){
  float hb = random(0, 360);
  float x = (mouseX-width/2)*2+width/2;
  float y = (mouseY-height/2)*2+height/2;

  for(int i=0; i<COUNT; i++){
    float h = (hb+(float)i*120/COUNT+random(0, 30))%360;
    float r = random(320, 1920);
    float rad = i*TWO_PI/COUNT;
    noStroke();
    fill(h, random(30, 70), random(60, 100));
    arc(x, y, r, r, rad, rad+random(1.5/TWO_PI));
  }
  for(int i=0; i<COUNT_LINE; i++){
    float h = (hb+(float)i*120/COUNT_LINE+random(0, 30))%360;
    float r = random(320, 1920);
    float rad = i*TWO_PI/COUNT_LINE;

    float rl = r*random(0.75, 0.9);
    float rad_line = rad+random(0.5/TWO_PI);
    float xl = x+rl*cos(rad_line)/2;
    float yl = y+rl*sin(rad_line)/2;
    noFill();
    stroke(h, random(30, 50), random(80, 100), 192);
    strokeWeight(1);
    line(x, y, xl, yl);
    arc(x, y, rl, rl, rad_line, rad_line+random(2.5/TWO_PI));
  }
}
