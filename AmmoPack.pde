class AmmoPack extends GameObject{
  
  public AmmoPack(){
    
  }
  
  void act(){
   location.add(velocity);
   if(dist(location.x,location.y,myShip.location.x,myShip.location.y) < size/2 + myShip.size/2){
     lives = 0;
     myShip.ammo += 5;
   }
  }
  
  void show(){
    fill(0,255,0);
    ellipse(location.x,location.y,size,size);
  }
  
  
}
