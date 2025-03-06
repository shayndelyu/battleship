cmake_minimum_required(VERSION 3.10)
project(battleship)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Force MinGW Makefiles generator
if(NOT CMAKE_GENERATOR MATCHES "MinGW Makefiles")
    message(FATAL_ERROR "This project requires MinGW Makefiles generator")
endif()

add_executable(battleship 
    main.cpp
    Ship.cpp
    Board.cpp
    User.cpp
)
