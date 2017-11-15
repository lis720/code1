class Attractor{
  float mass; 
  float G; 
  PVector position; 
  PVector dragOffset; 
  
  boolean rollover = false; 
  boolean dragging = false; 
  Attractor(){
    position = new PVector(width/2, height/2);  
    mass = 50; 
    G = .98; 
    dragOffset = new PVector(0.0, 0.0); 
  }
  
  
  PVector attract(Mover m){
  
     PVector force = PVector.sub(position, m.position); 
     
     float d = force.mag(); 
     
   
     d = constrain(d, 5.0, 25.0); 
     force.normalize(); 
     float strength = (G* mass * m.mass) / (d*d); 
     force.mult(strength); 
     return force; 
  }

  
  void display() {
    rectMode(CENTER);
    //fill(0, 100, 100); 
    if (dragging){
      fill (0);
    }
    else if (rollover){
     
      fill( 155); 
    }
    else{
      fill(255); 
    }
    rect(position.x,position.y,mass,mass);
  }
  
  void clicked(int mX, int mY){
    float d = dist(mX, mY, position.x, position.y); //calculating the position between the 
    //mouse and the attractor
    if(d < mass){ //if the distances is smaller than the size of the attractor
      dragging = true; 
      dragOffset.x = position.x - mX; //offsetting the position of attractor based on mouse
      dragOffset.y = position.y - mY; 
    } 
  }
  
void hover(int mx, int my) {
    float d = dist(mx,my,position.x,position.y);
    if (d < mass) {
      rollover = true;
    } 
    else {
      rollover = false;
    }
  }

  void stopDragging() {
    dragging = false;
  }

  void drag() {
    //if dragging is true, set the position of the attractor based on your mouse position
    if (dragging) {
      position.x = mouseX + dragOffset.x;
      position.y = mouseY + dragOffset.y;
    }
  }

}