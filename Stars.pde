class Stars extends GameObject{
PVector direction;
  
  public Stars(){
    location = new PVector(location.x,location.y);
    direction = new PVector(0,-0.1);
    velocity = new PVector(0,0);
    
  }
  
  void act(){
    location.add(velocity);
    velocity.sub(direction);
    
  }
  
  void show(){
    
  }
  
  
  
}
