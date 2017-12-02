public class NPC{
  int npcID;
  String[] dialogue;
  int x = 100;
  int y = 100;
  
  public NPC() {
    
  }
  
  public NPC(int paramNpcID) {
    npcID = paramNpcID;
  }
  
  public NPC(int paramNpcID, String[] allLines) {
    this(paramNpcID);
    dialogue = allLines;
  }
  
  public String[] interact(){
    return dialogue;
  }
  
  void display() {
    rect(x, y, 50, 50);
    fill(255);
  }  
    
  void go(){
    
  }
}