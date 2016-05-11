class Plane
{
  //Field 
  float PBodyX, PBodyY;
  float PBodyW, PBodyH;
  float PWingX, PWingY;
  float PSpeed;
  boolean resetPlane;
  float BoxX, BoxY;
  float dropSpeed;
  
  Plane()
  {
    PBodyX = width / 3;
    PBodyY = height / 6;
    PBodyW = 100;
    PBodyH = 35;
    PSpeed = 3;
    resetPlane = false;
    BoxX = PBodyX;
    BoxY = PBodyY;
    dropSpeed = 7;
  }
  
  void update()
  {
    PBodyX += PSpeed;
    if(PBodyX >= 600)
    {
      resetPlane = true;
    }
    if(resetPlane == true)
    {
      PBodyX = 30;
    }
    if(PBodyX < 598)
    {
      resetPlane = false;
    }
    if(key == ' ')
    {
      fill(255, 0, 0);
      rect(BoxX, BoxY, 20, 20);
      BoxY += dropSpeed;
    }
    if(BoxY >= random(450, 590))
    {
      dropSpeed = 0;
    }
    if(resetPlane == true)
    {
      BoxX = PBodyX;
      BoxY = PBodyY;
    }
  }
  
  void render()
  {
    fill(157, 157, 157);
    rectMode(CENTER);
    rect(PBodyX, PBodyY, PBodyW, PBodyH); //Body
    rectMode(CORNER);
    rect(PBodyX, (PBodyY - 42), 15, 45); //Top wing
    rect(PBodyX, PBodyY, 15, 45); //Bottom wing
    triangle((PBodyX + (PBodyW / 2)), PBodyY - 17.5f, (PBodyX + (PBodyW / 2)), PBodyY + 17.5f, (PBodyX + (PBodyW + 15)), PBodyY + 15);
  }
}