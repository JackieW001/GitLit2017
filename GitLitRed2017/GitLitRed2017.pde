//0: menu
//1: tutorial
int storyStage;
PImage bg;
Main main;
Dialogue dialogue;
Grid grid;

void setup(){
  size(600,600);
  main = new Main();
  bg = loadImage("images/grassland.png");
  image(bg,0,0);
  bg.resize(600,600);
   
}

void draw(){
  if(storyStage != 0){
     main.go(storyStage);
     main.display();
  }
  background(bg);
  main.display();
  if(dialogue != null){
    dialogue.display();
  }
}
/*
void mouseReleased(){
  if(dialogue != null){
    dialogue.updateCtr();
  }
}
*/
void keyPressed(){
    if (key == CODED) {
      if (keyCode == UP) {
        main.player.walk(0);
      }
      if (keyCode == DOWN) {
        main.player.walk(1);
      }
      if (keyCode == RIGHT) {
        main.player.walk(2);
      }
      if (keyCode == LEFT) {
        main.player.walk(3);
      }
    
    if(main.scarlett.isInRange(main.player) && (key == 'f' || key == 'F' || key == ' ') ){
      main.player.setDialogue(true);
      String[] d = main.scarlett.interact();
      dialogue = new Dialogue(d);
    }

  }
}