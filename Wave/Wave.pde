

int num=10;

color[] arr=new color[num];
//size(640,640);
//background(0);
//for(int i=0; i<640;i+=40){
// for(int j=0; j<640; j+=40){
//   fill(random(0,255), random(0,255), random(0,255));
//   rect(i,j,40,40);
// }
//}


void setup(){
 //size(640, 640); 
 fullScreen();
 background(20,20);
 for(int i=0; i<num; i++){
   arr[i]=color(random(0,255), random(0,255), random(0,255));
 }
}







int x=0;
int y=0;
int radius=1;
int turn=0;
float t=0;

float x1(float t){
  return   sin(t/10)*100+sin(t/5)*30;
}

float y1(float t){
return cos(t/10)*100;}

float x2(float t){
  return   sin(t/10)*200+sin(t)*3;
}

float y2(float t){
return cos(t/20)*100+cos(t/12)*20;}

int posX=0;
float speed=3;


void draw(){
  clear();
  //stroke(255);
  strokeWeight(5);
 
  //line(posX,0,posX,640);
  //line(0,posX,640,posX);
  //posX+=50  ;
  
  //ellipse(posX, 320,20,20);
  //if(posX>width || posX<0){
  //speed=-2*speed;
  //println(speed);
  //}
  //posX+=speed;
  
   
  translate(width/2,height/2);
  
  
  

  for(int i=0; i<num; i++){ 
    stroke(arr[i]);
  line(x1(t+i),y1(t+i),x2(t+i), y2(t+i));
  }
  
  
  

t++;
  
  //point(t,0);
 
  
  
  
  
  
  
  
  
  
 

//  //stroke(255,255,255);
//  //if(mousePressed){
//  //ellipse(mouseX,mouseY,10, 10);
//  //if(radius==200){
//  //  turn=1;
//  //}
//  //else if(radius==0){
//  //turn=0;
//  //}
//  //if(radius<200 && turn==0){
//  //  radius++;
//  //}else{
//  //  radius--;
    
//  //}
//  //}


  
//  //if(x == 0 && y<640)
//  //{
//  //  line(x,y,320,320);
//  //  y++;
//  //}
//  //else if (x<640 && y==640){
//  //  line(x,y,320,320);
//  //  x++;
//  //}
//  //else if (y>0 && x==640){
//  //  line(x,y,320,320);
//  //  y--;
//  //}
//  //else if (y == 0 && x>0){
//  //  line(x,y,320,320);
//  //  x--;
//  //}
}
