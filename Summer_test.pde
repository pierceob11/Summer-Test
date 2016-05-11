int halfHeight;
float CloudX, CloudY;
float CHeight, CWidth;
float CSpeed;
boolean resetCloud;
Clouds clouds;

void setup()
{
  size(600, 600);
  halfHeight = height / 2;
  clouds = new Clouds();
}

void draw()
{
  skybox();
  clouds.update();
  clouds.render();
}

void skybox()
{
   noStroke();
  fill(21, 249, 255);
  rect(0, 0, width, halfHeight); //Sky
  fill(58, 255, 21);
  rect(0, halfHeight, width, height); //Grass
}

/*
void clouds()
{
   fill(255);
   noStroke();
   ellipse(CloudX - 40, CloudY + 15, CWidth, CHeight);
   ellipse(CloudX, CloudY, CWidth, CHeight);
   ellipse(CloudX + 40, CloudY + 15, CWidth, CHeight);
   CloudX -= CSpeed;
   
   if(CloudX - 40 >= 0)
   {
     resetCloud = true;
   }
   if(resetCloud == true)
   {
     CloudX = 500;
   }
  }
*/