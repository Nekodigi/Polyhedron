class Tetrahedron extends Polyhedron{
  
  Tetrahedron(float r){
    vertices = new PVector[4];
    vertices[0] = new PVector(r*sqrt(6)/3, r/3, -r*sqrt(2)/3);
    vertices[1] = new PVector(-r*sqrt(6)/3, r/3, -r*sqrt(2)/3);
    vertices[2] = new PVector(0, r/3, r*2*sqrt(2)/3);
    vertices[3] = new PVector(0, -r, 0);
  }
  
  void show(){
    showVertices();
    Ipolygon(0, 1, 2);
    Ipolygon(0, 1, 3);
    Ipolygon(1, 2, 3);
    Ipolygon(2, 0, 3);
  }
}