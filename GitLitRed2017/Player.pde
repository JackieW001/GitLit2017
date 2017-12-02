public class Player{
  int[][] moves = {{-1, 0}, {1, 0}, {0, 1}, {0, -1}};
  
  int x;
  int y;
  
  int bad;
  int good;
  
  public Player(){
    
  }
  
  void walk(int move){
    y += moves[move][0]*10;
    x += moves[move][1]*10;
  }
  void interact(){
    
  }
  
  void display(){
     rect(x, y, 50, 50); 
     fill(0);
  }
}