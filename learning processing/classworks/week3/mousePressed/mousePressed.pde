int brushSize;

void setup(){
  size(1000,1000);
  background(255);
  brushSize=10;
  
}
  
  void draw(){
    
    fill(255,10);
    rect(0,0,width,height);
    
    
    //if(mousePressed){
    //  fill(0,255,100);
    //  noStroke();
    //  ellipse(mouseX,mouseY,brushSize,brushSize+10);
   
      
    
    //only draws oe
    
    //if(keyPressed){
    //  brushSize+=10;}
    //  fill(0,255,100);
    //  noStroke();
    //  ellipse(mouseX,mouseY,brushSize,brushSize+10);
      
    }
    
    void keyPressed(){
      if(key == CODED){
        if(keyCode==UP && brushSize <=500){
       brushSize+=10;
      }else if(keyCode==DOWN && brushSize >=10){
        brushSize-=10;
      }
      }
     
    }
    
    
    
  void mousePressed(){
    fill(0,255,100);
    noStroke();
    ellipse(mouseX,mouseY,brushSize,brushSize+10);
  
  
  }