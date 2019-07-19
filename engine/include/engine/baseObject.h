#pragma once

#include <vector>
#include "shader.h"
#include "resourceManager.h"

class BaseObject {
public:

    unsigned int id;
    unsigned int width;
    unsigned int height;

    float speed;
    float xRadius = 0.0f;
    float yRadius = 0.0f;
    bool focused = false;

    glm::vec3 position;
    glm::vec3 rotation;

    BaseObject();

    virtual int init();

    virtual int update();

    virtual int draw();

    virtual int destroy();
};
