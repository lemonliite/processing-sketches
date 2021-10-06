int numFrames = 3;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
    
void setup() {
  size(1800,1800);
  frameRate(5);
  
  images[0]  = loadImage("mouth1.gif");
  images[1]  = loadImage("mouth2.gif"); 
  images[2]  = loadImage("mouth3.gif");
  
  // If you don't want to load each image separately
  // and you know how many frames you have, you
  // can create the filenames as the program runs.
  // The nf() command does number formatting, which will
  // ensure that the number is (in this case) 4 digits.
  //for (int i = 0; i < numFrames; i++) {
  //  String imageName = "PT_anim" + nf(i, 4) + ".gif";
  //  images[i] = loadImage(imageName);
  //}
} 
 
void draw() { 
  background (#2BB95E);
  currentFrame = (currentFrame+1) % numFrames;  // Use % to cycle through frames
  int offset = 0;
  for (int x = -100; x < width; x += images[0].width) { 
    image(images[(currentFrame+offset) % numFrames], x, -20);
    offset+=2;
    image(images[(currentFrame+offset) % numFrames], x, height/2);
    offset+=2;
  }
}
