void setup(){
  size(900,800);
  //fullScreen();
}
float characterHeight=200;
float characterWidth=75;

color skin= color(255,225,199);
color uniform= color(52,63,74);
color shoe=color (45,39,35);
color eye= color(46,113,172);
color eyeDark= color(50,61,102);
color yellowLine= color(109,103,63);
color hair=color(36,38,86);
color shadow= color(50,150);
color falseColor= color(53,51,65);

void draw(){
  background(130);
  //base human
  pushMatrix();
  translate(width/2,height/2);
  noStroke();
  fill(shadow);
  ellipse(0,characterHeight/2+15,characterWidth,30);
  
  pushMatrix();
  fill(uniform);
  //legs, left
  translate(-(characterWidth/4*3)/3.5,(characterHeight/3)/2+((characterHeight/3)/2)/2);
  ellipse(0,0,characterWidth/3.5,characterWidth/3.5);
  fill(shoe);
  ellipse(0,characterHeight/3.5,characterWidth/3.5,characterWidth/4);
  fill(uniform);
  rect(-(characterWidth/3.5)/2,0,characterWidth/3.5,characterHeight/3.5);
  triangle(-(characterWidth/3.5)/2,-characterWidth/3.5/1.5,-20,characterHeight/3.5/4,0,characterHeight/3.5/4*3.5);
  fill(shoe);
  rect(-(characterWidth/3.5)/2,characterHeight/3.5/2,characterWidth/3.5,characterHeight/3.5/2);
  
  popMatrix();
  
  
  //leg, right
  pushMatrix();
  fill(uniform);
  translate((characterWidth/4*3)/3.5,(characterHeight/3)/2+((characterHeight/3)/2)/2);
  ellipse(0,0,characterWidth/3.5,characterWidth/3.5);
  fill(shoe);
  ellipse(0,characterHeight/3.5,characterWidth/3.5,characterWidth/4);
  fill(uniform);
  rect(-(characterWidth/3.5)/2,0,characterWidth/3.5,characterHeight/3.5);
  triangle((characterWidth/3.5)/2,-characterWidth/3.5/1.5,20,characterHeight/3.5/4,0,characterHeight/3.5/4*3.5);
  fill(shoe);
  rect(-(characterWidth/3.5)/2,characterHeight/3.5/2,characterWidth/3.5,characterHeight/3.5/2);
   
  popMatrix();
  
  //arm,left
  pushMatrix();
  fill(uniform);
  translate(-(characterWidth/3*2)/2,-(characterHeight/3)/3);
  rect(0,-characterHeight/20,-characterWidth/1.5,characterWidth/4);
  rect(-10,-characterHeight/20,-characterWidth/1.5+10,characterHeight/3);
  fill(skin);
  ellipse(-characterWidth/1.5,-characterHeight/20+(characterWidth/4)/2,characterWidth/4,characterWidth/3);
  
  popMatrix();
  
  //arm,right
  pushMatrix();
  fill(uniform);
  translate((characterWidth/3*2)/2,-(characterHeight/3)/3);
  rect(0,-characterHeight/20,characterWidth/1.5,characterWidth/4);
  rect(10,-characterHeight/20,characterWidth/1.5-10,characterHeight/3);
  fill(skin);
  ellipse(characterWidth/1.5,-characterHeight/20+(characterWidth/4)/2,characterWidth/4,characterWidth/3);
  
  popMatrix();
 
  
  
  fill(uniform);

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
  
  fill(uniform);
  quad(0,(characterHeight/3/2)/3+10,-(characterWidth/3*2)/2,(characterHeight/3/2)/3+10,-(characterWidth/3*2)+10,(characterHeight/3)-15,-5,(characterHeight/3)-10);
  quad(0,(characterHeight/3/2)/3+10,(characterWidth/3*2)/2,(characterHeight/3/2)/3+10,(characterWidth/3*2)-10,(characterHeight/3)-15,5,(characterHeight/3)-10);
  
  stroke(yellowLine);
  line(-(characterWidth/3*2)+10,(characterHeight/3)-15,-5,(characterHeight/3)-10);
  line((characterWidth/3*2)-10,(characterHeight/3)-15,5,(characterHeight/3)-10);
  line(0,(characterHeight/3/2)/3+10,-5,(characterHeight/3)-10);
  line(0,(characterHeight/3/2)/3+10,5,(characterHeight/3)-10);
  //mid
  
  line(0,(characterHeight/3/2)/3+10,0,-(characterHeight/3)/2);
  
  //shoulder
  line(-(characterWidth/3*2)/2,-(characterHeight/3)/3-((characterWidth/4)/2),0,-characterHeight/3/2);
  line((characterWidth/3*2)/2,-(characterHeight/3)/3-((characterWidth/4)/2),0,-characterHeight/3/2);

  noStroke();
  
  //neck
  rect(-(characterWidth/10)/2,-(characterHeight/3)/2+5,characterWidth/10,-characterHeight/10);
  stroke(yellowLine);
  noFill();
  curve(10,-(characterWidth/3*2),0,-(characterHeight/3)/2,-(characterWidth/3*2)/2,-(characterHeight/3)/3-((characterWidth/4)/2),-(characterWidth/3*2)/2-10,-100);
  curve(10,-300,0,-(characterHeight/3)/2,-(characterWidth/3*2)/2,-(characterHeight/3)/3-((characterWidth/4)/2),-(characterWidth/3*2)/2-10,-300);
  
  
  
  noStroke();
  
  //head
  fill(skin);
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
  //hair
  fill(hair);
  arc(0,0,characterWidth/1+10,characterHeight/2.5+10,radians(-160),radians(-20),OPEN);
    
  curve(40,40,0,0,-10,-25,100,-50);
  curve(-30,10,5,5,0,-30,-150,-100);
  

  triangle(-10,-20,4,-5,4,-30);
  triangle(4,-20,40,10,33,-30);
  triangle(-4,-20,-40,0,-33,-30);
  arc(0,0,characterWidth/1+10,characterHeight/2.5+10,radians(-210),radians(-135),OPEN);
  arc(0,10,characterWidth/1+10,characterHeight/2.5+20,radians(-45),radians(45),OPEN);
  arc(-33,-25,20,20,radians(-180),radians(-45),OPEN);
  curve(-20,0,-10,-40,20,-45,40,0);
  curve(-20,0,-30,-30,-20,-45,10,-10);

  curve(-20,-30,32,-27,47,8,20,10);


  
  //eye,left
  stroke(eyeDark);
  strokeWeight(2);
  fill(eye);
  ellipse(-characterWidth/4,(characterHeight/3)/6,10,20);
  
  
  //eye,right
  fill(eye);
  ellipse(characterWidth/4,(characterHeight/3)/6,10,20);
  
  noStroke();

//brows
stroke(0);
//left
line(-characterWidth/4+10,(characterHeight/3)/6-17,-characterWidth/4-10,(characterHeight/3)/6-20);
line(characterWidth/4-10,(characterHeight/3)/6-17,characterWidth/4+10,(characterHeight/3)/6-20);

//mouth
line(5,characterHeight/3/2.3,-5,characterHeight/3/2.3);

noStroke();

  
  
  popMatrix();
  
  
  popMatrix();
}
