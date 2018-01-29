class Object {
  PVector home;
  PVector pos;

  boolean isActive;
  boolean isHeld;

  PImage sprite;

  Object(int x, int y) {
    home = new PVector(x, y);
    pos = new PVector(x, y);

    isActive = false;
    isHeld = false;
  }

  Object(int x, int y, String img) {
    home = new PVector(x, y);
    pos = new PVector(x, y);

    sprite = loadImage(img);

    isActive = false;
    isHeld = false;
  }

  void update() {
    if (dist(mouseX, mouseY, pos.x, pos.y) <= 50 && toolHeld && selected == null || (selected == this && toolHeld))
    {
      selected = this;

      pos.x = mouseX;
      pos.y = mouseY;

      if (toolActivated)
      {
        isActive = true;
      } else {
        isActive = false;
      }
      isHeld = true;
    } else if (dist(home.x, home.y, pos.x, pos.y) >= 2) {
      if (selected == this) {
        selected = null;
      }

      PVector move = new PVector(home.x - pos.x, home.y - pos.y);
      move.div(10);
      pos.add(move);

      isActive = false;

      isHeld = false;
    }
  }

  void display() {
    ellipseMode(CENTER);

    if (!isActive)
      fill(255,100);
    else
      fill(255,100);

    noStroke();
    ellipse(pos.x+30, pos.y+20, 100, 100);

    if (sprite != null) {
      image(sprite, pos.x+16, pos.y-10);
    }
  }
}

void mousePressed() {
  toolHeld = true;
  toolActivated = true;
}

void mouseReleased() {
  toolActivated = false;
  toolHeld = false;
}