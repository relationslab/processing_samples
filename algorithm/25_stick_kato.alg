float _radius;
float _radiusnoise;
float _angnoise;
float _radius;
float _angle = -PI/2;
float _strokeCol = 254;
float _xnoise, _ynoise;
int _strokeChange = -1;
strokeWeight(0.1);

void setup(){
size(800, 800);
frameRate(400);
background(255);
noFill();
_angnoise = random(10);
_radiusnoise = random(10);
}

void draw(){

  _radiusnoise += 0.005;
  _radius = (noise(_radiusnoise) * 350) + 1;

  _angnoise += 0.005;
  _angle += (noise(_angnoise) * 6) -3;
  if(_angle > 360){_angle -= 360;}
  if(_angle < 0){_angle += 360;}
  
  _xnoise += 0.01;
  _ynoise += 0.01;

  float centerx = width/2 + (noise(_xnoise) * 100) -50;
  float centery = height/4 + (noise(_ynoise) * 100) -50;

float rad = radians(_angle);
float x1 = centerx + (_radius * cos(rad));
 float y1 = centery + (_radius * sin(rad));

float opprad = rad + PI;
float x2 = centerx + (_radius * cos(opprad));
 float y2 = centery + (_radius * sin(opprad));

_strokeCol += _strokeChange;
if (_strokeCol > 254){ _strokeChange = -5;}
if (_strokeCol < 0){ _strokeChange = 5;}
stroke(_strokeCol, 60, 60, 60);

 line(x1, y1, x2, y2);


}
