public class Main{
  Map map;
  Player player;
  NPC npc;
  Scarlett scarlett;
  
  public Main(){
    player = new Player();
    npc = new NPC();
    String[] d= {"Oh hey are you lost??", "I'll help you!", "DIEE!"};
    scarlett = new Scarlett(d);
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