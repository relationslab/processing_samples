void setup(){
  size(720, 480);
  background(0);
  frameRate(120);
  strokeWeight(1);
  colorMode(HSB, 360, 100, 100);
}

final float GRAV = 0.0125;
final int POINTS = 32;
float[] x_bef = new float[POINTS];
float[] y_bef = new float[POINTS];
void draw(){
  stroke(frameCount/10%360, 30, 100, 20);

  for(int i=0; i<POINTS; i++){
    float s = (1.0-cos(PI*i/POINTS))/2;
    float g = GRAV+GRAV*s;
    float x = mouseX*g + x_bef[i]*(1.0-g);
    float y = mouseY*g + y_bef[i]*(1.0-g);

    line(x_bef[i], y_bef[i], x, y);

    x_bef[i] = x;
    y_bef[i] = y;
  }
  line(x_bef[0], y_bef[0], x_bef[POINTS-1], y_bef[POINTS-1]);
}
