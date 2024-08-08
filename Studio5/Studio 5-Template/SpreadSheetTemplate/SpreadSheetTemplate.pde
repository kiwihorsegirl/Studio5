ArrayList<AbstractCell> cellList;

//Variables for testing the cell classes
//TextCell t1;

//NumericCell n1;

// Setup method
void setup()
{
  int x = 0;
  int y = 0;
  int cWidth = 0;
  int cHeight = 0;
  int textSize = 0;
  String textValue = "";
  float numericValue = 0;
  int numDP = 0;
  
  cellList = new ArrayList<AbstractCell>();
  
  // Size the sketch (don't change)
  size(600,600);
  
  
  
  //Create a new text cell object to test the TextCell class
  //t1 = new TextCell(200, 400,300, 100,50,"Name");
  
  //Create a new numeric cell object to test the NumericCell class
  //n1 = new NumericCell(50,50,300,100,50,13.0,2);
  
  String[] lineArray = loadStrings("scores.csv");
  

  
  //for (int i = 0; i < lineArray.length; i++) {
  //  String[] csvArray = split(lineArray[i], ',');
  
    for (String s: lineArray) {
    String[] csvArray = split(s, ',');
     
    // extract data and convert to correct datatype
    x = parseInt(csvArray[0]); 
    y = parseInt(csvArray[1]);
    cWidth = parseInt(csvArray[2]);
    cHeight = parseInt(csvArray[3]);
    textSize = parseInt(csvArray[4]);
     
    if (csvArray.length == 6) {

      textValue = csvArray[5];
      // create a new text cell obejct and add it to the array list.
      cellList.add(new TextCell(x, y, cWidth, cHeight, textSize, textValue));
      
    }
    else if (csvArray.length == 7){
     // extract data and convert to correct datatype
      numericValue = parseFloat(csvArray[5]);
      numDP = parseInt(csvArray[6]);
      cellList.add(new NumericCell(x, y, cWidth, cHeight, textSize, numericValue, numDP));
    }
  }
}

// Draw method
void draw()
{
  // White background
  background(255);
  
  //Draw the text cell
  //t1.drawCell();
  
  //Draw the numeric cell
  //n1.drawCell();
  
  //for (int i = 0; i < cellList.size(); i++) {
  //  cellList.get(i).drawCell();
  //}
  
  for (AbstractCell c: cellList) {
    
    c.drawCell();
  }
}
  
  void mousePressed(){
    
  }
  
  void keyPressed() {
    int amount = 0;
    if (key == '+') {
      amount = 5;
    }
    else if (key == '-') {
      amount = -5;
      }
      for(AbstractCell c: cellList){
      c.changeSize(amount); 
      }
    }

  
