int smileDiam = 40;
int spacing = 44;
int SMILENUM;

void setup() {
  size(480,480);
  noStroke();
  
  SMILENUM = (width-spacing)/smileDiam;
}

void draw() {
  background(255);
  
  for (int y=0; y < SMILENUM; y++) {
    for (int x=0; x < SMILENUM; x++) {
      //genSimle((x+1)*50,(y+1)*50);
      genSimle((x+1)*spacing,(y+1)*spacing);
    } 
  }
}

void genSimle(int x, int y) {
  float  x1 = map(mouseX, 0.1, 20000, 0, width);
  
  fill(255, 255, 0);
  ellipse(x, y, smileDiam, smileDiam); //background
  
  ellipseMode(CENTER);
  fill(0);
  ellipse((x-2)+(x1*.8), y, 5, 5); //left eye
  ellipse((x+8)+(x1*.7), y, 5, 5); //right eye
  
  rectMode(CENTER);
  rect(x+x1, y+6, 8, 2); //mouth shape
}
