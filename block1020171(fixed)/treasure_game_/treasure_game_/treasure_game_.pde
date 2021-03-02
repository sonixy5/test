float x, y, b_w = 20, b_h = 20, dx=5, dy=5;
int blockx[] ={80, 80, 80, 80, 270, 270, 270, 270, 470, 470, 470, 470, 670, 670, 670, 670, 870, 870, 870, 870};  //
int blocky[] ={100, 200, 300, 400, 100, 200, 300, 400, 100, 200, 300, 400, 100, 200, 300, 400, 100, 200, 300, 400}; //
int treasure[] = new int[20];
PImage photo, bphoto, box, cphoto;
void setup() { //画面サイズの入力、写真の読み込みなど
  size(990, 550);
  photo = loadImage("opentreasure.jpg");
  bphoto = loadImage("treasure.jpg");
  box = loadImage("treasurebox.jpg");
  cphoto = loadImage("clear.jpg");
  image(photo, 0, 0);
  x = 80; 
  y = 0;
  frameRate(60);
  //treasure[(int)random(0, 20)] = 1; //本当はこっちでランダムに配置できる
  treasure[8] = 1; //プレゼン用
}


int gamemode = 0;

void draw() {
  switch(gamemode) {
  case 0:
    display();      //スタート画面の文字と背景を表示
    keyPressed();   //PLAYが表示されゲーム画面へ
    break;
  case 1:
    keyReleased() ; //ゲーム画面の背景表示
    break;
  case 2:

    refle();      //壁に当たると球が反射する

    x += dx;
    y += dy;
    background(255);
    image(bphoto, 0, 0);
    rect(x, y, b_w, b_h);
    block();  //宝箱と背景が表示される
    checkblocks();//宝の入った宝箱に衝突すると加速
    checkclick();//カーソル判定
    break;
    case 3:
    gameclear();//クリア画面表示
    break;
  }
}
