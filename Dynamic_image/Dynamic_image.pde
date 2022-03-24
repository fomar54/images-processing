float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
String title = " these are piantings that I enjoy ";
float titleX,titleY, titleWidth, titleHeight;
PFont titlefont;
color blue=#3060E0 , restDefaultlink=#FAFBFF;


float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0; 
Boolean widthPic1Larger=false, heightPic1Larger=false, widthPic2Larger=false, heightPic2Larger=false;
int largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension;
float pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted;
color red=#FF0000;
//
void setup()
{
  size(900, 680); //fullScreen(); displayWidth, displayHeight
  //Landsacpe Presentation, not square or protrait
  pic1 = loadImage("cbc662299bd35357e519fe867444b86c.jpeg"); // Dimensions 600 748
pic2 = loadImage("81nh7yEGiHL._SX355_.jpg"); // Dimensions 355 298
  //
  //Populating Variables
   //
  //Aspect Ration Calculations
  int pic1Width = 600; //NOTE: mine not yours
int pic1Height = 748; //NOTE: mine not yours
int pic2Width = 355; //NOTE: mine not yours
int pic2Height = 298; //NOTE: mine not yours

  //
  //Choosing larger image dimension
  if ( pic1Width >= pic1Height ) { //ID Larger Dimension: Landscape and Square
    largerPic1Dimension = pic1Width;
    smallerPic1Dimension = pic1Height;
    widthPic1Larger = true;
  } else { //ID Larger Dimension: Portrait
    largerPic1Dimension = pic1Height;
    smallerPic1Dimension = pic1Width;
    heightPic1Larger = true;
  } //End pic1 larger dimension ID
  //
  if ( pic2Width >= pic2Height ) { //ID Larger Dimension: Landscape and Square
    largerPic2Dimension = pic2Width;
    smallerPic2Dimension = pic2Height;
    widthPic2Larger = true;
  } else { //ID Larger Dimension: Portrait
    largerPic2Dimension = pic2Height;
    smallerPic2Dimension = pic2Width;
    heightPic2Larger = true;
  } //End pic2 larger dimension ID
  println (smallerPic1Dimension, largerPic1Dimension, smallerPic2Dimension, largerPic2Dimension); //Verifying Variable Details (ID Larger Dimension)
  //
  //Calculating Aspect Ratios
  //Note: single line IFs can be summarized to IF-ELSE or IF-ELSEIF-ELSE
  if ( widthPic1Larger == true ) imageWidthRatioPic1 = float (largerPic1Dimension) / float (largerPic1Dimension);
  if ( widthPic1Larger == true ) imageHeightRatioPic1 = float (smallerPic1Dimension) / float (largerPic1Dimension);
  if ( heightPic1Larger == true ) imageWidthRatioPic1 = float (smallerPic1Dimension) / float (largerPic1Dimension);
  if ( heightPic1Larger == true ) imageHeightRatioPic1 = float (largerPic1Dimension) / float (largerPic1Dimension);
  if ( widthPic2Larger == true ) imageWidthRatioPic2 = float (largerPic2Dimension) / float (largerPic2Dimension);
  if ( widthPic2Larger == true ) imageHeightRatioPic2 = float (smallerPic2Dimension) / float (largerPic2Dimension);
  if ( heightPic2Larger == true ) imageWidthRatioPic2 = float (smallerPic2Dimension) / float (largerPic2Dimension);
  if ( heightPic2Larger == true ) imageHeightRatioPic2 = float (largerPic2Dimension) / float (largerPic2Dimension);
  println(imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2); //Verifying Variable Details (Ratios)
  //
  //Use ratios to change the image width and height properties of Rectangle
  //**See below to Specific Image Properties of Image and Rectangle Variables
  //
  rectXPic1 = width*1/4;
  rectYPic1 = height*0;
  rectWidthPic1 = width*1/2;
  rectHeightPic1 = height*1/2;
  rectXPic2 = width*1/8;
  rectYPic2 = height*1/2;
  rectWidthPic2 = width*6/8;
  rectHeightPic2 = height*1/2;
  //
  // Final Aspect Ratio Calculations
  pic1WidthAdjusted = rectWidthPic1 * imageWidthRatioPic1;
  pic1HeightAdjusted = rectHeightPic1 * imageHeightRatioPic1;
  pic2WidthAdjusted = rectWidthPic2 * imageWidthRatioPic2;
  pic2HeightAdjusted = rectHeightPic2 * imageHeightRatioPic2;
  println (pic1Width, pic1Height, pic2Width, pic2Height);
  println (pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted);
}//End setup
//
void draw()
{ //Note: DRAW Loop repeats 60 times / second, static images should be in SETUP, "system resourses"
  //Rectangle Layout & Image Printing on Canvas
//Fonts from OS (Operating System)
String[] fontlist = PFont.list(); //To list all fonts available 
printArray(fontlist);//For listing all possible fonts to chosse from, then creatFont
titlefont = createFont("HiraMinProN-W3",55);//Verify the font exists in processing java
//tools/createfont/find font/ do not press okay, known bug
 
rect(titleX,titleY, titleWidth, titleHeight);
fill(blue);//ink, hexidecmial copied from the color selector
textAlign(CENTER,CENTER);//Align X&Y, see processing.org/reference
//values:[LEFT] [CENTER][RIGHT]&[TOP|CENTRE | BOTTOM|BASELINE}
textFont(titlefont, 25);//change the number until it fits
text(title,titleX,titleY, titleWidth, titleHeight);
fill(restDefaultlink);

 //rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
 rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation 
 // Image using Rect() Variables
 //image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
 //image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
 // Change the Rect() Variables to Aspect Ratio
 image(pic1, rectXPic1, rectYPic1, pic1WidthAdjusted, pic1HeightAdjusted);
 println ("Image one looks good, put some text underneath to fill in the space."); //Great Design Change for Aspect Ratio
 //image(pic2, rectXPic2, rectYPic2, pic2WidthAdjusted, pic2HeightAdjusted);
 //Center image in rect(), pic2, by changing the yRect() value
 image(pic2, rectXPic2, rectYPic2+(rectYPic2*1/5), pic2WidthAdjusted, pic2HeightAdjusted);
}//End draw
//
void keyPressed()
{
}//End keypressed
//
void mousePressed()
{
}//End mousePressed
