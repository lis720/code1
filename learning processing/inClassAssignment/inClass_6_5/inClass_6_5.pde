int x1=100;
int y1=100;
int x2=400;
int y2=400;
int size = 50;
boolean buttonClicked1;
boolean buttonClicked2;
float dist;

void setup() {
  size(500, 500);
}

void draw() {
  noStroke();
  background(0);  
  println("button one "+calcDist(x1, y1));
  println("button two "+calcDist(x2, y2));
  println("boolean one "+buttonClicked1);
  println("boolean one "+buttonClicked2);
  println("distance "+ dist);

  if (buttonClicked1) {
    ColRect(0, 0, 50);
  } else {

  }

  if (buttonClicked2) {
    ColCirc(0, 0, 25);
  } else {

  }

  //button one shape
  fill(155);
  ellipse(x1, y1, size, size);
  //button two shape
  fill(155);
  ellipse(x2, y2, size, size);

  if (calcDist(x1, y1)< size/2) {
    fill(0, 200, 200);
  } else {
    fill(156, 34, 78);
    ellipse(x1, y1, size, size);
  }
  if (calcDist(x2, y2)< size/2) {
    fill(0, 200, 200);
  } else {
    fill(156, 34, 78);
    ellipse(x2, y2, size, size);
  }
}


void ColRect(int i, int e, int size) {
  for (i=0; i< 500; i+= 25) {
    for (e=0; e< 500; e+= 25) {
      fill(map(i, mouseX, width, 0, 255), map(e, mouseY, height, 0, 255), random(255));
      rect(i, e, size, size);
    }
  }
}

void ColCirc(int i, int e, int size) {
  for (i=25; i< 500; i+= 25) {
    for (e=25; e< 500; e+= 25) {
      fill(map(i, mouseX, width, 0, 255), map(e, mouseY, height, 0, 255), random(255));
      ellipse(i, e, size, size);
    }
  }
}


void mousePressed() {
  if (calcDist(x1, y1) <=size) {
    buttonClicked1 =!buttonClicked1;
  }
  if (calcDist(x2, y2) <=size/2) {
    buttonClicked2 =!buttonClicked2;
  }
}
float calcDist(int xPos, int yPos) {
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
}