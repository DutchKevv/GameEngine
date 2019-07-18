#ifdef __EMSCRIPTEN__
#include <emscripten.h>
#include <emscripten/html5.h>
#endif

#include <glad/glad.h>
#include <vector>
#include <STB/stb_image.h>
#include "logger.h"
// #include "text.h"
#include "renderer.h"
// #include "baseRenderObj.h"
#include "engine.h"
#include "context.h"

unsigned int width = 1920;
unsigned int height = 1080;

using namespace std;


void error_callback(int error, const char *description)
{
    fprintf(stderr, "Error: %s\n", description);
}

Renderer::Renderer(){

};

void Renderer::createWindow(){
 
    glfwSetErrorCallback(error_callback);

    if (!glfwInit())
    {
        // Initialization failed
    }

    window = glfwCreateWindow(640, 480, "Game Engine", NULL, NULL);

    if (!window)
    {
        // Window or OpenGL context creation failed
    }

    while (!glfwWindowShouldClose(window))
    {
        float ratio;
        int width, height;

        glfwPollEvents();
    }

    glfwDestroyWindow(window);
    glfwTerminate();
};

void Renderer::destroyWindow(){

};

void Renderer::destroy(){

};

// int Renderer::attachWorld(World *world) {
//     world->init();
//     this->worlds.push_back(world);
//     return 0;
// }

/**
 * Game Loop
 */
// void Renderer::gameLoop() {

//     glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

//     World *world = worlds[0];

//     for (BaseRenderObj *obj : world->renderObjects) {
//         obj->update();
//     }

//     world->draw();

//     // We are done
//     glfwSwapBuffers(context->window);
//     glfwPollEvents();
// }