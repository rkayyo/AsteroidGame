class AsteroidSpawner extends GameObject{
  int timer;
  
  public AsteroidSpawner(float x, float y){
    timer = 90;
    location = new PVector(x,y);
  }
  
  void act(){
    int i = 0;
    if(i < timer) i++;
    if(i >= timer){
     myGameObjects.add(new Asteroid());
     i = 0;
    }
    
  }
  
  void show(){
    
  }
  
  
  
  
}
