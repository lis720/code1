float x=100;
float y=100;
float xVel=0;
float yVel=0;

void setup(){
  size(800,800);
  
}
  
void draw(){
  background(0);
  //maze
  noFill();
  stroke(255);
  strokeWeight(5);
  rect(100,100,600,600);
  line(100,400,400,400);


  noStroke();
  fill(255,255,0);
  ellipse(x,y,50,50);
  x=x+xVel;
  y=y+yVel;


}
  
  
  
  void keyPressed(){
    if(key == CODED){
      if(keyCode==UP){
        yVel=-5;
    }else if(keyCode==DOWN){
        yVel=5;
      }
    }
    
  }
  
  void keyReleased(){
    yVel =0;
    xVel =0;
        
  }
    
    
    
    
  