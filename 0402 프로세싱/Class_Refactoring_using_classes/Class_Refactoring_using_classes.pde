// ball
Ball ball;

// racket
Racket racket;

void setup()
{
  // window size
  size(500, 400);
  
  // create a ball
  ball = new Ball(racket, width/4, height/4);
  
  // create a racket
  racket = new Racket(200); // size: 200
}

void draw()
{
  background(0);
  ball.draw();
  ball.move();
  ball.bounce();
  
  racket.move();
  racket.draw();
}
