cmake_minimum_required(VERSION 3.8)

message(${CMAKE_SYSTEM_NAME})

# DEFENITIONS
add_definitions(
        -DTW_STATIC
        -DTW_NO_LIB_PRAGMA
        -DTW_NO_DIRECT3D
        -D_CRT_SECURE_NO_WARNINGS
)

set(JSON_BuildTests OFF CACHE INTERNAL "")
set(ASSIMP_BUILD_STATIC_LIB OFF)
set(ASSIMP_BUILD_SAMPLES OFF)
set(ASSIMP_BUILD_TESTS OFF)
set(ASSIMP_BUILD_ASSIMP_TOOLS OFF)
set(BULLET_PHYSICS_SOURCE_DIR "${CMAKE_CURRENT_LIST_DIR}/vendor/bullet3-master")

if (${CMAKE_SYSTEM_NAME} MATCHES "Emscripten")
        set(BUILD_PATH "${CMAKE_CURRENT_SOURCE_DIR}/build/web")
else ()
        set(BUILD_PATH "${CMAKE_CURRENT_SOURCE_DIR}/build/linux")
endif ()

set(ENGINE_SOURCE_FILES
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/baseObject.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/baseObject.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/bodyBase.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/camera.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/camera.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/context.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/context.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/constants.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/engine.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/engine.cpp
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/filesystem.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/logger.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/logger.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/model.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/mesh.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/renderer.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/renderer.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/renderObject.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/renderObject.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/resourceManager.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/resourceManager.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/scene.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/scene.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/shader.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/shader.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/skybox.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/skybox.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/spriteRenderer.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/spriteRenderer.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/terrain.h
        # ${CMAKE_CURRENT_LIST_DIR}/include/engine/text.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/text.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/texture.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/texture.h

        ${CMAKE_CURRENT_LIST_DIR}/include/engine/objects/cube.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/objects/cube.cpp
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/objects/button/button.h
        ${CMAKE_CURRENT_LIST_DIR}/include/engine/objects/button/button.cpp

        )

if (NOT ${CMAKE_SYSTEM_NAME} MATCHES "Emscripten")
        set(ENGINE_SOURCE_FILES ${ENGINE_SOURCE_FILES} ${CMAKE_CURRENT_LIST_DIR}/vendor/glad/src/glad.c)
endif ()

target_sources(${CMAKE_PROJECT_NAME} PRIVATE ${ENGINE_SOURCE_FILES})


include_directories(${CMAKE_CURRENT_LIST_DIR}/include)

# include_directories(${CMAKE_CURRENT_LIST_DIR}/vendor/glad/src)
# OPENGL + GLAD + GLFW
if (NOT ${CMAKE_SYSTEM_NAME} MATCHES "Emscripten")
       
        find_package(OpenGL REQUIRED)
        include_directories( ${OPENGL_INCLUDE_DIRS} )

        set(ENGINE_SOURCE_FILES ${ENGINE_SOURCE_FILES} ${CMAKE_CURRENT_LIST_DIR}/vendor/glad/src/glad.c)
        
        include_directories(${CMAKE_CURRENT_LIST_DIR}/vendor/glad/include)
        add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/vendor/glfw-3.3 ${CMAKE_CURRENT_SOURCE_DIR}/../engine/vendor/glfw-3.3/build)
        include_directories(${CMAKE_CURRENT_LIST_DIR}/vendor/glfw-3.3/include)       
endif ()

# GLM
include_directories(${CMAKE_CURRENT_LIST_DIR}/vendor/glm)

# STB
include_directories(${CMAKE_CURRENT_LIST_DIR}/vendor/stb/include)

# ASSIMP
# find_package(ASSIMP REQUIRED)
# if(ASSIMP_FOUND)
#     include_directories(${ASSIMP_INCLUDE_DIR})
# endif() 
if (NOT ${CMAKE_SYSTEM_NAME} MATCHES "Emscripten")
        set(ASSIMP_LIBRARY_DIRS ${CMAKE_CURRENT_LIST_DIR}/vendor/assimp/code)
        set(ASSIMP_INCLUDE_DIRS  ${CMAKE_CURRENT_SOURCE_DIR}/engine/assimp/include)
        include_directories(${ASSIMP_INCLUDE_DIRS})
        link_directories(${ASSIMP_LIBRARY_DIRS})
        include_directories(${CMAKE_CURRENT_LIST_DIR}/vendor/assimp/include)
