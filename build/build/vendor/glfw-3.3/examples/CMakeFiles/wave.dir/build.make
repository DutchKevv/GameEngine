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
CMAKE_SOURCE_DIR = /home/kewin/Projects/game-engine/game

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kewin/Projects/game-engine/build

# Include any dependencies generated for this target.
include build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/depend.make

# Include the progress variables for this target.
include build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/progress.make

# Include the compile flags for this target's objects.
include build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/flags.make

build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.o: build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/flags.make
build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.o: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/examples/wave.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.o"
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/examples && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wave.dir/wave.c.o   -c /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/examples/wave.c

build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave.dir/wave.c.i"
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/examples && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/examples/wave.c > CMakeFiles/wave.dir/wave.c.i

build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave.dir/wave.c.s"
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/examples && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/examples/wave.c -o CMakeFiles/wave.dir/wave.c.s

build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.o.requires:

.PHONY : build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.o.requires

build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.o.provides: build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.o.requires
	$(MAKE) -f build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/build.make build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.o.provides.build
.PHONY : build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.o.provides

build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.o.provides.build: build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.o


build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.o: build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/flags.make
build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.o: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.o"
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/examples && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/wave.dir/__/deps/glad_gl.c.o   -c /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/glad_gl.c

build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/wave.dir/__/deps/glad_gl.c.i"
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/examples && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/glad_gl.c > CMakeFiles/wave.dir/__/deps/glad_gl.c.i

build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/wave.dir/__/deps/glad_gl.c.s"
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/examples && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/glad_gl.c -o CMakeFiles/wave.dir/__/deps/glad_gl.c.s

build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.o.requires:

.PHONY : build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.o.requires

build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.o.provides: build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.o.requires
	$(MAKE) -f build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/build.make build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.o.provides.build
.PHONY : build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.o.provides

build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.o.provides.build: build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.o


# Object files for target wave
wave_OBJECTS = \
"CMakeFiles/wave.dir/wave.c.o" \
"CMakeFiles/wave.dir/__/deps/glad_gl.c.o"

# External object files for target wave
wave_EXTERNAL_OBJECTS =

build/vendor/glfw-3.3/examples/wave: build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.o
build/vendor/glfw-3.3/examples/wave: build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.o
build/vendor/glfw-3.3/examples/wave: build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/build.make
build/vendor/glfw-3.3/examples/wave: build/vendor/glfw-3.3/src/libglfw3.a
build/vendor/glfw-3.3/examples/wave: /usr/lib/x86_64-linux-gnu/libm.so
build/vendor/glfw-3.3/examples/wave: /usr/lib/x86_64-linux-gnu/librt.so
build/vendor/glfw-3.3/examples/wave: /usr/lib/x86_64-linux-gnu/libm.so
build/vendor/glfw-3.3/examples/wave: /usr/lib/x86_64-linux-gnu/libX11.so
build/vendor/glfw-3.3/examples/wave: build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kewin/Projects/game-engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable wave"
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wave.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/build: build/vendor/glfw-3.3/examples/wave

.PHONY : build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/build

build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/requires: build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/wave.c.o.requires
build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/requires: build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/__/deps/glad_gl.c.o.requires

.PHONY : build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/requires

build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/clean:
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/examples && $(CMAKE_COMMAND) -P CMakeFiles/wave.dir/cmake_clean.cmake
.PHONY : build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/clean

build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/depend:
	cd /home/kewin/Projects/game-engine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kewin/Projects/game-engine/game /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/examples /home/kewin/Projects/game-engine/build /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/examples /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : build/vendor/glfw-3.3/examples/CMakeFiles/wave.dir/depend

