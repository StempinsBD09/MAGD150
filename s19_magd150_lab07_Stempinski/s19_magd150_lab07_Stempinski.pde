PVector position; 
PVector velocity; 
PVector v1, v2;
int [] numbers = new int [1];


void setup(){
  size(500,500);
  background(0,0,200);
  line(100,100,150,150);
  rotate(.5);
  fill(0,150,0);
  rect(150,300,400,400);
  velocity = new PVector(2,3);
  position = new PVector(200,200);
  
  
  v1 = new PVector(100,100);
  v2 = new PVector(150,150);
  
  numbers[0] = 1;
  println(numbers[0]);

}

void draw(){ 

scale(2);

translate(50,50);
fill(0,200,0);
  //a bumblebee flying around
  fill(200,150,0);
  
ellipse(position.x,position.y,10,10);
fill(0,120,255);
noStroke();
ellipse(position.x/1.1,position.y/1.05,10,40);


fill(150,100,0);
//The orange represents the sun in the background
//The red represents a flower
  ellipse(v1.x, v1.y, 80, 80);
  fill(100,100);
  ellipse(v1.x, v1.y,100,100);
  fill(150,10,0);
   ellipse(v2.x, v2.y,100,100);
  
  
  
position.add(velocity);

if ((position.x > width) ||  (position.x < 0)) {
  velocity.x = velocity.x *-1;
}   
if ((position.y > height) || (position.y < 0)) {
    velocity.y = velocity.y * -1;
}
//Green leaves in a forest 
fill(0,150,0);
scale(.75);
rotate(-2);
  ellipse(100,60,500,300);


}
