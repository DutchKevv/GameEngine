cmake_minimum_required(VERSION 3.8)

project(Game)

# add_subdirectory(../engine lib/engine)
# include_directories(../engine/include)

include(${CMAKE_CURRENT_SOURCE_DIR}/../engine/CMakeLists.txt)

set(SOURCE_FILES
        ./src/objects/test.h
        ./src/objects/test.cpp
        ./src/objects/floor.h
        ./src/objects/floor.cpp
        )

add_executable(Game ./src/main.cpp ${SOURCE_FILES})

target_link_libraries(Game Engine)