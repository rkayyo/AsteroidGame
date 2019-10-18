boolean wkey, akey, skey, dkey, spacekey;
PImage shipimg;
Ship myShip;
final int intro = 0;
final int play = 1;
final int gameover = 2;
int mode = intro;

ArrayList<GameObject> myGameObjects = new ArrayList<GameObject>();

void setup() {
  size(800, 800);
  shipimg = loadImage("spaceship.png");
  imageMode(CENTER);
  textMode(CENTER);
  rectMode(CENTER);
  myShip = new Ship();
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new AsteroidSpawner(width/2, 0));
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == play) {
    play();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("Mode Error");
  }
}

void keyPressed() {
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 'a' || key == 'A') akey = true;
  if (key == 's' || key == 'S') skey = true;
  if (key == 'd' || key == 'D') dkey = true;
  if (key == ' ') spacekey = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 'a' || key == 'A') akey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'd' || key == 'D') dkey = false;
  if (key == ' ') spacekey = false;
}
