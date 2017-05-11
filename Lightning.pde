float startX = random(300);
float startY = 0;
float endX = startX;
float endY = 0;
PImage photo;

void setup() {
  size(300, 300);
  strokeWeight(2);
  background(119, 123, 136);
  photo = loadImage("BenFranklin.jpg");
}
void draw() {
  stroke(random(255), random(255), random(255));
  image(photo,0,0);
  photo.resize(300,300);
  while (endY<height) {
    endX = startX + random(-9,9);
    endY = startY + random(9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed() {
  startX = random(300);
  startY = 0;
  endX = startX;
  endY = 0;
  strokeWeight(4);
  text("AHHHH!!!", 150,150);
}
