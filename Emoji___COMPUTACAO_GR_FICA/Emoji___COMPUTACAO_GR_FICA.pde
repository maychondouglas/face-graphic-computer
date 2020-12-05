void setup(){
  frameRate(20);
  size(500, 500);
  
}

int state = 0;
boolean isGoingFoward = true;

void draw() {
  background(255);
 Face myFace = new Face(150, 150, 200, 200, state);

 if (state < 10 && isGoingFoward) {
  state++; 
 } else {
  if (state > 0 && !isGoingFoward) {
    state--;
  } 
 }
 if (state == 10) {
  isGoingFoward = false; 
 }
 
 if (state == 0) {
  isGoingFoward = true;
 }

}

public class Face{
  private Eye leftEye;
  private Eye rightEye;
  private Mouth myMouth;
  
  private float positionX;
  private float positionY;
  private float heightFace;
  private float widthFace;
  
  // controla qual a posição dos elementos da face
  private int state;
  
  Face(float positionX, float positionY, float widthFace, float heightFace, int state){
    this.positionX = positionX;
    this.positionY = positionY;
    this.heightFace = heightFace;
    this.widthFace = widthFace;
    this.state = state;
    
    drawFace();
  }
  
  private void drawFace(){
    fill(255, 255, 0);
    ellipse(positionX, positionY, heightFace, widthFace);
    noFill();
    
    
    leftEye = new Eye(positionX - 40, positionY - 20, widthFace * 0.13, heightFace * 0.2, this.state);
    rightEye = new Eye(positionX + 40, positionY - 20, widthFace * 0.13, heightFace * 0.2, this.state);
    myMouth = new Mouth(positionX, positionY + 50, widthFace * 0.3, heightFace * 0.4, this.state);
  }
  
}

public class Mouth{
  private float positionX;
  private float positionY;
  private float heightMouth;
  private float widthMouth;
  private int state;
  
  Mouth(float positionX, float positionY, float widthMouth, float heightMouth, int state){
    this.positionX = positionX;
    this.positionY = positionY;
    this.heightMouth = heightMouth;
    this.widthMouth = widthMouth;
    this.state = state;
    
    drawMouth();
  }
  
  private void drawMouth(){
    fill(0);
    ellipse(positionX, positionY, widthMouth, heightMouth + state);
    noFill();
  }
}

public class Eye {
  private float positionX;
  private float positionY;
  private float heightEye;
  private float widthEye;
  private int state;
  
  private Eyebrow eyebrow;
  
  Eye(float positionX, float positionY, float widthEye, float heightEye, int state){
    this.positionX = positionX;
    this.positionY = positionY;
    this.heightEye = heightEye;
    this.widthEye = widthEye;
    this.state = state;
    
    drawEye();
  }
  
  private void drawEye(){
    fill(0);
    ellipse(positionX, positionY, widthEye + state, heightEye + state);
    noFill();
    this.eyebrow = new Eyebrow(positionX, positionY - 40, this.state);
  }
}

public class Eyebrow {
  private float startPosition;
  private float heightEyebrow;
  private int state;
  
  Eyebrow(float startPosition, float heightEyebrow, int state) {
    this.startPosition = startPosition - 14;
    this.heightEyebrow = heightEyebrow;
    this.state = state;
    drawEyebrow();
  }
  
  void drawEyebrow() {  
    bezier(startPosition, heightEyebrow + state * -1, startPosition + 10 + state, heightEyebrow - 30 + state * -1, startPosition + 20 + state, heightEyebrow - 30 + state * -1, startPosition + 30 + state, heightEyebrow + state * -1);
  }
}
