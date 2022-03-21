//Variables
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
PImage pic1, pic2;
//
//Geometry
size(900, 680); //fullScreen(); displayWidth, displayHeight
//Landsacpe Presentation, not square or protrait
//
//Populating Variables
pic1 = loadImage("cbc662299bd35357e519fe867444b86c.jpeg"); //600748
pic2 = loadImage("81nh7yEGiHL._SX355_.jpg") //355  × 298
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
rectWidthPic2 = width*6/8;
rectHeightPic2 = height*1/2;
//
//Rectangle Layout & Image Printing on Canvas
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //Image 1, landscape presentation
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); //Image 2, landscape presentation 
image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
