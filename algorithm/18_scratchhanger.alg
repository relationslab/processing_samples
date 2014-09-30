
void setup(){
  size(480, 720);
  background(0);
  noFill();
  stroke(255);
}

void draw(){
}

float[] xs = new float[4];
float[] ys = new float[4];

void mousePressed(){
  for(int i=0; i<3; i++){
    xs[i] = mouseX;
    ys[i] = mouseY;
  }
}

int count = 0;
final int C = 10;
final int P = 2;
void mouseDragged(){
  if(++count<2) return;

  count = 0;
  xs[3] = mouseX;
  ys[3] = mouseY;

  for(int i=0; i<C; i++){
    float p = (i-C/2)*P*dist(xs[2], ys[2], xs[3], ys[3])/10;
    curve(xs[0]+p, ys[0]+p
      , xs[1]+p, ys[1]+p
      , xs[2]+p, ys[2]+p
      , xs[3]+p, ys[3]+p);
  }
  for(int i=0; i<3; i++){
    xs[i] = xs[i+1];
    ys[i] = ys[i+1];
  }
}
