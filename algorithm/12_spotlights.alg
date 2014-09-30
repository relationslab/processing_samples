
final int COUNTS = 32;
final int R = 48;
final float DIST = 96;
float[] x = new float[COUNTS];
float[] y = new float[COUNTS];
float[] vx = new float[COUNTS];
float[] vy = new float[COUNTS];
void setup(){
  size(640, 640);
  background(0);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  frameRate(60);

  for(int i=0; i<COUNTS; i++){
    x[i] = random(width-R*2)+R;
    y[i] = random(height-R*2)+R;
    vx[i] = random(6)-3;
    vy[i] = random(6)-3;
  }
}

void draw(){
  background(0, 0, 0);
  for(int i=0; i<COUNTS; i++){
    x[i]+=vx[i];
    if(x[i]<R || x[i]>=width-R) vx[i]=-vx[i];
    y[i]+=vy[i];
    if(y[i]<R || y[i]>=height-R) vy[i]=-vy[i];

    int c = 1;
    stroke(0, 0, 100, 51);
    strokeWeight(2);
    for(int k=0; k<COUNTS; k++){
      float d = dist(x[i], y[i], x[k], y[k]);
      if( d<DIST ){
        line(x[i], y[i], x[k], y[k]);
        ++c;
      }
    }

    noStroke();
    fill(0, 0, 100, 255);
//    rect(x[i]-1, y[i]-1, 3, 3);
    fill(135+i*4, 32+c*8, 100, c*16);
    ellipse(x[i], y[i], R+c*8, R+c*8);

  }
}
