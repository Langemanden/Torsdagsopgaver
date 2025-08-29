int numberOfCircles;
int circleSize;
int counter = 0;
int rowCounter = 0;

// 6.a – erklær farvevariabler i global scope
int red, green, blue;

void setup() {
   size(400,400);
  
   numberOfCircles = 30;
   circleSize = width/numberOfCircles;
   ellipseMode(CORNER);

   // 6.b – startværdier = hvid (255,255,255)
   red = 255;
   green = 255;
   blue = 255;
}

void draw() {
  int x = circleSize * counter;
  int y = circleSize * rowCounter;

  // Brug de nuværende farveværdier
  fill(red, green, blue);
  ellipse(x, y, circleSize, circleSize);
  
  // Opdater tællere
  counter = frameCount % numberOfCircles == 0 ? 0 : counter+1;
  rowCounter = counter==0 ? rowCounter+1 : rowCounter;
  
  // 6.c – skift farve kun når vi er i gang med at tegne den første cirkel i en række
  if (counter == 0) {
    red   = (int)random(256);
    green = (int)random(256);
    blue  = (int)random(256);
  }
}
