class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float speed;

  Mover() {
    location = new PVector(random(width),random(height));
    velocity = new PVector(0,0);
    speed = 3;
  }

  void update() {

    PVector mouse = new PVector(mouseX,mouseY);
    PVector direction = PVector.sub(mouse,location); //Subtracts
    PVector random = new PVector(random(100)-50, random(100)-50);
    direction.add(random);
    direction.normalize();     
    direction.mult(0.5);       //Multiplies 
    acceleration = direction;  

    velocity.add(acceleration);
    velocity.limit(speed);
    location.add(velocity);
  }



  void display() {
    noStroke();
    fill(200, 100, 0);
    ellipse(location.x,location.y,13,13);
  }

  void display2() {
    stroke(100, 100, 50);
    fill(50, 150, 50);
    ellipse(location.x,location.y,60,60);
  }

  void checkEdges() {

    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    }  else if (location.y < 0) {
      location.y = height;
    }

  }

}