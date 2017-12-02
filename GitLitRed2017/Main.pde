public class Main{
  Map map;
  Player player;
  NPC npc;
  Scarlett scarlett;
  
  public Main(){
    player = new Player();
    npc = new NPC();
  }
  
  void go(int stage, int storyStage){
    //tutorial
    if(stage == 1){
       //where am i??
       //oh hey are u lost woah ill help u --> tutorial starts
       
    }
  }
  void display(){
    player.display();
    npc.display();
  }
  
}