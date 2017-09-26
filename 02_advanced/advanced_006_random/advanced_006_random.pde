float x, y;  //x, yと名付けられた、数値を格納する箱を用意

void setup() {
 size(400, 400); 
 
 x = random(0, width);  //xは0~width(400)までの間のランダムな値に設定
 y = random(0, height);  //yは0~height(400)までの間のランダムな値に設定
 
 //色の設定
 fill(255, 255, 255);
 noStroke();  //縁に線を描かないようにする
}

void draw() {
  background(0, 0, 0);  //背景を描画
  
  ellipse(x, y, 100, 100);  //円を描画
}