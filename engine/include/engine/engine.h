#pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <nlohmann/json.hpp>
#include <iostream>

#include "renderer.h"
// #include "constants.h"
// #include "baseDataObj.h"


// using json = nlohmann::json;

class Engine
{
private:
    int counter = 0;

public:
    bool isRunning;
    Renderer *renderer;

    // vector<BaseDataObj *> dataObjects;

    Engine(int type = 0);

    void init();

    void start();

    void stop();

    void tick();

    // int addDataObj(BaseDataObj *dataObj, int id = -1);

    // int updateDataObj(int id, json data);

    // BaseDataObj *getDataObjById(int id);

    // int update()
    // {
    //     return 0;
    // }

    // int destroy()
    // {
    //     return 0;
    // }

    // int loadModel()
    // {
    //     return 0;
    // }
};