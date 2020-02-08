class Polyhedron{
  PVector[] vertices;
  
  void showVertices(){
    strokeWeight(10);
    for(int i = 0; i < vertices.length; i++){
      Ipoint(i);
    }
    strokeWeight(1);
  }
  
  void Ipoint(int i){
    point(vertices[i]);
  }
  
  void Ipolygon(int ... is){
    beginShape();
    for(int index : is){
      vertex(vertices[index]);
    }
    endShape(CLOSE);
  }
}