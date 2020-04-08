void setup()
{
  size(300, 200);
  putBallAtCenter();
  setRacketSize();
}

void draw()
{
  background(0);
  drawBall();
  moveBall();
  bounceBall();
  
  moveRacket();
  drawRacket();
}
