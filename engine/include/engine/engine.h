#pragma once

#include "opengl_headers.h"

// #include <nlohmann/json.hpp>
#include <iostream>

#include "baseObject.h"
#include "renderer.h"

// using json = nlohmann::json;

class Engine : public BaseObject
{
private:
    int counter = 0;

public:
    bool isRunning;
    Renderer *renderer;

    Engine(char *argv[]);

    void init();

    void start();

    void stop();

    void tick();
};