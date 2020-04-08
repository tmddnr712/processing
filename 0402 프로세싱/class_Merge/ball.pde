// ball position
int xPos, yPos;

// ball direction
int xDir = -2, yDir = -3;

// ball size
final int DIAMETER = 20;
final int RADIUS = DIAMETER/2;

// put the ball at center
void putBallAtCenter()
{
  xPos = width/2;
  yPos = height/2;
}

// draw a ball
void drawBall()
{
  noStroke();
  fill(255);
  circle(xPos, yPos, DIAMETER);
}

// move the ball
void moveBall()
{
  xPos += xDir;
  yPos += yDir;
}

// bounce the ball, professor answer
void bounceBall()
{
  // bounce the ball against the wall
  if (xPos < RADIUS || xPos > width-RADIUS) xDir *= -1;
  if (yPos < RADIUS) yDir *= -1;
  
  // bounce the ball against the racket
  if (xPos > racketX &&
      xPos <= racketX+RACKET_ELEVATION &&
      yPos > height-RACKET_ELEVATION-RADIUS) yDir *= -1;
}
