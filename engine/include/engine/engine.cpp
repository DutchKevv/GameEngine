#ifdef __EMSCRIPTEN__
#include <emscripten.h>
#include <emscripten/html5.h>
#endif

#include "engine.h"
#include "context.h"
#include "logger.h"

Engine::Engine(int type)
{
    context->type = 0;
}

void Engine::init()
{
    consoleLog("Engine init");

    this->renderer = new Renderer();
}

void Engine::start()
{
    this->isRunning = true;

    while (!glfwWindowShouldClose(this->renderer->window))
    {
        this->tick();
    }
}

void Engine::tick()
{
    float ratio;
    int width, height;

    glfwPollEvents();
}

void Engine::stop()
{
    this->isRunning = false;
}

// int Engine::addDataObj(BaseDataObj *dataObj, int id) {
//     if (id == -1)
//         id = counter++;

//     dataObj->id = id;
//     dataObjects.push_back(dataObj);
//     return dataObj->id;
// }

// int Engine::updateDataObj(int id, json data) {
//     BaseDataObj *dataObject = getDataObjById(id);

//     if (!dataObject) {
//         consoleLog("Error - DataObject not found");
//         return -1;
//     }

//     dataObject->update(data);

//     return 0;
// }

// BaseDataObj *Engine::getDataObjById(int id) {

//     for (auto &dataObject : dataObjects) {
//         if (dataObject->id == id) {
//             return dataObject;
//         }
//     }

//     return NULL;
// }