
int dir = 3;
int ballX = 20;

void setup()
{
  size(400, 300);
}

void draw() { 
  
  boolean mouseOver = true;
  background(204); 
  //ellipse(mouseX, mouseY, 20, 20); 
  println(mouseX, mouseY);
  //text("he", mouseX, mouseY);
  float x = (width/2) - (width*(0.3f)/2);       //x position in center
  float y = (height/2) - (height*(0.3f)/2);     // y position in center

  
  //change of the color with mouse click
   if(mousePressed == true)
   {
     fill(250, 76, 108);
   }
   else
   {
     fill(160, 27, 52);
   }
 
   if(mouseX >=x && mouseX<=x+width*0.3f &&
      mouseY>=y && mouseY<=y+height*0.3f)
   {
   background(0, 76, 108);
   }
    rect(x, y, width*(0.3f), height*(0.3f));
    
    fill(249, 250, 20);
    strokeWeight(3);
    ellipse(ballX, 30, 40, 40);
    ballX += dir;
    if(ballX > 380 || ballX < 20)
    {
     dir *= -1;  //change direction to opposite
    }    
    
}

