class Icosahedron{
  PVector[] vertices;
  Triangle[] triangles = new Triangle[20];
  
  Icosahedron(float r){
    vertices = new PVector[12];
    float diagonal = sqrt((5+sqrt(5))/2);
    float phi = (1+sqrt(5))/2;
    float s = r/diagonal;
    //make vertices
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
    //make surface
    for(int i = 0; i < 12; i+=4){
      triangles[i] = triangle(i, i+1, (i+8)%12);
      triangles[i+1] = triangle(i, i+1, (i+10)%12);
      triangles[i+2] = triangle(i+2, i+3, (i+9)%12);
      triangles[i+3] = triangle(i+2, i+3, (i+11)%12);
    }
    triangles[12] = triangle(0, 4, 8);
    triangles[13] = triangle(0, 5, 10);
    triangles[14] = triangle(1, 6, 8);
    triangles[15] = triangle(1, 7, 10);
    triangles[16] = triangle(2, 4, 9);
    triangles[17] = triangle(2, 5, 11);
    triangles[18] = triangle(3, 6, 9);
    triangles[19] = triangle(3, 7, 11);
  }
  
  void show(){
    for(Triangle t : triangles){
      t.show();
    }
  }
  
  Triangle triangle(int a, int b, int c){
    return new Triangle(vertices[a], vertices[b], vertices[c]);
  }
}