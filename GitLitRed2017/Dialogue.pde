class Dialogue {
  
  String[] lines;
  int dctr;
  
  public Dialogue(String[] l){
//    int s = l.length;
    lines = l;
    
    dctr = 0;
  }
  
  void updateCtr(){
      dctr += 1;
  }
  
  //void display(Player p, NPC npc, ArrayList<String> lines){ --- for when we have sprites
  void display(){
    
    if (main.player.isDialogue){
      // display player -- ellipse(106, 256, 100, 100);
      //fill(255, 0, 0);
      //ellipse(106, 256, 100, 100);
      
      image(loadImage("./images/MC/Profile.jpg"), 56, 256, 150, 150);
      
      
      // display npc -- ellipse(456, 256, 100, 100);
      //fill(0, 0, 255);
      //ellipse(456, 256, 100, 100);
      
      image(loadImage("./images/Scarlett/Profile.png"), 394, 256, 150, 150);
      // text
      textSize(25);
      fill(0);
      if (dctr < lines.length){
        text(lines[dctr], 40, 450, width-70, height-400-40);  // Text wraps within text box
      }
      else{
         main.player.setDialogue(false); 
      }
    }
  }
}