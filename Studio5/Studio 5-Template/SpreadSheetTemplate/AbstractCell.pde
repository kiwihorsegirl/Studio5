abstract class AbstractCell {
  
  protected PVector _position;
  protected int _cellWidth;
  protected int _cellHeight;
  protected int _textSize;
  
  public AbstractCell(int x, int y, int cWidth, int cHeight, int textSize) {
    
    _position = new PVector(x, y);
    _cellWidth = cWidth;
    _cellHeight = cHeight;
    _textSize = textSize;
    
  }
  
  public abstract void drawCell();
  
  public void setUpCell(){
    fill(255);
    rectMode(CORNER);
    rect(_position.x, _position.y, _cellWidth, _cellHeight);
    fill(0);
    textSize(_textSize);
    textAlign(CENTER);
  }
  
  public void changeSize(int amount) {
   
    _textSize += amount;
  }
  
}
