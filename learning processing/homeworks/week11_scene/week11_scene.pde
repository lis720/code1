//arrays
Mover[] movers = new Mover[10];
Mover[] movers2 = new Mover[10];

void setup() {
  size(800,800);
  smooth();
  background(0,100,170,40);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(); 
  }
  for (int i = 0; i < movers2.length; i++) {
    movers2[i] = new Mover(); 
  }
}

void draw() {
  noStroke();
  fill(0,100,170,40);
  rect(0,0,width,height);

  for (int i = 0; i < movers.length; i++) {
    movers[i].update();
    movers[i].checkEdges();
    movers[i].display(); 
  }
    for (int i = 0; i < movers2.length; i++) {
    movers2[i].display2(); 
  }

}