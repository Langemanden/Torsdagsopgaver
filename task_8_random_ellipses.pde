size(500, 500);    
background(200);

int count = 0;

while (count < 100) {
  float x = random(width);
  float y = random(height);
  float r = random(10, 80);
  

  fill(random(255), random(255), random(255));
  stroke(0); 

  ellipse(x, y, r, r);
  
  count++;
}
