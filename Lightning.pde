float centX = 400;
float centY = 400;
float startX = 400;
float startY = 400;
float endX = 400;
float endY = 400;
float startX2 = 400;
float startY2 = 400;
float endX2 = 400;
float endY2 = 400;
float startX3 = 400;
float startY3 = 400;
float endX3 = 400;
float endY3 = 400;
float startX4 = 400;
float startY4 = 400;
float endX4 = 400;
float endY4 = 400;
float radius = 180;
boolean on = false;
int control1 = 0;
int control2 = 0;
int control3 = 0;
int control4 = 100;
void setup()
{
  size(800,800);
  strokeWeight(2);
  
}
void draw()
{
background(0,0,0);
//draws the circle
stroke(215,242,250);
noFill();
ellipse(centX,centY,radius*3,radius*3);
stroke((int)(Math.random()*control1+control2),(int)(Math.random()*control1+control3),(int)(Math.random()*control1+control2));
for(int i = 3; i < 30; i+=3){
ellipse(centX,centY,i,i);
}


//draw the lightning
stroke((int)(Math.random()*control1+control2),(int)(Math.random()*control1+control3),(int)(Math.random()*control1+control2));
straightLightning();
diagonalLightning();
diagonalLightning();

//electrode
fill(152,149,152);
quad(centX,centY,420,673,400,675,380,673);
//base
stroke(152,149,152);
fill(57,57,57);
quad(325,670,475,670,550,745,250,745);
//on-off switch
fill(control4,0,0);
quad(325,715,350,715,350,740,325,740);
}















void diagonalLightning() {
startX = 400;
startY = 400;
endX = 400;
endY = 400;
startX2 = 400;
startY2 = 400;
endX2 = 400;
endY2 = 400;
startX3 = 400;
startY3 = 400;
endX3 = 400;
endY3 = 400;
startX4 = 400;
startY4 = 400;
endX4 = 400;
endY4 = 400;
while(sqrt(sq(endX-centX)+sq(endY-centY)) <= radius + 40){
startX = endX;
startY = endY;
endX = startX - ((float)Math.random()*0.4*radius);
endY = startY - ((float)Math.random()*0.4*radius);
line(startX,startY,endX,endY);
}
while(sqrt(sq(endX2-centX)+sq(endY2-centY)) <= radius + 40){
startX2 = endX2;
startY2 = endY2;
endX2 = startX2 + ((float)Math.random()*0.4*radius);
endY2 = startY2 - ((float)Math.random()*0.4*radius);
line(startX2,startY2,endX2,endY2);
}
while(sqrt(sq(endX3-centX)+sq(endY3-centY)) <= radius + 40){
startX3 = endX3;
startY3 = endY3;
endX3 = startX3 - ((float)Math.random()*0.4*radius);
endY3 = startY3 + ((float)Math.random()*0.4*radius);
line(startX3,startY3,endX3,endY3);
}
while(sqrt(sq(endX4-centX)+sq(endY4-centY)) <= radius + 40){
startX4 = endX4;
startY4 = endY4;
endX4 = startX4 + ((float)Math.random()*0.4*radius);
endY4 = startY4 + ((float)Math.random()*0.4*radius);
line(startX4,startY4,endX4,endY4);
}
}

void straightLightning(){
startY = 400;
endX = 400;
endY = 400;
startX2 = 400;
startY2 = 400;
endX2 = 400;
endY2 = 400;
startX3 = 400;
startY3 = 400;
endX3 = 400;
endY3 = 400;
startX4 = 400;
startY4 = 400;
endX4 = 400;
endY4 = 400; 
while(sqrt(sq(endX-centX)+sq(endY-centY)) <= radius + 40){
startX = endX;
startY = endY;
endX = startX - ((float)Math.random()*0.4*radius);
endY = startY - ((float)Math.random()*(0.2*radius)-(0.1*radius));
line(startX,startY,endX,endY);
}
while(sqrt(sq(endX2-centX)+sq(endY2-centY)) <= radius + 40){
startX2 = endX2;
startY2 = endY2;
endX2 = startX2 + ((float)Math.random()*(0.2*radius)-(0.1*radius));
endY2 = startY2 - ((float)Math.random()*0.4*radius);
line(startX2,startY2,endX2,endY2);
}
while(sqrt(sq(endX3-centX)+sq(endY3-centY)) <= radius + 40){
startX3 = endX3;
startY3 = endY3;
endX3 = startX3 - ((float)Math.random()*(0.2*radius)-(0.1*radius));
endY3 = startY3 + ((float)Math.random()*0.4*radius);
line(startX3,startY3,endX3,endY3);
}
while(sqrt(sq(endX4-centX)+sq(endY4-centY)) <= radius + 40){
startX4 = endX4;
startY4 = endY4;
endX4 = startX4 + ((float)Math.random()*0.4*radius);
endY4 = startY4 + ((float)Math.random()*(0.2*radius)-(0.1*radius));
line(startX4,startY4,endX4,endY4);
}
}

void mouseClicked()
{
//lightning off
if (control1 == 0){
control1 = 40;
} else {
control1 = 0;
}


if (control2 == 0){
control2 = 160;
} else {
control2 = 0;
}


if (control3 == 0){
control3 = 50;
} else {
control3 = 0;
}
//switches
if (control4 == 100){
control4 = 400;
} else {
control4 = 100;
}
}
