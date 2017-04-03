float x=0;
float y=1;
int w= 2000;
int h= 1600;
float x1,y1;
int flag1=0;

void setup() {
  size(800,600,P3D);
  x1=random(200,600);
  y1=random(200,300);
}

void draw() {
  
  background(0);
  pushMatrix();
  translate(width/2, height/2 + 50);
  rotateX(PI/4);
  translate(-w/2,-h/2);
   fill(100,0,100);
  rect(800,200,400,height);
  popMatrix();
  fill(100,0,0);
  ellipse(x1,y1,40,40);
  if(abs(mouseX-x1)<=30 && abs(mouseY-y1)<=30) flag1=1;
  if(abs(mouseX-x1)<=20 && abs(41-y1)<=20) flag1=3;
  fill(255);
  ellipse(mouseX,mouseY,50+0.2*mouseY,50+0.2*mouseY);
  ellipse(mouseX,41,50,50);
  text(""+mouseX,mouseX+100,mouseY);
  text(""+mouseY,mouseX+200,mouseY);
  y+=1;
  x+=1;
  if(flag1==2)
  {
    flag1=0;
    x1=random(200,600);
    y1=random(200,300);
  }
  if(flag1==1)
  {
     y1=y1-8;
  }
  if(y1<0) flag1=2;
  if(flag1==3) y1=y1+8;
 
}
