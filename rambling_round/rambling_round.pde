float x,y;

void setup(){
  size(400,400);
  background(255);
}

void draw(){
  //まずは前回の背景を半透明の四角で塗りつぶす
  stroke(255);
  fill(255, 255, 255,10);  //Red, Green, Blue, Alpha)
  rect(0,0,width,height);//軌道をだんだん薄くする
  
  x=random(-5,5);
  y=random(-5,5);//この２変数を足すことで円が震える

  stroke(#00ff00);
  noFill();
  ellipse(mouseX+x,mouseY+y,100,100);
}