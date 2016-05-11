int halfHeight;
float CloudX, CloudY;
float CHeight, CWidth;
float CSpeed;
boolean resetCloud;
Clouds clouds;
Clouds2 clouds2;
Clouds3 clouds3;
Clouds4 clouds4;
Clouds5 clouds5;
Plane plane;

void setup()
{
  size(600, 600);
  halfHeight = height / 2;
  clouds = new Clouds();
  clouds2 = new Clouds2();
  clouds3 = new Clouds3();
  clouds4 = new Clouds4();
  clouds5 = new Clouds5();
  plane = new Plane();
}

void draw()
{
  skybox();
  clouds.update();
  clouds.render();
  
  clouds2.update();
  clouds2.render();
  
  clouds3.update();
  clouds3.render();
  
  clouds4.update();
  clouds4.render();
  
  clouds5.update();
  clouds5.render();
  
  plane.update();
  plane.render();
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