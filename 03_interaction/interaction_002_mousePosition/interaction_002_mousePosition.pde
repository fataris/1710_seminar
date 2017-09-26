float x, y;

void setup() {
  size(400,400);  //画面サイズを決める
  x = width / 2;    //Xは画面の幅の半分
  y = height / 2;  //Yは画面の高さの半分
 
  fill(255, 255, 255);  //図形の塗りを決める
  noStroke();  //図形の外周線を描かない
}

void draw() {
  background(0, 0, 0);  //背景を描画
  
  ellipse(mouseX, mouseY, 50, 50);  //マウスのx, y座標に縦横50の円を絵描く
  
  //マウスに追従しつつ、マウスが押されたら円を大きくしてみましょう！
  /*
  if(mousePressed) {
    ellipse(mouseX, mouseY, 200, 200);
  } else {
    ellipse(mouseX, mouseY, 50, 50);  //マウスのx, y座標に縦横50の円を絵描く
  }  
  */
  
}