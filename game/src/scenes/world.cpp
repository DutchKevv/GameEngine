#pragma once

#include <engine/scene.h>
#include <engine/context.h>
#include <engine/objects/cube.h>
#include "../objects/floor.h"
#include "../objects/player.h"
// #include "../objects/test.h"

using namespace glm;

static vec3 cubePositions[] = {
    vec3(0.0f, 0.0f, 0.0f),
    vec3(2.0f, 5.0f, -15.0f),
    vec3(-1.5f, -2.2f, -2.5f),
    vec3(-3.8f, -2.0f, -12.3f),
    vec3(2.4f, -0.4f, -3.5f),
    vec3(-1.7f, 3.0f, -7.5f),
    vec3(1.3f, -2.0f, -2.5f),
    vec3(1.5f, 2.0f, -2.5f),
    vec3(1.5f, 0.2f, -1.5f),
    vec3(-1.3f, 1.0f, -1.5f)};

class WorldScene : public Scene
{

    void init()
    {
        this->camera = context->camera = new Camera();

        this->addChild(new Floor());

        for (unsigned int i = 0; i < 10; i++)
        {
            Cube *cube = new Cube();
            cube->position = cubePositions[i];
            this->addChild(cube);
        }
        
        Player *player = new Player();

        this->addChild(player);

        this->camera->lookToObj(player);

        consoleLog("world init done");
    }

    void update(float delta)
    {
        Scene::update(delta);

        // if (glfwGetKey(context->window, GLFW_KEY_W) == GLFW_PRESS)
        // {
        //     context->camera->ProcessKeyboard(FORWARD, delta);
        // }

        // if (glfwGetKey(context->window, GLFW_KEY_S) == GLFW_PRESS)
        //     context->camera->ProcessKeyboard(BACKWARD, delta);
        // if (glfwGetKey(context->window, GLFW_KEY_A) == GLFW_PRESS)
        //     context->camera->ProcessKeyboard(LEFT, delta);
        // if (glfwGetKey(context->window, GLFW_KEY_D) == GLFW_PRESS)
        //     context->camera->ProcessKeyboard(RIGHT, delta);

        if (context->mouse->active)
        {
            // consoleLog("asdsd");
            context->camera->ProcessMouseMovement(context->mouse->offsetX, context->mouse->offsetY);
        }

        if (context->scroll->active)
        {
            context->camera->ProcessMouseScroll(context->scroll->offsetY);
        }
    }
};