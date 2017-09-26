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
  
  if( mousePressed ) {  //もしマウスが押されていたら
    ellipse(x, y, 200, 200);    //x, yに縦横200の円を絵描く
  } else {  //そうでないなら（もしマウスがおされていないなら）
    ellipse(x, y, 50, 50);    //x,yに縦横50の円を絵描く
  }
  
  //大きくなるときだけ、違う色になるようにしてみましょう！
}