#include "User.h"

User::User() {
}

User::User(const Board& initialBoard) : board(initialBoard) {
}

char User::launchMissile(int x, int y) {
    char target = board.getCoordinate(x, y);
    if (target == '.') {
        // Miss
        board.setCoordinate(x, y, 'o');
        return 'o';
    } else if (target == 'C' || target == 'c' ||  // Carrier
               target == 'B' || target == 'b' ||  // Battleship
               target == 'R' || target == 'r' ||  // Cruiser
               target == 'S' || target == 's' ||  // Submarine
               target == 'D' || target == 'd') {  // Destroyer
        // Hit
        board.setCoordinate(x, y, 'x');
        return 'x';
    }
    return target; // Already hit or missed
}

bool User::isLoser() {
    // Check if any ships remain on the board
    for (int y = 0; y < 10; y++) {
        for (int x = 0; x < 10; x++) {
            char cell = board.getCoordinate(x, y);
            if (cell == 'C' || cell == 'c' ||  // Carrier
                cell == 'B' || cell == 'b' ||  // Battleship
                cell == 'R' || cell == 'r' ||  // Cruiser
                cell == 'S' || cell == 's' ||  // Submarine
                cell == 'D' || cell == 'd') {  // Destroyer
                return false; // Found a ship
            }
        }
    }
    return true; // No ships found
}