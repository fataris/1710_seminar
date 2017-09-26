float x, y;  //x, yと名付けられた、数値を入れる箱を用意

void setup() {
 size(400, 400); 
 
 x = width / 2;  //width = 画面の幅 = 400なので、width/2は200
 y = height / 2;  //height = 画面の高さ = 400なので、height/2は200。 
 
 //色の設定
 fill(255, 255, 255);
 noStroke();  //縁に線を描かないようにする
}

void draw() {
  background(0, 0, 0);  //背景を描画
  
  ellipse(x, y, 100, 100);  //円を描画
  x = x + 1;  // xをxに1足したもので上書き
}