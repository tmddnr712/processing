// racket position
int racketX;
final int RACKET_ELEVATION = 50;

// racket size
int racketSize;

// set the racket size
void setRacketSize(int size)
{
  racketSize = size;
}

// move the racket
void moveRacket()
{
  racketX = mouseX;  
}

// draw the racket
void drawRacket()
{
  stroke(255);
  strokeWeight(5);
  line(racketX,            height-RACKET_ELEVATION,
       racketX+racketSize, height-RACKET_ELEVATION);
}
