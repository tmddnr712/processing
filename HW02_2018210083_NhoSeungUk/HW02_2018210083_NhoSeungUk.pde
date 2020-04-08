void setup()
{
  // display window
  size(300, 200);
  
  // initialize the ball
  putBallAtCenter();
  
  // initialize the racket
  setRacketSize(100);
}

void draw()
{
  // wipe out
  background(0);
  
  // ball
  drawBall();
  moveBall();
  bounceBall();
  
  // racket
  moveRacket();
  drawRacket();
}
