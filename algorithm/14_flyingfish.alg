
final int COUNT = 10;
final float W = 100;
final float H = 20;
float[] xs = new float[COUNT];
float[] ys = new float[COUNT];
float[] vs = new float[COUNT];
float[] cs = new float[COUNT];

void setup(){
  size(480, 480);
  background(204, 255, 255);
  frameRate(30);

  for(int i=0; i<COUNT; i++){
    xs[i] = random(60, width-60);
    ys[i] = random(60, height-60);
    vs[i] = random(-1, 1);
    cs[i] = random(30, 120);
  }
}

void draw(){
  background(204, 255, 255);
  for(int i=0; i<COUNT; i++){
    xs[i] += vs[i];
    if(--cs[i]<=0){
      vs[i] = random(-1, 1);
      cs[i] = random(30, 120);
    }

    stroke(0);
    line(xs[i], 0, xs[i], ys[i]);
    fill(0);
    ellipse(xs[i], ys[i], W, H*2);
    triangle(xs[i]+W/2, ys[i], xs[i]+W/2+H, ys[i]-H, xs[i]+W/2+H, ys[i]+H);
  }
}
