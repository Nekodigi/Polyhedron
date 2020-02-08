float r = 100;
int dispType = 0;
Tetrahedron tetrahedron = new Tetrahedron(r);
Hexahedron hexahedron = new Hexahedron(r);
Octahedron octahedron = new Octahedron(r);
Dodecahedron dodecahedron = new Dodecahedron(r);
Icosahedron icosahedron = new Icosahedron(r);

void setup(){
  size(500, 500, P3D);
  //fullScreen(P3D);
}

void draw(){
  background(255);
  lights();
  translate(width/2, height/2);
  rotateX((float)frameCount/500);
  rotateY((float)frameCount/500);
  rotateZ((float)frameCount/500);
  //sphere(r);
  fill(255, 100);
  switch(dispType){
    case 0:
      tetrahedron.show();
      break;
    case 1:
      hexahedron.show();
      break;
    case 2:
      octahedron.show();
      break;
    case 3:
      dodecahedron.show();
      break;
    case 4:
      icosahedron.show();
      break;
  }
}

void keyPressed(){
  if(key == 't'){
    dispType++;
    if(dispType >= 5){
      dispType = 0;
    }
  }
}