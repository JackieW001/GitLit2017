public class Player{
  int[][] moves = {{-1, 0}, {1, 0}, {0, 1}, {0, -1}};
  
  int x = 10;
  int y = 400;
  
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
      if(newX >= 0 && newX <= width - 50 && newY >= 0 && newY >= 250 && !(dist(newX, newY, main.scarlett.x, main.scarlett.y)<50)){
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
    int resize = 100;
    if (animateType == 0) {
      PImage mc = new PImage();
      mc = loadImage("./images/MC/Up" + animateNum + ".png");
      mc.resize(0,resize);
      image(mc, x, y);
    }
    if (animateType == 1) {
      PImage mc = new PImage();
      mc = loadImage("./images/MC/Down" + animateNum + ".png");
      mc.resize(0,resize);
      image(mc, x, y);
    }
    if (animateType == 2) {
      PImage mc = new PImage();
      mc = loadImage("./images/MC/Right" + animateNum + ".png");
      mc.resize(0,resize);
      image(mc, x, y);
    }
    if (animateType == 3) {
      PImage mc = new PImage();
      mc = loadImage("./images/MC/Left" + animateNum + ".png");
      mc.resize(0,resize);
      image(mc, x, y);
    }
    if (animateType == 4) {  
      PImage mc = new PImage();
      mc = loadImage("./images/MC/Still" + animateNum + ".png");
      mc.resize(0,resize);
      image(mc, x, y);
    }
  }
}