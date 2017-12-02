public class Player{
  int[][] moves = {{-1, 0}, {1, 0}, {0, 1}, {0, -1}};
  
  int x;
  int y;
  
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
      y += moves[move][0]*10;
      x += moves[move][1]*10;
    }
  }
  
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