//Global Variables
float gameSpaceX, gameSpaceY, gameSpaceWidth, gameSpaceHeight;
float bottomButtonX, bottomButtonY, bottomButtonWidth, bottomButtonHeight;
float topButtonX, topButtonY, topButtonWith, topButtonHeight;
float tttWidth, tttHeight;
float tttX1, tttX2, tttX3, tttX4, tttX5, tttX6, tttX7, tttX8, tttX9;
float tttY1, tttY2, tttY3, tttY4, tttY5, tttY6, tttY7, tttY8, tttY9;
float restartX, restartY, restartWidth, restartHeight;
float quitX, quitY, quitWidth, quitHeight;
float modeButtonX, modeButtonY, modeButtonWidth, modeButtonHeight;
float modeMenuX, modeMenuY, modeMenuWidth, modeMenuHeight;
float easyX, easyY, easyWidth, easyHeight;
float mediumX, mediumY, mediumWidth, mediumHeight;
float hardX, hardY, hardWidth, hardHeight;
float twoPlayerX, twoPlayerY, twoPlayerWidth, twoPlayerHeight;
float ssRandomX, ssRandomY, ssRandomWidth, ssRandomHeight;
float ssAiX, ssAiY, ssAiWidth, ssAiHeight;
float scoreBoardX, scoreBoardY, scoreBoardWidth, scoreBoardHeight;
float xSideNameX, xSideNameY, xSideNameWidth, xSideNameHeight;
float xSideIntegerX, xSideIntegerY, xSideIntegerWidth, xSideIntegerHeight;
float oSideNameX, oSideNameY, oSideNameWidth, oSideNameHeight;
float oSideIntegerX, oSideIntegerY, oSideIntegerWidth, oSideIntegerHeight;
float textInstructionX, textInstructionY, textInstructionWidth, textInstructionHeight;
float shareButtonX, shareButtonY, shareButtonWidth, shareButtonHieght;
float shareButtonScreenShotX, shareButtonScreenShotY, shareButtonScreenShotWidth, shareButtonScreenShotHieght;
//
void population() {
  gameSpaceX = appWidth*0;
  gameSpaceY = smallDimension * 11/31;
  gameSpaceWidth = appWidth-1;
  gameSpaceHeight = smallDimension*15/31-1;
  bottomButtonX = gameSpaceX;
  bottomButtonY = smallDimension*26/31;
  bottomButtonWidth = gameSpaceWidth-1;
  bottomButtonHeight = smallDimension*5/31-1;
  topButtonX = gameSpaceX;
  topButtonY = smallDimension*0;
  topButtonWith = gameSpaceWidth-1;
  topButtonHeight = smallDimension*11/31-1;
  float tttBoardSection = gameSpaceHeight*1/3;
  tttWidth = tttHeight = tttBoardSection;
  float centerBoard = ( appWidth - gameSpaceHeight ) / 2;
  tttX1 = tttX4 = tttX7 = centerBoard;
  tttX2 = tttX5 = tttX8 = centerBoard + ( 1 * tttBoardSection );
  tttX3 = tttX6 = tttX9 = centerBoard + ( 2 * tttBoardSection );
  tttY1 = tttY2 = tttY3 = gameSpaceY;
  tttY4 = tttY5 = tttY6 = gameSpaceY + ( 1 * tttBoardSection );
  tttY7 = tttY8 = tttY9 = gameSpaceY + ( 2 * tttBoardSection );
  restartX = bottomButtonX + bottomButtonWidth*1/8;
  restartY = bottomButtonY;
  restartWidth = bottomButtonWidth*1/4;
  restartHeight = bottomButtonHeight;
  quitX = bottomButtonX + bottomButtonWidth*5/8;
  quitY = bottomButtonY;
  quitWidth = restartWidth;
  quitHeight = restartHeight;
  //
  //Calculate modeButtonWidth based on TTT Board Section
  //Note: TTT Board Section based on Height
  //Top Button Widths need to be based on width section, not height
  println("buttonWidth", appWidth / int(appWidth/tttBoardSection), "Board Section", tttBoardSection);
  float buttonWidth = appWidth / int(appWidth/tttBoardSection);
  //
  modeButtonX = buttonWidth*1/3;
  modeButtonY = buttonWidth*1/3;
  modeButtonWidth = buttonWidth;
  modeButtonHeight = buttonWidth;
  float menuHeight = buttonWidth*1/2;
  int numberOfButtons = 6;
  modeMenuX = modeButtonX;
  modeMenuY = modeButtonY;
  modeMenuWidth = buttonWidth*2;
  modeMenuHeight = menuHeight * numberOfButtons;
  easyX = modeMenuX;
  easyY = modeMenuY;
  easyWidth = modeMenuWidth;
  easyHeight = menuHeight;
  mediumX = modeMenuX;
  mediumY = easyY + menuHeight;
  mediumWidth = modeMenuWidth;
  mediumHeight = menuHeight;
  hardX = modeMenuX;
  hardY = mediumY + menuHeight;
  hardWidth = modeMenuWidth;
  hardHeight = menuHeight;
  twoPlayerX = modeMenuX;
  twoPlayerY = hardY + menuHeight;
  twoPlayerWidth = modeMenuWidth;
  twoPlayerHeight = menuHeight;
  ssRandomX = modeMenuX;
  ssRandomY = twoPlayerY + menuHeight;
  ssRandomWidth = modeMenuWidth;
  ssRandomHeight = menuHeight;
  ssAiX = modeMenuX;
  ssAiY = ssRandomY + menuHeight;
  ssAiWidth = modeMenuWidth;
  ssAiHeight = menuHeight;
  //
  float endOfModeButton = modeButtonX+modeMenuWidth;
  float startOfShareButton = appWidth - modeButtonX - modeMenuWidth;
  float scoreBoardSpace = startOfShareButton - endOfModeButton;
  float scoreBoardLength = 4*buttonWidth;
  float scoreBoardCenteringSpace = ( scoreBoardSpace - scoreBoardLength ) / 2;
  scoreBoardX = endOfModeButton + scoreBoardCenteringSpace ;
  scoreBoardY = modeMenuY;
  scoreBoardWidth = modeMenuWidth*2;
  scoreBoardHeight = menuHeight*1.5;
  xSideNameX = scoreBoardX;
  xSideNameY = scoreBoardY;
  xSideNameWidth = modeMenuWidth*1/2;
  xSideNameHeight = scoreBoardHeight;
  xSideIntegerX = scoreBoardX + xSideNameWidth;
  xSideIntegerY = scoreBoardY;
  xSideIntegerWidth = modeMenuWidth*1/2;
  xSideIntegerHeight = scoreBoardHeight;
  oSideNameX = xSideIntegerX + xSideIntegerWidth;
  oSideNameY = scoreBoardY;
  oSideNameWidth = modeMenuWidth*1/2;
  oSideNameHeight = scoreBoardHeight;
  oSideIntegerX = oSideNameX + easyWidth*1/2;
  oSideIntegerY = scoreBoardY;
  oSideIntegerWidth = modeMenuWidth*1/2;
  oSideIntegerHeight = scoreBoardHeight;
  textInstructionX = scoreBoardX;
  textInstructionY = scoreBoardY + scoreBoardHeight;
  textInstructionWidth = scoreBoardWidth;
  textInstructionHeight = scoreBoardHeight;
  shareButtonX = appWidth - modeButtonX - buttonWidth;
  shareButtonY = modeButtonY;
  shareButtonWidth = buttonWidth;
  shareButtonHieght = buttonWidth;
  shareButtonScreenShotX = appWidth - modeButtonX - buttonWidth*2;
  shareButtonScreenShotY = shareButtonY;
  shareButtonScreenShotWidth = modeMenuWidth;
  shareButtonScreenShotHieght = menuHeight;
  //
  //ScoreBoard
  xWinsInt = 0;
  oWinsInt = 0;
  //
  readArrays();
} //End Population
//
void readArrays() {
  for ( int i=1; i<10; i++ ) {
    tX[i]=false;
    tO[i]=false;
    tOffO[i]=false;
    tOffX[i]=false;
    addCounter[i]=true;
  }
}
//
