int N=480;    //Screen size
int L=90;  //Loop count
int L4=L*4;
PImage buf = createImage(N, N, RGB);

void setup() {
  size(N,N);
  background(255);
  colorMode(HSB, 360, 100, 100);
  frameRate(30);
  drawMandelbrot(1.0);
}

void draw(){
  image(buf, 0, 0);
}

int count = 1;
void mousePressed(){
  drawMandelbrot(1.0/++count);
  image(buf, 0, 0);
}

void drawMandelbrot(float scale) {
  int x=0;
  int y=0;
  int k;
  float Re;  //Real axis x
  float Im;  //Image axis y
  float ReR = +scale*2.0/float(N);
  float ImR = -scale*2.0/float(N);
  buf.loadPixels();
  for(x=0;x<N;x++){
    for(y=0;y<N;y++){
      //convert to XY axis
      Re=ReR*x-scale;
      Im=ImR*y+scale;

      //Calc Mandelbrot set
      int m = calcMandelbrot(Re,Im,L)*4;
      buf.pixels[y*N+x] = color(m, 100, m==L4?0:100);

      //Write XY axis
      if(Re == 0 || Im == 0){
        buf.pixels[y*N+x] = color(0, 0, 100);
      }
    }
  }
  buf.updatePixels();
}

int calcMandelbrot(float Re,float Im,int L) {
  int i;
  float a=0;
  float b=0;
  float aa;
  float bb;
  for(i=1;i<=L;i++)
  {
    aa=a*a-b*b+Re;
    bb=2*a*b+Im;
    //updata a and b
    a=aa;
    b=bb;
    if(a*a+b*b > 4)
      return i;
  }
  return L;
}
