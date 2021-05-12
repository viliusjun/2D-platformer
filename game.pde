/*
* @author Vilius Junevičius, software engineering, group 4
* vilius.junevicius@mif.stud.vu.lt
*
* 2D platformer game
*   a three level platformer game
*   with a map editor
*
*
*  game controlls:
*   w, a, s, d - for movement
*   r - restart level
*   m - go back to title screen
*   esc - exit game
*/

PImage player, tileSet, backGround1, backGround2, backGround3; // all images
PImage[] tiles = new PImage[272]; // small images of each tile
PImage[] playerTiles = new PImage[16]; // small images of each player animation

JSONObject json, layer;
JSONArray layers, array;

int[] map = new int[2121]; // every map tile position 101*21
Player p = new Player(); // player class
Editor edit = new Editor(); // Editor class

int sizeOfTile = 32; // the edge length of a square tile is 32 

int mapTilesX = 100, mapTilesY = 20; // the number of tiles in the X and Y axis
int cameraX = 0, cameraY = 0; // the camera position X and Y

int game = 0; // game mode

int carryingTileNr = -1; // the number of the tile we are carrying

int[] filledTile = new int[2121]; // array of ones and zeros, 0 - no tile, 1 - the tile is placed
int[] tileType = new int[2121]; // array of the whole map rembembering the tile number that is placed


boolean left, right, up, down; // booleans for movement

boolean carry = false; // if a tile is being carryed by the mouse cursor, carry = true
boolean blueBall = true; // if a blue ball tile is placed on the grid, blueBall = true;


void setup() {
  // we load all the images
  player = loadImage("player.png");
  tileSet = loadImage("tileSet.png");
  backGround1 = loadImage("bg.jpg");
  backGround2 = loadImage("bg2.jpg");
  backGround3 = loadImage("bg3.png");
  
  // we load the .json file and cut out all the tiles
  loadJSON();
  getTiles();
  getPlayerTiles();
  
  // we inicialize the movement booleans to false
  left = false;
  right = false;
  up = false;
  down = false;
  
  size(950, 645);
  background(100);
}

void draw() {

  // different text messages a the start of every level
  if (game == 0){
    background(0, 0, 0);
    textSize(64);
    text("2D platformer!", width/2 - 240, height/2 - 64);
    textSize(32);
    text("Vilius Junevičius", width/2 - 150, height/2 + 32);
    textSize(16);
    text("Press enter to start the game", width/2 - 140, height/2 + 32 * 3);
    text("Press tab to edit your own map", width/2 - 145, height/2 + 32 * 4);
    
    image(playerTiles[1], 420, 480, 32, 64);
    image(tiles[8], 465, 500, 32, 32);
    
    // if enter is pressed, we start level 1
    if (keyPressed){
       if (key == '\n'){
         game = 1; 
       }
    }
    
    // if tab is pressed, we open the map editor
    if (keyPressed){
      if (key == '\t'){
        game = 5; 
      }
    }
  }
  else if (game == -1){
    background(0, 0, 0);
    textSize(48);
    text("Good job!", width/2 - 120, height/2 - 32);
    textSize(32);
    text("Level 2 ... ", width/2 - 80, height/2 + 32);
    textSize(16);
    text("Press enter to continue", width/2 - 100, height/2 + 32 * 3);
    
    // if enter is pressed, we start the second level
    if (keyPressed){
       if (key == '\n'){
         game = 2; 
         changeArrayElements("data2");
       }
    }
  }
  else if (game == -2){
    background(0, 0, 0);
    textSize(48);
    text("Great job!", width/2 - 120, height/2 - 32);
    textSize(32);
    text("Level 3 ... ", width/2 - 80, height/2 + 32);
    textSize(16);
    text("Press enter to continue", width/2 - 100, height/2 + 32 * 3);
    
    // if enter is pressed, we start the third level
    if (keyPressed){
       if (key == '\n'){
         game = 3; 
         changeArrayElements("data3");
       }
    }
  }
  else if (game == -3){
    background(0, 0, 0);
    textSize(64);
    text("Victory!", width/2 - 120, height/2 - 32);
    textSize(16);
    text("Press space to restart the game", width/2 - 120, height/2 + 32 * 3);
    
    // if space is pressed, we restart the game, meaning we show the title screen
    if (keyPressed){
       if (key == ' '){
         game = 0; 
         changeArrayElements("data");
       }
    }
  }
  else{
    // we call functinos that draw each levels map
    setBackGround();
    setMap();
    p.setPlayerImage();
  }
  
  if (game == 5){
    edit.changeMap();
    if (keyPressed){
      if (key == '\n'){
        boolean flag = false;
        for (int i = 0; i < 2121; i++){
          if (tileType[i] == 4){
            flag = true;
          }
        }
        
        if (flag == true){
          for (int i = 0; i < array.size(); i++) {
            map[i] = tileType[i];
          }
          blueBall = true;
          game = 4;
         }
         else {
           blueBall = false;
         }
      }
    }
    if (mousePressed){
      if (mouseX >= 840 && mouseX <= 920 && mouseY >= 600 && mouseY <= 630){
        boolean flag = false;
        for (int i = 0; i < 2121; i++){
          if (tileType[i] == 4){
            flag = true;
          }
        }
        
        if (flag == true){
          for (int i = 0; i < array.size(); i++) {
            map[i] = tileType[i];
          }
          blueBall = true;
          game = 4;
        }
        else {
          blueBall = false;
        }
      }
    }
    
    if (blueBall == false){
      textSize(16);
      fill(0);
      text("You need the blue", 803, 425);
      text("ball tile (teleporter)", 803, 441);
      text("placed on the map", 803, 457);
      text("to active this level", 803, 473);
      fill(255);
    }
  }
  
  
  if (game == 5 && carry == true && carryingTileNr != -1){
    edit.carryTile(carryingTileNr);
  }
  
  if (keyPressed){
    if (key == 'm'){
      game = 0;
      changeArrayElements("data");
      p.playerX = 300;
      p.playerY = 500;
    }
  }
 
}


