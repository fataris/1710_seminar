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
  
  //マウスが押されている間だけ、描かれる
  if(mousePressed) {  //マウスが押されている間だけ
     ellipse(mouseX, mouseY, 10, 10);  //マウスのx, y座標に縦横50の円を絵描く
  }
  
  //キーボードに反応する
  if(keyPressed) {  //もしキーボードが押されたら  
    background(0, 0, 0);  //全面を黒塗りする
  }
  
  
}