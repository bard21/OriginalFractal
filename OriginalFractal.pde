public void setup() {
  size(500, 500);
}
public void draw() {
  background(100, 100, 100);
  myFractal(250.0, 250.0, 500.0, 500.0);
}
public void myFractal(float x, float y, float w,float h) {
  fill((int)(Math.random()* 350),(int) (Math.random() * 350), (int) (Math.random() * 350));
  ellipse(x,y,w,h);
  ellipse(x - w * 1/5, y - h * 1/5, w/5, h/5);
  ellipse(x + w * 1/5, y - h * 1/5, w/5, h/5);
  arc(x, y + h * 1/5, w/2, h/3, 0, PI);
  if (w > 50) {
    myFractal(x, y, w/2, h/2);
  }
}
