public class NPC{
  int npcID;
  String[] dialogue;
  
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
  
  void go(){
    
  }
}