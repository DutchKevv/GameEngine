#pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <vector>

#include "logger.h"
#include <STB/stb_image.h>
// #include "baseRenderObj.h"
// #include "spriteRenderer.h"
// #include "camera.h"
// #include "world.h"

class Renderer
{

public:
    GLFWwindow *window;
    // vector<World*> worlds;
    // SpriteRenderer *sprite;

    Renderer();

    void createWindow();
    void destroyWindow();

    void destroy();
};
