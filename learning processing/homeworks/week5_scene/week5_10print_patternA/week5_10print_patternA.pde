float x = 0;
float y = 0;
float space = 20;

void setup() {
  size(800,800);
  background(137,194,227);
}

void draw() {
  strokeWeight(3);
  noStroke();
  stroke(0,111,162);
  if(random(-1,1) < 0 ){
    //line(x, y , x + space ,y + space );
    fill(0,111,162);
    ellipse(x,y,10,10);
  //}else{
  //  fill(255);
  //  //line(x, y + 10, x + 10 , y );

  }
  x = x + space;
  if(x > width){
    x = 0;
    y = y + space;
  }
  println(random(-1,1));

}




  