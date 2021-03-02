boolean isOverlap(float x1, float y1, float w1, float h1, //衝突判定の定義
  float x2, float y2, float w2, float h2) {
  return x1 < x2+w2 && x2 < x1+w1 && y1 < y2+h2 && y2 < y1+h1;
}


int blockHitCheck(float x, float y, float w, float h, 
  float bx, float by, float bw, float bh, float dx, float dy) {
  int xflag = 0, yflag = 0;

  if (!isOverlap(x, y, w, h, bx+dx, by+dy, bw, bh)) {
    return 0;
  }

  if (isOverlap(x, y, w, h, bx+dx, by, bw, bh)) xflag = 1; //ｘ座標の反射
  if (isOverlap(x, y, w, h, bx, by+dy, bw, bh)) yflag = 2; //ｙ座標の反射
  if (xflag + yflag > 0) { 
    return xflag + yflag;
  }
  return 3;
}

void checkblocks() { //宝の入った宝箱に衝突すると加速する
  for (int i = 0; i < 20; i++) {
    int ret = blockHitCheck(blockx[i], blocky[i], 45, 50, x, y, b_w, b_h, dx, dy);
    if (ret == 1) {
      dx = -dx;
      if(treasure[i] == 1){
        dx *= 2; 
        dy *= 2;
      }
    }
    if (ret == 2) {
      dy = -dy;
      if(treasure[i] == 1){
        dx *= 2;
        dy *= 2;
      }
    }
    if (ret == 3) {
      dx = -dx;
      dy = -dy;
      if(treasure[i] == 1){
        dx *= 2;
        dy *= 2;
      }
    }
  }
}
