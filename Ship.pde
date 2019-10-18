class Ship extends GameObject{
  
  int lives;
  int shotTimer;
  int threshold;
  int ammo;
  
  PVector direction;
  
  public Ship(){
    ammo = 5;
    lives = 3;
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    direction = new PVector(0,-0.1);;
    shotTimer = 0;
    threshold = 30;
  }
  
  void show(){
    pushMatrix();
    translate(location.x,location.y);
    rotate(direction.heading());
    shipimg.resize(100,100);
    image(shipimg,0,0);
    popMatrix();
  }
  
  void act(){
    location.add(velocity);
    if(wkey) velocity.add(direction);
    if(skey) velocity.sub(direction);
    if(akey) direction.rotate(-radians(2));
    if(dkey) direction.rotate(radians(2)); 
    if(shotTimer < threshold){
      shotTimer++;
    }
    if(spacekey&& shotTimer >= threshold && ammo > 0){
     myGameObjects.add(new Bullet());
     shotTimer = 0;
     ammo -= 1;
  }
  
    if(ammo >= 5) ammo = 5;
    
    
    if(location.x > width) location.x = 0;
    if(location.x < 0) location.x = 800;
    if(location.y > height) location.y = 0; 
    if(location.y < 0) location.y = 800;
  }
  
  
}
