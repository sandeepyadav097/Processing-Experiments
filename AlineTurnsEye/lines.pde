class lines{
  
  int x, y;
  int l;
  float j=int(random(0, 360));
  float startAngle=60;
  float endAngle=150;
  float speed;
  float total=int(random(50,200));
  float strokeVal=180;
  float opacity=65;
  float factor=random(50, 100);
  lines(int xcor, int size){
    x=xcor;
    l=size;
     endAngle=endAngle+(x/8)*1.01;
     
    
  }
  
  void drawLine(){
   
   for(int k=100-((height%100)/3); k<height; k+=100){
   
  pushMatrix();
  //noFill();
  fill(strokeVal, opacity);
  translate(x,k);   
  rotate(radians(j)); 
  strokeWeight(1);
  //stroke(strokeVal, opacity);
  
  //line(0,0,50,0);
  
  arc(0,0,100,100, radians(startAngle+factor*k/100), radians(endAngle+factor*k/100));
  popMatrix();
  speed=map((x+k)/1000,0 ,1, 0,0.5)+float(k/100)*0.009;
  j+=speed*1.01;
  
//  }
  
//  total+=20 ;

  //if(radians(endAngle)+radians(startAngle)>2*PI){
  //  startAngle=int(random(20,70));
  //  endAngle=int(random(80,150));
  //}
  
  
  
   }
  }


}
