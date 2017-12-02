public class Player{
  int[][] moves = {{-1, 0}, {1, 0}, {0, 1}, {0, -1}};
  
  int x;
  int y;
  
  int bad;
  int good;
  
  boolean isDialogue;
  int animateNum;
  int animateType;
  
  
  public Player(){
  }
  void setDialogue(boolean newDialogue){
    isDialogue = newDialogue;
  }
  
  void walk(int move){
    if(!isDialogue){
      int newX = x + moves[move][1]*10;
      int newY = y + moves[move][0]*10;
      animateType = move;
      if(newX >= 0 && newX <= width - 50 && newY >= 0 && newY <= height - 50 && !(dist(newX, newY, main.scarlett.x, main.scarlett.y)<50)){
        x = newX;
        y = newY;
      }
      animateNum++;
      if(animateNum == 4){
         animateNum = 0; 
      }
    }
  }
  
  void interact(){
    //???
  }
  
  void kill() {
    //detects the npc that player is targeting and set the npc's isAlive field to false
  }
  
  void display(){
    if (animateType == 0) {
      image(loadImage("./images/MC/Up" + animateNum + ".png"), x, y);
    }
    if (animateType == 1) {
      image(loadImage("./images/MC/Down" + animateNum + ".png"), x, y);
    }
    if (animateType == 2) {
      image(loadImage("./images/MC/Right" + animateNum  + ".png"), x, y);
    }
    if (animateType == 3) {
      image(loadImage("./images/MC/Left" + animateNum + ".png"), x, y);
    }
    if (animateType == 4) {  
      image(loadImage("./images/MC/Still" + animateNum + ".png"), x, y);
    }
  }
}