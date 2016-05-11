class Clouds3
{
  //Field
float Cloud3X, Cloud3Y;
float C3Height, C3Width;
float C3Speed;
boolean resetClouds3;
  
  Clouds3()
  {
   Cloud3X = width / 1.5; 
   Cloud3Y = height / 4;
   C3Height = 35;
   C3Width = 70;
   C3Speed = random(0.4, 3);
   resetClouds3 = false;
  }
  
  void update()
  {
    Cloud3X -= C3Speed;
    if(Cloud3X - 40 <= 0)
    {
      resetClouds3 = true;
    }
    if(resetClouds3 == true)
    {
      Cloud3X = width - 80;
      Cloud3X -= CSpeed;
    }
    if(Cloud3X >= 25)
    {
      resetClouds3 = false;
    }
  }
  void render()
  {
    fill(255);
   noStroke();
   ellipse(Cloud3X - 40, Cloud3Y + 15, C3Width, C3Height);
   ellipse(Cloud3X, Cloud3Y, C3Width, C3Height);
   ellipse(Cloud3X + 40, Cloud3Y + 15, C3Width, C3Height);
  }
}