class Hexahedron extends Polyhedron{
  
  Hexahedron(float r){
    vertices = new PVector[8];
    float l = r/sqrt(3);
    vertices[0] = new PVector(-l, -l, -l);
    vertices[1] = new PVector(-l, -l, l);
    vertices[2] = new PVector(-l, l, l);
    vertices[3] = new PVector(-l, l, -l);
    vertices[4] = new PVector(l, -l, -l);
    vertices[5] = new PVector(l, -l, l);
    vertices[6] = new PVector(l, l, l);
    vertices[7] = new PVector(l, l, -l);
  }
  
  void show(){
    showVertices();
    Ipolygon(0, 1, 2, 3);
    Ipolygon(4, 5, 6, 7);
    for(int i = 0; i < 4; i++){
      Ipolygon(i, (i+1)%4, (i+1)%4+4, i+4);
    }
  }
}