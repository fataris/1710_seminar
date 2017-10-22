// 僕が着ているTシャツのキャラクター、
// コントロールベアがマウスに合わせて移動します。
// マウスをクリックしている間、色が変化して、
// マウスに合わせてクマの頭が上下に動きます。

//以下に書いてある内容は少し複雑なので、
//内容の説明はあまりコメントできていません。
//もし詳しく知りたいという方がいらっしゃいましたら、
//安藤に連絡をくだされば、できるだけ説明します。

int j=-1;
int x,y,x0,y0;

void setup()
{
  size(545,705);
  smooth();
  stroke(0);
}

void draw()
{
  //background
  if(mousePressed){
    background(#8B91FA);//blue
  }else{
    background(#FFD743);
  }
  //parallel transition  
  x=mouseX-width/2;
  y=mouseY-height/2;
  pushMatrix();
  if(mousePressed){
    translate(x0,y0);
  }else{
    translate(x,y);
  }
  bear(); //draw a bear
  popMatrix(); //end of parallel transition
  
  stroke(0);
}


void bear(){
  stroke(0);
  if(mousePressed)stroke(255);
  white();//white
  
  /*begin right arm*/
  beginShape();
  vertex(224,221);
  vertex(263,247);
  vertex(264,302);
  vertex(222,339);
  bezierVertex(230,292,217,260,224,221);
  endShape();
  /*end right arm*/
    
  /*begin right leg*/
  beginShape();
  vertex(225,520);
  vertex(190,479);
  vertex(175,480);
  bezierVertex(175,430,140,410,119,410);
  vertex(145,546);
  bezierVertex(160,543,180,538,202,540);
  endShape();
  /*end right leg*/
  
  /*begin body*/
  beginShape();
  vertex(351,519);
  bezierVertex(320,535,300,535,280,537);
  vertex(219,520);
  bezierVertex(160,485,197,365,234,324);//right body
  vertex(262,302);
  bezierVertex(290,295,320,290,357,314);
  vertex(403,360);
  bezierVertex(399,385,421,437,421,479);
  endShape(OPEN);
  
  stroke(255);
  if(mousePressed)stroke(0);
  rect(234,302,26,22);//erase a stroke
  stroke(0);
  if(mousePressed)stroke(255);
  /*end body*/

  curve(220,330,260,321,330,338,410,320);//neck
  
  /*begin parts of head*/
  if(mousePressed){
    int y1;
    if(y-y0<=0){
      y1=0;
    }else if(y-y0>=88){
      y1=88;
    }else{
      y1=y-y0;
    }
    pushMatrix();
    translate(-y1/10,y1);
  }
  /*begin right ear*/
  beginShape();
  vertex(258,79);
  bezierVertex(242,37,192,63,193,100);
  bezierVertex(193,120,210,133,220,140);
  vertex(240,120);
  endShape();
  /*end right ear*/
  
  /*begin pink one in the right ear*/
  pink();
  beginShape();
  vertex(239,101);
  bezierVertex(231,89,232,90,220,82);
  bezierVertex(205,100,208,110,225,125);
  vertex(238,110);
  endShape();
  white();
  /*end pink one in the right ear*/

  /*begin head*/
  beginShape();
  vertex(419,161);
  bezierVertex(407,290,211,275,211,182);
  bezierVertex(211,160,220,120,258,79);
  bezierVertex(290,39,348,47,387,82);
  endShape();
  /*end head*/
  
  /*begin around mouth*/
  beginShape();
  vertex(218,204);
  bezierVertex(222,170,322,173,322,219);
  bezierVertex(320,260,220,251,218,204);
  endShape();
  /*end around mouth*/
  
  /*begin nose*/
  beginShape();
  black();
  vertex(269,182);
  bezierVertex(273,185,270,187,264,195);
  bezierVertex(253,202,252,202,244,194);
  bezierVertex(238,184,242,184,245,180);
  bezierVertex(257,173,257,175,269,182);
  endShape();
  noFill();
  strokeWeight(1);
  /*end nose*/
 
  curve(257,166,252,201,239,209,233,216);//right mouth
  
  curve(252,166,253,201,273,214,330,214);//left mouth
  
  /*begin right eye*/
  black();
  beginShape();
  vertex(244,146);
  bezierVertex(239,142,230,145,230,155);
  bezierVertex(235,160,248,155,244,146);
  endShape();
  /*end right eye*/
  
  /*begin left eye*/
  beginShape();
  vertex(297,143);
  bezierVertex(310,140,320,137,320,160);
  bezierVertex(318,164,312,165,309,164);
  vertex(309,163);
  bezierVertex(294,161,295,155,297,143);
  endShape();
  white();
  /*end left eye*/
  
  /*begin left ear*/
  beginShape();
  vertex(384,90);
  bezierVertex(388,75,400,63,433,61);
  bezierVertex(443,60,460,80,460,92);
  bezierVertex(459,133,440,162,422,162);
  bezierVertex(417,162,417,162,412,160);
  endShape();
  /*end left ear*/
  
  /*begin pink one in left ear*/
  pink();
  beginShape();
  vertex(394,105);
  bezierVertex(397,90,410,85,418,85);
  bezierVertex(425,85,433,90,436,101);
  bezierVertex(436,117,430,126,414,136);
  endShape(CLOSE);
  white();
  /*end pink one in left ear*/
  if(mousePressed) popMatrix();
  /*end parts of head*/
  
  /*begin left leg*/
  beginShape();
  vertex(351,519);
  bezierVertex(320,535,300,535,280,537);
  vertex(250,658);
  bezierVertex(285,665,322,622,350,592);
  bezierVertex(378,562,421,507,421,479);
  endShape();
  
  //erase a line
  stroke(255);
  if(mousePressed)stroke(0);
  strokeWeight(3);
  line(419,480,351,519);
  strokeWeight(1);
  stroke(0);
  if(mousePressed)stroke(255);
  
  bezier(290,632,317,540,265,525,243,520);//foot?
  /*end left leg*/
  
  /*begin left arm*/
  beginShape();
  vertex(403,360);
  bezierVertex(402,350,429,260,428,224);
  bezierVertex(425,210,415,175,392,177);
  bezierVertex(372,177,359,190,358,200);
  bezierVertex(356,233,366,245,363,275);
  bezierVertex(363,285,358,310,357,314);
  vertex(352,361);
  endShape();
  /*end left arm*/
  
  pink();//pink    
  
  beginShape();//begin right foot
  vertex(119,410);
  bezierVertex(65,410,80,559,122,559);
  bezierVertex(178,559,160,415,119,410);
  endShape();//end right foot
  
  beginShape();//begin left foot
  vertex(232,518);
  bezierVertex(177,518,195,658,250,658);
  bezierVertex(295,658,280,518,232,518);
  endShape();//end left foot
  
}

void white(){
  if(mousePressed){
    fill(0);
  }else{fill(255);}
}

void black(){
  if(mousePressed){
    fill(255);
  }else{fill(0);}
}

void pink(){
  if(mousePressed){
    fill(#0000ff);
  }else{fill(#F02494);}
}

void mousePressed(){
  x0=mouseX-width/2;
  y0=mouseY-height/2;
}