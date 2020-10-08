class Spark
{
  float x, y;           
  float prevX, prevY;   
  float direction;  



  Spark()
  {
    x = mouseX;
    y = mouseY;
    prevX = x;
    prevY = y;
    direction = random(0, radians(360));
  }

  void prime()
  {

    prevX = x;
    prevY = y;
    float randomScale = 0.3;
    direction = noise(randomScale*x, randomScale*y)*radians(360);

    x = x + cos(direction);
    y = y + sin(direction);
  }

  void move()
  {
    if ((x < 0) || (y < 0) || (x > width) || (y > height))
    {
      x = mouseX;
      y = mouseY;
      prevX = x;
      prevY = y;
      direction = random(0, radians(360));
    } 
    else
    {

      prevX = x;
      prevY = y;


      float noiseScale = 0.05;
      direction = noise(noiseScale*x, noiseScale*y)*radians(360);


      x = x + cos(direction);
      y = y + sin(direction);
    }
  }
}
