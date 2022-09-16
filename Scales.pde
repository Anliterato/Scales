void setup() {
  size(500, 500); 
  noLoop(); 
}
void draw() {
  background(247,202,201);
  for(int yPlace = 0; yPlace <= 535; yPlace += 35){
    for(int xPlace = 0; xPlace <= 525; xPlace += 25){
      scale(xPlace,yPlace);
    }
  }
}
void scale(int x, int y) {
  
  fill(255,165,0);
  beginShape();
  vertex(x-25,y-25);
  vertex(x-30,y-15);
  vertex(x,y+25);
  vertex(x+30,y-15);
  vertex(x+25,y-25);
  endShape(CLOSE);
  
  //red polygon
  fill(255,83,73);
  beginShape();
  vertex(x,y-35);
  vertex(x+25,y-25);
  vertex(x,y+25);
  vertex(x-25,y-25);
  endShape(CLOSE);
  
  //ellipses
  fill(255,3,62);
  ellipse(x,y-15,25,25);
  
  fill(247,202,201);
  ellipse(x,y-15,15,15);
}
