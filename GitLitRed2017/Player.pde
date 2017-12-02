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
    
  }
  
  void display(){
     rect(x, y, 50, 50); 
     fill(0);
  }
}