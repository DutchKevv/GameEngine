#pragma once

#include <vector>
#include "shader.h"
#include "resourceManager.h"

class BaseObject {
public:

    unsigned int id;

    BaseObject();

    void init();

    void update();

    void destroy();
};
