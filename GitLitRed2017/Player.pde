public class Player{
  int[][] moves = {{-1, 0}, {1, 0}, {0, 1}, {0, -1}};
  
  int x;
  int y;
  int speed = 1;
  
  int bad;
  int good;
  
  boolean isDialogue;
  
  public Player(){
  }
  void setDialogue(boolean newDialogue){
    isDialogue = newDialogue;
  }
  
  void walk(int move){
    if(!isDialogue){
      int newY = y + moves[move][0]*10;
      int newX = x + moves[move][1]*10;
      if(newX >= 0 && newX <= width - 50 && newY >= 0 && newY <= height - 50){
        x = newX;
        y = newY;
      }
    }
  }
  
  void move () {
    /*
    if (keyPressed) {

      // "A" key, left
      if (key == 'a' || keyCode == 37) {  
        if (! grid.getVal((int)position.x - speed,(int)position.y) &&
          ((int)position.x-speed) > 0) {
          position.x -= speed;
        }
      }

      // "S" key, down
      if (key == 's' || keyCode == 40) { 
        int chkCoord = (int)position.y + speed;
        if (chkCoord < height) {
          if (! grid.getVal((int)position.x,(int)position.y + speed) &&
            ((int)position.y+speed < height)) { 
            position.y += speed; 
          }
        }
      }

      // "D" key, right
      if (key == 'd' || keyCode == 39) { 
        int chkCoord = (int)position.x + speed;
        //println(chkCoord);
        if (chkCoord < width) {
          if (! grid.getVal((int)position.x + speed,(int)position.y) &&
            ((int)position.x+speed < width)) {
            position.x += speed;
          }
        } //if chkCoord
      }

      // "W" key, up
      if (key == 'w' || keyCode == 38) {  
        if (! grid.getVal((int)position.x,(int)position.y - speed) &&
          ((int)position.y-speed > 0)) { 
          position.y -= speed;
        }
      }
    }*/
  } // move
  
  
  void interact(){
    //???
  }
  
  void kill() {
    //detects the npc that player is targeting and set the npc's isAlive field to false
  }
  
  void display(){
     fill(0);
     rect(x, y, 50, 50); 
  }
}