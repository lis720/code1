PVector position;
int r=100;
void setup() {
  size(500, 500);
  background(0);

  position = new PVector(width/2, height/2);
}

void draw() {
    //background(0);

  position.x =r*cos(frameCount*.1)+width/2;
  position.y =r*sin(frameCount*.1)+height/2;
  
  ellipse(position.x,position.y,r,r);
  r+=.1;
  
  if(r<width/2){
    background(0);
    r=0;
  
  }
}