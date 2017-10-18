//Button1 Function - Turns on draw tool and moves button position
void button1() {
  if (buttonB1) {
    topY = 74;
    buttonTopColor = 234;
    button1symbolYpos = 76;
  } else {
    topY = 70;
    buttonTopColor = 255;
    button1symbolYpos = 72;
  }

  //Button1 Base
  fill(buttonBase);
  noStroke();
  ellipse(288, 76-20, 60, 60);

  //Button1 Top
  fill(buttonTopColor);
  noStroke();
  ellipseMode(CENTER);
  ellipse(288, topY-20, 60, 60);
}

//Scene1 Function - Turns on the tent 
void scene1() {

  //  image(Circus01, 0, 0);
  //  image(Circus02, 0, 0);
  //  image(Circus03, 0, 0);
  //  image(Circus04, 0, 0);
  //  image(Circus05, 0, 0);
  map(mouseX, 0, 1023, 0, 1000);

  if (mouseX>0&&mouseX<200) {
    image(Circus01, 0, 0);
    image(Circus01, 0, 20);
  } 
  if (mouseX>200&&mouseX<400) {
    image(Circus02, 0, 0);
    image(Circus02, 0, 20);
  }  
  if (mouseX>400&&mouseX<600) {
    image(Circus03, 0, 0);
    image(Circus03, 0, 20);
  }  
  if (mouseX>600&&mouseX<800) {
    image(Circus04, 0, 0);
    image(Circus04, 0, 20);
  }  
  if (mouseX>800&&mouseX<1000) {
    image(Circus05, 0, 0);
    image(Circus05, 0, 20);
  }
  drawStar();
}


void drawStar() {
  fill(255,228,111);
  noStroke();
  beginShape();
  vertex(mouseX, mouseY-50);
  vertex(mouseX+14, mouseY-20);
  vertex(mouseX+47, mouseY-15);
  vertex(mouseX+23, mouseY+7);
  vertex(mouseX+29, mouseY+40);
  vertex(mouseX, mouseY+25);
  vertex(mouseX-29, mouseY+40);
  vertex(mouseX-23, mouseY+7);
  vertex(mouseX-47, mouseY-15);
  vertex(mouseX-14, mouseY-20);
  endShape(CLOSE);
}