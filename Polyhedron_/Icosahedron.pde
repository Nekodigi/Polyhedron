class Icosahedron extends Polyhedron{
  
  Icosahedron(float r){
    vertices = new PVector[12];
    float diagonal = sqrt((5+sqrt(5))/2);
    float phi = (1+sqrt(5))/2;
    float s = r/diagonal;
    vertices[0] = new PVector(0, s, phi*s);
    vertices[1] = new PVector(0, -s, phi*s);
    vertices[2] = new PVector(0, s, -phi*s);
    vertices[3] = new PVector(0, -s, -phi*s);
    vertices[4] = new PVector(s, phi*s, 0);
    vertices[5] = new PVector(-s, phi*s, 0);
    vertices[6] = new PVector(s, -phi*s, 0);
    vertices[7] = new PVector(-s, -phi*s, 0);
    vertices[8] = new PVector(phi*s, 0, s);
    vertices[9] = new PVector(phi*s, 0, -s);
    vertices[10] = new PVector(-phi*s, 0, s);
    vertices[11] = new PVector(-phi*s, 0, -s);
  }
  
  void show(){
    showVertices();
    fill(255, 0, 0, 100);Ipolygon(0, 1, 3, 2);
    fill(0, 255, 0, 100);Ipolygon(4, 5, 7, 6);
    fill(0, 0, 255, 100);Ipolygon(8, 9, 11, 10);
    fill(255, 100);
    for(int i = 0; i < 12; i+=4){
      Ipolygon(i, i+1, (i+8)%12);
      Ipolygon(i, i+1, (i+10)%12);
      Ipolygon(i+2, i+3, (i+9)%12);
      Ipolygon(i+2, i+3, (i+11)%12);
    }
    Ipolygon(0, 4, 8);
    Ipolygon(0, 5, 10);
    Ipolygon(1, 6, 8);
    Ipolygon(1, 7, 10);
    Ipolygon(2, 4, 9);
    Ipolygon(2, 5, 11);
    Ipolygon(3, 6, 9);
    Ipolygon(3, 7, 11);
  }
}