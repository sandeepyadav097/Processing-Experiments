
Ball [] balls=new Ball[20];
void setup(){
  background(0);
size(640,640);
for(int i=0; i<20; i++){
  balls[i]=new Ball(int(random(0,width)), int(random(0, height)));
} 
}


void draw(){
 
 for(Ball b:balls){
 b.drawFigure();
 b.moveBall();
 b.checkEdges();
  }
  
}
