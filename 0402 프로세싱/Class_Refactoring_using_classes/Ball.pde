class Ball
{
// constructor
public Ball(final Racket racket_, final int _x, final int _y)
{
  racket = racket_;
  x = _x;
  y = _y;
}
// put the ball at center
public void putAtCenter()
{
  x = width/2;
  y = height/2;
}

// draw a ball
public void draw()
{
  noStroke();
  fill(255);
  circle(x, y, DIAMETER);
}

// move the ball
public void move()
{
  x += vx;
  y += vy;
}

// bounce the ball, professor answer
public void bounce()
{
  // bounce the ball against the wall
  if (x < RADIUS || x > width-RADIUS) vx *= -1;
  if (y < RADIUS) vy *= -1;
  
  // bounce the ball against the racket
  if (x > racket.x &&
      x <= racket.x+racket.size &&
      y > height-racket.ELEVATION-RADIUS) vy *= -1;
}
// ball position
int x, y;

// ball direction
int vx = -2, vy = -3;

// ball size
final int DIAMETER = 20;
final int RADIUS = DIAMETER/2;

// racket
final Racket racket;
}
