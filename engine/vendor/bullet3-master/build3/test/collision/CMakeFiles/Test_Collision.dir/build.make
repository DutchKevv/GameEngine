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
CMAKE_SOURCE_DIR = /home/kewin/Projects/game-engine/engine/vendor/bullet3-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3

# Include any dependencies generated for this target.
include test/collision/CMakeFiles/Test_Collision.dir/depend.make

# Include the progress variables for this target.
include test/collision/CMakeFiles/Test_Collision.dir/progress.make

# Include the compile flags for this target's objects.
include test/collision/CMakeFiles/Test_Collision.dir/flags.make

test/collision/CMakeFiles/Test_Collision.dir/main.o: test/collision/CMakeFiles/Test_Collision.dir/flags.make
test/collision/CMakeFiles/Test_Collision.dir/main.o: ../test/collision/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/collision/CMakeFiles/Test_Collision.dir/main.o"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Test_Collision.dir/main.o -c /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/test/collision/main.cpp

test/collision/CMakeFiles/Test_Collision.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Test_Collision.dir/main.i"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/test/collision/main.cpp > CMakeFiles/Test_Collision.dir/main.i

test/collision/CMakeFiles/Test_Collision.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Test_Collision.dir/main.s"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/test/collision/main.cpp -o CMakeFiles/Test_Collision.dir/main.s

test/collision/CMakeFiles/Test_Collision.dir/main.o.requires:

.PHONY : test/collision/CMakeFiles/Test_Collision.dir/main.o.requires

test/collision/CMakeFiles/Test_Collision.dir/main.o.provides: test/collision/CMakeFiles/Test_Collision.dir/main.o.requires
	$(MAKE) -f test/collision/CMakeFiles/Test_Collision.dir/build.make test/collision/CMakeFiles/Test_Collision.dir/main.o.provides.build
.PHONY : test/collision/CMakeFiles/Test_Collision.dir/main.o.provides

test/collision/CMakeFiles/Test_Collision.dir/main.o.provides.build: test/collision/CMakeFiles/Test_Collision.dir/main.o


test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o: test/collision/CMakeFiles/Test_Collision.dir/flags.make
test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o: ../src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o -c /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.i"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp > CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.i

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.s"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.s

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o.requires:

.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o.requires

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o.provides: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o.requires
	$(MAKE) -f test/collision/CMakeFiles/Test_Collision.dir/build.make test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o.provides.build
.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o.provides

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o.provides.build: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o


test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o: test/collision/CMakeFiles/Test_Collision.dir/flags.make
test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o: ../src/BulletCollision/CollisionShapes/btSphereShape.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o -c /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btSphereShape.cpp

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.i"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btSphereShape.cpp > CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.i

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.s"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btSphereShape.cpp -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.s

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o.requires:

.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o.requires

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o.provides: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o.requires
	$(MAKE) -f test/collision/CMakeFiles/Test_Collision.dir/build.make test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o.provides.build
.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o.provides

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o.provides.build: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o


test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o: test/collision/CMakeFiles/Test_Collision.dir/flags.make
test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o: ../src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o -c /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.i"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp > CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.i

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.s"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btMultiSphereShape.cpp -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.s

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o.requires:

.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o.requires

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o.provides: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o.requires
	$(MAKE) -f test/collision/CMakeFiles/Test_Collision.dir/build.make test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o.provides.build
.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o.provides

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o.provides.build: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o


test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o: test/collision/CMakeFiles/Test_Collision.dir/flags.make
test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o: ../src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o -c /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.i"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp > CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.i

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.s"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.s

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o.requires:

.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o.requires

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o.provides: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o.requires
	$(MAKE) -f test/collision/CMakeFiles/Test_Collision.dir/build.make test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o.provides.build
.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o.provides

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o.provides.build: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o


test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o: test/collision/CMakeFiles/Test_Collision.dir/flags.make
test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o: ../src/BulletCollision/CollisionShapes/btConvexShape.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o -c /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btConvexShape.cpp

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.i"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btConvexShape.cpp > CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.i

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.s"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btConvexShape.cpp -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.s

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o.requires:

.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o.requires

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o.provides: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o.requires
	$(MAKE) -f test/collision/CMakeFiles/Test_Collision.dir/build.make test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o.provides.build
.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o.provides

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o.provides.build: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o


test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o: test/collision/CMakeFiles/Test_Collision.dir/flags.make
test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o: ../src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o -c /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.i"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp > CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.i

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.s"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btConvexInternalShape.cpp -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.s

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o.requires:

