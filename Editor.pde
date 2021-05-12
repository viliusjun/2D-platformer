// Editor class
// It is used for editing your own map

class Editor{
  
  public Editor(){
    
  }
  
  // Function that calls different draw functinos
  void changeMap(){
    background(255, 255, 255);
    arrangeTilesForEditing();
    drawGrid();
    drawPlayButton();
  }
  
  // We draw the tiles and the side of the screen
  void arrangeTilesForEditing(){
    int x = 51*16, y = 0;
    
    for (int i = 0; i < 12; i++) {
      for (int j = 1; j < 9; j++) {
        image(tiles[i * 16 + j], x, y, sizeOfTile/2, sizeOfTile/2);
        x += sizeOfTile/2;
      }
      
      y += sizeOfTile/2;
      x = 51*16;
    }
    
    x = 51*16;
    y = sizeOfTile/2 * 12;
    
    for (int i = 0; i < 12; i++) {
      for (int j = 9; j < 17; j++) {
        image(tiles[i * 16 + j], x, y, sizeOfTile/2, sizeOfTile/2);
        x += sizeOfTile/2;
      }
      
      y += sizeOfTile/2;
      x = 51*16;
    }
  }
  
  // We draw the grid of the map and if a tile is placed on it, then an image of the tile is drawn there
  void drawGrid(){
    int x = 0, y = 0;
    
    for (int i = 0; i < 20; i++){
      for (int j = 1; j <= 50; j++){
        if (filledTile[i*100+j] == 1){
          image(tiles[tileType[i*100+j]], x, y, sizeOfTile/2, sizeOfTile/2);
        }
        else{
          rect(x, y, sizeOfTile/2, sizeOfTile/2);
        }
        x += sizeOfTile/2;
      }
      
      y += sizeOfTile/2;
      x = 0;
    }
    
    x = 0;
    y = 325;
    
    for (int i = 0; i < 20; i++){
      for (int j = 1; j <= 50; j++){
        if (filledTile[i*100+j+50] == 1){
          image(tiles[tileType[i*100+j+50]], x, y, sizeOfTile/2, sizeOfTile/2);
        }
        else{
          rect(x, y, sizeOfTile/2, sizeOfTile/2);
        }
        x += sizeOfTile/2;
      }
      
      y += sizeOfTile/2;
      x = 0;
    }
  }
  
  // Function that draws the play button
  void drawPlayButton(){
    rect(840, 600, 80, 30);
    textSize(25);
    fill(0);
    text("Play", 855, 625);
    fill(255);
  }
  
  // Function that makes a tile image follow the mouse courser
  void carryTile(int n){
    image(tiles[n], mouseX, mouseY, sizeOfTile/2, sizeOfTile/2);
  }
  
}
