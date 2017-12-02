public class Scarlett extends NPC{
  int hp;
 
  public Scarlett(String[] dialogueSet) {
    super(0,dialogueSet);
    x = 400;
    y = 400;
    size = 50; 
  }
  
  boolean isInRange(Player player){
    int radius = 70;
    if (dist(player.x, player.y, this.x, this.y) < radius){
      return true;
    }
    return false;
  }
   void display(){
     image(loadImage("./images/Scarlett/Profile.png"), x, y, 100, 100);
   }
}