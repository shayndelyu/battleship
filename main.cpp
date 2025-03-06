#include <iostream>
#include "User.h"
#include <random>
#include <ctime>
#include <chrono>

// Function to check if a ship placement is valid
bool isValidPlacement(const Board& board, int x, int y, int length, bool isHorizontal) {
    if (isHorizontal) {
        if (x + length > 10) return false;  // Check if ship goes out of bounds
        for (int i = 0; i < length; i++) {
            if (board.getCoordinate(x + i, y) != '.') return false;  // Check for overlap
        }
    } else {
        if (y + length > 10) return false;  // Check if ship goes out of bounds
        for (int i = 0; i < length; i++) {
            if (board.getCoordinate(x, y + i) != '.') return false;  // Check for overlap
        }
    }
    return true;
}

// Function to randomly place ships for a user
bool placeRandomShips(Board& board, bool isPlayer1) {
    // Use different seeds for each player based on current time and player number
    unsigned seed = std::chrono::system_clock::now().time_since_epoch().count() + (isPlayer1 ? 0 : 1000);
    std::mt19937 gen(seed);
    std::uniform_int_distribution<> dis(0, 9);
    std::uniform_int_distribution<> disBool(0, 1);

    // Ship configurations (length, icon) - different icons for each player
    const std::pair<int, char> ships[] = {
        {5, isPlayer1 ? 'C' : 'c'},  // Carrier
        {4, isPlayer1 ? 'B' : 'b'},  // Battleship
        {3, isPlayer1 ? 'R' : 'r'},  // Cruiser
        {3, isPlayer1 ? 'S' : 's'},  // Submarine
        {2, isPlayer1 ? 'D' : 'd'}   // Destroyer
    };

    // Try to place each ship
    for (const auto& ship : ships) {
        bool placed = false;
        int attempts = 0;
        const int maxAttempts = 100;  // Prevent infinite loop

        while (!placed && attempts < maxAttempts) {
            int x = dis(gen);
            int y = dis(gen);
            bool isHorizontal = disBool(gen) == 0;

            if (isValidPlacement(board, x, y, ship.first, isHorizontal)) {
                board.setShip(x, y, Ship(ship.first, ship.second, isHorizontal));
                placed = true;
            }
            attempts++;
        }

        if (!placed) {
            return false;  // Failed to place all ships
        }
    }
    return true;  // Successfully placed all ships
}

// Function to get valid coordinates from user
bool getValidCoordinates(int& x, int& y) {
    std::cout << "Enter coordinates (0-9) separated by space (e.g., '3 4'): ";
    if (!(std::cin >> x >> y)) {
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        return false;
    }
    return (x >= 0 && x < 10 && y >= 0 && y < 10);
}

int main() {
    User user, user2;
    bool endGame = false;
    std::string winner;

    // Place random ships for both users with different icons
    bool success = false;
    Board tempBoard1;
    while (!success) {
        tempBoard1 = Board();  // Reset board
        success = placeRandomShips(tempBoard1, true);
    }
    user = User(tempBoard1);  // Create user with the valid board

    // Add a small delay using a loop to ensure different random seeds
    for (volatile int i = 0; i < 1000000; i++) {}

    success = false;
    Board tempBoard2;
    while (!success) {
        tempBoard2 = Board();  // Reset board
        success = placeRandomShips(tempBoard2, false);
    }
    user2 = User(tempBoard2);  // Create user with the valid board

    // Create display boards (initially empty)
    Board displayBoard1, displayBoard2;

    std::cout << "DEBUG: User 1's actual board (with ships):\n";
    user.getBoard().print();
    std::cout << "\nDEBUG: User 2's actual board (with ships):\n";
    user2.getBoard().print();

    std::cout << "\nGame starting! Ships are hidden.\n\n";
    std::cout << "User 1's board (hits/misses):\n";
    displayBoard1.print();
    std::cout << "\nUser 2's board (hits/misses):\n";
    displayBoard2.print();

    do {
        int x, y;
        std::cout << "\nUser 1's turn\n";
        while (!getValidCoordinates(x, y)) {
            std::cout << "Invalid input! Please enter numbers between 0 and 9.\n";
        }

        char hitIcon = user2.launchMissile(x, y);  // User 1 attacks User 2's board
        displayBoard2.setCoordinate(x, y, hitIcon);
        std::cout << "User 2's board\n";
        displayBoard2.print();

        if (user2.isLoser()) {
            endGame = true;
            winner = "User 1 won!";
        }

        if (!endGame) {
            int x2, y2;
            std::cout << "\nUser 2's turn\n";
            while (!getValidCoordinates(x2, y2)) {
                std::cout << "Invalid input! Please enter numbers between 0 and 9.\n";
            }

            char hitIcon2 = user.launchMissile(x2, y2);  // User 2 attacks User 1's board
            displayBoard1.setCoordinate(x2, y2, hitIcon2);
            std::cout << "User 1's board\n";
            displayBoard1.print();

            if (user.isLoser()) {
                endGame = true;
                winner = "User 2 won!";
            }
        }
    } while (!endGame);
    std::cout << winner << std::endl;

    return 0;
}
