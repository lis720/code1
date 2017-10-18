

//Button3 Function - Turns on draw tool and moves button position
void button3() {
  if (buttonB3) {


    button1();
    button2();

    topY = 74;
    buttonTopColor = 234;
    button3symbolYpos = 75;
  } else {
    topY = 70;
    buttonTopColor = 255;
    button3symbolYpos = 71;
  }

  //Button1 Base
  fill(buttonBase);
  noStroke();
  ellipse(468, 76-20, 60, 60);

  //Button1 Top
  fill(buttonTopColor);
  noStroke();
  ellipseMode(CENTER);
  ellipse(468, topY-20, 60, 60);
}

void scene3() {
  background(0);
  frameRate(5000);

  float a = TWO_PI * phase;
  phase += phaseInc;
  if (phase >= 1.0) {
    phase -= 1.0;
  }
  //mouseX = width / 2 * cos(a) + width / 2;
  //mouseY = height / 2 * sin(a) + height / 2;

  int s = eyes.size();
  for (int i = 0; i < s; i++) {
    Eye e = (Eye) eyes.get(i);
    e.draw();
  }
  image(window, 0, 0);
}

class Eye {
  float x;
  float y;
  float r1;
  float r2;
  float vx;
  float vy;

  Eye(float x, float y, float r1, float r2) {
    this.x = x;
    this.y = y;
    this.r1 = r1;
    this.r2 = r2;
    vx = x;
    vy = y;
  }

  void draw() {

    fill(255);
    stroke(0);
    ellipse(x, y, r1 * 2, r1 * 2);

    pushStyle();
    fill(0);
    noStroke();

    float a = atan2(mouseY - y, mouseX - x);

    float x2 = x + (r1 - r2) * cos(a);
    float y2 = y + (r1 - r2) * sin(a);

    if (dist(x, y, mouseX, mouseY) < r1 - r2) {
      x2 = mouseX;
      y2 = mouseY;
    }

    vx = lerp(vx, x2, 0.1);
    vy = lerp(vy, y2, 0.1);

    ellipse(vx, vy, r2 * 2, r2 * 2);
    popStyle();
  }
}

void thunder() {
  int r = (int)( Math.random() * 255 );
  int g = (int)( Math.random() * 255 );
  int b = (int)( Math.random() * 255 );
  stroke( r, g, b );

  while ( endX < 500 ) 
  {
    endX = startX + (int)(Math.random()*9);
    endY = startY + (int)(Math.random()*18)-9;
    line( startX, startY, endX, endY );
    startX = endX;
    startY = endY;
  }

if (mousepressed=!mousepressed) {
  startX = 110;
  startY = 110;
  endX = (int)(Math.random()*500);
  endY = (int)(Math.random()*300);
}

}