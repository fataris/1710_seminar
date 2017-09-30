void setup(){
  size(500,500);
  background(255);
}

float x=0,y=0;

void draw(){
  x=random(-5,5);
  y=random(-5,5);//この２変数を足すことで円が震える
  //noStroke();
  stroke(255);
  fill(255,10);
  rect(0,0,600,600);//軌道をだんだん薄くする
  stroke(#00ff00);
  ellipse(mouseX+x,mouseY+y,100,100);
}