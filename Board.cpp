#include "Board.h"

Board::Board() {
    constexpr int kBoardSize = 10;
    for (int i = 0; i < kBoardSize; ++i) {
        board.push_back(std::vector<char>(10, '.'));
    }
}

void Board::print() {
    std::cout << "  0 1 2 3 4 5 6 7 8 9\n";  // Column numbers
    for (int i = 0; i < board.size(); ++i) {
        std::cout << i << " ";  // Row number
        for (char space : board[i]) {
            std::cout << space << " ";
        }
        std::cout << std::endl;
    }
}

char Board::getCoordinate(int x, int y) const {
    if (x < 0 || x >= 10 || y < 0 || y >= 10) {
        return '.';  // Return empty space for out of bounds
    }
    return board[y][x];  // Using [] instead of at() for better performance
}

void Board::setCoordinate(int x, int y, char icon) {
    if (x < 0 || x >= 10 || y < 0 || y >= 10) {
        return;  // Ignore out of bounds coordinates
    }
    board[y][x] = icon;  // Using [] instead of at() for better performance
}

void Board::setShip(int x, int y, Ship ship) {
    // First check if the starting position is valid
    if (x < 0 || x >= 10 || y < 0 || y >= 10) {
        return;  // Ignore out of bounds coordinates
    }

    // Then check if the entire ship would fit
    if (ship.getIsHorizontal()) {
        if (x + ship.getLength() > 10) return;  // Ship would go out of bounds horizontally
        // Check if any part of the ship would overlap with existing ships
        for (int i = 0; i < ship.getLength(); i++) {
            if (board[y][x + i] != '.') return;  // Found an overlap
        }
        // Place the ship
        for (int i = 0; i < ship.getLength(); i++) {
            board[y][x + i] = ship.getIcon();
        }
    } else {
        if (y + ship.getLength() > 10) return;  // Ship would go out of bounds vertically
        // Check if any part of the ship would overlap with existing ships
        for (int i = 0; i < ship.getLength(); i++) {
            if (board[y + i][x] != '.') return;  // Found an overlap
        }
        // Place the ship
        for (int i = 0; i < ship.getLength(); i++) {
            board[y + i][x] = ship.getIcon();
        }
    }
}

