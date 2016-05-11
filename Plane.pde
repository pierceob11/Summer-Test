class Plane
{
  //Field 
  float PBodyX, PBodyY;
  float PBodyW, PBodyH;
  float PWingX, PWingY;
  float PSpeed;
  boolean resetPlane;
  
  Plane()
  {
    PBodyX = width / 3;
    PBodyY = height / 6;
    PBodyW = 100;
    PBodyH = 35;
    PSpeed = 3;
    resetPlane = false;
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