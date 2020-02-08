class Octahedron extends Polyhedron {

  Octahedron(float r) {
    vertices = new PVector[6];
    vertices[0] = new PVector(-r, 0, 0);
    vertices[1] = new PVector(r, 0, 0);
    vertices[2] = new PVector(0, -r, 0);
    vertices[3] = new PVector(0, r, 0);
    vertices[4] = new PVector(0, 0, -r);
    vertices[5] = new PVector(0, 0, r);
  }
  
  void show(){
    showVertices();
    Ipolygon(0, 2, 4);
    Ipolygon(0, 2, 5);
    Ipolygon(0, 3, 4);
    Ipolygon(0, 3, 5);
    Ipolygon(1, 2, 4);
    Ipolygon(1, 2, 5);
    Ipolygon(1, 3, 4);
    Ipolygon(1, 3, 5);
  }
}