cmake_minimum_required(VERSION 2.8)

project(Engine)

set(JSON_BuildTests OFF CACHE INTERNAL "")

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
add_library(${CMAKE_PROJECT_NAME} SHARED src/main.cpp)

# Install library
# install(TARGETS ${PROJECT_NAME} DESTINATION lib/${PROJECT_NAME})

# DEFENITIONS
add_definitions(
        -DTW_STATIC
        -DTW_NO_LIB_PRAGMA
        -DTW_NO_DIRECT3D
        -DGLEW_STATIC
        -D_CRT_SECURE_NO_WARNINGS
)

include_directories(${ASSIMP_INCLUDE_DIRS})
link_directories(${ASSIMP_LIBRARY_DIRS})

set(SOURCE_FILES
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/baseRenderObj.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/baseRenderObj.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/engine.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/engine.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/renderer.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/renderer.cpp
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/constants.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/camera.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/camera.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/context.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/context.cpp
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/shader.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/shader.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/logger.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/logger.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/constants.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/text.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/text.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/baseRenderObj.cpp
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/baseRenderObj.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/baseDataObj.cpp
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/baseDataObj.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/texture.cpp
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/texture.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/resourceManager.cpp
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/resourceManager.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/spriteRenderer.cpp
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/spriteRenderer.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/model.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/model.cpp
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/mesh.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/mesh.cpp
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/world.cpp
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/world.h
        )


# add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

# Install library headers
# file(GLOB HEADERS include/**/*.h)
# install(FILES ${HEADERS} DESTINATION include/${CMAKE_PROJECT_NAME})

# OPENGL
find_package(OpenGL REQUIRED)
include_directories( ${OPENGL_INCLUDE_DIRS} )

# GLAD
include_directories(${CMAKE_CURRENT_LIST_DIR}/vendor/glad/include)

# GLFW
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/vendor/glfw-3.3 ${CMAKE_CURRENT_SOURCE_DIR}/engine/glfw-3.3)
include_directories(${CMAKE_CURRENT_LIST_DIR}/vendor/glfw-3.3/include)

# STB
include_directories(${CMAKE_CURRENT_LIST_DIR}/vendor/stb/include)

# JSON
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/vendor/json ${CMAKE_CURRENT_SOURCE_DIR}/engine/json)
include_directories(${CMAKE_CURRENT_LIST_DIR}/vendor/json/include)

# ASSIMP
set(ASSIMP_LIBRARY_DIRS ${CMAKE_CURRENT_LIST_DIR}/vendor/assimp-4.0.1/code)
set(ASSIMP_INCLUDE_DIRS ${CMAKE_CURRENT_LIST_DIR}/vendor/assimp-4.0.1/include ${CMAKE_CURRENT_SOURCE_DIR}/engine/assimp/include)
include_directories(${ASSIMP_INCLUDE_DIRS})
link_directories(${ASSIMP_LIBRARY_DIRS})

# set(ASSIMP_LIBRARY_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/vendor/assimp/code)
# set(ASSIMP_INCLUDE_DIRS "lib/assimp/include" "lib/assimp/build/include")
# add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/vendor/assimp-4.0.1 ${CMAKE_CURRENT_SOURCE_DIR}/engine/assimp)
# include_directories(${CMAKE_CURRENT_LIST_DIR}/vendor/assimp-4.0.1/include)

# ENGINE
include_directories(${CMAKE_CURRENT_LIST_DIR}/include)

if (${CMAKE_SYSTEM_NAME} MATCHES "Emscripten")
    include_directories(
            /emscripten/
            /emscripten/emscripten/incoming/system/include
    )
else ()
    
endif ()

target_link_libraries(${CMAKE_PROJECT_NAME} ${OPENGL_LIBRARIES} glfw ${GLFW_LIBRARIES} )

set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES PUBLIC_HEADER include/mylib.h)

# target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE nlohmann_json::nlohmann_json)