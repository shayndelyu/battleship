# Battleship Game

A console-based implementation of the classic Battleship game in C++.

## Features

- Two-player gameplay
- Random ship placement
- Visual board display
- Hit/miss tracking
- Different ship types (Carrier, Battleship, Cruiser, Submarine, Destroyer)

## Building the Game

### Prerequisites

- C++ compiler (g++ or MSVC)
- CMake (version 3.10 or higher)

### Build Instructions

1. Create a build directory:
```bash
mkdir build
cd build
```

2. Generate build files:
```bash
cmake ..
```

3. Build the project:
```bash
cmake --build .
```

4. Run the game:
```bash
./battleship
```

## How to Play

1. The game starts by randomly placing ships for both players
2. Players take turns entering coordinates (x y) to attack
3. Hits are marked with 'x' and misses with 'o'
4. The game continues until one player's ships are all sunk
5. The winner is announced

## Ship Types

- Carrier (5 spaces)
- Battleship (4 spaces)
- Cruiser (3 spaces)
- Submarine (3 spaces)
- Destroyer (2 spaces) 