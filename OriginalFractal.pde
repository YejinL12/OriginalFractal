int r1 = (int)(Math.random()*255);
int g1 = (int)(Math.random()*255);
int b1 = (int)(Math.random()*255);
int r2 = (int)(Math.random()*255); 
int g2 = (int)(Math.random()*255);
int b2 = (int)(Math.random()*255);
public void setup() {
  size(500,500);
}

public void draw() {
  background(0);
  stroke(255);
  circleFractal(250,250,250);
}
public void mousePressed()//optional
{
r1 = (int)(Math.random()*255);
g1 = (int)(Math.random()*255);
b1 = (int)(Math.random()*255);
r2 = (int)(Math.random()*255); 
g2 = (int)(Math.random()*255);
b2 = (int)(Math.random()*255);
}
public void circleFractal(float x, float y, float size) {
  ellipse(x+size, y, size, size);
  if (size > 4) {
    fill(r1, g1, b1, 100);
    circleFractal(x+40, y, size/2);
    fill(r2, g2, b2,100);
    circleFractal(x-40, y, size/2);
  }
}
