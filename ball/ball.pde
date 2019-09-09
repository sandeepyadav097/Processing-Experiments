
Ball [] balls=new Ball[20];
boolean show=false;
void setup(){
  background(0);
fullScreen();
for(int i=0; i<20; i++){
  balls[i]=new Ball(int(random(0,width)), int(random(0, height)));
} 
}


void draw(){
  if (mousePressed){
    show=true;
 }
if(show){
 for(Ball b:balls){
 b.drawFigure();
 b.moveBall();
 b.checkEdges();
  }
}
  
}
