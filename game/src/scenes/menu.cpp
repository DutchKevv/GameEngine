#pragma once

#include <engine/scene.h>
#include <engine/camera.h>
#include <engine/context.h>
#include <engine/objects/button/button.h>
#include "../objects/player.h"
#include "../objects/floor.h"

class MenuScene : public Scene
{
    Shader shader;
    Shader simpleDepthShader;
    Shader debugDepthQuad;

    void init()
    {

        this->isEnabled = false;

        shader = ResourceManager::LoadShader("game-assets/shaders/sunlight.vert", "game-assets/shaders/sunlight.frag", nullptr, "shadowMapping");

        // attach camera
        this->camera = context->camera = new Camera();

        Button *button = new Button();
        Player *player = new Player();

        // add floor (TEMP)
        this->addChild(button);
        // this->addChild(player);
        // this->addChild(new Floor());

        this->camera->followObject(button);
    }

    void update(float delta)
    {

        // Scene::update(delta);
    }

    void draw(float delta)
    {

        //     // set light uniforms
        renderScene(delta, this->shader, false);
    }

    void renderScene(float delta, Shader &shader, bool isShadowRender = false)
    {


        Scene::renderScene(delta, shader, isShadowRender);
    }
};