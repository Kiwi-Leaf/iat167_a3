void setup(){
  size(900,800);
  //fullScreen();
}
float characterHeight=200;
float characterWidth=75;

color skin= color(255,225,199);
color falseColor= color(53,51,65);
void draw(){
  background(130);
  //base human
  pushMatrix();
  translate(width/2,height/2);
  noStroke();
  
  pushMatrix();
  fill(falseColor);
  //legs, left
  translate(-(characterWidth/4*3)/3.5,(characterHeight/3)/2+((characterHeight/3)/2)/2);
  ellipse(0,0,characterWidth/3.5,characterWidth/3.5);
  ellipse(0,characterHeight/3.5,characterWidth/3.5,characterWidth/4);
  rect(-(characterWidth/3.5)/2,0,characterWidth/3.5,characterHeight/3.5);
  
  popMatrix();
  
  
  //leg, right
  pushMatrix();
  fill(falseColor);
  translate((characterWidth/4*3)/3.5,(characterHeight/3)/2+((characterHeight/3)/2)/2);
  ellipse(0,0,characterWidth/3.5,characterWidth/3.5);
  ellipse(0,characterHeight/3.5,characterWidth/3.5,characterWidth/4);
  rect(-(characterWidth/3.5)/2,0,characterWidth/3.5,characterHeight/3.5);
   
  popMatrix();
  
  //arm,left
  pushMatrix();
  fill(skin);
  translate(-(characterWidth/3*2)/2,-(characterHeight/3)/3);
  rect(0,-characterHeight/20,-characterWidth/1.5,characterWidth/4);
  ellipse(-characterWidth/1.5,-characterHeight/20+(characterWidth/4)/2,characterWidth/4,characterWidth/3);
  
  popMatrix();
  
  //arm,right
  pushMatrix();
  fill(skin);
  translate((characterWidth/3*2)/2,-(characterHeight/3)/3);
  rect(0,-characterHeight/20,characterWidth/1.5,characterWidth/4);
  ellipse(characterWidth/1.5,-characterHeight/20+(characterWidth/4)/2,characterWidth/4,characterWidth/3);
  
  popMatrix();
 
  
  
  fill(falseColor);

  //shoulder
  //Left
  triangle(-(characterWidth/3*2)/2,-(characterHeight/3)/3-((characterWidth/4)/2),0,-characterHeight/3/2,0,0);
  ellipse(-(characterWidth/3*2)/2,-(characterHeight/3)/3,characterWidth/4,characterWidth/4);
  //Right
   triangle((characterWidth/3*2)/2,-(characterHeight/3)/3-((characterWidth/4)/2),0,-characterHeight/3/2,0,0);
   ellipse((characterWidth/3*2)/2,-(characterHeight/3)/3,characterWidth/4,characterWidth/4);
   
    //body
  ellipse(0,0,characterWidth/3*2,characterHeight/3);
  ellipse(0,(characterHeight/3)/2,characterWidth/4*3,(characterHeight/3)/2);
  triangle(characterWidth/3,0,(characterWidth/4*3)/2,(characterHeight/3)/2,0,(characterHeight/3)/2);
  triangle(-characterWidth/3,0,-(characterWidth/4*3)/2,(characterHeight/3)/2,0,(characterHeight/3)/2);
  //neck
  rect(-(characterWidth/10)/2,-(characterHeight/3)/2+5,characterWidth/10,-characterHeight/10);
  
  
  //head
  fill(falseColor);
  pushMatrix();
  translate(0,-characterHeight/2.7);
  ellipse(0,0,characterWidth,characterHeight/3);
  ellipse(-characterWidth/3,(characterHeight/3)/3,20,20);
  ellipse(characterWidth/3,(characterHeight/3)/3,20,20);
  //stroke(0);
  //line(0,0,0,(characterHeight/3)/2+5);
  //line((-characterWidth/3),(characterHeight/3)/3+10,0,(characterHeight/3)/2+5);
  triangle(0,0,0,(characterHeight/3)/2+5,(-characterWidth/3),(characterHeight/3)/3+10);
  triangle(0,0,0,(characterHeight/3)/2+5,-(-characterWidth/3),(characterHeight/3)/3+10);
  arc(0,0,characterWidth/1,characterHeight/2.5,-PI,0);
  
  
  
  popMatrix();
  
  
  popMatrix();
}
