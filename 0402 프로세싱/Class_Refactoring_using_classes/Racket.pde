class Racket
{
// constructor
public Racket(final int s)
{
  setSize(s);
}
public void setSize(final int s)
{
  size = s;
}

public void move()
{
  x = mouseX;
}

void draw()
{
  stroke(255);
  strokeWeight(5);
  line(x,      height-ELEVATION,
       x+size, height-ELEVATION);
}
  
  
// racket position
int x;
final int ELEVATION = 50;

// racket size
int size;
}
