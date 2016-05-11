class Clouds4
{
  //Field
float Cloud4X, Cloud4Y;
float C4Height, C4Width;
float C4Speed;
boolean resetClouds4;
  
  Clouds4()
  {
   Cloud4X = width / 1.5; 
   Cloud4Y = height / 5;
   C4Height = 45;
   C4Width = 90;
   C4Speed = random(0.4, 3);
   resetClouds4 = false;
  }
  
  void update()
  {
    Cloud4X -= C4Speed;
    if(Cloud4X - 40 <= 0)
    {
      resetClouds4 = true;
    }
    if(resetClouds4 == true)
    {
      Cloud4X = width - 80;
      Cloud4X -= CSpeed;
    }
    if(Cloud4X >= 25)
    {
      resetClouds4 = false;
    }
  }
  void render()
  {
    fill(255);
   noStroke();
   ellipse(Cloud4X - 40, Cloud4Y + 15, C4Width, C4Height);
   ellipse(Cloud4X, Cloud4Y, C4Width, C4Height);
   ellipse(Cloud4X + 40, Cloud4Y + 15, C4Width, C4Height);
  }
}