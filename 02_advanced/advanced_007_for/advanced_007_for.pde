size(400, 400);  //画面の縦横のサイズを決定

float x, y;  //x, yと名付けられた数値を格納する箱を用意
noStroke();

for(int i = 0; i < 10; i++) {  //iという初期値0の数値を、iが10未満の間、1ずつ足していく。
  //その都度、以下の内容が実行される。
  fill(random(255), random(255), random(255));
  x = random(0, width);   //xは0~width(400)の間のランダムな値
  y = random(0, height);  //yは0~height(400)の間のランダムな値
  ellipse(x, y, 50, 50);  //x, yの座標に半径縦横50の円を絵描く。
}