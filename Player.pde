// Player class
// It is used for drawing different player animatinos, to check tile collision with player, and to make the player move

class Player{
  int playerX = 425, playerY = 550; // starting coordinates of the player
  int playerWidth = 16, playerHeight = 32; // the width and height of the character
  
  int horizontalSpeed = 6; // 4 the speed of horizontal movement
  int verticalSpeed = 0; // the speed of vertical jumps 
  int gravity = 1; // gravity
  
  public Player(){
    
  }
  
  // Function that sets the player Images based on collision and keyboard movement
  void setPlayerImage() {
    if(keyPressed){
      gravity = 1;
      
      
        if (left){
          if (map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 2 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 19 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 20 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 35 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 36 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 51 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 52 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 74 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 91 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 92 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 107 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 108 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 123 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 124 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 66 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 87 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 83 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 84 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 99 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 100 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 115 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 116 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 10 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 27 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 28 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 43 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 44 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 59 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 60 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 138 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 155 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 156 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 171 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 172 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 187 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 188 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 149 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 165){
            if (cameraX <= 0 && playerX < 425){
              cameraX += horizontalSpeed + 1;
            }
            else {
              playerX -= horizontalSpeed;
            }
            image(playerTiles[13], playerX, playerY);
            image(playerTiles[14], playerX, playerY);
            image(playerTiles[15], playerX, playerY);
          }
          else{
            image(playerTiles[1], playerX, playerY);
          }
        }
          
          
        if (right){
          if (map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 2 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 17 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 20 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 33 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 36 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 49 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 52 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 74 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 89 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 92 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 105 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 108 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 121 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 124 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 66 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 85 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 81 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 84 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 97 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 100 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 113 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 116 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 10 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 25 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 28 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 41 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 44 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 57 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 60 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 138 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 153 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 156 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 169 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 172 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 185 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 188 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 146 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 162){
            if (playerX < 425 || cameraX <= -2250){
              playerX += horizontalSpeed;
            }
            else {
              cameraX -= horizontalSpeed + 1;
            }
            image(playerTiles[5], playerX, playerY);
            image(playerTiles[6], playerX, playerY);
            image(playerTiles[7], playerX, playerY);
          }
          else{
            image(playerTiles[1], playerX, playerY);
          }
        }
        
  
        if (up){
          if (playerY > 2){
            if ( map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 49 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 50 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 51 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 52 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 121 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 122 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 123 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 124 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 113 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 114 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 115 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 116 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 57 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 58 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 59 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 60 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 185 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 186 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 187 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 188 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 162 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 163 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 169 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 165){
              if (map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 2 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 21 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 22 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 23 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 17 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 18 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 19 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 20 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 74 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 93 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 94 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 95 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 89 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 90 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 91 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 92 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 66 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 85 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 86 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 87 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 81 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 82 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 83 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 84 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 10 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 25 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 26 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 27 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 28 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 29 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 30 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 31 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 138 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 153 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 154 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 155 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 156 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 157 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 158 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 159 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 146 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 147 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 148 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 149 || playerY >= 620){ 
                verticalSpeed = -20; 
                playerY += verticalSpeed;
                verticalSpeed += gravity;
                playerY = constrain(playerY, 0, 620);
                image(playerTiles[10], playerX, playerY);
                image(playerTiles[11], playerX, playerY);
              }
              else {
              image(playerTiles[1], playerX, playerY);
              }
            }
            else {
              image(playerTiles[1], playerX, playerY);
            }
          }
          else {
             playerY += 1; 
          }
        }
        
        
        if (down){      
            if (map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 2 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 21 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 22 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 23 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 17 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 18 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 19 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 20 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 74 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 93 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 94 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 95 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 89 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 90 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 91 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 92 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 66 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 85 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 86 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 87 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 81 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 82 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 83 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 84 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 10 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 25 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 26 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 27 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 28 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 29 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 30 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 31 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 138 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 153 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 154 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 155 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 156 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 157 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 158 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 159 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 146 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 147 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 148 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 149){
              verticalSpeed = 8;
              playerY += verticalSpeed;
              image(playerTiles[2], playerX, playerY);
              image(playerTiles[3], playerX, playerY);
            }
            else{
              image(playerTiles[1], playerX, playerY);
            }
        }
        
        // we make sure that the player does not go over the screen bounderies
        if (playerX > 925){
          playerX -= horizontalSpeed;
        }
        else if (playerX < 0){
          playerX += horizontalSpeed;
        }
        if (playerY > 620){
          playerY -= horizontalSpeed;
        }
        else if (playerY < 0){
          playerY += horizontalSpeed;
        }
        
          
      }
      else{
        image(playerTiles[1], playerX, playerY);
      }
      
      // if a spike's tile is touched you restart that level
      if (map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 67 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 101 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 102 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 103 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 117 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 118 || map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 119){
        playerX = 300;
        playerY = 550;
        cameraX = 0;
        cameraY = 0;
      }
      
      // if you press r, you restart that level
      if (keyPressed){
        if (key == 'r'){
          playerX = 300;
          playerY = 500;
          cameraX = 0;
          cameraY = 0;
        }
      }
      
      // if we are not touching any ground tiles, then make the player fall due to gravity
      if (map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 2 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 21 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 22 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 23 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 17 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 18 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 19 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 20 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 74 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 93 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 94 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 95 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 89 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 90 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 91 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 92 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 66 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 85 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 86 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 87 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 81 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 82 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 83 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 84 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 10 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 25 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 26 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 27 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 28 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 29 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 30 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 31 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 138 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 153 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 154 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 155 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 156 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 157 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 158 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 159 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 146 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 147 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 148 && map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] != 149){
        playerY += verticalSpeed;
        verticalSpeed += gravity;
        playerY = constrain(playerY, 0, 620);
      }
      
      // if we touch the teleporter ball, then we go to the next level
      if (map[positionInTheMap(playerX - cameraX, playerY, mapTilesX)] == 4){
        if (game == 1){
          game = -1;
        }
        else if (game == 2){
          game = -2;
        }
        else if (game == 3 || game == 4){
          game = -3;
        } 
        playerX = 300;
        playerY = 550;
        cameraX = 0;
        cameraY = 0;
      }
      
    }
    
    // Function that returns at which tile the player is standing on
    int positionInTheMap(int x, int y, int mapTilesX){
      int tileCounterX, tileCounterY;
      int counter = 0;
      
      while (counter < x - playerHeight/2) {
        counter += sizeOfTile;
      }
      
      tileCounterX  = counter / sizeOfTile;
      
      counter = 0;
      
      while (counter < y) {
         counter += sizeOfTile;
      }
      tileCounterY = counter / sizeOfTile;
      
      return tileCounterY * mapTilesX + tileCounterX;
    }

}
