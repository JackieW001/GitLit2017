public class NPC{
  int npcID;
  String[] dialogue; //stores all dialogue, each element is a line of dialogue
  int x = 100; 
  int y = 100; 
  boolean isAlive = false;
  
  public NPC() {
    isAlive = true;
  }
  
  public NPC(int paramNpcID) {
    this();
    npcID = paramNpcID;
  }
  
  public NPC(int paramNpcID, String[] dialogueSet) {
    this(paramNpcID);
    dialogue = dialogueSet;
  }
  
  public String[] interact(){
    return dialogue;
  }
  
  void display() {
    if(isAlive) {
    fill(255);
    rect(x, y, 50, 50);
    }
    
  }  
    
  void go(){
    
  }
}