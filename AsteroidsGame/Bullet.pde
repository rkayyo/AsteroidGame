class Bullet extends GameObject{
  
  
  public Bullet(){
    location = new PVector(myShip.location.x,myShip.location.y);
    velocity = new PVector(myShip.direction.x,myShip.direction.y);
    velocity.setMag(5);
  }
  
  void show(){
    fill(255,0,0);
    ellipse(location.x,location.y,20,20);
  }
  
  void act(){
    location.add(velocity);
    
  }
  

  
}
