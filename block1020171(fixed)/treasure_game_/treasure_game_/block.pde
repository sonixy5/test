void block(){ //配列によって決められたブロックに宝箱の画像を重ねる関数

  for(int i=0;i<blockx.length;i++){
  for(int t=0; t<blocky.length;t++){
    rect(blockx[i],blocky[t],45,50);
  //PImage box = loadImage("treasurebox.jpg");
    image(box,blockx[i],blocky[t]);
  }
 }
}
