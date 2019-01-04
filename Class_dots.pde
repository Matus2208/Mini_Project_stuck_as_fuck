
class Dot {

  float x = random(width);
  float y = random(height);
  float pulse = 0.5;
  float pulsem = -0.5;
  float xs = 20;
  float ys = 20;


  void pulse() {
    xs = xs+pulse;
    ys = ys+pulse;

    if (xs > 25 & ys > 25) {
      xs = xs+pulsem;
      ys = ys+pulsem;
    }
  }

  void spawn() {
    stroke(0);
    fill(255);
    ellipse(x, y, xs, ys);
  }
}
