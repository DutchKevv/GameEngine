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
CMAKE_BINARY_DIR = /home/kewin/Projects/game-engine/game/build/linux

# Include any dependencies generated for this target.
include /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/depend.make

# Include the progress variables for this target.
include /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/progress.make

# Include the compile flags for this target's objects.
include /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/flags.make

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.o: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/flags.make
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.o: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/tests/msaa.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/game/build/linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.o"
	cd /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/msaa.dir/msaa.c.o   -c /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/tests/msaa.c

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msaa.dir/msaa.c.i"
	cd /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/tests/msaa.c > CMakeFiles/msaa.dir/msaa.c.i

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msaa.dir/msaa.c.s"
	cd /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/tests/msaa.c -o CMakeFiles/msaa.dir/msaa.c.s

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.o.requires:

.PHONY : /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.o.requires

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.o.provides: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.o.requires
	$(MAKE) -f /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/build.make /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.o.provides.build
.PHONY : /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.o.provides

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.o.provides.build: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.o


/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/flags.make
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/game/build/linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o"
	cd /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/msaa.dir/__/deps/getopt.c.o   -c /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/getopt.c

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msaa.dir/__/deps/getopt.c.i"
	cd /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/getopt.c > CMakeFiles/msaa.dir/__/deps/getopt.c.i

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msaa.dir/__/deps/getopt.c.s"
	cd /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/getopt.c -o CMakeFiles/msaa.dir/__/deps/getopt.c.s

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o.requires:

.PHONY : /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o.requires

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o.provides: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o.requires
	$(MAKE) -f /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/build.make /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o.provides.build
.PHONY : /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o.provides

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o.provides.build: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o


/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/flags.make
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/game-engine/game/build/linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o"
	cd /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/msaa.dir/__/deps/glad_gl.c.o   -c /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/glad_gl.c

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msaa.dir/__/deps/glad_gl.c.i"
	cd /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/glad_gl.c > CMakeFiles/msaa.dir/__/deps/glad_gl.c.i

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msaa.dir/__/deps/glad_gl.c.s"
	cd /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests && /usr/bin/c99-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/deps/glad_gl.c -o CMakeFiles/msaa.dir/__/deps/glad_gl.c.s

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o.requires:

.PHONY : /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o.requires

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o.provides: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o.requires
	$(MAKE) -f /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/build.make /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o.provides.build
.PHONY : /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o.provides

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o.provides.build: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o


# Object files for target msaa
msaa_OBJECTS = \
"CMakeFiles/msaa.dir/msaa.c.o" \
"CMakeFiles/msaa.dir/__/deps/getopt.c.o" \
"CMakeFiles/msaa.dir/__/deps/glad_gl.c.o"

# External object files for target msaa
msaa_EXTERNAL_OBJECTS =

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/msaa: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.o
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/msaa: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/msaa: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/msaa: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/build.make
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/msaa: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/src/libglfw3.a
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/msaa: /usr/lib/x86_64-linux-gnu/libm.so
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/msaa: /usr/lib/x86_64-linux-gnu/librt.so
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/msaa: /usr/lib/x86_64-linux-gnu/libm.so
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/msaa: /usr/lib/x86_64-linux-gnu/libX11.so
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/msaa: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kewin/Projects/game-engine/game/build/linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable msaa"
	cd /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/msaa.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/build: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/msaa

.PHONY : /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/build

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/requires: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/msaa.c.o.requires
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/requires: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o.requires
/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/requires: /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o.requires

.PHONY : /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/requires

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/clean:
	cd /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/msaa.dir/cmake_clean.cmake
.PHONY : /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/clean

/home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/depend:
	cd /home/kewin/Projects/game-engine/game/build/linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kewin/Projects/game-engine/game /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/tests /home/kewin/Projects/game-engine/game/build/linux /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : /home/kewin/Projects/game-engine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/msaa.dir/depend

