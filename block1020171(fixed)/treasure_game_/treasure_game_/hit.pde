void refle(){             //壁に当たると跳ね返る
if (y + b_h >= height){
  dy = -dy;
    
  }
  if (x < 0 || x+b_w >=width) {dx = -dx;}
  if (y < 0) {dy = -dy;}
}
