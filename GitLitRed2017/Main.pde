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
  }
  
  void go(int storyStage){
    //tutorial
    if(stage == tutorialLevel){
       //where am i??
       //oh hey are u lost woah ill help u --> tutorial starts
    }
    else if(stage == honestRiddleLevel) {
    }
  }
  void display(){
    player.display();
    npc.display();
  }
  
}