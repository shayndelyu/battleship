#ifndef BATTLESHIP_USER_H
#define BATTLESHIP_USER_H

#include "Board.h"

class User {
private:
    Board board;

public:
    User();
    User(const Board& initialBoard);  // Constructor that takes a board
    char launchMissile(int x , int y);
    bool isLoser();
    Board& getBoard() { return board; }  // Getter for the board
};


#endif //BATTLESHIP_USER_H
