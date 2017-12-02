int stage;
//0: menu
//1: tutorial
int storyStage;
Main main;

void setup(){
  size(600,600);
}

void draw(){
  if(stage != 0){
     main.go(stage, storyStage);
     main.display();
  }
}