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
include build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/depend.make

# Include the progress variables for this target.
include build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/progress.make

# Include the compile flags for this target's objects.
include build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/flags.make

build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.o: build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/flags.make
build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.o: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/tests/title.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.o"
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/title.dir/title.c.o   -c /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/tests/title.c

build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/title.dir/title.c.i"
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/tests/title.c > CMakeFiles/title.dir/title.c.i

build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/title.dir/title.c.s"
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/tests/title.c -o CMakeFiles/title.dir/title.c.s

build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.o.requires:

.PHONY : build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.o.requires

build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.o.provides: build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.o.requires
	$(MAKE) -f build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/build.make build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.o.provides.build
.PHONY : build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.o.provides

build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.o.provides.build: build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.o


build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o: build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/flags.make
build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o"
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/title.dir/__/deps/glad_gl.c.o   -c /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/glad_gl.c

build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/title.dir/__/deps/glad_gl.c.i"
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/glad_gl.c > CMakeFiles/title.dir/__/deps/glad_gl.c.i

build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/title.dir/__/deps/glad_gl.c.s"
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/glad_gl.c -o CMakeFiles/title.dir/__/deps/glad_gl.c.s

build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o.requires:

.PHONY : build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o.requires

build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o.provides: build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o.requires
	$(MAKE) -f build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/build.make build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o.provides.build
.PHONY : build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o.provides

build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o.provides.build: build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o


# Object files for target title
title_OBJECTS = \
"CMakeFiles/title.dir/title.c.o" \
"CMakeFiles/title.dir/__/deps/glad_gl.c.o"

# External object files for target title
title_EXTERNAL_OBJECTS =

build/vendor/glfw-3.3/tests/title: build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.o
build/vendor/glfw-3.3/tests/title: build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o
build/vendor/glfw-3.3/tests/title: build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/build.make
build/vendor/glfw-3.3/tests/title: build/vendor/glfw-3.3/src/libglfw3.a
build/vendor/glfw-3.3/tests/title: /usr/lib/x86_64-linux-gnu/libm.so
build/vendor/glfw-3.3/tests/title: /usr/lib/x86_64-linux-gnu/librt.so
build/vendor/glfw-3.3/tests/title: /usr/lib/x86_64-linux-gnu/libm.so
build/vendor/glfw-3.3/tests/title: /usr/lib/x86_64-linux-gnu/libX11.so
build/vendor/glfw-3.3/tests/title: build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kewin/Projects/game-engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable title"
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/title.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/build: build/vendor/glfw-3.3/tests/title

.PHONY : build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/build

build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/requires: build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/title.c.o.requires
build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/requires: build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/__/deps/glad_gl.c.o.requires

.PHONY : build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/requires

build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/clean:
	cd /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/tests && $(CMAKE_COMMAND) -P CMakeFiles/title.dir/cmake_clean.cmake
.PHONY : build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/clean

build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/depend:
	cd /home/kewin/Projects/game-engine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kewin/Projects/game-engine/game /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/tests /home/kewin/Projects/game-engine/build /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/tests /home/kewin/Projects/game-engine/build/build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : build/vendor/glfw-3.3/tests/CMakeFiles/title.dir/depend

