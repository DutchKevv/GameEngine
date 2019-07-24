#pragma once

#include <engine/scene.h>
#include <engine/model.h>
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

vector<glm::vec4> treePositions;
vector<glm::vec4> rockPositions;

Model *rockModel;
Model *planeModel;
Model *blenderModel;
Model *treeModel;
Model *cubeModel;

const unsigned int space = 200;
const unsigned int trees = 1000;
const unsigned int rocks = 1000;

class WorldScene : public Scene
{

    void init()
    {
        // create world objects
        this->createEnvironment();

        // attach player
        Player *player = new Player();
        this->addChild(player);

        // attach camera
        this->camera = context->camera = new Camera();

        // let the camera follow the player
        this->camera->followObject(player);

        consoleLog("world initialized");
    }

    void update(float delta)
    {
        Scene::update(delta);
    }

    void draw(float delta)
    {
        Scene::draw(delta);

        Shader shader = ResourceManager::GetShader("simple3D");
        
        /*
        *
        * Rocks
        *
        */
        for (unsigned int i = 0; i < 1; i++)
        {
            glm::mat4 model;
            glm::vec4 random = rockPositions[i];

            model = glm::translate(model, glm::vec3(random.x, random.y, random.z));
            model = glm::scale(model, glm::vec3(random.w / 100));

            shader.SetMatrix4("model", model);

            rockModel->Draw(&shader);
        }
    }

    void createEnvironment()
    {
        // load models
        // -----------------------
        rockModel = new Model("build/game-assets/models/rock/rock1.obj");
        planeModel = new Model("build/game-assets/models/plane-ground/flyhigh.obj");
        blenderModel = new Model("build/game-assets/models/blenderman/BLENDERMAN!.obj");
        treeModel = new Model("build/game-assets/models/tree-low-poly/lowtree.obj");
        cubeModel = new Model("build/game-assets/models/cube/cube.obj");

        // load random positions for models
        float halfSpace = space / 2;
        for (int i = 0; i < trees; i++)
        {
            treePositions.push_back(
                glm::vec4((rand() % space) - halfSpace, 0.0f, (rand() % space) - halfSpace, rand() % 100));
        }

        for (int i = 0; i < rocks; i++)
        {
            rockPositions.push_back(
                glm::vec4((rand() % space) - halfSpace, 2.0f, (rand() % space) - halfSpace, rand() % 100));
        }

        // add floor (TEMP)
        this->addChild(new Floor());

        // add BOXES (TEMP)
        for (unsigned int i = 0; i < 10; i++)
        {
            Cube *cube = new Cube();
            cube->position = cubePositions[i];
            this->addChild(cube);
        }

        // add rocks (TEMP)
        // for (unsigned int i = 0; i < 10; i++)
        // {
        //     Model *rock = new Model("build/game-assets/models/plane/FREOBJ.obj");
        //     rock->position = cubePositions[i];
        //     this->addChild(rock);
        // }
    }
};