public class Main{
  Map map;
  Player player;
  NPC npc;
  NPC pink;
  NPC blue;
  NPC brown;
  NPC green;
  NPC purple;
  Scarlett scarlett;
  
  
  final int tutorialLevel = 1;
  final int honestRiddleLevel = 2;
  
  public Main(){
    player = new Player();
    npc = new NPC();
    String[] d= {"Oh hey are you lost??", "I'll help you!", "DIEE!"};
    scarlett = new Scarlett(d);
    
    //below are npcs relating to the riddle
    String[] pinkDialogue = {"The blue patch never says the truth"};
    String[] blueDialogue = {"The brown patch is a liar"};
    String[] brownDialogue = {"Both the pink patch and the green patch are lying to you. Watch out."};
    String[] greenDialogue = {"The pink patch is lying"};
    String[] purpleDialogue = {"The pink patch and the blue patch won't lie to you."};
    blue = new NPC(2, blueDialogue);
    brown = new NPC(3, brownDialogue);
    green = new NPC(4, greenDialogue);
    purple = new NPC(5, purpleDialogue);
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