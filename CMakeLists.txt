cmake_minimum_required(VERSION 3.10)
project(battleship)

set(CMAKE_CXX_STANDARD 17)

add_executable(battleship 
    main.cpp
    Ship.cpp
    Board.cpp
    User.cpp
)
