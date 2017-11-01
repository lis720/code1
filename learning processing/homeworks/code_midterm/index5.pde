
//Button5 Function - Turns on draw tool and moves button position
void button5() {
  if (buttonB5) {

    button1();
    button2();
    button3();
    button4();


    topY = 74;
    buttonTopColor = 234;

    button5symbol1Ypos = 80;
    button5symbol2Ypos = 65;
  } else {
    topY = 70;
    buttonTopColor = 255;
    button5symbol1Ypos = 76;
    button5symbol2Ypos = 61;
  }

  //Button Base
  fill(buttonBase);
  noStroke();
  ellipse(648, 76-20, 60, 60);

  //Button Top
  fill(buttonTopColor);
  noStroke();
  ellipseMode(CENTER);
  ellipse(648, topY-20, 60, 60);
}

void scene5() {


  fill(209, 67, 48);
  rect(0, 0, 10000, 10000);


  image(movie, 0, 0);
  image(movieobjects, 100, 100);


  float fall=map(mouseY, 0, 1023, -3000, 1000);

  for (int i = 0; i < y.length; i+=5) {
    float mouseY = fall;
  }
  for (int i=0; i<y.length; i+=5) {
    mouseY += 5*i;                      //falling 
    float x = i*150;
    pop (random(-1000, 3000), mouseY);
  }
  cup();
}

void cup() {
  image(cup, mouseX, mouseY);
}


void pop (float x, float y) { 

  image(popcorn, x, y);
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
  image(popcorn, x+random(100, 1000), y+random(100, 1000));
}