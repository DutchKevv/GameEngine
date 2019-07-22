#pragma once

#include <vector>
#include "shader.h"
#include "resourceManager.h"

class BaseObject {
public:

    std::vector<BaseObject*> children;
    unsigned int id;

    BaseObject();

    void init();

    void update();

    void draw();

    void destroy();

    int addChild(BaseObject *child) {
        this->children.push_back(child);
        return 0;
    };
};
