float x=0;
float y=1;
int w= 2000;
int h= 1600;

void setup() {
  size(800,600,P3D);
  
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
  fill(255);
  
  ellipse(mouseX,mouseY,50+0.2*mouseY,50+0.2*mouseY);
  ellipse(mouseX,41,50,50);
  text(""+mouseX,mouseX+100,mouseY);
  text(""+mouseY,mouseX+200,mouseY);
  y+=1;
  x+=1;
}