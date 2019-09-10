
int size=int(random(10,25));
ArcClass[] arc= new ArcClass[size];

void setup(){
    //size(1240, 620);
    fullScreen();
    background(0);
    for(int i=0; i<size; i++){
      arc[i]=new ArcClass();
    }
}

void draw(){
  clear();
  for(int i=0; i<size; i++){
      arc[i].drawArcs();
    }
     
}
