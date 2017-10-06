color c;
int xPos, yPos;
int xVel;
int s;

void setup(){
  size(1000,1000);
  smooth();
  background(255);
  xVel= 10;
  int s= int (random(20,200));

  

}

void draw(){
  background(255,20);
  
  if(mousePressed){
    xPos+=xVel;
  }
  drawShip(c,xPos,yPos,s);
    
    
    
    
  c=color(random(255),random(255),random(255));
  drawShip(c,mouseX,mouseY,30);
  
  }


//void mousePressed(){
  
  //  int s= int (random(20,200));
  //  c=color(random(255),random(255),random(255));
  //  drawShip(c,mouseX,mouseY,s);

   



void drawShip(color col, int x, int y, int size){
  
  noStroke();
  fill(col);
  ellipse(x,y,size*1.5,size);
  ellipse(x,y-size/2,size,size);
  
  
}


