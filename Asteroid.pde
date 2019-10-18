class Asteroid extends GameObject {

  public Asteroid() {

    location = new PVector(random(0, width), random(0, height));
    velocity = new PVector(random(-1, 1), random(-3, 3));
    lives = 1;
    size = 80;
  }

  public Asteroid(int s, float x, float y) {
    location = new PVector(x, y);
    velocity = new PVector(random(-1, 1), random(-3, 3));
    lives = 1;
    size = s;
  }

  void act() {

    if (location.x > width+size) location.x = 0;
    if (location.x < 0-size) location.x = width+size;
    if (location.y > height+size) location.y = 0; 
    if (location.y < 0-size) location.y = height+size;

    location.add(velocity); 
    for (int i = 0; i < myGameObjects.size(); i++) {
      GameObject bullet = myGameObjects.get(i);
      if (bullet instanceof Bullet) {
        float x = location.x;
        float y = location.y;
        float bx = bullet.location.x;
        float by = bullet.location.y;
        if (dist(x, y, bx, by) < size/2 + bullet.size/2) {
          bullet.lives = 0; 
          lives = 0;
          myGameObjects.add(new Asteroid(size/2, location.x, location.y));
          myGameObjects.add(new Asteroid(size/2, location.x, location.y));
        }
      }
    }
  }

  void show() { 
    ellipse(location.x, location.y, size, size);
  }
}
