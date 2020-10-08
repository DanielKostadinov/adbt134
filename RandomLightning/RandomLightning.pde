Spark[] sparks;    

void setup()
{
  size(1600, 1000);

  //frameRate(10);
  sparks = new Spark[69];
  for (int i=0; i<sparks.length; i++)
  {
    sparks[i] = new Spark();
  }

  colorMode(RGB, 1, 1, 1);
  background(0);

  stroke((0.023)*1.4, 0.7, 0.6, 20);
  line(width/2, 0, width/2, height);
}

void draw()
{

  strokeWeight(0.2);

  for (Spark p : sparks)
  {
    for (int b = 0; b<sparks.length; b++)
    {
      if (key == 'a')
      {
        stroke(noise(0.02*p.x, 0.02*p.y)*1.4, 0.7, 1.6);
        line(p.prevX, p.prevY, p.x, p.y);
        p.move();
      }
      if (p.x<width/2 && p.x>0 && mousePressed)
      { 
        line(sparks[b].prevX, sparks[b].prevY, sparks[b].x, sparks[b].y);
        sparks[b].prime();
      }
    }
  }
  if (key == ENTER)
  {
    noLoop();
  }
}
