// 画面上でドラッグすると回転させられるよ！

final int R = 32;
final int COUNT = 25*15;
final float DIST = 64;
color[] colors = new color[COUNT];
float[] rads = new float[COUNT];
float[] xs = new float[COUNT];
float[] ys = new float[COUNT];

void setup(){
  size(800, 480);
  background(255);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  frameRate(30);

  int h = 180;
  for(int i=0; i<COUNT; i++){
    h = (int)(h + random(-30, 30))%360;
    if(h<0) h+=360;
    colors[i] = color(h, 40, 100);
    rads[i] = 0.5;
    xs[i] = (i/15+0.5)*R;
    ys[i] = (i%15+0.5)*R;
  }
}

void draw(){
  background(0,0,100);
  for(int i=0; i<COUNT; i++){
    float ra = (rads[i] - int(rads[i]));
    if(ra>0.5) ra = 1-ra;
    ra*=2;
    fill(colors[i]);
    ellipse(xs[i], ys[i], R*ra, R);
  }
}

void mouseDragged(){
  for(int i=0; i<COUNT; i++){
    float d = dist(mouseX, mouseY, xs[i], ys[i] );
    if( d < DIST ){
      rads[i] += random((DIST-d)/DIST/4);
    }
  }
}
