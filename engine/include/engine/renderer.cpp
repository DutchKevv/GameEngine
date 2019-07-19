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

void framebuffer_size_callback(GLFWwindow *window, int width, int height);
void processInput(GLFWwindow *window);

// settings
const unsigned int SCR_WIDTH = 800;
const unsigned int SCR_HEIGHT = 600;

const char *vertexShaderSource = "#version 330 core\n"
                                 "layout (location = 0) in vec3 aPos;\n"
                                 "void main()\n"
                                 "{\n"
                                 "   gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);\n"
                                 "}\0";
const char *fragmentShaderSource = "#version 330 core\n"
                                   "out vec4 FragColor;\n"
                                   "void main()\n"
                                   "{\n"
                                   "   FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);\n"
                                   "}\n\0";

using namespace std;

void error_callback(int error, const char *description)
{
    fprintf(stderr, "Error: %s\n", description);
}

Renderer::Renderer(){

};

void Renderer::createWindow()
{

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
};

void Renderer::destroyWindow()
{
    if (window)
    {
        glfwDestroyWindow(window);
    }
};

void Renderer::destroy()
{
    glfwTerminate();
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