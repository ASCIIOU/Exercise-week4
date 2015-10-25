final int GAME_START=1, GAME_END=2;
int gameState;
int w;
PImage Img;


boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;

float m, n;
float speed = 25;

  
void setup()
{
  size(480,480);
  frameRate(10);
  
  m=20;
  n=20;
  
  Img = loadImage("img/restart.png"); 

  gameState = GAME_START;

}
  
  float angle = 0;

void draw()
{
     switch (gameState){
      
    case GAME_START:
  background(255);
  
 angle +=01;
 angle %=360;
 
  
  w=255;
  
  for (float x=0; x < 40; x++){ 
   fill(100,100,255);
   rect(x*40+40, 0, 40, 200 + sin(angle+x)*30);  
   
   if(x>8){break;}
   
  }
   
  for (float x=0; x < 40; x++){ 
   fill(100,100,255);
   rect(x*40+40, 350 + sin(angle+x)*30, 40, 250);  
   if(x>8){break;}
 

   if(m>40 && m<440 && n<200 + sin(angle+x)*30 ){
   gameState = GAME_END;}
  if(m>40 && m<440 && n>350 + sin(angle+x)*30){
   gameState = GAME_END;}


}
  
    if (upPressed) { 
     n -= speed; 
   } 
   if (downPressed) { 
     n += speed; 
   } 
   if (leftPressed) { 
     m -= speed; 
   } 
   if (rightPressed) { 
     m += speed; 
   } 
  
  
  fill(0, 255, 0);
  ellipse(m, n, 20, 20);
  
  if(m<20){m=20;}
  if(m>width-20){m=width-20;}
  if(n<20){n=20;}
  if(n>height-20){n=height-20;}
  

   
  
      break;
    
    
    case GAME_END:
    
    background(255);
    image(Img, 5, 5);
     if (mouseY > 0 && mouseY < 40 && mouseX >0 && mouseX < 40){
    if (mousePressed){
      gameState = GAME_START;
      
      m=20;
      n=20;}
      
      break;

     }
     
     }
}

void keyPressed(){
  if (key == CODED){
  switch(keyCode){
    case UP:
    upPressed = true;
    break;
    case DOWN:
    downPressed = true;
    break;
    case LEFT:
    leftPressed = true;
    break;
    case RIGHT:
    rightPressed = true;
    break;
  
  }
  }
  

}
void keyReleased(){
if (key == CODED){
  switch(keyCode){
    case UP:
    upPressed = false;
    break;
    case DOWN:
    downPressed = false;
    break;
    case LEFT:
    leftPressed = false;
    break;
    case RIGHT:
    rightPressed = false;
    break;
  
  }
}
}
