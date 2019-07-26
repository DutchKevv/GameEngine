#include <unistd.h>

#include "engine.h"
#include "context.h"
#include "logger.h"

// timing
float deltaTime = 0.0f; // time between current frame and last frame
float lastFrame = 0.0f;

void EMRenderLoopCallback(void* arg)
{
  static_cast<Engine*>(arg)->tick();
}

Engine::Engine(char *argv[])
{
    // set reference to instance
    context->engine = this;

    // set working directory
    std::string binPath = argv[0];
    context->paths->cwd = binPath.substr(0, binPath.find("Game", 0));
    chdir(context->paths->cwd.c_str());

    context->type = 0;
}

void Engine::init()
{
    this->renderer = context->renderer = new Renderer();
    this->renderer->init();

    consoleLog("Engine initialized");
}

void Engine::start()
{
    this->isRunning = true;

#ifdef __EMSCRIPTEN__
    emscripten_set_main_loop_arg(&EMRenderLoopCallback, this, 0, 0);
#else
    while (!glfwWindowShouldClose(this->renderer->window))
    {
        this->tick();
    }
#endif
}

void Engine::tick()
{
    // per-frame time logic
    // --------------------
    float currentFrame = glfwGetTime();
    deltaTime = currentFrame - lastFrame;
    lastFrame = currentFrame;

    this->renderer->handleInput();
    this->renderer->update(deltaTime);
    this->renderer->draw(deltaTime);
}

void Engine::stop()
{
    this->isRunning = false;
}