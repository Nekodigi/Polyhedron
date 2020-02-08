class Triangle{
  PVector a;
  PVector b;
  PVector c;
  
  Triangle(PVector a, PVector b, PVector c){
    this.a = a;
    this.b = b;
    this.c = c;
  }
  
  ArrayList<Triangle> split(boolean isNormalize, float r){
    PVector abm = PVector.add(a, b).div(2);
    PVector bcm = PVector.add(b, c).div(2);
    PVector cam = PVector.add(c, a).div(2);
    if(isNormalize = true){
      abm.setMag(r);
      bcm.setMag(r);
      cam.setMag(r);
    }
    ArrayList<Triangle> results = new ArrayList<Triangle>();
    results.add(new Triangle(a, abm, cam));
    results.add(new Triangle(b, abm, bcm));
    results.add(new Triangle(c, bcm, cam));
    results.add(new Triangle(abm, bcm, cam));
    return results;
  }
  
  void show(){
    beginShape();
    vertex(PVector.mult(a, noise((float)a.x/500,(float)a.y/500,(float)a.z/500+(float)frameCount/10)));
    vertex(PVector.mult(b, noise((float)b.x/500,(float)b.y/500,(float)b.z/500+(float)frameCount/10)));
    vertex(PVector.mult(c, noise((float)c.x/500,(float)c.y/500,(float)c.z/500+(float)frameCount/10)));
    endShape(CLOSE);
  }
}