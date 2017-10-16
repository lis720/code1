PImage img;

void setup() {
  size(700, 450);
  img = loadImage ("rick.png");
  background(255);
  smooth();
  frameRate(10000);
}

void draw() {
  loadPixels();
  int x=int(random(img.width));
  int y=int(random(img.height));

  int loc =x+y*img.width;
  float r= red(img.pixels[loc]);
  float g= green(img.pixels[loc]);
  float b= blue(img.pixels[loc]);
noStroke();
fill(r,g,b,255);
ellipse(x,y,5,5);
}