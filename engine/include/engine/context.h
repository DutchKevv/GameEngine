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
    float windowW = 800;
    float windowH = 600;
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