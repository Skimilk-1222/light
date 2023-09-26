class ball {
  float X;
  float Y;
  float Xv;
  float Yv;
  float pX;
  float pY;
  float w;
  float a = 5;
  float b = 1.05;
  ball() {
    X = random(width);
    Y = random(height);
    w = random(1 /a, a);
  }
void render() {
    if(!mousePressed) {
      Xv /= b;
      Yv /= b;
    }
    Xv += d * (mX - X) * w;
    Yv += d * (mY - Y) * w;
    X += Xv;
    Y += Yv;
    line(X, Y, pX, pY);
    pX = X;
    pY = Y;
  }
}
