# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo

# Include any dependencies generated for this target.
include BasicDemo/CMakeFiles/App_BasicExample.dir/depend.make

# Include the progress variables for this target.
include BasicDemo/CMakeFiles/App_BasicExample.dir/progress.make

# Include the compile flags for this target's objects.
include BasicDemo/CMakeFiles/App_BasicExample.dir/flags.make

BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.o: BasicDemo/CMakeFiles/App_BasicExample.dir/flags.make
BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.o: BasicExample.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.o"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/BasicDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/App_BasicExample.dir/BasicExample.o -c /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/BasicExample.cpp

BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/App_BasicExample.dir/BasicExample.i"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/BasicDemo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/BasicExample.cpp > CMakeFiles/App_BasicExample.dir/BasicExample.i

BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/App_BasicExample.dir/BasicExample.s"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/BasicDemo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/BasicExample.cpp -o CMakeFiles/App_BasicExample.dir/BasicExample.s

BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.o.requires:

.PHONY : BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.o.requires

BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.o.provides: BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.o.requires
	$(MAKE) -f BasicDemo/CMakeFiles/App_BasicExample.dir/build.make BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.o.provides.build
.PHONY : BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.o.provides

BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.o.provides.build: BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.o


BasicDemo/CMakeFiles/App_BasicExample.dir/main.o: BasicDemo/CMakeFiles/App_BasicExample.dir/flags.make
BasicDemo/CMakeFiles/App_BasicExample.dir/main.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object BasicDemo/CMakeFiles/App_BasicExample.dir/main.o"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/BasicDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/App_BasicExample.dir/main.o -c /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/main.cpp

BasicDemo/CMakeFiles/App_BasicExample.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/App_BasicExample.dir/main.i"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/BasicDemo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/main.cpp > CMakeFiles/App_BasicExample.dir/main.i

BasicDemo/CMakeFiles/App_BasicExample.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/App_BasicExample.dir/main.s"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/BasicDemo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/main.cpp -o CMakeFiles/App_BasicExample.dir/main.s

BasicDemo/CMakeFiles/App_BasicExample.dir/main.o.requires:

.PHONY : BasicDemo/CMakeFiles/App_BasicExample.dir/main.o.requires

BasicDemo/CMakeFiles/App_BasicExample.dir/main.o.provides: BasicDemo/CMakeFiles/App_BasicExample.dir/main.o.requires
	$(MAKE) -f BasicDemo/CMakeFiles/App_BasicExample.dir/build.make BasicDemo/CMakeFiles/App_BasicExample.dir/main.o.provides.build
.PHONY : BasicDemo/CMakeFiles/App_BasicExample.dir/main.o.provides

BasicDemo/CMakeFiles/App_BasicExample.dir/main.o.provides.build: BasicDemo/CMakeFiles/App_BasicExample.dir/main.o


# Object files for target App_BasicExample
App_BasicExample_OBJECTS = \
"CMakeFiles/App_BasicExample.dir/BasicExample.o" \
"CMakeFiles/App_BasicExample.dir/main.o"

# External object files for target App_BasicExample
App_BasicExample_EXTERNAL_OBJECTS =

BasicDemo/App_BasicExample: BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.o
BasicDemo/App_BasicExample: BasicDemo/CMakeFiles/App_BasicExample.dir/main.o
BasicDemo/App_BasicExample: BasicDemo/CMakeFiles/App_BasicExample.dir/build.make
BasicDemo/App_BasicExample: BasicDemo/CMakeFiles/App_BasicExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable App_BasicExample"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/BasicDemo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/App_BasicExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
BasicDemo/CMakeFiles/App_BasicExample.dir/build: BasicDemo/App_BasicExample

.PHONY : BasicDemo/CMakeFiles/App_BasicExample.dir/build

BasicDemo/CMakeFiles/App_BasicExample.dir/requires: BasicDemo/CMakeFiles/App_BasicExample.dir/BasicExample.o.requires
BasicDemo/CMakeFiles/App_BasicExample.dir/requires: BasicDemo/CMakeFiles/App_BasicExample.dir/main.o.requires

.PHONY : BasicDemo/CMakeFiles/App_BasicExample.dir/requires

BasicDemo/CMakeFiles/App_BasicExample.dir/clean:
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/BasicDemo && $(CMAKE_COMMAND) -P CMakeFiles/App_BasicExample.dir/cmake_clean.cmake
.PHONY : BasicDemo/CMakeFiles/App_BasicExample.dir/clean

BasicDemo/CMakeFiles/App_BasicExample.dir/depend:
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/BasicDemo /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/examples/BasicDemo/BasicDemo/CMakeFiles/App_BasicExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : BasicDemo/CMakeFiles/App_BasicExample.dir/depend

