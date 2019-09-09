class Ball{

 int xspeed=int(random(1,5));
int yspeed=int(random(2,3));
int x;
int y;
color c;
  
  Ball(int x, int y){
  this.x=x;
  this.y=y;
  this.c=color(random(50,255), random(0,150), random(0,150));
  }
  
void drawFigure(){
  
  stroke(c);
  fill(c);
  ellipse(x,y, 20, 20);
  
}

void moveBall(){

  x+=xspeed;
  y+=yspeed;
}

void checkEdges(){
 if(x>width || x<0){
    xspeed=xspeed*-1;
    
  }
  if(y>height || y<0){
    yspeed=yspeed*-1;
  }

}
}
