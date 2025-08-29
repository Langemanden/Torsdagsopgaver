int numberOfCircles;
int circleSize;
int counter = 0;
int rowCounter = 0;

void setup() {
   size(400,400);
  
   numberOfCircles = 30;
   circleSize = width/numberOfCircles;
   ellipseMode(CORNER);

}
void draw() {
  int x = circleSize * counter;
  int y = circleSize * rowCounter;
 

  ellipse(x, y, circleSize, circleSize);
  
  counter = frameCount % numberOfCircles == 0 ? 0 : counter+1;
  rowCounter = counter==0 ? rowCounter+1 : rowCounter;
  
  // Her kan du lave step 6.c
}
