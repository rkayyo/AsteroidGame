class Bullet extends GameObject{
  
  
  public Bullet(){
    alive = true;
    location = new PVector(myShip.location.x,myShip.location.y);
    velocity = new PVector(myShip.direction.x,myShip.direction.y);
    velocity.setMag(5);
    lives = 1;
    size = 20;
  }
  
  void show(){
    fill(255,0,0);
    ellipse(location.x,location.y,size,size);
  }
  
  void act(){
    location.add(velocity);
    if(location.x > width || location.x < 0 || location.y > height || location.y < 0){
    lives = 0;  
  }
    
  }
  

  
}
