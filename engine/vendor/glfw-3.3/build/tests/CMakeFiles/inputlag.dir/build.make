# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/kewin/Projects/GameEngine/game

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kewin/Projects/GameEngine/game/build/linux

# Include any dependencies generated for this target.
include /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/depend.make

# Include the progress variables for this target.
include /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/progress.make

# Include the compile flags for this target's objects.
include /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/flags.make

/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/inputlag.c.o: /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/flags.make
/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/inputlag.c.o: /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/tests/inputlag.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/GameEngine/game/build/linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/inputlag.c.o"
	cd /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests && /bin/x86_64-linux-gnu-gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/inputlag.dir/inputlag.c.o   -c /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/tests/inputlag.c

/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/inputlag.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/inputlag.dir/inputlag.c.i"
	cd /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests && /bin/x86_64-linux-gnu-gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/tests/inputlag.c > CMakeFiles/inputlag.dir/inputlag.c.i

/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/inputlag.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/inputlag.dir/inputlag.c.s"
	cd /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests && /bin/x86_64-linux-gnu-gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/tests/inputlag.c -o CMakeFiles/inputlag.dir/inputlag.c.s

/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o: /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/flags.make
/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o: /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/GameEngine/game/build/linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o"
	cd /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests && /bin/x86_64-linux-gnu-gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/inputlag.dir/__/deps/getopt.c.o   -c /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/deps/getopt.c

/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/inputlag.dir/__/deps/getopt.c.i"
	cd /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests && /bin/x86_64-linux-gnu-gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/deps/getopt.c > CMakeFiles/inputlag.dir/__/deps/getopt.c.i

/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/inputlag.dir/__/deps/getopt.c.s"
	cd /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests && /bin/x86_64-linux-gnu-gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/deps/getopt.c -o CMakeFiles/inputlag.dir/__/deps/getopt.c.s

/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o: /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/flags.make
/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o: /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kewin/Projects/GameEngine/game/build/linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o"
	cd /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests && /bin/x86_64-linux-gnu-gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o   -c /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/deps/glad_gl.c

/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/inputlag.dir/__/deps/glad_gl.c.i"
	cd /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests && /bin/x86_64-linux-gnu-gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/deps/glad_gl.c > CMakeFiles/inputlag.dir/__/deps/glad_gl.c.i

/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/inputlag.dir/__/deps/glad_gl.c.s"
	cd /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests && /bin/x86_64-linux-gnu-gcc-9 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/deps/glad_gl.c -o CMakeFiles/inputlag.dir/__/deps/glad_gl.c.s

# Object files for target inputlag
inputlag_OBJECTS = \
"CMakeFiles/inputlag.dir/inputlag.c.o" \
"CMakeFiles/inputlag.dir/__/deps/getopt.c.o" \
"CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o"

# External object files for target inputlag
inputlag_EXTERNAL_OBJECTS =

/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/inputlag: /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/inputlag.c.o
/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/inputlag: /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/__/deps/getopt.c.o
/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/inputlag: /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/__/deps/glad_gl.c.o
/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/inputlag: /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/build.make
/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/inputlag: /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/src/libglfw3.a
/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/inputlag: /usr/lib/x86_64-linux-gnu/libm.so
/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/inputlag: /usr/lib/x86_64-linux-gnu/librt.so
/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/inputlag: /usr/lib/x86_64-linux-gnu/libm.so
/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/inputlag: /usr/lib/x86_64-linux-gnu/libX11.so
/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/inputlag: /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kewin/Projects/GameEngine/game/build/linux/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable inputlag"
	cd /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/inputlag.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/build: /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/inputlag

.PHONY : /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/build

/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/clean:
	cd /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/inputlag.dir/cmake_clean.cmake
.PHONY : /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/clean

/home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/depend:
	cd /home/kewin/Projects/GameEngine/game/build/linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kewin/Projects/GameEngine/game /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/tests /home/kewin/Projects/GameEngine/game/build/linux /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : /home/kewin/Projects/GameEngine/engine/vendor/glfw-3.3/build/tests/CMakeFiles/inputlag.dir/depend

