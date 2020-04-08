void setup()
{
  size(300, 200);
  background(255);
}

void draw()
{
  // taeguek
  noStroke();
  int R = height/2;  
  float c = cos(45);

  translate(width/2, height/2);
  rotate(c);

  fill(255, 0, 0);
  arc(0, 0, R, R, PI, TWO_PI, OPEN);

  fill(0, 0, 255);
  arc(0, 0, R, R, 0, PI, OPEN);

  fill(255, 0, 0);
  ellipse(-R/4, 0, R/2, R/2);

  fill(0, 0, 255);
  ellipse(R/4, 0, R/2, R/2);

  // gun
  fill(0);
  rectMode(CENTER);
  rect(-75, 0, R/12, R/2);
  rect(-90, 0, R/12, R/2);
  rect(-105, 0, R/12, R/2);

  // gon
  fill(0);
  rectMode(CENTER);
  rect(75, 0, R/12, R/2);
  rect(90, 0, R/12, R/2);
  rect(105, 0, R/12, R/2);

  fill(255);
  rectMode(CENTER);
  rect(75, 25, R/12, R/2);
  rect(90, 25, R/12, R/2);
  rect(105, 25, R/12, R/2);

  fill(0);
  rectMode(CENTER);
  rect(75, 20, R/12, R/4);
  rect(90, 20, R/12, R/4);
  rect(105, 20, R/12, R/4);
  
  //gam
  fill(0);
  rectMode(CENTER);
  rect(-25, 75, 45, 7.5);
  rect(-25, 90, 45, 7.5);
  rect(-25, 105, 45, 7.5);
  
  fill(255);
  rect(-25, 90, 10, 7.5);
  
  //e~
  fill(0);
  rectMode(CENTER);
  rect(25, -75, 45, 7.5);
  rect(25, -90, 45, 7.5);
  rect(25, -105, 45, 7.5);
  
  fill(255);
  rectMode(CENTER);
  rect(25, -75, 10, 7.5);
  rect(25, -105, 10, 7.5);

}
