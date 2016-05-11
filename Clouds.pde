class Clouds
{
  //Field
float CloudX, CloudY;
float CHeight, CWidth;
float CSpeed;
boolean resetClouds;
  
  Clouds()
  {
   CloudX = width / 3; 
   CloudY = height / 3;
   CHeight = 40;
   CWidth = 80;
   CSpeed = 4;
   resetClouds = false;
  }
  
  void update()
  {
    CloudX -= CSpeed;
    if(CloudX - 40 <= 0)
    {
      resetClouds = true;
    }
    if(resetClouds == true)
    {
      CloudX = width - 80;
      CloudX -= CSpeed;
    }
    if(CloudX >= 25)
    {
      resetClouds = false;
    }
  }
  void render()
  {
    fill(255);
   noStroke();
   ellipse(CloudX - 40, CloudY + 15, CWidth, CHeight);
   ellipse(CloudX, CloudY, CWidth, CHeight);
   ellipse(CloudX + 40, CloudY + 15, CWidth, CHeight);
  }
}