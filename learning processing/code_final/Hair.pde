class Hair {
  PVector anchor;
  float offset;
  color hairColor;
  float gravity;

  PVector growDir;
  float thickness;

  float h;

  ArrayList<PVector> segments;

  Hair(PVector setAnchor, int setSegments, float Offset) {
    anchor = setAnchor;

    if (grower.isActive)
      growDir = PVector.random2D();
    else
      growDir = new PVector();


    segments = new ArrayList<PVector>();

    for (int x = 0; x < setSegments; x++) {
      segments.add(new PVector(anchor.x, anchor.y+10*x));
    }


    thickness = segments.size()/25;

    h = segments.size()-1;

    //offset = random(100)/100 + preOffset;
    hairColor = color((int)random(0, 100), (int)random(0, 10), (int)random(0, 10));
    gravity = random(2, 4);

    //grounding force
    segments.get(0).x = anchor.x;
    segments.get(0).y = anchor.y;
  }

  void update(PVector blow, PVector force) {
    //perlin noise wind, slightly offset from every other Hair
    float wind = (noise(frameCount/100.0+offset)-0.5)/4;

    //apply forces to each Hair segment
    for (int x = 1; x < segments.size (); x++) {
      PVector segment = segments.get(x);
      segment.y += gravity*x+growDir.y*5;
      segment.x += x*wind*(4/detailLvl)+growDir.x*5;

      //effect of mouse acceleration
      float secondWind = dist(blow.x, blow.y, segment.x, segment.y-30);
      //blower 

      if (hairBlower.isActive) {
        force = new PVector(segment.x-(float)mouseX, segment.y-(float)mouseY-30);
        force.setMag(30);
        force.rotate(random(radians(40)));
        secondWind = 99;
      }

      if (secondWind < 100 && force.mag() > 10) {
        emotion = constrain(emotion += 0.005*(15/segments.size ()), -50, 50);
        segment.x += force.x*(20/secondWind*(4/detailLvl));
        segment.y += force.y*(20/secondWind*(4/detailLvl));
      }
      
      //comb
      if (comb.isActive && secondWind < 30) {
        if (growDir.x < 0)
          growDir.x += 0.1;
        else if (growDir.x > 0)
          growDir.x -= 0.1;

        if (growDir.y < 0)
          growDir.y += 0.1;
        else if (growDir.y > 0)
          growDir.y -= 0.1;
      }
      
      //scissor
      if (scissor.isActive && secondWind < 10) {
        for (int y = segments.size ()-1; y > (x); y--) {
          emotion = constrain(emotion += 0.5, -50, 50);
          segments.remove(y);
        }
        if (segments.size () == 2) {
          emotion = constrain(emotion -= 10, -50, 50);
          segments.remove(1);
        }
      }
      
     
      }
    

    if (grower.isActive && dist(blow.x, blow.y, anchor.x, anchor.y) < 10) {
      if (frameCount%10 == 0)
        segments.add(new PVector(anchor.x, anchor.y));
      thickness = segments.size()/15;
      h = segments.size() - 2;
    }

    //pull all together
    for (int x = 0; x < segments.size ()-1; x++) {
      PVector joint = PVector.sub(segments.get(x), segments.get(x+1)); 

      if (joint.mag() > 5*(4/detailLvl)) {
        joint.normalize();

        joint.mult(-5*(4/detailLvl));

        segments.get(x+1).x = segments.get(x).x + joint.x;
        segments.get(x+1).y = segments.get(x).y + joint.y;
      }
    }
  }

  void draw() {
    fill(hairColor);
    stroke(hairColor);

    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < segments.size ()-1; x++) {
      PVector segment = segments.get(x);
      vertex(segment.x+5*thickness*((h-x)/h), segment.y);
      vertex(segment.x-5*thickness*((h-x)/h), segment.y);
    }
    endShape();
  }
}