class Clouds5
{
  //Field
float Cloud5X, Cloud5Y;
float C5Height, C5Width;
float C5Speed;
boolean resetClouds5;
  
  Clouds5()
  {
   Cloud5X = width / 1.5; 
   Cloud5Y = height / 6;
   C5Height = 55;
   C5Width = 60;
   C5Speed = random(0.4, 3);
   resetClouds5 = false;
  }
  
  void update()
  {
    Cloud5X -= C5Speed;
    if(Cloud5X - 40 <= 0)
    {
      resetClouds5 = true;
    }
    if(resetClouds5 == true)
    {
      Cloud5X = width - 80;
      Cloud5X -= CSpeed;
    }
    if(Cloud5X >= 25)
    {
      resetClouds5 = false;
    }
  }
  void render()
  {
    fill(255);
   noStroke();
   ellipse(Cloud5X - 40, Cloud5Y + 15, C5Width, C5Height);
   ellipse(Cloud5X, Cloud5Y, C5Width, C5Height);
   ellipse(Cloud5X + 40, Cloud5Y + 15, C5Width, C5Height);
  }
}