
int w;


void setup()
{
  size(480,480);
  frameRate(10);
}
  
  float angle = 0;

void draw()
{
 
  background(255);
  
 angle +=01;
 angle %=360;
 
  
  w=255;
  
  for (float x=0; x < 40; x++){ 
   fill(100,100,255);
   rect(x*40, 0, 40, 150 + sin(angle+x)*30);  
  }
   
  for (float x=0; x < 40; x++){ 
   fill(100,100,255);
   rect(x*40, 350 + sin(angle+x)*30, 40, 200);  
  }
  

}
