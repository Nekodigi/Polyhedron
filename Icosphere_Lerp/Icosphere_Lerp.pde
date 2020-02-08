float r = 500;
Icosphere icosphere = new Icosphere(r);

void setup(){
  //size(500, 500, P3D);
  fullScreen(P3D);
  colorMode(HSB, 360, 100, 100);
}

void keyPressed(){
  if(key=='r'){
    icosphere = new Icosphere(r);
  }
}

void mousePressed(){
  icosphere.split();
}

void draw(){
  background(360);
  translate(width/2, height/2);
  rotateX((float)frameCount/500);
  rotateY((float)frameCount/500);
  rotateZ((float)frameCount/500);
  lights();
  icosphere.show();
}