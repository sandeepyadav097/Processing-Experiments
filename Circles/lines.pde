class lines{
  
  int x, y;
  int l;
  float j=int(random(0, 360));
  float startAngle=int(random(20,70));
  float endAngle=int(random(80,150));
  float speed=random(0.1,0.9);
  float total=int(random(50,200));
  float strokeVal=random(50,150);
  float opacity=random(20, 100);
  
  lines(int xcor, int ycor, int size){
    x=xcor;
    y=ycor;
    l=size;
    
    
  }
  
  void drawLine(){
//   for(float i=0; i<total; i++){ 
  pushMatrix();
  //noFill();
  fill(strokeVal, opacity);
  translate(x,y);   
  rotate(radians(j)); 
  strokeWeight(1);
  //stroke(strokeVal, opacity);

  //line(0,0,50,0);
  arc(0,0,100,100, radians(startAngle), radians(endAngle));
  endAngle+=speed*0.1;
  popMatrix();
  j+=speed;
  
//  }
  
//  total+=20 ;

  if(radians(endAngle)+radians(startAngle)>2*PI){
    startAngle=int(random(20,70));
    endAngle=int(random(80,150));
  }
  
  }


}
