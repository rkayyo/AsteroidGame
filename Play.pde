void play(){
    background(0);
  myShip.show();
  myShip.act();
  

  for (int i = 0; i < myGameObjects.size();) {
    GameObject object = myGameObjects.get(i);
    object.show();
    object.act();
    if (object.lives == 0) {
      myGameObjects.remove(i);
      println(object.lives);
    }else{
      i++;
    }

    //for (int j = 0; j < myGameObjects.size(); j++) {
    //  if (object.lives <= 0){
    //  myGameObjects.remove(j);
    //  j--;
    //  }
    //}
  }
}

void playClicks(){
  
}
