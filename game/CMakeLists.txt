cmake_minimum_required(VERSION 3.8)

project(Game)

# add_subdirectory(../engine lib/engine)
# include_directories(../engine/include)

include(${CMAKE_CURRENT_SOURCE_DIR}/../engine/CMakeLists.txt)

# COPY ASSETS
set (GAME_ASSETS_SOURCE "${CMAKE_CURRENT_LIST_DIR}/assets")
set (GAME_ASSETS_DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/game-assets")
add_custom_command(
 TARGET ${PROJECT_NAME} POST_BUILD
 COMMAND ${CMAKE_COMMAND} -E create_symlink ${GAME_ASSETS_SOURCE} ${GAME_ASSETS_DESTINATION} 
 DEPENDS ${GAME_ASSETS_DESTINATION}
 COMMENT "symbolic link resources folder from ${GAME_ASSETS_SOURCE} => ${GAME_ASSETS_DESTINATION}"
)

set(SOURCE_FILES
        ./src/objects/test.h
        ./src/objects/test.cpp
        ./src/objects/floor.h
        ./src/objects/floor.cpp
        ./src/objects/player.cpp
        ./src/objects/player.cpp
        )

add_executable(Game ./src/main.cpp ${SOURCE_FILES})

target_link_libraries(Game Engine)