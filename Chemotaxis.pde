int x;
int y;

Bunny[] bob;
void setup()
{
 size(500,500); 
 frameRate(25);
 bob = new Bunny[5];
 for(int i = 0; i < bob.length; i++)
 {
   bob[i] = new Bunny ();
 }
}
void flowers(int a, int b)
{
  ellipse(65+a,60+b, 10,10);
  ellipse(55+a,60+b, 10,10);
  ellipse(60+a,55+b, 10,10);
  ellipse(56+a,66+b, 10,10); 
  ellipse(64+a,66+b, 10,10);
  fill(255);
  ellipse(60+a,61+b, 5,5);
}

void flowerBackground()
{
  fill(#F794FC);
  flowers(0,0);
  fill(#FC94A7);
  flowers(50,100);
  fill(#D994FC);
  flowers(150,70);
  fill(#9A94FC);
  flowers(140,360);
  fill(#94E0FC);
  flowers(380,160);
  fill(#94FCC5);
  flowers(360,70);
  fill(#F5FC94);
  flowers(190,280);
  fill(#FCB794);
  flowers(400,380);
  fill(#FAC7FA);
  flowers(10,320);
}
void draw()
{
  background(#AAE854);
  flowerBackground();
  fill(#F7A239);
  triangle(mouseX,mouseY,mouseX+32,mouseY,mouseX+16,50+mouseY);
  fill(#90CB84);
  triangle(mouseX,mouseY,mouseX+7,mouseY-15,mouseX+12,mouseY);
  triangle(mouseX+10,mouseY,mouseX+17,mouseY-15,mouseX+22,mouseY);
  triangle(mouseX+20,mouseY,mouseX+27,mouseY-15,mouseX+32,mouseY);
  for(int i = 0; i < bob.length; i++)
  {
  bob[i].show();
  bob[i].walk();
  }
}

class Bunny
{
  int myX,myY;
  Bunny()
  {
    myX = myY = 250;
  }


void walk()
{
  for(int i = 0; i < bob.length; i++)
  {
  if(mouseX+10 > myX)
    myX = myX + (int)(Math.random()*5)-1;
  else
    myX = myX + (int)(Math.random()*5)-4;
  }
  for(int i = 0; i < bob.length; i++)
  {
  if(mouseY+10 > myY)
    myY = myY + (int) (Math.random()*5)-1;
  else
    myY = myY + (int)(Math.random()*5)-4;
  }
}

void show()
{
  fill(255);
  noStroke();
  ellipse(myX+10, myY-20, 10,30);
  ellipse(myX-10, myY-20, 10,30);
  ellipse(myX, myY, 30,30);
  fill(0);
  ellipse(myX+9, myY, 5,5);
  ellipse(myX-9, myY, 5,5);
}

}