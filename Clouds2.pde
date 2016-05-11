class Clouds2
{
  //Field
float Cloud2X, Cloud2Y;
float C2Height, C2Width;
float C2Speed;
boolean resetClouds2;
  
  Clouds2()
  {
   Cloud2X = width / 1.5; 
   Cloud2Y = height / 4;
   C2Height = 25;
   C2Width = 60;
   C2Speed = random(0.4, 3);
   resetClouds2 = false;
  }
  
  void update()
  {
    Cloud2X -= C2Speed;
    if(Cloud2X - 40 <= 0)
    {
      resetClouds2 = true;
    }
    if(resetClouds2 == true)
    {
      Cloud2X = width - 80;
      Cloud2X -= CSpeed;
    }
    if(Cloud2X >= 25)
    {
      resetClouds2 = false;
    }
  }
  void render()
  {
    fill(255);
   noStroke();
   ellipse(Cloud2X - 40, Cloud2Y + 15, C2Width, C2Height);
   ellipse(Cloud2X, Cloud2Y, C2Width, C2Height);
   ellipse(Cloud2X + 40, Cloud2Y + 15, C2Width, C2Height);
  }
}