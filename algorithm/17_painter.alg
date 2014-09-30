
float x, y, c;
float R = 48;
int COUNT = 20;

float RC = 8;
float C = 12;

void setup(){
  size(480, 480);
  background(255);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);

  palette();
  c = hue(get(5, (int)(RC*3)));
}

void draw(){
}

void mousePressed(){
  if(mouseX<R){
    c = hue(get(mouseX, mouseY));
  }
}

void mouseDragged(){
  float r = R*random(0.5, 2.0);
  fill(c, random(40, 80), random(40, 80), random(40, 80));
  ellipse(mouseX, mouseY, r, r);
}

void mouseReleased(){
  palette();
}


void palette(){
  for(int i=0; i<C; i++){
    fill(360*(i/C), 70, 70);
    rect(0, RC*(i+2), RC, RC);
  }

  fill(c, 70, 70);
  rect(0, 0, RC, RC);
}
