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
    vertex(PVector.mult(a, noise(a.x/500,a.y/500,a.z/500+(float)frameCount/10)+0.5));
    vertex(PVector.mult(b, noise(b.x/500,b.y/500,b.z/500+(float)frameCount/10)+0.5));
    vertex(PVector.mult(c, noise(c.x/500,c.y/500,c.z/500+(float)frameCount/10)+0.5));
    endShape(CLOSE);
  }
}