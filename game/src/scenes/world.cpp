#pragma once

#include <engine/scene.h>
#include "../objects/test.h"

class WorldScene : public Scene
{

    void init()
    {
        // TestObject *testObject = new TestObject();

        // this->addChild(testObject);

        consoleLog("world init done");
    }

    void update() {
        Scene::update();
    }
};