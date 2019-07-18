cmake_minimum_required(VERSION 2.8)

project(GameEngine)
add_executable(GameEngine ./src/main.cpp)

# OPENGL
find_package(OpenGL REQUIRED)
include_directories( ${OPENGL_INCLUDE_DIRS} )

# GLAD
# add_subdirectory(./vendor/glad)
include_directories(./vendor/glad/include)

# GLFW
add_subdirectory(./vendor/glfw-3.3)
include_directories(./vendor/glfw-3.3/include)

target_link_libraries(GameEngine ${OPENGL_LIBRARIES} glfw ${GLFW_LIBRARIES} )