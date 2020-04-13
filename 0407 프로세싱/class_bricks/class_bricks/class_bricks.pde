final int BRICK_WIDTH = 50;
final int BRICK_HEIGHT = 20;
final int BRICK_NCOLS = 10;

boolean [] bricks = new boolean[BRICK_NCOLS];
int [] brickColorR = new int[BRICK_NCOLS];
int [] brickColorG = new int[BRICK_NCOLS];
int [] brickColorB = new int[BRICK_NCOLS];

void setup()
{
  // window size
  size(500, 400);
  
  // create bricks
  for ( int i = 0; i < BRICK_NCOLS; i++)
  {
    bricks[i] = true;
    brickColorR[i] = (int)(255 * Math.random());
    brickColorG[i] = (int)(255 * Math.random());
    brickColorB[i] = (int)(255 * Math.random());
  }
}

void draw()
{
  // wipe out
  background(0);
  
  // break bricks
  if(mousePressed && mouseButton == LEFT)
  {
    final int BRICK_INDEX = mouseX/BRICK_WIDTH;
    bricks[BRICK_INDEX] = false;
  }
  
  
  //draw bricks
  fill(0, 255, 0);
  for(int i = 0; i < BRICK_NCOLS; i++) // need array
  {
    // if the brick exists
    if (!bricks[i]) continue;
    
    // pick a color
    fill(brickColorR[i], brickColorG[i], brickColorB[i]);
    // draw a brick
      rect(i*BRICK_WIDTH, 0,
           BRICK_WIDTH, BRICK_HEIGHT);
  }
}