.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o.requires

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o.provides: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o.requires
	$(MAKE) -f test/collision/CMakeFiles/Test_Collision.dir/build.make test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o.provides.build
.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o.provides

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o.provides.build: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o


test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o: test/collision/CMakeFiles/Test_Collision.dir/flags.make
test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o: ../src/BulletCollision/CollisionShapes/btCollisionShape.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o -c /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btCollisionShape.cpp

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.i"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btCollisionShape.cpp > CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.i

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.s"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btCollisionShape.cpp -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.s

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o.requires:

.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o.requires

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o.provides: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o.requires
	$(MAKE) -f test/collision/CMakeFiles/Test_Collision.dir/build.make test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o.provides.build
.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o.provides

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o.provides.build: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o


test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o: test/collision/CMakeFiles/Test_Collision.dir/flags.make
test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o: ../src/BulletCollision/CollisionShapes/btConvexPolyhedron.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o -c /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btConvexPolyhedron.cpp

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.i"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btConvexPolyhedron.cpp > CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.i

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.s"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/src/BulletCollision/CollisionShapes/btConvexPolyhedron.cpp -o CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.s

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o.requires:

.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o.requires

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o.provides: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o.requires
	$(MAKE) -f test/collision/CMakeFiles/Test_Collision.dir/build.make test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o.provides.build
.PHONY : test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o.provides

test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o.provides.build: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o


# Object files for target Test_Collision
Test_Collision_OBJECTS = \
"CMakeFiles/Test_Collision.dir/main.o" \
"CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o" \
"CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o" \
"CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o" \
"CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o" \
"CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o" \
"CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o" \
"CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o" \
"CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o"

# External object files for target Test_Collision
Test_Collision_EXTERNAL_OBJECTS =

test/collision/Test_Collision: test/collision/CMakeFiles/Test_Collision.dir/main.o
test/collision/Test_Collision: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o
test/collision/Test_Collision: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o
test/collision/Test_Collision: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o
test/collision/Test_Collision: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o
test/collision/Test_Collision: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o
test/collision/Test_Collision: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o
test/collision/Test_Collision: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o
test/collision/Test_Collision: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o
test/collision/Test_Collision: test/collision/CMakeFiles/Test_Collision.dir/build.make
test/collision/Test_Collision: src/LinearMath/libLinearMath.a
test/collision/Test_Collision: test/gtest-1.7.0/libgtest.a
test/collision/Test_Collision: test/collision/CMakeFiles/Test_Collision.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable Test_Collision"
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Test_Collision.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/collision/CMakeFiles/Test_Collision.dir/build: test/collision/Test_Collision

.PHONY : test/collision/CMakeFiles/Test_Collision.dir/build

test/collision/CMakeFiles/Test_Collision.dir/requires: test/collision/CMakeFiles/Test_Collision.dir/main.o.requires
test/collision/CMakeFiles/Test_Collision.dir/requires: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.o.requires
test/collision/CMakeFiles/Test_Collision.dir/requires: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btSphereShape.o.requires
test/collision/CMakeFiles/Test_Collision.dir/requires: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btMultiSphereShape.o.requires
test/collision/CMakeFiles/Test_Collision.dir/requires: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btPolyhedralConvexShape.o.requires
test/collision/CMakeFiles/Test_Collision.dir/requires: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexShape.o.requires
test/collision/CMakeFiles/Test_Collision.dir/requires: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexInternalShape.o.requires
test/collision/CMakeFiles/Test_Collision.dir/requires: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btCollisionShape.o.requires
test/collision/CMakeFiles/Test_Collision.dir/requires: test/collision/CMakeFiles/Test_Collision.dir/__/__/src/BulletCollision/CollisionShapes/btConvexPolyhedron.o.requires

.PHONY : test/collision/CMakeFiles/Test_Collision.dir/requires

test/collision/CMakeFiles/Test_Collision.dir/clean:
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision && $(CMAKE_COMMAND) -P CMakeFiles/Test_Collision.dir/cmake_clean.cmake
.PHONY : test/collision/CMakeFiles/Test_Collision.dir/clean

test/collision/CMakeFiles/Test_Collision.dir/depend:
	cd /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kewin/Projects/game-engine/engine/vendor/bullet3-master /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/test/collision /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3 /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision /home/kewin/Projects/game-engine/engine/vendor/bullet3-master/build3/test/collision/CMakeFiles/Test_Collision.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/collision/CMakeFiles/Test_Collision.dir/depend

