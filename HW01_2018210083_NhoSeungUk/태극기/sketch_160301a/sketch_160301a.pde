size(300, 200, P3D);  //3:2
background(255);
float d = dist(0, 0, width, height);
float a = asin(height/d)*180/PI;
int R = height/2;

pushMatrix();
translate(width/2, height/2);
rotateZ(radians(a));
translate(-width/2, -height/2);
noStroke();
fill(0, 0, 255);
arc(width/2, height/2, height/2, height/2, 0, PI);
fill(255, 0, 0);
arc(width/2, height/2, height/2, height/2, PI, TWO_PI);
fill(0, 0, 255);
arc(width/12*7, height/2, height/4, height/4, PI, TWO_PI);
fill(255, 0, 0);
arc(width/12*5, height/2, height/4, height/4, radians(atan(2/3)*PI/180), PI+radians(atan(2/3)*PI/180));


popMatrix();
pushMatrix();
translate(width/2, height/2);
rotateZ(radians(a));
translate(-width/2, -height/2);
fill(0);
for (int i = 0; i<3; i++)
  rect((0.416+(0.1246)*i)*R, 0.75*R, 0.083*R, 0.5*R);

for (int i = 0; i<3; i++)
  rect(2.25*R+(0.1246)*i*R, 0.75*R, 0.083*R, 0.5*R);

fill(255);
rect(2.25*R, height/2-0.02083*R, 2.59*R, 0.0416*R);

popMatrix();
translate(width/2, height/2);
rotateZ(radians(180-a));
translate(-width/2, -height/2);

fill(0);
for (int i = 0; i<3; i++)
  rect((0.416+(0.1246)*i)*R, 0.75*R, 0.083*R, 0.5*R);

for (int i = 0; i<3; i++)
  rect(2.25*R+(0.1246)*i*R, 0.75*R, 0.083*R, 0.5*R);

fill(255);
rect(0.5*R, height/2-0.02083*R, 0.13*R, 0.0416*R);

rect(2.25*R, height/2-0.02083*R, 0.09*R, 0.0416*R);
rect(2.4892*R, height/2-0.02083*R, 0.1*R, 0.0416*R);
