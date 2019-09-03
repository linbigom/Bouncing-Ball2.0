


int ballX = 1; int ballY = 1; //position af bold
float speedX = 5; float speedY = 5; //hastighed der adderes på position

int rectX = 250; int rectY = 250; //rektangels position
float rectSizeX = 600; float rectSizeY = 500; //rektangels størrelse

float roomSize = 1; //formindskelse af rektangel


void setup() {
  size(500, 500); 
}

void draw () {
  size(500, 500);
  ballX+=speedX; //får bolden til at flytte sig
  ballY+=speedY; //får bolden til at flytte sig

  clear();
  //centrerer firkant + PINK
  rectMode(CENTER); fill(255,105,180);
  
  //tegner firkant og bold
  rect(rectX,rectY,rectSizeX,rectSizeY);
  ellipse (ballX, ballY, 20, 20);

  //gør 'rummet' mindre
  roomSize*=.99999;

  rectSizeY*=roomSize;
  rectSizeX*=roomSize;



  //if-statements til når bolden rammer kanten
  
  //x-værdi, hvor man tar den numeriske værdi
  if (ballX>0.5*width+0.5*rectSizeX)
    speedX = -sqrt(pow(speedX,2));
  if (ballX<0.5*width-0.5*rectSizeX)
    speedX = sqrt(pow(speedX,2));
    
  //y-værdi, hvor man tar den numeriske værdi
  //if (ballY>0.5*height+0.5*rectSizeY||ballY<0.5*height-0.5*rectSizeY)
    //speedY=-1*speedY;
  if (ballY>0.5*width+0.5*rectSizeY)
    speedY = -sqrt(pow(speedY,2));
  if (ballY<0.5*width-0.5*rectSizeY)
    speedY = sqrt(pow(speedY,2));
    
    
    
    
    
    
    
}
