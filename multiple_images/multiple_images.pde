//Variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
String title = " these are piantings that I enjoy ";
float titleX,titleY, titleWidth, titleHeight;
PFont titlefont;
color blue=#3060E0 , restDefaultlink=#FAFBFF;
//
//Geometry
fullScreen(); 
//Landsacpe Presentation, not square or protrait
//
//Populating Variables
pic1 = loadImage("cbc662299bd35357e519fe867444b86c.jpeg"); // Dimensions 600 748
pic2 = loadImage("81nh7yEGiHL._SX355_.jpg"); // Dimensions 355 298
//
//Aspect Ration Calculations
int pic1Width = 600; //NOTE: mine not yours
int pic1Height = 748; //NOTE: mine not yours
int pic2Width = 355; //NOTE: mine not yours
int pic2Height = 298; //NOTE: mine not yours
int largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension;
float imageWidthRatioPic1=0.0,imageHeightRatioPic1=0.0,imageWidthRatioPic2=0.0,imageHeightRatioPic2=0.0 ;
Boolean widthPic1Larger=false, heightPic1Larger=false, widthPic2Larger=false, heightPic2Larger=false;
//
if (pic1Height >= pic1Width ) { //ID Larger Dimension: Landscape and Square
  largerPic1Dimension = pic1Width;
  smallerPic1Dimension = pic1Height;
  widthPic1Larger = true;
} else { //ID Larger Dimension: Portrait
  largerPic1Dimension = pic1Height;
  smallerPic1Dimension = pic1Width;
  heightPic1Larger = true;
} //End pic1 larger dimension ID
//
if ( pic2Width >= pic2Height ) {
  largerPic2Dimension = pic2Width;
  smallerPic2Dimension = pic2Height;
  widthPic2Larger = true;
} else {
  largerPic2Dimension = pic2Height;
  smallerPic2Dimension = pic2Width;
  heightPic2Larger = true;
} //End pic2 larger dimension ID
println(largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension);//Verifying Variables 
//
if(widthPic1Larger == true );imageWidthRatioPic1  = float(largerPic1Dimension)/float(largerPic1Dimension);
if(widthPic1Larger== true );  imageHeightRatioPic1 =float (smallerPic1Dimension)/float(largerPic1Dimension);
if(heightPic1Larger == true ); imageHeightRatioPic1  =float( largerPic1Dimension)/float(largerPic1Dimension);
if(heightPic1Larger == true );imageWidthRatioPic1  =float( smallerPic1Dimension)/float(largerPic1Dimension);
if(widthPic2Larger == true );imageWidthRatioPic2  =float( largerPic2Dimension)/float(largerPic2Dimension);
if(widthPic2Larger== true );imageHeightRatioPic2 = float(smallerPic2Dimension)/float(largerPic2Dimension);
if(heightPic2Larger == true ); imageHeightRatioPic2  = float(largerPic2Dimension)/float(largerPic2Dimension);
if(heightPic2Larger == true );imageWidthRatioPic2  = float(smallerPic2Dimension)/float(largerPic2Dimension);
println(imageWidthRatioPic1,imageHeightRatioPic1,imageWidthRatioPic2,imageHeightRatioPic2 );//Verifying Variables 
//
rectXPic1 = width*1/4;
rectYPic1 = height*0;
rectWidthPic1 = width*1/2;
rectHeightPic1 = height*1/2;
rectXPic2 = width*1/8;
rectYPic2 = height*1/2;
rectWidthPic2 = width*4/8;
rectHeightPic2 = height*1/2;
titleX = width*1/5;
titleY = height*1/10;
titleWidth = displayWidth*3/5; // Rect ends at 4/5's of the width
titleHeight = displayHeight*1/10;// ect ends at 2/10's of height 
//
//Rectangle Layout & Image Printing on Canvas
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation 
image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);

//Fonts from OS (Operating System)
String[] fontlist = PFont.list(); //To list all fonts available 
printArray(fontlist);//For listing all possible fonts to chosse from, then creatFont
titlefont = createFont("HiraMinProN-W3",55);//Verify the font exists in processing java
//tools/createfont/find font/ do not press okay, known bug
 
//layout or textspace and typograhical features
rect(titleX,titleY, titleWidth, titleHeight);
fill(blue);//ink, hexidecmial copied from the color selector
textAlign(CENTER,BOTTOM);//Align X&Y, see processing.org/reference
//values:[LEFT] [CENTER][RIGHT]&[TOP|CENTRE | BOTTOM|BASELINE}
textFont(titlefont, 25);//change the number until it fits
text(title,titleX,titleY, titleWidth, titleHeight);
fill(restDefaultlink);
