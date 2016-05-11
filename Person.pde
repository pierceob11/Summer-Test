class Person 
{
  //Field
  float personX, personY;
  float walkSpeed;
  
  Person()
  {
    personX = 600 / 6;
    personY = 500;
    walkSpeed = 3;
  }
  
  void update()
  {
    if(keys[0]) //Up
    {
      personY -= walkSpeed;
    }
    if(keys[1]) //Down
    {
      personY += walkSpeed;
    }
    if(keys[2]) //Left
    {
      personX -= walkSpeed;
    }
    if(keys[3]) //Right
    {
      personX += walkSpeed;
    }
  }
  
  void render()
  {
   rect(personX, personY, 25, 45); //Body
   stroke(0);
   line(personX + 12.5f, personY, personX + 12.5f, personY - 10); //Neck
   noStroke();
   ellipse(personX + 12.5f, personY - 15, 20, 20); // Head
   stroke(0);
   line(personX + 5, personY + 45, personX + 5, personY + 70); //Left leg
   line(personX + 20, personY + 45, personX + 20, personY + 70); //Right leg
   
  }
  
  
  
  
  
}