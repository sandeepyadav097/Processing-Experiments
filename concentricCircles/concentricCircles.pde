int val=0;
int size=9;
circles[]  c=new circles[size];
boolean show=false;

void setup(){
   
  fullScreen();
   float val=height/size-180;
  for(int i=0; i<size;i++){
    c[i]=new circles(random(20,80),random(200,300),val, i%2);
    val+=100;
  }
}


void draw(){
  background(0);
  if(show)
  {
 
  translate(width/2, height/2);
  noFill();
  
  for(circles a:  c){
    a.drawCircles();
  }
  
  val+=1;
}
 if(mousePressed){
 show=true;
 redraw();
 }
}
