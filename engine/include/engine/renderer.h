#pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <STB/stb_image.h>
#include <vector>

#include "logger.h"
#include "renderObject.h"
// #include "spriteRenderer.h"
// #include "camera.h"
#include "scene.h"

class Renderer: public RenderObject
{

public:
    GLFWwindow *window;
    vector<RenderObject *> children;

    // SpriteRenderer *sprite;

    void createWindow();
    void resizeWindow(int width, int height);
    void destroyWindow();

    void update();
    void draw();

    void destroy();
};
