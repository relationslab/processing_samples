
final int POINTS = 24;
final int THICKNESS = 48;
final int R = 32;
final int ALPHA_DEC = 6;
final float THICKNESS_DEC = 0.7;
float[] pxs = new float[POINTS];
float[] pys = new float[POINTS];
float[] pas = new float[POINTS];
float[] prs = new float[POINTS];

void setup(){
  size(800, 480);
  background(240, 240, 240);
  noStroke();
  strokeCap(ROUND);
}

void draw(){
}

int x_bef = 0;
int y_bef = 0;
void mouseDragged(){
  if(!is_enter){
    setupBrush();
    is_enter = true;
  }

  for(int i=0; i<POINTS; i++){
    fill(0, 0, 0, pas[i]);
    pas[i]-=random(ALPHA_DEC); if(pas[i]<0) pas[i]=0;
    prs[i]-=THICKNESS_DEC;if(prs[i]<=0) prs[i]=0;
    stroke(0, 0, 0, pas[i]);
    strokeWeight(prs[i]);
    line(mouseX+pxs[i], mouseY+pys[i], x_bef+pxs[i], y_bef+pys[i]);
  }
  x_bef = mouseX;
  y_bef = mouseY;
}

void mouseReleased(){
  is_enter = false;
}

boolean is_enter = false;
void setupBrush(){
  x_bef = mouseX;
  y_bef = mouseY;
  for(int i=0; i<POINTS; i++){
    pxs[i] = random(R)-R/2;
    pys[i] = random(R)-R/2;
    pas[i] = random(255);
    prs[i] = random(THICKNESS);
  }
}
