
ArrayList<lines> l=new ArrayList<lines>();
float j=0;

lines l1;
lines l2;
void setup(){  
  //size(1100,700,P2D);
  fullScreen(P2D);
  
  for(int i=100-((width%100)/3); i<width; i+=100){
   for(int j=100; j<height; j+=100){
    l1=new lines(i, j, 100);
     l.add(l1);
   }
  }
  
}
void draw(){
  clear();
  background(240);
 // background(0);
 
   for(lines line: l){
    
     line.drawLine();
  }
    
  
}

void keyPressed(){
 redraw();
}
