int x; 
int y; 
int size; 
float dist; 
boolean buttonClicked; 

//set up a second button 
//do something else when that button is clicked
void setup(){
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  size = 100; 
}

void draw(){
   
  
    if(buttonClicked){
    background(0); 
    fill(255, 0, 0); 
  }else{
    background(255); 
    fill(0, 0, 255); 
  }
  
  fill(0,0,255);
  ellipse(x, y, size, size);
  println(calcDistance(x, y)); 
  fill(0,255,0);
  ellipse(x+200, y+200, size/2, size/2);
  println(calcDistance(x+200, y+200)); 
  
  
}

void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked; 
  }
  
    if(calcDistance(x+200,y+200) <= 25){
    buttonClicked = !buttonClicked; 
  }
  
  
  
  
  
  //calculating distance between second button 
  //hint set up a second boolean 
}

float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}