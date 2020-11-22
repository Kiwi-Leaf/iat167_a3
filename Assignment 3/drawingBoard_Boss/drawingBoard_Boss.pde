void setup(){
  size(900,800);
  //fullScreen();
}
float characterHeight=200;
float characterWidth=75;

color skin= color(255,238,220);
color uniform= color(139,14,14);
color shoe=color (45,39,35);
color eye= color(200,70,88);
color eyeDark= color(79,31,31);
color yellowLine= color(109,103,63);
color hair=color(67,64,64);
color shadow= color(50,150);
color bottom=color(0);
color teeth= color(242,237,68);
color falseColor= color(53,51,65);

void draw(){
  background(130);
  //base human
  pushMatrix();
  translate(width/2,height/2);
  scale(2);
  noStroke();
  fill(shadow);
  ellipse(0,characterHeight/2+15,characterWidth,30);
  
  
  
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
  

  
  fill(bottom);
  quad(-30,25,30,25,35,50,-35,50);
  
  fill(uniform);
 
  noStroke();
  
  //neck
  fill(skin);
  rect(-(characterWidth/10)/2,-(characterHeight/3)/2+5,characterWidth/10+2,-characterHeight/10);
  triangle(-(characterWidth/10)/2,-(characterHeight/3)/2+5,-(characterWidth/10)/2+characterWidth/10,-(characterHeight/3)/2+5,0,-20);
  
  
  stroke(0);
  strokeWeight(2);
  line(6,-33,-15,39);
  
  line(-6,-33,0,-20);
  strokeWeight(1);
  
  line(6+10,-33,-15+10,39);
  line(-6-10,-33,-3,0);
  noStroke();
  
  
  
  
  pushMatrix();
  fill(bottom);
  //legs, left
  translate(-(characterWidth/4*3)/3.5,(characterHeight/3)/2+((characterHeight/3)/2)/2);
  ellipse(0,0,characterWidth/3.5,characterWidth/3.5);
  fill(shoe);
  ellipse(0,characterHeight/3.5,characterWidth/3.5,characterWidth/4);
  fill(uniform);
  rect(-(characterWidth/3.5)/2,0,characterWidth/3.5,characterHeight/3.5);
  fill(bottom);
  quad(-characterWidth/3.5/2-5,-10,characterWidth/3.5/2,-10,characterWidth/3.5/2,57,-30,57);

  
  popMatrix();
  
  
  //leg, right
  pushMatrix();
  fill(bottom);
  translate((characterWidth/4*3)/3.5,(characterHeight/3)/2+((characterHeight/3)/2)/2);
  ellipse(0,0,characterWidth/3.5,characterWidth/3.5);
  fill(shoe);
  ellipse(0,characterHeight/3.5,characterWidth/3.5,characterWidth/4);
  fill(bottom);
  rect(-(characterWidth/3.5)/2,0,characterWidth/3.5,characterHeight/3.5);
  fill(bottom);
  quad(characterWidth/3.5/2+5,-10,-characterWidth/3.5/2,-10,-characterWidth/3.5/2,57,30,57);


   
  popMatrix();
  
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
  
   fill(uniform);
  arc(0,20,characterWidth,40,radians(10),radians(170),CLOSE);
  
  
  //hair
  fill(hair);
  arc(0,0,characterWidth/1+10,characterHeight/2.5+10,radians(-160),radians(-20),OPEN);
    
  curve(40,40,0,0,-10,-25,100,-50);
  curve(-30,10,5,5,0,-30,-150,-100);
  

  triangle(-10,-20,4,-5,4,-30);
  triangle(4,-20,40,10,33,-30);
  triangle(-4,-20,-40,0,-33,-30);
  arc(0,10,characterWidth/1+10,characterHeight/2.5+40,radians(-220),radians(-120),OPEN);
  arc(0,10,characterWidth/1+10,characterHeight/2.5+20,radians(-45),radians(45),OPEN);
  arc(-33,-25,20,20,radians(-180),radians(-45),OPEN);
  curve(-20,0,-10,-40,20,-45,40,0);
  curve(-20,0,-30,-30,-20,-45,10,-10);

  curve(-20,-30,32,-27,47,8,20,10);

  fill(uniform);
  ellipse(-characterWidth/4,(characterHeight/3)/6-25,10,16);
  ellipse(characterWidth/4,(characterHeight/3)/6-25,10,16);
  
  triangle(-characterWidth/4-5,(characterHeight/3)/6-25,-characterWidth/4+5,(characterHeight/3)/6-25,-characterWidth/4-5,-40);
  triangle(characterWidth/4-5,(characterHeight/3)/6-25,characterWidth/4+5,(characterHeight/3)/6-25,characterWidth/4+5,-40);


  //eye,left
  stroke(eyeDark);
  strokeWeight(2);
  fill(eye);
  arc(-characterWidth/4,(characterHeight/3)/6,10,20,radians(-30),radians(210),CLOSE);
  
  
  //eye,right
  fill(eye);
  arc(characterWidth/4,(characterHeight/3)/6,10,20,radians(-30),radians(210),CLOSE);
  
  noStroke();

//brows
stroke(0);
//left
line(-characterWidth/4+10,(characterHeight/3)/6-15,-characterWidth/4-10,(characterHeight/3)/6-17);
line(characterWidth/4-10,(characterHeight/3)/6-15,characterWidth/4+10,(characterHeight/3)/6-17);

noStroke();
//mouth
//line(5,characterHeight/3/2.3,-5,characterHeight/3/2.3);
fill(0);
rect(-10,27,20,10);
ellipse(-10,32,10,15);
ellipse(10,32,10,15);

fill(teeth);
triangle(-7.5,27,-4.5,27,-5.5,34);
triangle(7.5,27,4.5,27,5.5,34);
triangle(-7.5,37,-4.5,37,-8,30);
triangle(7.5,37,4.5,37,8,30);
//rect(-3,27,6,3);
//rect(-3,37,6,-3);



noStroke();

  
  
  popMatrix();
  
  
  popMatrix();
}
