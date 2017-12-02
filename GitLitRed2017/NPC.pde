public class NPC{
  int npcID;
  String[] dialogue; //stores all dialogue, each element is a line of dialogue
  int x = 100;
  int y = 100;
  
  public NPC() {
    
  }
  
  public NPC(int paramNpcID) {
    npcID = paramNpcID;
  }
  
  public NPC(int paramNpcID, String[] dialogueSet) {
    this(paramNpcID);
    dialogue = allLines;
  }
  
  public String[] interact(){
    return dialogue;
  }
  
  void display() {
    fill(255);
    rect(x, y, 50, 50);
    
  }  
    
  void go(){
    
  }
}