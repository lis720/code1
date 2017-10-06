
void setup(){
  size(700, 700); 
  noStroke(); 
}

void draw(){
  background(255); 
  
  for (int i = 0; i <=width; i += width/5){
    for (int j = 0; j <= height; j += height/5){
      //figure out the distance bt mouseX and mouseY
      //and our ellipse
      
      float dist =dist(mouseX,mouseY,i,j);
      
      float c= map(dist,0,100,255,100);
      
      
      
      float s = map(dist,0,100,10,25); 
      fill(c,100,100); 
      ellipse(i, j, s, s);   
    }
  }
}