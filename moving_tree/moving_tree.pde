int x;
int y;
int len;
int depth;

void setup(){
  size(720, 720);
  x = 360;
  y = 720;
  len = 100;
  depth = 10;
  stroke(255);
}

void draw(){
  delay(1000);
  background(51);
  //line(x, y, x + len, y - len);
  //line(x, y, x - len, y - len);
  //x -= len;
  //y -= len;
  y -= 10;
  trees(len, depth, x, y);
}

void trees(int len, int depth, int x, int y){
  if (depth == 0){
    return;
  }
  line(x, y, x + len, y - len);
  line(x, y, x - len, y - len);
  trees(len/2, depth - 1, x + len, y - len);
  trees(len/2, depth - 1, x - len, y - len);
}
