void setup(){

  fullScreen();
  
}
color gas =color(184,56,232,180);
color skull=color(229,217,157);
color eye=color(85,66,57);
color iris= color(73,240,101);
color shadow= color(50,150);
float enemyWidth= 100;
float enemyHeight=150;

void draw(){
  background(250);
  pushMatrix();
  translate(width/2,height/2);
  fill(shadow);
  ellipse(0,100,100,20);
  //back
  noStroke();
  fill(gas);
  ellipse(0,0,100,100);
  ellipse(enemyWidth/3,enemyHeight/3,50,25);
  ellipse(enemyWidth/4,enemyHeight/2.5,30,20);
  
  fill(skull);
  ellipse(0,0,75,75);
  rect(-5,33,10,10);
  rect(-17,33,10,10);
  rect(7,33,10,10);
  
  fill(eye);
  ellipse(-enemyWidth/5,0,30,25);
  ellipse(enemyWidth/5,0,30,25);
  
  pushMatrix();
  translate(-enemyWidth/5,0);
  fill(iris);
  ellipse(0,0,5,5);
  popMatrix();
  
  
  pushMatrix();
  translate(enemyWidth/5,0);
  fill(iris);
  ellipse(0,0,5,5);
  popMatrix();
  
  popMatrix();
  

}
