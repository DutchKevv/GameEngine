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
#include "context.h"

using namespace std;

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
    if (context->mouse->firstMouse)
    {
        context->mouse->lastX = xpos;
        context->mouse->lastY = ypos;
        context->mouse->firstMouse = false;
    }

    context->mouse->offsetX = xpos - context->mouse->lastX;
    context->mouse->offsetY = context->mouse->lastY - ypos; // reversed since y-coordinates go from bottom to top

    context->mouse->lastX = xpos;
    context->mouse->lastY = ypos;

    context->mouse->active = true;
}

void _scroll_callback(GLFWwindow *window, double offsetX, double offsetY)
{
    context->scroll->active = true;
    context->scroll->offsetX = offsetX;
    context->scroll->offsetY = offsetY;
}

void _windowSizeCallback(GLFWwindow *window, int width, int height)
{
    context->windowW = width;
    context->windowH = height;
}

// glfw: whenever the window size changed (by OS or user resize) this callback function executes
// ---------------------------------------------------------------------------------------------
void _framebuffer_size_callback(GLFWwindow *window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and
    // height will be significantly larger than specified on retina displays.
    glViewport(0, 0, width, height);
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

void error_callback(int error, const char *description)
{
    fprintf(stderr, "Error: %s\n", description);
}

void Renderer::init()
{
    this->initSpriteHandler();
}

void Renderer::initSpriteHandler()
{
    // Shader shader = ResourceManager::LoadShader("build/assets/shaders/sprite.v.glsl", "build/assets/shaders/sprite.f.glsl", nullptr, "sprite");

    // glm::mat4 projection = glm::ortho(0.0f, static_cast<GLfloat>(context->windowW), static_cast<GLfloat>(context->windowW), 0.0f, -1.0f, 1.0f);
    // shader.Use().SetInteger("sprite", 0);
    // shader.SetMatrix4("projection", projection);

    // this->sprite = new SpriteRenderer(shader);
}

void Renderer::handleInput()
{
    glfwPollEvents();
}

void Renderer::update(float delta)
{

    BaseObject::update(delta);

    context->mouse->active = false;
    context->scroll->active = false;
}

void Renderer::draw(float delta)
{
    glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    BaseObject::draw(delta);

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
    glfwWindowHint(GLFW_CLIENT_API, GLFW_OPENGL_ES_API);
    // glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_COMPAT_PROFILE);

    // create window
    if (context->fullscreen)
    {
        context->window = this->window = glfwCreateWindow(context->windowW, context->windowH, "Game Engine", glfwGetPrimaryMonitor(), NULL); // FULLSCREEN
    }
    else
    {
        context->window = this->window = glfwCreateWindow(context->windowW, context->windowH, "Game Engine", NULL, NULL);
    }

    if (!window)
    {
        // Window or OpenGL context creation failed
        fprintf(stderr, "Failed to create window\n");
    }

    glfwMakeContextCurrent(context->window);

    // bind openGL entrypoints to context
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return;
    }

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
    glfwSetInputMode(context->window, GLFW_CURSOR, context->cursorBehavior);

    // on mouse input
    glfwSetCursorPosCallback(context->window, _mouseCallback);

    // on keyboard input
    glfwSetKeyCallback(context->window, _keyCallback);

    // enable 3D
    glEnable(GL_DEPTH_TEST);

    // this->resizeWindow(context->windowW, context->windowH);
};

// set the window size
void Renderer::resizeWindow(int width, int height)
{
    if (window)
    {
        // glfwSetWindowSize(context->window, context->windowW, context->windowH);
        // context->mouseLastX = context->windowW / 2.0f;
        // context->mouseLastY = context->windowW / 2.0f;
    }
};

void Renderer::destroyWindow()
{
    if (window)
    {
        glfwSetWindowShouldClose(window, true);
    }
};

void Renderer::destroy()
{
    destroyWindow();
};