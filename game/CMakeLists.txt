cmake_minimum_required(VERSION 2.8)

project(Game)
add_executable(Game ./src/main.cpp)

add_subdirectory(../engine ./build)
include_directories(../engine/include)

# target_link_libraries(Game)