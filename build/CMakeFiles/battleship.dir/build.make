# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\shayndel\OneDrive\CLionProjects\battleship

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\shayndel\OneDrive\CLionProjects\battleship\build

# Include any dependencies generated for this target.
include CMakeFiles/battleship.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/battleship.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/battleship.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/battleship.dir/flags.make

CMakeFiles/battleship.dir/main.cpp.obj: CMakeFiles/battleship.dir/flags.make
CMakeFiles/battleship.dir/main.cpp.obj: C:/Users/shayndel/OneDrive/CLionProjects/battleship/main.cpp
CMakeFiles/battleship.dir/main.cpp.obj: CMakeFiles/battleship.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\shayndel\OneDrive\CLionProjects\battleship\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/battleship.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/battleship.dir/main.cpp.obj -MF CMakeFiles\battleship.dir\main.cpp.obj.d -o CMakeFiles\battleship.dir\main.cpp.obj -c C:\Users\shayndel\OneDrive\CLionProjects\battleship\main.cpp

CMakeFiles/battleship.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/battleship.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\shayndel\OneDrive\CLionProjects\battleship\main.cpp > CMakeFiles\battleship.dir\main.cpp.i

CMakeFiles/battleship.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/battleship.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\shayndel\OneDrive\CLionProjects\battleship\main.cpp -o CMakeFiles\battleship.dir\main.cpp.s

CMakeFiles/battleship.dir/Ship.cpp.obj: CMakeFiles/battleship.dir/flags.make
CMakeFiles/battleship.dir/Ship.cpp.obj: C:/Users/shayndel/OneDrive/CLionProjects/battleship/Ship.cpp
CMakeFiles/battleship.dir/Ship.cpp.obj: CMakeFiles/battleship.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\shayndel\OneDrive\CLionProjects\battleship\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/battleship.dir/Ship.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/battleship.dir/Ship.cpp.obj -MF CMakeFiles\battleship.dir\Ship.cpp.obj.d -o CMakeFiles\battleship.dir\Ship.cpp.obj -c C:\Users\shayndel\OneDrive\CLionProjects\battleship\Ship.cpp

CMakeFiles/battleship.dir/Ship.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/battleship.dir/Ship.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\shayndel\OneDrive\CLionProjects\battleship\Ship.cpp > CMakeFiles\battleship.dir\Ship.cpp.i

CMakeFiles/battleship.dir/Ship.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/battleship.dir/Ship.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\shayndel\OneDrive\CLionProjects\battleship\Ship.cpp -o CMakeFiles\battleship.dir\Ship.cpp.s

CMakeFiles/battleship.dir/Board.cpp.obj: CMakeFiles/battleship.dir/flags.make
CMakeFiles/battleship.dir/Board.cpp.obj: C:/Users/shayndel/OneDrive/CLionProjects/battleship/Board.cpp
CMakeFiles/battleship.dir/Board.cpp.obj: CMakeFiles/battleship.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\shayndel\OneDrive\CLionProjects\battleship\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/battleship.dir/Board.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/battleship.dir/Board.cpp.obj -MF CMakeFiles\battleship.dir\Board.cpp.obj.d -o CMakeFiles\battleship.dir\Board.cpp.obj -c C:\Users\shayndel\OneDrive\CLionProjects\battleship\Board.cpp

CMakeFiles/battleship.dir/Board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/battleship.dir/Board.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\shayndel\OneDrive\CLionProjects\battleship\Board.cpp > CMakeFiles\battleship.dir\Board.cpp.i

CMakeFiles/battleship.dir/Board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/battleship.dir/Board.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\shayndel\OneDrive\CLionProjects\battleship\Board.cpp -o CMakeFiles\battleship.dir\Board.cpp.s

CMakeFiles/battleship.dir/User.cpp.obj: CMakeFiles/battleship.dir/flags.make
CMakeFiles/battleship.dir/User.cpp.obj: C:/Users/shayndel/OneDrive/CLionProjects/battleship/User.cpp
CMakeFiles/battleship.dir/User.cpp.obj: CMakeFiles/battleship.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\shayndel\OneDrive\CLionProjects\battleship\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/battleship.dir/User.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/battleship.dir/User.cpp.obj -MF CMakeFiles\battleship.dir\User.cpp.obj.d -o CMakeFiles\battleship.dir\User.cpp.obj -c C:\Users\shayndel\OneDrive\CLionProjects\battleship\User.cpp

CMakeFiles/battleship.dir/User.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/battleship.dir/User.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\shayndel\OneDrive\CLionProjects\battleship\User.cpp > CMakeFiles\battleship.dir\User.cpp.i

CMakeFiles/battleship.dir/User.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/battleship.dir/User.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\shayndel\OneDrive\CLionProjects\battleship\User.cpp -o CMakeFiles\battleship.dir\User.cpp.s

# Object files for target battleship
battleship_OBJECTS = \
"CMakeFiles/battleship.dir/main.cpp.obj" \
"CMakeFiles/battleship.dir/Ship.cpp.obj" \
"CMakeFiles/battleship.dir/Board.cpp.obj" \
"CMakeFiles/battleship.dir/User.cpp.obj"

# External object files for target battleship
battleship_EXTERNAL_OBJECTS =

battleship.exe: CMakeFiles/battleship.dir/main.cpp.obj
battleship.exe: CMakeFiles/battleship.dir/Ship.cpp.obj
battleship.exe: CMakeFiles/battleship.dir/Board.cpp.obj
battleship.exe: CMakeFiles/battleship.dir/User.cpp.obj
battleship.exe: CMakeFiles/battleship.dir/build.make
battleship.exe: CMakeFiles/battleship.dir/linkLibs.rsp
battleship.exe: CMakeFiles/battleship.dir/objects1.rsp
battleship.exe: CMakeFiles/battleship.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\shayndel\OneDrive\CLionProjects\battleship\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable battleship.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\battleship.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/battleship.dir/build: battleship.exe
.PHONY : CMakeFiles/battleship.dir/build

CMakeFiles/battleship.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\battleship.dir\cmake_clean.cmake
.PHONY : CMakeFiles/battleship.dir/clean

CMakeFiles/battleship.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\shayndel\OneDrive\CLionProjects\battleship C:\Users\shayndel\OneDrive\CLionProjects\battleship C:\Users\shayndel\OneDrive\CLionProjects\battleship\build C:\Users\shayndel\OneDrive\CLionProjects\battleship\build C:\Users\shayndel\OneDrive\CLionProjects\battleship\build\CMakeFiles\battleship.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/battleship.dir/depend

