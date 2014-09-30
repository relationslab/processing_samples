final int POINTS = 32;
final int THICKNESS = 80;
final int R = 16;
final int ALPHA_DEC = 8;
final float THICKNESS_DEC = 2;
float[] pxs = new float[POINTS];
float[] pys = new float[POINTS];
float[] pas = new float[POINTS];
float[] prs = new float[POINTS];

float plots_amp;
float plots_rad;
float plots_vel;
int tickBegin = 0;
int x_start = 0;
int y_start = 0;
void setup(){
  size(800, 480);
  background(240, 240, 240);
  noStroke();
  frameRate(120);
  strokeCap(ROUND);
  setupBrush();
}

void draw(){
  float tick = frameCount - tickBegin;
  if(tick>4*60){
    setupBrush();
    return;
  }
  if(tick%16==0){
    noStroke();
    fill(240, 255, 255, 1);
    rect(0, 0, 800, 480);
  }
  float x = tick*plots_vel;
  float y = sin(tick/20)*plots_amp;
  x = x*cos(plots_rad) - y*sin(plots_rad);
  y = x*sin(plots_rad) + y*cos(plots_rad);
  x += x_start;
  y += y_start;
  float d = dist(x, y, x_bef, y_bef)/10;
  for(int i=0; i<POINTS; i++){
    pxs[i]+=random(0.1)-0.05;
    pys[i]+=random(0.1)-0.05;
    pas[i]-=random(ALPHA_DEC)*d;     if(pas[i]<0)  pas[i]=0;
    prs[i]-=random(THICKNESS_DEC)*d; if(prs[i]<=0) prs[i]=0;
    stroke(0, 80, 104, pas[i]);
    strokeWeight(prs[i]);
    line(x+pxs[i], y+pys[i], x_bef+pxs[i], y_bef+pys[i]);
  }
  x_bef = x;
  y_bef = y;
}

int x_bef = 0;
int y_bef = 0;
boolean is_enter = false;
void setupBrush(){
  tickBegin = frameCount;
  x_start = random(100);
  y_start = random(100);
  x_bef = x_start;
  y_bef = y_start;
  for(int i=0; i<POINTS; i++){
    pxs[i] = random(R)-R/2;
    pys[i] = random(R)-R/2;
    pas[i] = random(255);
    prs[i] = random(THICKNESS);
  }

  plots_amp = random(128)+32;
  plots_rad = (random(135)-45)/180*PI;
  plots_vel = random(5)+5;
}
