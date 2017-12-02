public class Scarlett extends NPC{
  
  int hp;
  
  
  public Scarlett(int ID, String[] dialogueSet) {
    ID = 0;
    dialogue = dialogueSet;
  }
  
  public String[] interact() {
    return dialogue;
  }
  
}