// racket position
int racketX;
final int RACKET_ELEVATION = 50;

// racket size
int racketWidth;
void setRacketSize()
{
  racketWidth = 100;
}

void moveRacket()
{
  racketX = mouseX;
}

void drawRacket()
{
  stroke(255);
  strokeWeight(5);
  line(racketX,              height-RACKET_ELEVATION,
       racketX+racketWidth,  height-RACKET_ELEVATION);
}
