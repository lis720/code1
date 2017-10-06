int x;
int y;
int a = 150;
int b = 250;
int c = 350;
int d = 250;
int e = 250;
int f=  150;
int radius=100;

void setup() {
  size( 500, 500);
  smooth();
}

void draw() {
  //background(random(250, 254), 220, 210);
  background(244, 222, 19);
  noStroke();

  if (mousePressed) {
    //add boundaries for square button 
    if ((mouseX >= a-25) && (mouseX <= a+25) &&
      (mouseY >= b-25) && (mouseY <= b+25)) {
      for (x = 0; x<width; x +=10) {
        for (y = 0; y<height; y+=20) {       
          noStroke();
          fill (random(244), random(208), 0);
          rect (x, y, 40, 20);
        }
      }
    }

    //set boundaries for circle button
  }


  //button two


  if ((mouseX >= a-25) && (mouseX <= a+25) &&
    (mouseY >= b-25) && (mouseY <= b+25)) {
    fill (125, 174, 179);
  } else {
    fill(213, 26, 33);
    ellipse(a, b, 50, 50);
  }

  if ((mouseX >= a-25) && (mouseX <= a+25) &&
    (mouseY >= b-25) && (mouseY <= b+25)) {

    fill(125, 174, 179);
    rect(a-25, b-25, 50, 50);
  }

 
  
  if (mousePressed) {
    //add boundaries for square button 
    if ((mouseX >= c-100) && (mouseX <= c+100) &&
      (mouseY >= d-100) && (mouseY <= d+100)) {
      for (x = 0; x<width; x +=10) {
        for (y = 0; y<height; y+=20) {       
          noStroke();
          fill (random(244), 0, random(208));
          rect (x, y, 40, 20); 
          fill(213, 26, 33);
          ellipse(a, b, 50, 50);
        }
      }
    }

  }




  float i = dist(mouseX, mouseY, c, d);
  if (i<=radius) {
    fill(207, 251, 252 );
  } else {
    fill(252, 23, 138);
  }
  if (keyPressed) {
    noFill();
    strokeWeight(90);
    stroke(0);
  }
  ellipse(c, d, radius, radius);
  println(i);
}