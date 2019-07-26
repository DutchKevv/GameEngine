cmake_minimum_required(VERSION 3.8)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(Game)

set(SOURCE_FILES
        ./src/objects/test.h
        ./src/objects/test.cpp
        ./src/objects/floor.h
        ./src/objects/floor.cpp
        ./src/objects/player.cpp
        ./src/objects/player.cpp
        )

add_executable(${PROJECT_NAME} ${CMAKE_CURRENT_LIST_DIR}/src/main.cpp  ${SOURCE_FILES})

include(${CMAKE_CURRENT_LIST_DIR}/../engine/CMakeLists.txt)

# COPY ASSETS
set (GAME_ASSETS_SOURCE "${CMAKE_CURRENT_LIST_DIR}/assets")
set (GAME_ASSETS_DESTINATION "${BUILD_PATH}/game-assets")

add_custom_command(
 TARGET ${PROJECT_NAME} POST_BUILD
 COMMAND ${CMAKE_COMMAND} -E create_symlink ${GAME_ASSETS_SOURCE} ${GAME_ASSETS_DESTINATION} 
 DEPENDS ${GAME_ASSETS_DESTINATION}
 COMMENT "symbolic link resources folder from ${GAME_ASSETS_SOURCE} => ${GAME_ASSETS_DESTINATION}"
)

if (${CMAKE_SYSTEM_NAME} MATCHES "Emscripten")
        set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES LINK_FLAGS "-s ERROR_ON_UNDEFINED_SYMBOLS=0 -o engine.html -s USE_GLFW=3 -s TOTAL_MEMORY=167772160 -s USE_FREETYPE=1 -s INLINING_LIMIT=2000 -s DISABLE_EXCEPTION_CATCHING=0 -s NO_EXIT_RUNTIME=1 -s DEMANGLE_SUPPORT=1 -s SAFE_HEAP=1 --bind -s WASM=1 -O2 -s LEGACY_GL_EMULATION=0  -s GL_UNSAFE_OPTS=0 -s ASSERTIONS=1 -s GL_ASSERTIONS=1 -s INVOKE_RUN=0  -std=c++1y -s USE_WEBGL2=1 -s FULL_ES3=1 -s GL_DEBUG=1 -s OFFSCREENCANVAS_SUPPORT=0 --use-preload-plugins")
endif ()