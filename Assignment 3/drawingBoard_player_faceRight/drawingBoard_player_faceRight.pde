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
  translate(0,(characterHeight/3)/2+((characterHeight/3)/2)/2);
  ellipse(0,0,characterWidth/3.5,characterWidth/3.5);
  fill(shoe);
  ellipse(0,characterHeight/3.5,characterWidth/3.5,characterWidth/4);
  fill(uniform);
  rect(-(characterWidth/3.5)/2,0,characterWidth/3.5,characterHeight/3.5);
  triangle(-(characterWidth/3.5)/2,-characterWidth/3.5/1.5,-20,characterHeight/3.5/4,0,characterHeight/3.5/4*3.5);
  triangle((characterWidth/3.5)/2,-characterWidth/3.5/1.5,-20,characterHeight/3.5/4,0,characterHeight/3.5/4*3.5);
  fill(shoe);
  rect(-(characterWidth/3.5)/2,characterHeight/3.5/2,characterWidth/3.5,characterHeight/3.5/2);
  
  popMatrix();
  
  
  //leg, right
  pushMatrix();
  fill(uniform);
  translate(0,(characterHeight/3)/2+((characterHeight/3)/2)/2);
  ellipse(0,0,characterWidth/3.5,characterWidth/3.5);
  fill(shoe);
  ellipse(0,characterHeight/3.5,characterWidth/3.5,characterWidth/4);
  fill(uniform);
  rect(-(characterWidth/3.5)/2,0,characterWidth/3.5,characterHeight/3.5);
  triangle((characterWidth/3.5)/2,-characterWidth/3.5/1.5,20,characterHeight/3.5/4,0,characterHeight/3.5/4*3.5);
  triangle(-(characterWidth/3.5)/2,-characterWidth/3.5/1.5,-20,characterHeight/3.5/4,0,characterHeight/3.5/4*3.5);
  fill(shoe);
  rect(-(characterWidth/3.5)/2,characterHeight/3.5/2,characterWidth/3.5,characterHeight/3.5/2);
   
  popMatrix();
  
  //arm, back
  pushMatrix();
  fill(uniform);
  translate(0,-(characterHeight/3)/3);
  rect(-characterWidth/8,0,characterWidth/4,characterWidth/1.5);
  rect(-10,10,-characterHeight/5,characterWidth/1.5-10);
  fill(skin);
  ellipse(0,characterWidth/1.5,characterWidth/3,characterWidth/4);
  
  popMatrix();
  
  
 
  
  
  fill(uniform);
    //body
  ellipse(0,0,characterWidth/3*2,characterHeight/3);
  ellipse(0,(characterHeight/3)/2,characterWidth/4*3,(characterHeight/3)/2);
  triangle(characterWidth/3,0,(characterWidth/4*3)/2,(characterHeight/3)/2,0,(characterHeight/3)/2);
  triangle(-characterWidth/3,0,-(characterWidth/4*3)/2,(characterHeight/3)/2,0,(characterHeight/3)/2);
  
  fill(uniform);
  quad(0,(characterHeight/3/2)/3+10,-(characterWidth/3*2)/2,(characterHeight/3/2)/3+10,-(characterWidth/3*2)+10,(characterHeight/3)-15,-5,(characterHeight/3)-10);
  quad(0,(characterHeight/3/2)/3+10,(characterWidth/3*2)/2,(characterHeight/3/2)/3+10,(characterWidth/3*2)-10,(characterHeight/3)-15,5,(characterHeight/3)-10);
  

  
 

  noStroke();
  
  //neck
  rect(-(characterWidth/10)/2,-(characterHeight/3)/2+5,characterWidth/10,-characterHeight/10);

   stroke(yellowLine);
   strokeWeight(2);
  line(-(characterWidth/3*2)+10,(characterHeight/3)-15,-5,(characterHeight/3)-10);
  line((characterWidth/3*2)-10,(characterHeight/3)-15,5,(characterHeight/3)-10);
  line(-5,(characterHeight/3)-10,5,(characterHeight/3)-10);
  
  noFill();
  curve(-100,-100,0,-30,10,-30,-90,-100);
  curve(-100,-200,0,-30,10,-30,-100,-200);


 
  
  //arm,front
  fill(30);
  ellipse(0,-(characterHeight/3)/3,characterWidth/4,characterWidth/4);
  
  noStroke();
  pushMatrix();
  fill(uniform);
  translate(0,-(characterHeight/3)/3);
   
  rect(-characterWidth/8,0,characterWidth/4,characterWidth/1.5);
  rect(-10,10,-characterHeight/5,characterWidth/1.5-10);

  fill(skin);
  ellipse(0,characterWidth/1.5,characterWidth/3,characterWidth/4);
  
  popMatrix();

  noFill();
  
  
  noStroke();
  
  //head
  fill(skin);
  pushMatrix();
  translate(0,-characterHeight/2.7);
  ellipse(0,0,characterWidth,characterHeight/3);
  ellipse(-characterWidth/3,(characterHeight/3)/3,20,20);
  ellipse(characterWidth/3,(characterHeight/3)/3,25,25);

  triangle(0,0,0,(characterHeight/3)/2+5,(-characterWidth/3),(characterHeight/3)/3+10);
  triangle(0,0,0,(characterHeight/3)/2+5,-(-characterWidth/3),(characterHeight/3)/3+13);
  
  
  arc(0,0,characterWidth/1,characterHeight/2.5,-PI,0);
  //hair
  fill(hair);
  arc(0,0,characterWidth/1+10,characterHeight/2.5+10,radians(-255),radians(-45));

    

  curve(-30,10,5,5,0,-30,-150,-100);
  


  arc(-33,-25,20,20,radians(-180),radians(-45),OPEN);
  curve(-20,0,-10,-40,20,-45,40,0);
  curve(-20,0,-30,-30,-20,-45,10,-10);
  fill(skin);
  ellipse(-5,20,20,20);
  fill(hair);
  arc(-5,10,15,40,radians(-90),radians(90));
  
  arc(25,-12,40,40,radians(-200),radians(45));



  
  //eye,right
  stroke(eyeDark);
  strokeWeight(2);
  fill(eye);
  ellipse(characterWidth/3.5,(characterHeight/3)/6,10,20);
  
  

  
  noStroke();

//brows
stroke(0);
//left
//line(-characterWidth/4+10,(characterHeight/3)/6-17,-characterWidth/4-10,(characterHeight/3)/6-20);
line(characterWidth/4-10,(characterHeight/3)/6-20,characterWidth/4+10,(characterHeight/3)/6-17);

//mouth
line(20,characterHeight/3/2.3,25,characterHeight/3/2.3);

noStroke();

  
  
  popMatrix();
  
  
  popMatrix();
}
