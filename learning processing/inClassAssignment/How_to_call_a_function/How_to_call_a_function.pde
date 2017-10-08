void draw() { 
  drawRect(0,0,50);
}
 
void drawRect(int i,int e,int size) {
  for (i=0 ; i< 500; i+= 25) {
    for (e=0 ; e< 500; e+= 25) {
      fill(map(i, mouseX, width, 0, 255), map(e, mouseY, height, 0, 255), random(255));
      rect(i, e, size, size);
    }
  }
}