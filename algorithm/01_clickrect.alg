void setup(){
  size(800, 480);
  noFill();
  background(255);
}

void draw(){
}

void mouseClicked(){
  for(int i=0; i<16; i++){
    stroke(0, 0, 0, random(255));
    strokeWeight(random(6));
    rect(random(160)-160+mouseX, random(160)-160+mouseY, random(160), random(160));
  }
}
