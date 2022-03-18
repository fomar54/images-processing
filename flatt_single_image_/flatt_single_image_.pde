//Gobal Virables
float imageX, imageY, imageWidth, imageHeight,imageHeightRatio=1.0,imageWidthtRatio=1.0;
float smallerDimension,LargerDimension;
PImage pic;
Boolean heightLarger  = false,widthLarger = false;
//
fullScreen();

//population
pic = loadImage ("7559980.jpeg");//Diensions: width 400,height 401
//Find the larger dimenstion for aspect ratio
int picWidth = 400;
int picHeight = 401;
if ( picHeight >= picWidth){
LargerDimension = picHeight;
smallerDimension = picWidth ;
heightLarger = true;

}else{
 LargerDimension = picWidth;
smallerDimension = picHeight ;
widthLarger = true;
}
println(smallerDimension, LargerDimension, widthLarger,heightLarger);
if(widthLarger  == true)imageWidthtRatio =  (smallerDimension /LargerDimension );
if(widthLarger  == true)imageHeightRatio =  (LargerDimension /LargerDimension );
if(heightLarger  == true)imageWidthtRatio = (smallerDimension /LargerDimension );
if(heightLarger  == true)imageHeightRatio =  (LargerDimension /LargerDimension );
//Ratio 1.0 simalir to style = "width:auto"(website)
//Ratio 0.75similar to syle = height:auto (website)
imageX =   displayWidth*0 ;
imageY = displayHeight*0;
imageWidth =displayWidth*imageWidthtRatio ;
imageHeight =displayHeight*imageHeightRatio ;
if(imageWidth>width)println("EROR:image is too wide ");
if(imageHeight>height)println("EROR:image is too high ");
//
//Rectangle Layout
rect(imageX, imageY, imageWidth, imageHeight);
image(pic,imageX, imageY, imageWidth, imageHeight);

//End
