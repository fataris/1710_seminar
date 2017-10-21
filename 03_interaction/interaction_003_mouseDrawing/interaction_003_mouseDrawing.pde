void setup() {
  size(400,400);  //画面サイズを決める
 
  fill(255, 255, 255);  //図形の塗りを決める
  noStroke();  //図形の外周線を描かない
  background(0);
}

void draw() {
  //マウスが押されたら、そこで円が描かれるようにするなら
  if(mousePressed) {
     ellipse(mouseX, mouseY, 10, 10);  //マウスのx, y座標に縦横50の円を絵描く
  }
   
}