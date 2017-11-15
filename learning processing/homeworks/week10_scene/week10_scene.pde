
//int num = 15; 
ArrayList<Mover> movers; 



int num = 100;


Mover [] mover = new Mover[num];
Attractor a; 

void setup() {
  size(500, 500); 
  movers = new ArrayList<Mover>(); 
  a = new Attractor(); 
  noStroke(); 
  smooth();
  background(0);

}

void draw() {

  
  a.display(); 
  a.drag();
  a.hover(mouseX, mouseY);
  


  for (int j = 0; j< movers.size(); j++) {
    Mover m = movers.get(j); 
    PVector force = a.attract(m);
    m.applyForce(force); 
    m.update(); 
    m.display(); 
    m.checkEdgesX();
       m.checkEdgesY();

    if (m.position.y < 0 || m.position.y > height || m.position.x < 0 || m.position.x > width) {
      movers.remove(j);
    }
  }
}

void mousePressed() {
  a.clicked(mouseX, mouseY);
  movers.add(new Mover(random(.1, .5), mouseX, mouseY));
}


void mouseReleased() {
  a.stopDragging();
}