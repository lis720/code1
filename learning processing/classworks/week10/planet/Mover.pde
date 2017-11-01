class mover {
  PVector position;
  PVector velocity;
  PVector accelaration;

  float mass;
}

Mover(float m, float x, float y) {


  mass=m;
  position = new PVector(x, y);
  velocity = new PVector(1, 0);
  accelaration = new PVector(0, 0);
}
void display() {
  fill(255);
  ellipse(position.x, position.y, mass*25, mass*25);
}

}