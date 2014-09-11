void setup(){
size( 800, 480 );
noStroke();
smooth();
background(255);
colorMode(HSB, 360, 100, 100);
frameRate(30);
strokeCap(SQUARE);
background(210,10,100);
}

int frameNow = 0;
final int FRAME_DELAY = 5;
int x_bef = 0;
int y_bef = 0;

void draw(){
}

void mouseClicked(){
// background(0,0,0);
x_bef = mouseX;
y_bef = mouseY;
if( frameNow == 0 ){
frameNow = frameCount;
} else {
frameNow = 0;
}
}

void mouseMoved(){
if( frameNow != 0 && frameCount-frameNow >= FRAME_DELAY ){
frameNow = frameCount;
//float h = 180+frameNow*1%25;
//fill(h, 30+random(30), 70+random(30));
stroke(270+(frameNow*1%25), 100, 100);
float weight = dist(mouseX, mouseY, x_bef/10, y_bef/10)*8;
strokeWeight(weight);
line(x_bef, y_bef, mouseX, mouseY);
 //ellipse(mouseX, mouseY, weight/10, weight/10);
x_bef = mouseX;
y_bef = mouseY;
}
}
