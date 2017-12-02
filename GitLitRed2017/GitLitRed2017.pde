int stage;
//0: menu
//1: tutorial
int storyStage;
Main main;

void setup(){
  size(600,600);
  main = new Main();
}

void draw(){
  if(stage != 0){
     main.go(stage, storyStage);
     main.display();
  }
  background(255);
  main.display();
}

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
    }
}