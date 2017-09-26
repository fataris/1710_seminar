float x, y;

void setup() {
  size(400,400);  //画面サイズを決める
  x = width / 2;    //Xは画面の幅の半分
  y = height / 2;  //Yは画面の高さの半分
 
  fill(255, 255, 255);  //図形の塗りを決める
  noStroke();  //図形の外周線を描かない
  background(0);
}

void draw() {
  ellipse(mouseX, mouseY, 10, 10);  //マウスのx, y座標に縦横50の円を絵描く
  
  //マウスが押されている間だけ、描かれるようにしましょう
  /*
  if(mousePressed) {
     ellipse(mouseX, mouseY, 10, 10);  //マウスのx, y座標に縦横50の円を絵描く
  }
  */
  
}