else()
        add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/vendor/assimp ${CMAKE_CURRENT_SOURCE_DIR}/../engine/vendor/assimp/build)
        include_directories(${CMAKE_CURRENT_LIST_DIR}/vendor/assimp/include)
endif ()


# FREETYPE
if (NOT ${CMAKE_SYSTEM_NAME} MATCHES "Emscripten")
        include_directories(${CMAKE_CURRENT_LIST_DIR}/vendor/freetype-2.10.1/include)  
endif ()

# JSON
# add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/vendor/json ${CMAKE_CURRENT_SOURCE_DIR}/engine/vendor/json)
# include_directories(${CMAKE_CURRENT_LIST_DIR}/vendor/json/include)

target_link_libraries(${PROJECT_NAME}
    ${CMAKE_CURRENT_LIST_DIR}/vendor/bullet3-master/build3/src/BulletDynamics/libBulletDynamics.a
    ${CMAKE_CURRENT_LIST_DIR}/vendor/bullet3-master/build3/src/BulletCollision/libBulletCollision.a
    ${CMAKE_CURRENT_LIST_DIR}/vendor/bullet3-master/build3/src/LinearMath/libLinearMath.a
    -lGL -lGLU)

    
INCLUDE_DIRECTORIES(
        ${BULLET_PHYSICS_SOURCE_DIR}/src
        ${BULLET_PHYSICS_SOURCE_DIR}/btgui
        ${BULLET_PHYSICS_SOURCE_DIR}/examples
        ${BULLET_PHYSICS_SOURCE_DIR}/examples/CommonInterfaces
        ${BULLET_PHYSICS_SOURCE_DIR}/examples/ThirdPartyLibs/glad
)

message(${BULLET_PHYSICS_SOURCE_DIR})

# link libraries
target_link_libraries(${CMAKE_PROJECT_NAME} assimp ${ASSIMP_LIBRARIES})
if (NOT ${CMAKE_SYSTEM_NAME} MATCHES "Emscripten")
        target_link_libraries(${CMAKE_PROJECT_NAME} ${OPENGL_LIBRARIES} ${FREETYPE_LIBRARIES} glfw ${GLFW_LIBRARIES} )
endif ()

# COPY ASSETS
set (ENGINE_ASSETS_SOURCE "${CMAKE_CURRENT_LIST_DIR}/assets")
set (ENGINE_ASSETS_DESTINATION "${BUILD_PATH}/engine-assets")
add_custom_command(
 TARGET ${PROJECT_NAME} POST_BUILD
 COMMAND ${CMAKE_COMMAND} -E create_symlink ${ENGINE_ASSETS_SOURCE} ${ENGINE_ASSETS_DESTINATION} 
 DEPENDS ${ENGINE_ASSETS_DESTINATION}
 COMMENT "symbolic link resources folder from ${ENGINE_ASSETS_SOURCE} => ${ENGINE_ASSETS_DESTINATION}"
)


# set_target_properties(Engine PROPERTIES LINK_FLAGS "-o dist/engine.js -s USE_GLFW=3 -s TOTAL_MEMORY=167772160 -s USE_FREETYPE=1 -s DISABLE_EXCEPTION_CATCHING=0 -s NO_EXIT_RUNTIME=1 -s DEMANGLE_SUPPORT=1 -s SAFE_HEAP=1 --bind -s WASM=1 -O2 -s LEGACY_GL_EMULATION=0  -s GL_UNSAFE_OPTS=0 -s ASSERTIONS=1 -s GL_ASSERTIONS=1 -s INVOKE_RUN=0  -std=c++1y -s USE_WEBGL2=1 -s FULL_ES3=1 -s GL_DEBUG=1 -s OFFSCREENCANVAS_SUPPORT=0 --use-preload-plugins --preload-file assets --preload-file assets")


# target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE nlohmann_json::nlohmann_json)