// Function that loads the .json file
void loadJSON(){
  json = loadJSONObject("data.json");
  layers = json.getJSONArray("layers");
  layer = layers.getJSONObject(0);
  array = layer.getJSONArray("data");
  for (int i = 0; i < array.size(); i++) {
    map[i] = array.getInt(i);
  }
  
}

// Funtion that cuts out all the tiles and puts it into an array
void getTiles() {
  int x = 0, y = 0;
  
  // empty tile
  tiles[0] = tileSet.get(0, 0, sizeOfTile, sizeOfTile);
  
  for (int i = 0; i < 16; i++) {
    for (int j = 1; j < 17; j++) {
      tiles[i * 16 + j] = tileSet.get(x, y, sizeOfTile, sizeOfTile);
      x += sizeOfTile;
    }
    
    y += sizeOfTile;
    x = 0;
  }
  
}

// Function that cuts out all the player animations and puts it into an array
void getPlayerTiles() {
  int x = 0, y = 0;
  
  for (int i = 0; i < 4; i++) {
    for (int j = 1; j < 4; j++) {
      playerTiles[i * 4 + j] = player.get(x, y, p.playerWidth, p.playerHeight);
      x += p.playerWidth;
    }
    y += p.playerHeight;
    x = 0;
  }
}

// Function that sets the background image
void setBackGround() {
  if (game == 1 || game == 4){
    image(backGround1, 0, 0);
  }
  else if (game == 2){
      image(backGround2, 0, 0); 
  }
  else if (game == 3){
      image(backGround3, 0, 0); 
  }
}

// Function that sets the tiles on the map
void setMap() {
  int x = cameraX, y = cameraY;
  int counter = 0;
  
  for (int i = 0; i < mapTilesY; i++) {
    for (int j = 0; j < mapTilesX; j++) {
      image(tiles[map[counter]], x, y); 
      counter++;
      x += sizeOfTile;
    }
    y += sizeOfTile;
    x = cameraX;
  }
  
}

// Function that changes the map layout but reading different .json data arrays
void changeArrayElements(String dataNr){
  array = layer.getJSONArray(dataNr);
  for (int i = 0; i < array.size(); i++) {
    map[i] = array.getInt(i);
  }
}

// Function that changes the spesific boolean to true if a that certain key is pressed
void keyPressed(){
  switch(keyCode) {
    case 65:
      left = true;
      break;
    case 68:
      right = true;
      break;
    case 87:
      up = true;
      break;
    case 83:
      down = true;
      break;
  }
}

// Function that changes the spesific boolean to false if a that certain key is released
void keyReleased(){
  switch(keyCode) {
    case 65:
      left = false;
      break;
    case 68:
      right = false;
      break;
    case 87:
      up = false;
      break;
    case 83:
      down = false;
      break;
  }
}

// Function that remembers which tile is clicked and into which place on the map the tile is placed
void mouseClicked() {
  int counterX = 816, counterY = 0;
  int tileNumberX, tileNumberY;
  
  if (game == 5){
    
    if (mouseX >= 816 && mouseX <= 944 && mouseY >= 0 && mouseY <= 384){
      
      while (counterX < mouseX) {
        counterX += sizeOfTile/2;
      }
      tileNumberX  = (counterX - 816) / (sizeOfTile/2);
      
      
      while (counterY < mouseY) {
         counterY += sizeOfTile/2;
      }
      tileNumberY = counterY / (sizeOfTile/2);
      
      
      if (mouseY <= 192){ 
        carryingTileNr = (tileNumberY - 1) * 16 + tileNumberX;
      }
      else {
        carryingTileNr = ((tileNumberY - 12) - 1) * 16 + tileNumberX + 8;
      }
      
      carry = true;
    }
      
    if (mouseX >= 0 && mouseX <= 800 && carry == true){
      counterX = 0;
      counterY = 0;
      
      while (counterX < mouseX) {
        counterX += sizeOfTile/2;
      }
      tileNumberX  = counterX / (sizeOfTile/2);
      
      if (mouseY > 320){
        while (counterY < (mouseY - 5)) {
           counterY += sizeOfTile/2;
        }
      }
      else {
        while (counterY < mouseY) {
           counterY += sizeOfTile/2;
        }
      }
      tileNumberY = counterY / (sizeOfTile/2);
      
      if (mouseY > 320){ 
        filledTile[((tileNumberY - 20) - 1) * 100 + tileNumberX + 50] = 1;
        tileType[((tileNumberY - 20) - 1) * 100 + tileNumberX + 50] = carryingTileNr;
      }
      else {
        filledTile[(tileNumberY - 1) * 100 + tileNumberX] = 1;
        tileType[(tileNumberY - 1) * 100 + tileNumberX] = carryingTileNr;
      }
    }
    
    
  }
}
