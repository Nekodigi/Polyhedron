import java.util.Arrays;
import java.util.List;
class Icosphere{
  ArrayList<Triangle> triangles = new ArrayList<Triangle>();
  float r;
  
  Icosphere(float r){
    this.r = r;
    Triangle[] temp = new Icosahedron(r).triangles;
    for(int i = 0; i < 20; i++){
      triangles.add(temp[i]);
    }
  }
  
  void split(){
    ArrayList<Triangle> Ntriangles = new ArrayList<Triangle>();
    for(Triangle t : triangles){
      Ntriangles.addAll(t.split(true, r));
    }
    triangles = Ntriangles;
  }
  
  void show(){
    //icosahedron.show();
    for(Triangle t : triangles){
      t.show();
    }
  }
}