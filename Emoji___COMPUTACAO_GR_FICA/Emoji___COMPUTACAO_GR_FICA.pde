void setup(){
  size(500, 500);
  Face myFace = new Face(100, 100, 75, 75);
}


public class Face{
  private Eye leftEye;
  private Eye rightEye;
  private Mouth myMouth;
  
  private float positionX;
  private float positionY;
  private float heightFace;
  private float widthFace;
  
  Face(float positionX, float positionY, float heightFace, float widthFace){
    this.positionX = positionX;
    this.positionY = positionY;
    this.heightFace = heightFace;
    this.widthFace = widthFace;
    
    drawFace();
  }
  
  private void drawFace(){
    fill(255, 255, 0);
    ellipse(positionX, positionY, heightFace, widthFace);
    noFill();
    
    
    leftEye = new Eye();
    rightEye = new Eye();
    myMouth = new Mouth();
  }
  
}

public class Mouth{
  private float positionX;
  private float positionY;
  private float heightMouth;
  private float widthMouth;
  
  Mouth(float positionX, float positionY, float heightMouth, float widthMouth){
    this.positionX = positionX;
    this.positionY = positionY;
    this.heightMouth = heightMouth;
    this.widthMouth = widthMouth;
    
    drawMouth();
  }
  
  private void drawMouth(){
    fill(0);
    ellipse(positionX, positionY, heightMouth, widthMouth);
    noFill();
  }

}
