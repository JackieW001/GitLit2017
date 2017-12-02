public class Main{
  Map map;
  Player player;
  NPC npc;
  Scarlett scarlett;
  
  final int tutorialLevel = 1;
  final int honestRiddleLevel = 2;
  
  public Main(){
    player = new Player();
    npc = new NPC();
    String[] d= {"Oh hey are you lost??", "I'll help you!", "DIEE!"};
    scarlett = new Scarlett(d);
  }
  
  void go(int storyStage){
    //tutorial
    if(storyStage == tutorialLevel){
       //where am i??
       //oh hey are u lost woah ill help u --> tutorial starts
    }
    else if(storyStage == honestRiddleLevel) {
    }
  }
  void display(){
    player.display();
    npc.display();
  }
  
}