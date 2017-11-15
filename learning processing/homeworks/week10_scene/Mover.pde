class Mover {
  PVector position; 
  PVector velocity; 
  PVector acceleration; 
  PVector gravity1;
    PVector gravity2;

  float mass; 

  Mover(float m, float x, float y) {
    mass = m; 
    position = new PVector(x, y); 
    velocity = new PVector(1, 0); 
    acceleration = new PVector(0, 0); 
    gravity1=new PVector(0, random(-.9, .9));
        gravity2=new PVector(random(-.9, .9),0);

  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass); // applying force based on the mass of our objects
    acceleration.add(f); //adding the force based on mass to the acceleration of our mover
  }

  void update() {
    acceleration.add(gravity1);
    acceleration.add(gravity2);
    velocity.add(acceleration); 
    position.add(velocity); 
    acceleration.mult(0); //clearing the acceleration; otherwise would accelerate infinitely
  }

  void display() {
    float r = map(mouseX, 0, width, 0, 255);
    float b = map(mouseY, 0, height, 0, 255);
        float g = map(mouseY, 0, height, 0, 255);


    fill(r, g, b);

    rect(position.x, position.y, mass*25, mass*25);
  }
  
  
  void checkEdgesX(){ 
    if(position.x > width){
      position.x = width;
      velocity.x *= -1; 
    } else if(position.x < 0){
      position.x = 0;
      velocity.x *= -1; 
    }
  }
    
      void checkEdgesY(){ 
    if(position.y > width){
      position.y = width;
      velocity.y *= -1; 
    } else if(position.y < 0){
      position.y = 0;
      velocity.y *= -1; 
    }
}
}