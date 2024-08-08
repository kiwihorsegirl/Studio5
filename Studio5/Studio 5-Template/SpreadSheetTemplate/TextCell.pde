class TextCell extends AbstractCell {
 
  private String _value;
  
  public TextCell(int x, int y, int cWidth, int cHeight, int textSize, String value) {
    
    super(x, y, cWidth, cHeight, textSize);
    _value = value;
  }
  
   public void drawCell() {
     super.setUpCell();
    textSize (_textSize);
    text( _value, _position.x + _cellWidth / 2, _position.y + _textSize);
  }
  
}
