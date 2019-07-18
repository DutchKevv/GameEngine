cmake_minimum_required(VERSION 2.8)

project(Game)

# add_subdirectory(../engine lib/engine)
# include_directories(../engine/include)

include(${CMAKE_CURRENT_SOURCE_DIR}/../engine/CMakeLists.txt)

add_executable(Game ${SOURCE_FILES} ./src/main.cpp)

target_link_libraries(Game Engine)