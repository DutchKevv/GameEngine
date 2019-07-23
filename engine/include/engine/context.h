// #pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include "constants.h"
#include "camera.h"
#include "renderer.h"

struct Context
{

    Context();

    int type;
    int windowW = 800;
    int windowH = 600;
    int resolutionW = 600;
    int resolutionH = 600;
    int dayCycle;
    int dayCycleMax = 5000;

    float mouseLastX;
    float mouseLastY;
    bool firstMouse;

    GLFWwindow *window;
    Renderer *renderer;
    Camera *camera;
};

extern Context *context;