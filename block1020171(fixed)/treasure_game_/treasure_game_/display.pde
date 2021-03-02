void display(){ //画面ごとの字幕、背景の設定
textSize(65);
fill(255,0,0);
text("Treasure",220,200);
textSize(65);
fill(255,0,0);
text("Game",550,200);
}


void mousePressed(){//マウスをクリックしたときの設定
  if(gamemode == 0){
    gamemode = 1;
  fill(255,255,0);
  textSize(100);
  text("PLAY!",350,300);
 }
}

 void mouseReleased(){//マウスのクリックを離した時の設定
   if(gamemode == 1){
     gamemode = 2;
   
   
 }
}

void checkclick(){ //マウスをカーソルに合わせると次の画面へ
  if(gamemode==2){
    if(mouseX>blockx[8]&&mouseX<blockx[8]+45&&mouseY>blocky[8]&&mouseY<blocky[8]+50){ //これはプレゼン用で特定のブロックにカーソルを合わせた時の処理です今回はblock[8]
   gamemode = 3;
  }
 }
}

void gameclear(){ //適切な宝箱を選んだ時の処理

  image(cphoto,0,0);
  textSize(100);
  text("GAMECLEAR",200,250);
 
 }
   

      
      
     
 
