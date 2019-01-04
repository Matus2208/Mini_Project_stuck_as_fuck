class Button {

  int xbl;   //Left value of button
  int ybt;   //Top value of button
  int xbr;   //Right value of button
  int ybb;   //Bottom value of button


  //Settings for constructor
  Button (int XBL, int XBR, int YBT, int YBB) {

    xbl = XBL;
    ybt = YBT;
    xbr = XBR;
    ybb = YBB;
  }

  //Defines and Checks whether the mouse was clicked inside or outside the button
  boolean clicked() {
    if (mousePressed & mouseX > xbl && mouseX < xbr && mouseY > ybt && mouseY< ybb) {
      return true;
    } else {
      return false;
    }
  }
}
