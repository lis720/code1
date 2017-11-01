//Button4 Function
void button4() {
  if (buttonB4) {

    button1();
    button2();
    button3();


    topY = 74;
    buttonTopColor = 234;
    button4symbolY1pos = 71;
    button4symbolY2pos = 85;

    button4symbolY3pos = 65;
    button4symbolY4pos = 78;

    button4symbolY5pos = 64;
    button4symbolY6pos = 77;
  } else {
    topY = 70;
    buttonTopColor = 255;
    button4symbolY1pos = 67;
    button4symbolY2pos = 81;

    button4symbolY3pos = 61;
    button4symbolY4pos = 74;

    button4symbolY5pos = 60;
    button4symbolY6pos = 73;
  }

  //Button Base
  fill(buttonBase);
  noStroke();
  ellipse(558, 76-20, 60, 60);

  //Button Top
  fill(buttonTopColor);
  noStroke();
  ellipseMode(CENTER);
  ellipse(558, topY-20, 60, 60);
}


void scene4() {

  //background(255);
  count = 1;
  float ratio=0;
  float parametric = map(mouseY, 0, height, 0, 0.5);
  float x1, y1, x2, y2, x3, y3, x4, y4;
  float d = width;
  float a;
  x1=0;
  y1=0;
  x2=width;
  y2=0;
  x3=width;
  y3=height;
  x4=0;
  y4=height;

  while (count < 1000 && d > 1)
  {
    if (count == 2) {
      ratio = x1/width;
    }
    if (count % 2 == 0)
    {
      fill(0);
    } else {
      fill(215, 0, 0);
    } 

    quad(x1, y1, x2, y2, x3, y3, x4, y4);

    x1 = x1 + (x2-x1)*parametric;
    y1 = y1 + (y2-y1)*parametric;

    d = dist(x1, y1, width/2, height/2);
    a = atan2(y1-height/2, x1-width/2);
    x2 = d * cos(a + PI/2) + width/2;
    y2 = d * sin(a + PI/2) + height/2;

    x3 = d * cos(a + PI) + width/2;
    y3 = d * sin(a + PI) + height/2;

    x4 = d * cos(a + 3*PI/2) + width/2;
    y4 = d * sin(a + 3*PI/2) + height/2;


    count += 1;
  }
  loadPixels();
  int countred = 0;
  for (int i = 0; i < pixels.length; i++) {
    if (pixels[i] == color(255, 0, 0)) {
      countred++;
    }
  }
  fill(0);
  textAlign(LEFT, CENTER);
  textSize(20);
  text("the ratio between the sides is " + str(ratio), 5, height-40);
  text("the ratio of red pixels to the whole image is " + str(float(countred)/(width*height)), 5, height-20);


  rectMode(CENTER);
  fill(0);
  stroke(255, 251, 249);
  strokeWeight(4);
  int num = 10;
  float intervalX = map(mouseX, 0, width, 40, -40);
  float intervalY = map(abs(mouseX - width / 2), 0, width / 2, 0, -20);
  float rectX = 100;
  float rectY = 200;
  float tilt = map(mouseX, 0, width, -20, 20);

  for (int i = num - 1; i > 0; i--) {
    pushMatrix();
    float rhytm = map(pow(abs(sin(frameCount * 0.03 - i * 0.3)), 50), 0, 1, 0, -50)
      * map(abs(mouseX - width / 2), 0, width / 2, 0, 1);
    translate(intervalX * (i - num / 2.0), intervalY * (i - num / 2.0) + rhytm);
    translate(width / 2, height / 2);
    scale(1.5);

    beginShape();
    fill(255);
    stroke(225);
    strokeWeight(1);
    vertex(-rectX / 2.0, -rectY / 2.0 + tilt);
    vertex(rectX / 2.0, -rectY / 2.0 - tilt);
    vertex(rectX / 2.0, rectY / 2.0 - tilt);
    vertex(-rectX / 2.0, rectY / 2.0 + tilt);
    endShape(CLOSE);

    beginShape();
    stroke(255, 0, 0);
    fill(255, 0, 0);
    translate(-100, -50);
    scale(2.0);
    vertex(50, 15); 
    bezierVertex(50, -5, 90, 5, 50, 40); 
    vertex(50, 15); 
    bezierVertex(50, -5, 10, 5, 50, 40); 
    endShape(CLOSE);
    popMatrix();
  }
  image(chip, mouseX, mouseY);
  image(chip, mouseX-random(100), mouseY-random(100));
  image(chip, mouseX-random(200), mouseY-random(200));
}