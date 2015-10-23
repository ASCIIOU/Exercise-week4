float spacing = 48;

int w;

void setup()
{
 
  size(480,480);

  
}

void draw()
{
   background(0);

  w=255;
  
  for (float x=0; x < width; x+=spacing){ 
   noStroke();
   
   float distance= abs( x-mouseX );
   
   if( distance < 25 ){
   fill(0,255,0);
      }
      else{
      fill(0, 255-distance, 0);}
   
   
   
   rect(x,0,spacing,height); 
  
   
 } 


}
