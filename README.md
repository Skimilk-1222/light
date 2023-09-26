# light
int i;
float d = 0.01;
int m = 500;
ball bodies[] = new ball[m];
float mX;
float mY;

void setup() {
  size(1920, 1080);
  strokeWeight(1);
  fill(255, 255, 255);
  stroke(255, 255, 255, 5);
  background(0, 0, 0);   
  smooth();
  for(int i = 0; i < m; i++) {
    bodies[i] = new ball();
  }
}

void draw() {
  
  if(mousePressed) {
     background(0, 0, 0);
    
    mX += 0.30 * (mouseX - mX);
    mY += 0.3 * (mouseY - mY);
  }
   mX += 0.3 * (mouseX - mX);
    mY += 0.3 * (mouseY - mY);
  for(int i = 0; i < m; i++) {
    bodies[i].render();
  }
}

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
