void setup(){
  size(500, 500);
  Face myFace = new Face(150, 150, 200, 200);
}


public class Face{
  private Eye leftEye;
  private Eye rightEye;
  private Mouth myMouth;
  
  private float positionX;
  private float positionY;
  private float heightFace;
  private float widthFace;
  
  Face(float positionX, float positionY, float widthFace, float heightFace){
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
    
    
    leftEye = new Eye(positionX - 40, positionY - 20, widthFace * 0.13, heightFace * 0.2);
    rightEye = new Eye(positionX + 40, positionY - 20, widthFace * 0.13, heightFace * 0.2);
    myMouth = new Mouth(positionX, positionY + 50, widthFace * 0.3, heightFace * 0.4);
  }
  
}

public class Mouth{
  private float positionX;
  private float positionY;
  private float heightMouth;
  private float widthMouth;
  
  Mouth(float positionX, float positionY, float widthMouth, float heightMouth){
    this.positionX = positionX;
    this.positionY = positionY;
    this.heightMouth = heightMouth;
    this.widthMouth = widthMouth;
    
    drawMouth();
  }
  
  private void drawMouth(){
    fill(0);
    ellipse(positionX, positionY, widthMouth, heightMouth);
    noFill();
  }
}

public class Eye {
  private float positionX;
  private float positionY;
  private float heightEye;
  private float widthEye;
  
  private Eyebrow eyebrow;
  
  Eye(float positionX, float positionY, float widthEye, float heightEye){
    this.positionX = positionX;
    this.positionY = positionY;
    this.heightEye = heightEye;
    this.widthEye = widthEye;
    
    drawEye();
  }
  
  private void drawEye(){
    fill(0);
    ellipse(positionX, positionY, widthEye, heightEye);
    noFill();
    this.eyebrow = new Eyebrow(positionX, positionY - 40);
  }
}

public class Eyebrow {
  private float startPosition;
  private float heightEyebrow;
  
  Eyebrow(float startPosition, float heightEyebrow) {
    this.startPosition = startPosition - 14;
    this.heightEyebrow = heightEyebrow;
    drawEyebrow();
  }
  
  void drawEyebrow() {  
    bezier(startPosition, heightEyebrow, startPosition + 10, heightEyebrow - 30, startPosition + 20, heightEyebrow - 30, startPosition + 30, heightEyebrow);
  }
}
