boolean wkey,akey,skey,dkey,spacekey;
PImage shipimg;
Ship myShip;

ArrayList<GameObject> myGameObjects = new ArrayList<GameObject>();

void setup(){
  size(800,800);
  shipimg = loadImage("spaceship.png");
  imageMode(CENTER);
  myShip = new Ship();
  myGameObjects.add(new Asteroid());
}

void draw(){
  background(0);
  myShip.show();
  myShip.act();
  
  for(int i = 0; i < myGameObjects.size(); i++){
    GameObject object = myGameObjects.get(i);
    object.show();
    object.act();
  }
  
  for(int j = 0; j < myGameObjects.size(); j++){
   GameObject object = myGameObjects.get(j);
   if (object.alive == false){ 
     myGameObjects.remove(j);
   }
  }
}

void keyPressed(){
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 'a' || key == 'A') akey = true;
  if (key == 's' || key == 'S') skey = true;
  if (key == 'd' || key == 'D') dkey = true;
  if (key == ' ') spacekey = true;
}

void keyReleased(){
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 'a' || key == 'A') akey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'd' || key == 'D') dkey = false;
  if (key == ' ') spacekey = false;
}
