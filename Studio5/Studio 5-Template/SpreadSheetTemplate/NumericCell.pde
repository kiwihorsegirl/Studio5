class NumericCell extends AbstractCell {
 
  private float _value;
  private int _numDP;
  
  
  public NumericCell(int x, int y, int cWidth, int cHeight, int textSize, float value, int numDP) {
    
        super(x, y, cWidth, cHeight, textSize);
        _value = value;
        _numDP = numDP;
  }
  
  public void drawCell() {

    super.setUpCell();
    
    String temp = nf(_value, 0, _numDP);
    text(temp, _position.x + _cellWidth / 2, _position.y + _textSize);
    
  }
}
