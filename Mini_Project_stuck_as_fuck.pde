Dot d;


Button aboutButton;
Button playButton;

//Screen play;
//Screen about;


int abx = 800;
int aby = 720;
int abw = 1130;
int abh = 800;
int plx = 790;
int ply = 440;
int plw = 1140;
int plh = 550;

int score = 0;

//int pageNumber = 1;
void setup() {
  fullScreen();
  
  d = new Dot();

  aboutButton = new Button(abx, aby, abw, abh);
  playButton = new Button(plx, ply, plw, plh);

  // about = new Screen(0,0,0,0,#636363);
  // play = new Screen(0,0,0,0,#636363);
}


void draw() {
  /*  if (aboutButton.clicked()) {
   pageNumber = 1;
   background(#636363);
   }
   */
  /*switch(pageNumber) {
   case 1:
   about.show();
   break;
   case 2:
   play.show();
   break;
   
   }  
   */
  //Draws Menu Screen
  background(#636363);
  textSize(200);
  fill(0);
  textAlign(CENTER);
  text("The Dotter", width/2, 250);  //Name of the Game

  line(width/2, 0, width/2, height);

  textSize(150);
  fill(0);
  textAlign(CENTER);
  text("PLAY", width/2, 550);

  textSize(100);
  fill(0);
  textAlign(CENTER);
  text("ABOUT", width/2, 800);

  fill(255);
  stroke(0);
  strokeWeight(1);
  ellipse(random(width), random(height), 10, 10);

  println(mouseX, mouseY);



  //If button "About" is pressed, new "Screen" appears.
  if (mouseX > abx & mouseX <abw && mouseY >aby & mouseY < abh) {
    if (mousePressed == true) {
      background(#636363);
      noLoop();

      textSize(150);
      fill(0);
      textAlign(CENTER);
      text("Game created by:", width/2, 300);

      textSize(200);
      fill(0);
      textAlign(CENTER);
      text("MATUS JAKUBICKA", width/2, 800);

      textSize(25);
      fill(0);
      textAlign(CENTER);
      text("Intended for AAU-CPH, MEA1 Semester Project", width/2, 1000);
    }
  }
  if (mouseX > plx & mouseX < plw && mouseY > ply & mouseY <plh) {
    if (mousePressed == true) {
      background(#636363);
      noLoop();
        score = score+score++;
      textSize(25);
      fill(255);
      text("Score = "+score, 100, 50);
      
      d.spawn();
      d.pulse();
    }
  }


  //HERE COMES IF STATEMENT THAT SAYS WHEN GAMES END YOUR SCORE AND CLICK TO RESTART

  // dot.spawn
  //dots[1].pulse();
}






/*void mouseClicked(){
 if(mouseX > abx & mouseX <abw && mouseY >aby & mouseY < abh){
 background(#636363);
 }
 }*/
