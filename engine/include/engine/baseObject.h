#pragma once

#include <vector>
#include "shader.h"
#include "logger.h"
#include "resourceManager.h"

class BaseObject
{
public:
    std::vector<BaseObject *> children;

    bool isInitialized = false;

    unsigned int id;

    BaseObject();

    virtual void init();

    virtual void update(float delta);

    virtual void draw(float delta);

    virtual void destroy();

    /**
     * TODO - shoud return index
     */
    int addChild(BaseObject *child)
    {
        this->children.push_back(child);

        if (child->isInitialized == false)
        {
            child->init();
            child->isInitialized = true;
        }

        return 0;
    };
};
