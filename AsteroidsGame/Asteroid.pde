class Asteroid extends GameObject{
  int lives;
 public Asteroid(){
   
   location = new PVector(random(0,width), random(0,height));
   velocity = new PVector(random(-1,1),random(-3,3));
   lives = 3;
 }
 
 void act(){
  for(int i = 0; i < myGameObjects.size(); i++){
   GameObject bullet = myGameObjects.get(i);
   if (bullet instanceof Bullet){
     float x = location.x;
     float y = location.y;
     float bx = bullet.location.x;
     float by = bullet.location.y;
     if(dist(x,y,bx,by) < 40{
       bullet.alive = false;
       lives -= 1;
     }
       
     }
     
   }
   
    
    
  }
  location.add(velocity); 
  if(location.x > width || location.x < 0 || location.y > height || location.y < 0){
    alive = false;  
  }
 }
 
 void show(){
  ellipse(location.x,location.y,80,80); 
 }
  
  
}
