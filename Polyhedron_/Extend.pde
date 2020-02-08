void point(PVector p){
  point(p.x, p.y, p.z);
}

void text(String str, PVector p){
  text(str, p.x, p.y, p.z);
}

void vertex(PVector p){
  vertex(p.x, p.y, p.z);
}

void polygon(PVector ... ps){
  beginShape();
  for(PVector p : ps){
    vertex(p);
  }
  endShape(CLOSE);
}