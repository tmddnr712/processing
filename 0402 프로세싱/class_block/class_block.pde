void setup()
{
  // window size
  size(500, 400);
}

void draw()
{
  // wipe out
  background(0);
  
  //draw a brick
  fill(0, 255, 0); // rgb
  for (int x = 0; x < 10; x++)
  {
    for(int y = 0; y < 8; y++)
    {
      rect(50*x, 20*y, 50, 20);
    }
  }
  
}
