
final float R = 100;
float x, y, r, a;
float c;

void resetColor(){
  r = random(0, R);
  c = random(0, 360);
  a = random(0, 100);
}

void setup(){
  size(480, 480);
  background(255);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  x = random(0, width);
  y = random(0, height);
  resetColor();
}

void draw(){
}

float sp, vx, vy;
void mousePressed(){
  sp = dist(x, y, mouseX, mouseY) * 0.002;
  vx = (mouseX-x) * sp;
  vy = (mouseY-y) * sp;

  for(int i=0; i<100; i++){
    x += vx;
    if( x<0 ) {x=0; vx=-vx;} if( x>width ) {x=width; vx=-vx;}
    y += vy;
    if( y<0 ) {y=0; vy=-vy;} if( y>height ) {y=height; vy=-vy;}
    vx *= random(0.7, 1.3);
    vy *= random(0.7, 1.3);
    r *= random(0.8, 1.2);
    a *= 0.99;

    fill(c, random(20,100), random(20,100), a);
    ellipse(x, y, r, r);
  }

  resetColor();
}
