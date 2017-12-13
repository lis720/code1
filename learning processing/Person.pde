class Person {
  ArrayList<Hair> hair;

  int eyeWidth = 40;

  Person() {
    PVector hairRoot = new PVector(200, 200);
    PVector scalp = new PVector(0, -100);
    scalp.rotate(radians(10));
    hairRoot.add(scalp);


    hair = new ArrayList<Hair>();
    //creates to layers of hair, each with slightly different perlin noise offset
    for (int x = 0; x < 40; x++) {
      hairRoot = new PVector(450, 300);
      scalp = new PVector(0, -100);

      scalp.rotate(radians(5*x-5*40/2));
      hairRoot.add(scalp);

      hair.add(new Hair(hairRoot, 30, 0.0));
    }
  }

  void update() {
    if (emotion < 0) {
      emotion = constrain(emotion += 1, -50, 50);
    } else if (emotion > 0) {
      emotion = constrain(emotion -= 0.5, -50, 50);
    }



    for (int x = 0; x < hair.size (); x++) {
      hair.get(x).update(new PVector(mouseX, mouseY), new PVector(mouseX-pmouseX, mouseY-pmouseY));
    }
  }

  void display() {


    drawFace();
  }

  private void drawFace() {
    image(face, 0, -25);

    drawEyes();

    //draw face;
    beginShape();
    fill(205,55,55);
    vertex(width/2-eyeWidth, height/2+50+45);
    bezierVertex(width/2-eyeWidth, height/2+50+emotion+45, width/2+eyeWidth, height/2+50+emotion+45, width/2+eyeWidth, height/2+50+45);
    endShape();

    for (int x = 0; x < hair.size ()-1; x++) {
      hair.get(x).draw();
    }
  }

  private void drawEyes() {
    fill(255);
    noStroke();
    ellipse(width/2-eyeWidth, height/2+10, 40, 40);
    ellipse(width/2+eyeWidth, height/2+10, 40, 40);

    PVector lookDirL = new PVector(mouseX - width/2-eyeWidth, mouseY-height/2);
    if (lookDirL.mag() > 10) {
      lookDirL.setMag(10);
    }

    PVector lookDirR = new PVector(mouseX - width/2+eyeWidth, mouseY-height/2);
    if (lookDirR.mag() > 10) {
      lookDirR.setMag(10);
    }

    fill(0);
    //black eye
    ellipse(width/2-eyeWidth+lookDirR.x, height/2+lookDirR.y+10, 20, 20);
    ellipse(width/2+eyeWidth+lookDirL.x, height/2+lookDirL.y+10, 20, 20);
    
     fill(255);
     //white eye
    ellipse(width/2-eyeWidth+lookDirR.x, height/2+lookDirR.y+10, 8, 8);
    ellipse(width/2+eyeWidth+lookDirL.x, height/2+lookDirL.y+10, 8, 8);
  }
}