class Dialogue {
  
  ArrayList<String> lines = new ArrayList<String>();
  int dctr;
  
  public Dialogue(ArrayList<String> l){
    lines = l;
    dctr = 0;
  }
  
  void updateCtr(){
      dctr += 1;
  }
  
  //void display(Player p, NPC npc, ArrayList<String> lines){ --- for when we have sprites
  void display(){
    // display player -- ellipse(106, 256, 100, 100);
    fill(255, 0, 0);
    ellipse(106, 256, 100, 100);
    // display npc -- ellipse(456, 256, 100, 100);
    fill(0, 0, 255);
    ellipse(456, 256, 100, 100);
    // text
    textSize(25);
    fill(0);
    if (dctr < lines.size()){
      text(lines.get(dctr), 40, 450, width-70, height-400-40);  // Text wraps within text box
    }
    // else exit dialogue
  }
}