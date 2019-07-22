#ifdef __EMSCRIPTEN__
#include <emscripten.h>
#include <emscripten/html5.h>
#endif

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <vector>
#include <STB/stb_image.h>
#include "logger.h"
// #include "text.h"
#include "renderer.h"
#include "engine.h"
#include "context.h"

// settings
const unsigned int SCR_WIDTH = 800;
const unsigned int SCR_HEIGHT = 600;

/*
 *
 *
 * EVENT CALLBACKS
 *
 *
 *
 */
void _keyCallback(GLFWwindow *window, int key, int scancode, int action, int mods)
{
    if (key == GLFW_KEY_ESCAPE && action == GLFW_RELEASE)
    {
        context->renderer->destroy();
    }
}

void _mouseCallback(GLFWwindow *window, double xpos, double ypos)
{
    // context->renderer->mouseCallback(window, xpos, ypos);
}

void _scroll_callback(GLFWwindow *window, double xOffset, double yOffet)
{
    // context->renderer->scrollCallback(xOffset, yOffet);
}

void _windowSizeCallback(GLFWwindow *window, int width, int height)
{
    // context->renderer->windowSizeCallback(width, height);
}

// glfw: whenever the window size changed (by OS or user resize) this callback function executes
// ---------------------------------------------------------------------------------------------
void _framebuffer_size_callback(GLFWwindow *window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and
    // height will be significantly larger than specified on retina displays.
    //    glViewport(0, 0, width, height);
}

void _errorCallback(int error, const char *description)
{
    consoleLog(error);
    consoleLog(description);
    //    renderer->errorCallback(error, description);
}

void _windowCloseCallback(GLFWwindow *window)
{
    //    renderer->windowCloseCallback(window);
}

using namespace std;

void error_callback(int error, const char *description)
{
    fprintf(stderr, "Error: %s\n", description);
}

void Renderer::handleInput()
{
    glfwPollEvents();
}

void Renderer::update()
{
    BaseObject::update();
}

void Renderer::draw()
{
    BaseObject::draw();

    // We are done
    glfwSwapBuffers(context->window);
}

void Renderer::createWindow()
{
    glfwSetErrorCallback(error_callback);

    // initialize GLFW
    if (!glfwInit())
    {
        // Initialization failed
        fprintf(stderr, "Failed to initialize GLFW\n");
    }

    // openGL version and options
    glfwWindowHint(GLFW_SAMPLES, 1);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // create window
    context->window = this->window = glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "Game Engine", NULL, NULL);

    if (!window)
    {
        // Window or OpenGL context creation failed
        fprintf(stderr, "Failed to create window\n");
    }

    glfwMakeContextCurrent(context->window);

    // bind openGL entrypoints to context
    gladLoadGL();

    // on window resize
    glfwSetWindowSizeCallback(context->window, _windowSizeCallback);

    // on window close
    glfwSetWindowCloseCallback(context->window, _windowCloseCallback);

    // on window 'internal' resize
    glfwSetFramebufferSizeCallback(context->window, _framebuffer_size_callback);

    // on window scroll
    glfwSetScrollCallback(context->window, _scroll_callback);

    // on keyboard input
    glfwSetInputMode(context->window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

    // on mouse input
    glfwSetCursorPosCallback(context->window, _mouseCallback);

    // on keyboard input
    glfwSetKeyCallback(context->window, _keyCallback);

    this->resizeWindow(SCR_WIDTH, SCR_HEIGHT);
};

// set the window size
void Renderer::resizeWindow(int width, int height)
{
    if (window)
    {
        glfwGetWindowSize(context->window, &context->windowW, &context->windowH);
        context->mouseLastX = context->windowW / 2.0f;
        context->mouseLastY = context->windowW / 2.0f;
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
    destroyWindow();
    glfwTerminate();
};

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
